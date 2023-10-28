{- This file was auto-generated from protos/perfetto/trace/ftrace/generic.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Generic (
        GenericFtraceEvent(), GenericFtraceEvent'Field(),
        GenericFtraceEvent'Field'Value(..),
        _GenericFtraceEvent'Field'StrValue,
        _GenericFtraceEvent'Field'IntValue,
        _GenericFtraceEvent'Field'UintValue
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Generic_Fields.eventName' @:: Lens' GenericFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Generic_Fields.maybe'eventName' @:: Lens' GenericFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Generic_Fields.field' @:: Lens' GenericFtraceEvent [GenericFtraceEvent'Field]@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Generic_Fields.vec'field' @:: Lens' GenericFtraceEvent (Data.Vector.Vector GenericFtraceEvent'Field)@ -}
data GenericFtraceEvent
  = GenericFtraceEvent'_constructor {_GenericFtraceEvent'eventName :: !(Prelude.Maybe Data.Text.Text),
                                     _GenericFtraceEvent'field :: !(Data.Vector.Vector GenericFtraceEvent'Field),
                                     _GenericFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GenericFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GenericFtraceEvent "eventName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenericFtraceEvent'eventName
           (\ x__ y__ -> x__ {_GenericFtraceEvent'eventName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField GenericFtraceEvent "maybe'eventName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenericFtraceEvent'eventName
           (\ x__ y__ -> x__ {_GenericFtraceEvent'eventName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenericFtraceEvent "field" [GenericFtraceEvent'Field] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenericFtraceEvent'field
           (\ x__ y__ -> x__ {_GenericFtraceEvent'field = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GenericFtraceEvent "vec'field" (Data.Vector.Vector GenericFtraceEvent'Field) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenericFtraceEvent'field
           (\ x__ y__ -> x__ {_GenericFtraceEvent'field = y__}))
        Prelude.id
instance Data.ProtoLens.Message GenericFtraceEvent where
  messageName _ = Data.Text.pack "perfetto.protos.GenericFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\DC2GenericFtraceEvent\DC2\GS\n\
      \\n\
      \event_name\CAN\SOH \SOH(\tR\teventName\DC2?\n\
      \\ENQfield\CAN\STX \ETX(\v2).perfetto.protos.GenericFtraceEvent.FieldR\ENQfield\SUB\131\SOH\n\
      \\ENQField\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\GS\n\
      \\tstr_value\CAN\ETX \SOH(\tH\NULR\bstrValue\DC2\GS\n\
      \\tint_value\CAN\EOT \SOH(\ETXH\NULR\bintValue\DC2\US\n\
      \\n\
      \uint_value\CAN\ENQ \SOH(\EOTH\NULR\tuintValueB\a\n\
      \\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        eventName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "event_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'eventName")) ::
              Data.ProtoLens.FieldDescriptor GenericFtraceEvent
        field__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "field"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor GenericFtraceEvent'Field)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"field")) ::
              Data.ProtoLens.FieldDescriptor GenericFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, eventName__field_descriptor),
           (Data.ProtoLens.Tag 2, field__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GenericFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_GenericFtraceEvent'_unknownFields = y__})
  defMessage
    = GenericFtraceEvent'_constructor
        {_GenericFtraceEvent'eventName = Prelude.Nothing,
         _GenericFtraceEvent'field = Data.Vector.Generic.empty,
         _GenericFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GenericFtraceEvent
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld GenericFtraceEvent'Field
             -> Data.ProtoLens.Encoding.Bytes.Parser GenericFtraceEvent
        loop x mutable'field
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'field <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'field)
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
                              (Data.ProtoLens.Field.field @"vec'field") frozen'field x))
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
                                       "event_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"eventName") y x)
                                  mutable'field
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "field"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'field y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'field
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'field <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'field)
          "GenericFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'eventName") _x
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
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'field") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData GenericFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GenericFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GenericFtraceEvent'eventName x__)
                (Control.DeepSeq.deepseq (_GenericFtraceEvent'field x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Generic_Fields.name' @:: Lens' GenericFtraceEvent'Field Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Generic_Fields.maybe'name' @:: Lens' GenericFtraceEvent'Field (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Generic_Fields.maybe'value' @:: Lens' GenericFtraceEvent'Field (Prelude.Maybe GenericFtraceEvent'Field'Value)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Generic_Fields.maybe'strValue' @:: Lens' GenericFtraceEvent'Field (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Generic_Fields.strValue' @:: Lens' GenericFtraceEvent'Field Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Generic_Fields.maybe'intValue' @:: Lens' GenericFtraceEvent'Field (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Generic_Fields.intValue' @:: Lens' GenericFtraceEvent'Field Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Generic_Fields.maybe'uintValue' @:: Lens' GenericFtraceEvent'Field (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Generic_Fields.uintValue' @:: Lens' GenericFtraceEvent'Field Data.Word.Word64@ -}
data GenericFtraceEvent'Field
  = GenericFtraceEvent'Field'_constructor {_GenericFtraceEvent'Field'name :: !(Prelude.Maybe Data.Text.Text),
                                           _GenericFtraceEvent'Field'value :: !(Prelude.Maybe GenericFtraceEvent'Field'Value),
                                           _GenericFtraceEvent'Field'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GenericFtraceEvent'Field where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data GenericFtraceEvent'Field'Value
  = GenericFtraceEvent'Field'StrValue !Data.Text.Text |
    GenericFtraceEvent'Field'IntValue !Data.Int.Int64 |
    GenericFtraceEvent'Field'UintValue !Data.Word.Word64
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField GenericFtraceEvent'Field "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenericFtraceEvent'Field'name
           (\ x__ y__ -> x__ {_GenericFtraceEvent'Field'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField GenericFtraceEvent'Field "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenericFtraceEvent'Field'name
           (\ x__ y__ -> x__ {_GenericFtraceEvent'Field'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenericFtraceEvent'Field "maybe'value" (Prelude.Maybe GenericFtraceEvent'Field'Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenericFtraceEvent'Field'value
           (\ x__ y__ -> x__ {_GenericFtraceEvent'Field'value = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenericFtraceEvent'Field "maybe'strValue" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenericFtraceEvent'Field'value
           (\ x__ y__ -> x__ {_GenericFtraceEvent'Field'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (GenericFtraceEvent'Field'StrValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap GenericFtraceEvent'Field'StrValue y__))
instance Data.ProtoLens.Field.HasField GenericFtraceEvent'Field "strValue" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenericFtraceEvent'Field'value
           (\ x__ y__ -> x__ {_GenericFtraceEvent'Field'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (GenericFtraceEvent'Field'StrValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap GenericFtraceEvent'Field'StrValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField GenericFtraceEvent'Field "maybe'intValue" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenericFtraceEvent'Field'value
           (\ x__ y__ -> x__ {_GenericFtraceEvent'Field'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (GenericFtraceEvent'Field'IntValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap GenericFtraceEvent'Field'IntValue y__))
instance Data.ProtoLens.Field.HasField GenericFtraceEvent'Field "intValue" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenericFtraceEvent'Field'value
           (\ x__ y__ -> x__ {_GenericFtraceEvent'Field'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (GenericFtraceEvent'Field'IntValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap GenericFtraceEvent'Field'IntValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField GenericFtraceEvent'Field "maybe'uintValue" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenericFtraceEvent'Field'value
           (\ x__ y__ -> x__ {_GenericFtraceEvent'Field'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (GenericFtraceEvent'Field'UintValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap GenericFtraceEvent'Field'UintValue y__))
instance Data.ProtoLens.Field.HasField GenericFtraceEvent'Field "uintValue" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenericFtraceEvent'Field'value
           (\ x__ y__ -> x__ {_GenericFtraceEvent'Field'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (GenericFtraceEvent'Field'UintValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap GenericFtraceEvent'Field'UintValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message GenericFtraceEvent'Field where
  messageName _
    = Data.Text.pack "perfetto.protos.GenericFtraceEvent.Field"
  packedMessageDescriptor _
    = "\n\
      \\ENQField\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\GS\n\
      \\tstr_value\CAN\ETX \SOH(\tH\NULR\bstrValue\DC2\GS\n\
      \\tint_value\CAN\EOT \SOH(\ETXH\NULR\bintValue\DC2\US\n\
      \\n\
      \uint_value\CAN\ENQ \SOH(\EOTH\NULR\tuintValueB\a\n\
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
              Data.ProtoLens.FieldDescriptor GenericFtraceEvent'Field
        strValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "str_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'strValue")) ::
              Data.ProtoLens.FieldDescriptor GenericFtraceEvent'Field
        intValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "int_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'intValue")) ::
              Data.ProtoLens.FieldDescriptor GenericFtraceEvent'Field
        uintValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "uint_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'uintValue")) ::
              Data.ProtoLens.FieldDescriptor GenericFtraceEvent'Field
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 3, strValue__field_descriptor),
           (Data.ProtoLens.Tag 4, intValue__field_descriptor),
           (Data.ProtoLens.Tag 5, uintValue__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GenericFtraceEvent'Field'_unknownFields
        (\ x__ y__ -> x__ {_GenericFtraceEvent'Field'_unknownFields = y__})
  defMessage
    = GenericFtraceEvent'Field'_constructor
        {_GenericFtraceEvent'Field'name = Prelude.Nothing,
         _GenericFtraceEvent'Field'value = Prelude.Nothing,
         _GenericFtraceEvent'Field'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GenericFtraceEvent'Field
          -> Data.ProtoLens.Encoding.Bytes.Parser GenericFtraceEvent'Field
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
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "str_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"strValue") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "int_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"intValue") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "uint_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"uintValue") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Field"
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
                   (Prelude.Just (GenericFtraceEvent'Field'StrValue v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.Text.Encoding.encodeUtf8 v)
                   (Prelude.Just (GenericFtraceEvent'Field'IntValue v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral v)
                   (Prelude.Just (GenericFtraceEvent'Field'UintValue v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData GenericFtraceEvent'Field where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GenericFtraceEvent'Field'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GenericFtraceEvent'Field'name x__)
                (Control.DeepSeq.deepseq (_GenericFtraceEvent'Field'value x__) ()))
instance Control.DeepSeq.NFData GenericFtraceEvent'Field'Value where
  rnf (GenericFtraceEvent'Field'StrValue x__)
    = Control.DeepSeq.rnf x__
  rnf (GenericFtraceEvent'Field'IntValue x__)
    = Control.DeepSeq.rnf x__
  rnf (GenericFtraceEvent'Field'UintValue x__)
    = Control.DeepSeq.rnf x__
_GenericFtraceEvent'Field'StrValue ::
  Data.ProtoLens.Prism.Prism' GenericFtraceEvent'Field'Value Data.Text.Text
_GenericFtraceEvent'Field'StrValue
  = Data.ProtoLens.Prism.prism'
      GenericFtraceEvent'Field'StrValue
      (\ p__
         -> case p__ of
              (GenericFtraceEvent'Field'StrValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_GenericFtraceEvent'Field'IntValue ::
  Data.ProtoLens.Prism.Prism' GenericFtraceEvent'Field'Value Data.Int.Int64
_GenericFtraceEvent'Field'IntValue
  = Data.ProtoLens.Prism.prism'
      GenericFtraceEvent'Field'IntValue
      (\ p__
         -> case p__ of
              (GenericFtraceEvent'Field'IntValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_GenericFtraceEvent'Field'UintValue ::
  Data.ProtoLens.Prism.Prism' GenericFtraceEvent'Field'Value Data.Word.Word64
_GenericFtraceEvent'Field'UintValue
  = Data.ProtoLens.Prism.prism'
      GenericFtraceEvent'Field'UintValue
      (\ p__
         -> case p__ of
              (GenericFtraceEvent'Field'UintValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \*protos/perfetto/trace/ftrace/generic.proto\DC2\SIperfetto.protos\"\250\SOH\n\
    \\DC2GenericFtraceEvent\DC2\GS\n\
    \\n\
    \event_name\CAN\SOH \SOH(\tR\teventName\DC2?\n\
    \\ENQfield\CAN\STX \ETX(\v2).perfetto.protos.GenericFtraceEvent.FieldR\ENQfield\SUB\131\SOH\n\
    \\ENQField\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\GS\n\
    \\tstr_value\CAN\ETX \SOH(\tH\NULR\bstrValue\DC2\GS\n\
    \\tint_value\CAN\EOT \SOH(\ETXH\NULR\bintValue\DC2\US\n\
    \\n\
    \uint_value\CAN\ENQ \SOH(\EOTH\NULR\tuintValueB\a\n\
    \\ENQvalueJ\200\t\n\
    \\ACK\DC2\EOT\DLE\NUL\"\SOH\n\
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
    \|\n\
    \\STX\EOT\NUL\DC2\EOT\SYN\NUL\"\SOH\SUBp This generic proto is used to output events in the trace\n\
    \ when a specific proto for that event does not exist.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\SYN\b\SUB\n\
    \\f\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT\ETB\STX\RS\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX\ETB\n\
    \\SI\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX\CAN\EOT\GS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\EOT\DC2\ETX\CAN\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ENQ\DC2\ETX\CAN\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX\CAN\DC4\CAN\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX\CAN\ESC\FS\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\NUL\b\NUL\DC2\EOT\EM\EOT\GS\ENQ\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\b\NUL\SOH\DC2\ETX\EM\n\
    \\SI\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\ETX\SUB\ACK\ESC\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ENQ\DC2\ETX\SUB\ACK\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX\SUB\r\SYN\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX\SUB\EM\SUB\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\STX\DC2\ETX\ESC\ACK\SUB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ENQ\DC2\ETX\ESC\ACK\v\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\SOH\DC2\ETX\ESC\f\NAK\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ETX\DC2\ETX\ESC\CAN\EM\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\ETX\DC2\ETX\FS\ACK\FS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\ENQ\DC2\ETX\FS\ACK\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\SOH\DC2\ETX\FS\r\ETB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\ETX\DC2\ETX\FS\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX \STX!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX \STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX \v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX \DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX \US \n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX!\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX!\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX!\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX!\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX!\EM\SUB"