{- This file was auto-generated from protos/perfetto/trace/track_event/debug_annotation.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation (
        DebugAnnotation(), DebugAnnotation'NameField(..),
        DebugAnnotation'Value(..), DebugAnnotation'ProtoTypeDescriptor(..),
        _DebugAnnotation'NameIid, _DebugAnnotation'Name,
        _DebugAnnotation'BoolValue, _DebugAnnotation'UintValue,
        _DebugAnnotation'IntValue, _DebugAnnotation'DoubleValue,
        _DebugAnnotation'PointerValue, _DebugAnnotation'NestedValue',
        _DebugAnnotation'LegacyJsonValue, _DebugAnnotation'StringValue,
        _DebugAnnotation'StringValueIid, _DebugAnnotation'ProtoTypeName,
        _DebugAnnotation'ProtoTypeNameIid, DebugAnnotation'NestedValue(),
        DebugAnnotation'NestedValue'NestedType(..),
        DebugAnnotation'NestedValue'NestedType(), DebugAnnotationName(),
        DebugAnnotationValueTypeName()
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
     
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.protoValue' @:: Lens' DebugAnnotation Data.ByteString.ByteString@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.maybe'protoValue' @:: Lens' DebugAnnotation (Prelude.Maybe Data.ByteString.ByteString)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.dictEntries' @:: Lens' DebugAnnotation [DebugAnnotation]@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.vec'dictEntries' @:: Lens' DebugAnnotation (Data.Vector.Vector DebugAnnotation)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.arrayValues' @:: Lens' DebugAnnotation [DebugAnnotation]@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.vec'arrayValues' @:: Lens' DebugAnnotation (Data.Vector.Vector DebugAnnotation)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.maybe'nameField' @:: Lens' DebugAnnotation (Prelude.Maybe DebugAnnotation'NameField)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.maybe'nameIid' @:: Lens' DebugAnnotation (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.nameIid' @:: Lens' DebugAnnotation Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.maybe'name' @:: Lens' DebugAnnotation (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.name' @:: Lens' DebugAnnotation Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.maybe'value' @:: Lens' DebugAnnotation (Prelude.Maybe DebugAnnotation'Value)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.maybe'boolValue' @:: Lens' DebugAnnotation (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.boolValue' @:: Lens' DebugAnnotation Prelude.Bool@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.maybe'uintValue' @:: Lens' DebugAnnotation (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.uintValue' @:: Lens' DebugAnnotation Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.maybe'intValue' @:: Lens' DebugAnnotation (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.intValue' @:: Lens' DebugAnnotation Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.maybe'doubleValue' @:: Lens' DebugAnnotation (Prelude.Maybe Prelude.Double)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.doubleValue' @:: Lens' DebugAnnotation Prelude.Double@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.maybe'pointerValue' @:: Lens' DebugAnnotation (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.pointerValue' @:: Lens' DebugAnnotation Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.maybe'nestedValue' @:: Lens' DebugAnnotation (Prelude.Maybe DebugAnnotation'NestedValue)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.nestedValue' @:: Lens' DebugAnnotation DebugAnnotation'NestedValue@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.maybe'legacyJsonValue' @:: Lens' DebugAnnotation (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.legacyJsonValue' @:: Lens' DebugAnnotation Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.maybe'stringValue' @:: Lens' DebugAnnotation (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.stringValue' @:: Lens' DebugAnnotation Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.maybe'stringValueIid' @:: Lens' DebugAnnotation (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.stringValueIid' @:: Lens' DebugAnnotation Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.maybe'protoTypeDescriptor' @:: Lens' DebugAnnotation (Prelude.Maybe DebugAnnotation'ProtoTypeDescriptor)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.maybe'protoTypeName' @:: Lens' DebugAnnotation (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.protoTypeName' @:: Lens' DebugAnnotation Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.maybe'protoTypeNameIid' @:: Lens' DebugAnnotation (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.protoTypeNameIid' @:: Lens' DebugAnnotation Data.Word.Word64@ -}
data DebugAnnotation
  = DebugAnnotation'_constructor {_DebugAnnotation'protoValue :: !(Prelude.Maybe Data.ByteString.ByteString),
                                  _DebugAnnotation'dictEntries :: !(Data.Vector.Vector DebugAnnotation),
                                  _DebugAnnotation'arrayValues :: !(Data.Vector.Vector DebugAnnotation),
                                  _DebugAnnotation'nameField :: !(Prelude.Maybe DebugAnnotation'NameField),
                                  _DebugAnnotation'value :: !(Prelude.Maybe DebugAnnotation'Value),
                                  _DebugAnnotation'protoTypeDescriptor :: !(Prelude.Maybe DebugAnnotation'ProtoTypeDescriptor),
                                  _DebugAnnotation'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DebugAnnotation where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data DebugAnnotation'NameField
  = DebugAnnotation'NameIid !Data.Word.Word64 |
    DebugAnnotation'Name !Data.Text.Text
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
data DebugAnnotation'Value
  = DebugAnnotation'BoolValue !Prelude.Bool |
    DebugAnnotation'UintValue !Data.Word.Word64 |
    DebugAnnotation'IntValue !Data.Int.Int64 |
    DebugAnnotation'DoubleValue !Prelude.Double |
    DebugAnnotation'PointerValue !Data.Word.Word64 |
    DebugAnnotation'NestedValue' !DebugAnnotation'NestedValue |
    DebugAnnotation'LegacyJsonValue !Data.Text.Text |
    DebugAnnotation'StringValue !Data.Text.Text |
    DebugAnnotation'StringValueIid !Data.Word.Word64
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
data DebugAnnotation'ProtoTypeDescriptor
  = DebugAnnotation'ProtoTypeName !Data.Text.Text |
    DebugAnnotation'ProtoTypeNameIid !Data.Word.Word64
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField DebugAnnotation "protoValue" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'protoValue
           (\ x__ y__ -> x__ {_DebugAnnotation'protoValue = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DebugAnnotation "maybe'protoValue" (Prelude.Maybe Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'protoValue
           (\ x__ y__ -> x__ {_DebugAnnotation'protoValue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DebugAnnotation "dictEntries" [DebugAnnotation] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'dictEntries
           (\ x__ y__ -> x__ {_DebugAnnotation'dictEntries = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DebugAnnotation "vec'dictEntries" (Data.Vector.Vector DebugAnnotation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'dictEntries
           (\ x__ y__ -> x__ {_DebugAnnotation'dictEntries = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DebugAnnotation "arrayValues" [DebugAnnotation] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'arrayValues
           (\ x__ y__ -> x__ {_DebugAnnotation'arrayValues = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DebugAnnotation "vec'arrayValues" (Data.Vector.Vector DebugAnnotation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'arrayValues
           (\ x__ y__ -> x__ {_DebugAnnotation'arrayValues = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DebugAnnotation "maybe'nameField" (Prelude.Maybe DebugAnnotation'NameField) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'nameField
           (\ x__ y__ -> x__ {_DebugAnnotation'nameField = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DebugAnnotation "maybe'nameIid" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'nameField
           (\ x__ y__ -> x__ {_DebugAnnotation'nameField = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (DebugAnnotation'NameIid x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap DebugAnnotation'NameIid y__))
instance Data.ProtoLens.Field.HasField DebugAnnotation "nameIid" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'nameField
           (\ x__ y__ -> x__ {_DebugAnnotation'nameField = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (DebugAnnotation'NameIid x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap DebugAnnotation'NameIid y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField DebugAnnotation "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'nameField
           (\ x__ y__ -> x__ {_DebugAnnotation'nameField = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (DebugAnnotation'Name x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap DebugAnnotation'Name y__))
instance Data.ProtoLens.Field.HasField DebugAnnotation "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'nameField
           (\ x__ y__ -> x__ {_DebugAnnotation'nameField = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (DebugAnnotation'Name x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap DebugAnnotation'Name y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField DebugAnnotation "maybe'value" (Prelude.Maybe DebugAnnotation'Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'value
           (\ x__ y__ -> x__ {_DebugAnnotation'value = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DebugAnnotation "maybe'boolValue" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'value
           (\ x__ y__ -> x__ {_DebugAnnotation'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (DebugAnnotation'BoolValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap DebugAnnotation'BoolValue y__))
instance Data.ProtoLens.Field.HasField DebugAnnotation "boolValue" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'value
           (\ x__ y__ -> x__ {_DebugAnnotation'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (DebugAnnotation'BoolValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap DebugAnnotation'BoolValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField DebugAnnotation "maybe'uintValue" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'value
           (\ x__ y__ -> x__ {_DebugAnnotation'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (DebugAnnotation'UintValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap DebugAnnotation'UintValue y__))
instance Data.ProtoLens.Field.HasField DebugAnnotation "uintValue" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'value
           (\ x__ y__ -> x__ {_DebugAnnotation'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (DebugAnnotation'UintValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap DebugAnnotation'UintValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField DebugAnnotation "maybe'intValue" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'value
           (\ x__ y__ -> x__ {_DebugAnnotation'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (DebugAnnotation'IntValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap DebugAnnotation'IntValue y__))
instance Data.ProtoLens.Field.HasField DebugAnnotation "intValue" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'value
           (\ x__ y__ -> x__ {_DebugAnnotation'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (DebugAnnotation'IntValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap DebugAnnotation'IntValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField DebugAnnotation "maybe'doubleValue" (Prelude.Maybe Prelude.Double) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'value
           (\ x__ y__ -> x__ {_DebugAnnotation'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (DebugAnnotation'DoubleValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap DebugAnnotation'DoubleValue y__))
instance Data.ProtoLens.Field.HasField DebugAnnotation "doubleValue" Prelude.Double where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'value
           (\ x__ y__ -> x__ {_DebugAnnotation'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (DebugAnnotation'DoubleValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap DebugAnnotation'DoubleValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField DebugAnnotation "maybe'pointerValue" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'value
           (\ x__ y__ -> x__ {_DebugAnnotation'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (DebugAnnotation'PointerValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap DebugAnnotation'PointerValue y__))
instance Data.ProtoLens.Field.HasField DebugAnnotation "pointerValue" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'value
           (\ x__ y__ -> x__ {_DebugAnnotation'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (DebugAnnotation'PointerValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap DebugAnnotation'PointerValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField DebugAnnotation "maybe'nestedValue" (Prelude.Maybe DebugAnnotation'NestedValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'value
           (\ x__ y__ -> x__ {_DebugAnnotation'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (DebugAnnotation'NestedValue' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap DebugAnnotation'NestedValue' y__))
instance Data.ProtoLens.Field.HasField DebugAnnotation "nestedValue" DebugAnnotation'NestedValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'value
           (\ x__ y__ -> x__ {_DebugAnnotation'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (DebugAnnotation'NestedValue' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap DebugAnnotation'NestedValue' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField DebugAnnotation "maybe'legacyJsonValue" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'value
           (\ x__ y__ -> x__ {_DebugAnnotation'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (DebugAnnotation'LegacyJsonValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap DebugAnnotation'LegacyJsonValue y__))
instance Data.ProtoLens.Field.HasField DebugAnnotation "legacyJsonValue" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'value
           (\ x__ y__ -> x__ {_DebugAnnotation'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (DebugAnnotation'LegacyJsonValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap DebugAnnotation'LegacyJsonValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField DebugAnnotation "maybe'stringValue" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'value
           (\ x__ y__ -> x__ {_DebugAnnotation'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (DebugAnnotation'StringValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap DebugAnnotation'StringValue y__))
instance Data.ProtoLens.Field.HasField DebugAnnotation "stringValue" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'value
           (\ x__ y__ -> x__ {_DebugAnnotation'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (DebugAnnotation'StringValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap DebugAnnotation'StringValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField DebugAnnotation "maybe'stringValueIid" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'value
           (\ x__ y__ -> x__ {_DebugAnnotation'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (DebugAnnotation'StringValueIid x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap DebugAnnotation'StringValueIid y__))
instance Data.ProtoLens.Field.HasField DebugAnnotation "stringValueIid" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'value
           (\ x__ y__ -> x__ {_DebugAnnotation'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (DebugAnnotation'StringValueIid x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap DebugAnnotation'StringValueIid y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField DebugAnnotation "maybe'protoTypeDescriptor" (Prelude.Maybe DebugAnnotation'ProtoTypeDescriptor) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'protoTypeDescriptor
           (\ x__ y__ -> x__ {_DebugAnnotation'protoTypeDescriptor = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DebugAnnotation "maybe'protoTypeName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'protoTypeDescriptor
           (\ x__ y__ -> x__ {_DebugAnnotation'protoTypeDescriptor = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (DebugAnnotation'ProtoTypeName x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap DebugAnnotation'ProtoTypeName y__))
instance Data.ProtoLens.Field.HasField DebugAnnotation "protoTypeName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'protoTypeDescriptor
           (\ x__ y__ -> x__ {_DebugAnnotation'protoTypeDescriptor = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (DebugAnnotation'ProtoTypeName x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap DebugAnnotation'ProtoTypeName y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField DebugAnnotation "maybe'protoTypeNameIid" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'protoTypeDescriptor
           (\ x__ y__ -> x__ {_DebugAnnotation'protoTypeDescriptor = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (DebugAnnotation'ProtoTypeNameIid x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap DebugAnnotation'ProtoTypeNameIid y__))
instance Data.ProtoLens.Field.HasField DebugAnnotation "protoTypeNameIid" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'protoTypeDescriptor
           (\ x__ y__ -> x__ {_DebugAnnotation'protoTypeDescriptor = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (DebugAnnotation'ProtoTypeNameIid x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap DebugAnnotation'ProtoTypeNameIid y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message DebugAnnotation where
  messageName _ = Data.Text.pack "perfetto.protos.DebugAnnotation"
  packedMessageDescriptor _
    = "\n\
      \\SIDebugAnnotation\DC2\ESC\n\
      \\bname_iid\CAN\SOH \SOH(\EOTH\NULR\anameIid\DC2\DC4\n\
      \\EOTname\CAN\n\
      \ \SOH(\tH\NULR\EOTname\DC2\US\n\
      \\n\
      \bool_value\CAN\STX \SOH(\bH\SOHR\tboolValue\DC2\US\n\
      \\n\
      \uint_value\CAN\ETX \SOH(\EOTH\SOHR\tuintValue\DC2\GS\n\
      \\tint_value\CAN\EOT \SOH(\ETXH\SOHR\bintValue\DC2#\n\
      \\fdouble_value\CAN\ENQ \SOH(\SOHH\SOHR\vdoubleValue\DC2%\n\
      \\rpointer_value\CAN\a \SOH(\EOTH\SOHR\fpointerValue\DC2Q\n\
      \\fnested_value\CAN\b \SOH(\v2,.perfetto.protos.DebugAnnotation.NestedValueH\SOHR\vnestedValue\DC2,\n\
      \\DC1legacy_json_value\CAN\t \SOH(\tH\SOHR\SIlegacyJsonValue\DC2#\n\
      \\fstring_value\CAN\ACK \SOH(\tH\SOHR\vstringValue\DC2*\n\
      \\DLEstring_value_iid\CAN\DC1 \SOH(\EOTH\SOHR\SOstringValueIid\DC2(\n\
      \\SIproto_type_name\CAN\DLE \SOH(\tH\STXR\rprotoTypeName\DC2/\n\
      \\DC3proto_type_name_iid\CAN\r \SOH(\EOTH\STXR\DLEprotoTypeNameIid\DC2\US\n\
      \\vproto_value\CAN\SO \SOH(\fR\n\
      \protoValue\DC2C\n\
      \\fdict_entries\CAN\v \ETX(\v2 .perfetto.protos.DebugAnnotationR\vdictEntries\DC2C\n\
      \\farray_values\CAN\f \ETX(\v2 .perfetto.protos.DebugAnnotationR\varrayValues\SUB\218\ETX\n\
      \\vNestedValue\DC2X\n\
      \\vnested_type\CAN\SOH \SOH(\SO27.perfetto.protos.DebugAnnotation.NestedValue.NestedTypeR\n\
      \nestedType\DC2\ESC\n\
      \\tdict_keys\CAN\STX \ETX(\tR\bdictKeys\DC2M\n\
      \\vdict_values\CAN\ETX \ETX(\v2,.perfetto.protos.DebugAnnotation.NestedValueR\n\
      \dictValues\DC2O\n\
      \\farray_values\CAN\EOT \ETX(\v2,.perfetto.protos.DebugAnnotation.NestedValueR\varrayValues\DC2\ESC\n\
      \\tint_value\CAN\ENQ \SOH(\ETXR\bintValue\DC2!\n\
      \\fdouble_value\CAN\ACK \SOH(\SOHR\vdoubleValue\DC2\GS\n\
      \\n\
      \bool_value\CAN\a \SOH(\bR\tboolValue\DC2!\n\
      \\fstring_value\CAN\b \SOH(\tR\vstringValue\"2\n\
      \\n\
      \NestedType\DC2\SI\n\
      \\vUNSPECIFIED\DLE\NUL\DC2\b\n\
      \\EOTDICT\DLE\SOH\DC2\t\n\
      \\ENQARRAY\DLE\STXB\f\n\
      \\n\
      \name_fieldB\a\n\
      \\ENQvalueB\ETB\n\
      \\NAKproto_type_descriptor"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        protoValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proto_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'protoValue")) ::
              Data.ProtoLens.FieldDescriptor DebugAnnotation
        dictEntries__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dict_entries"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DebugAnnotation)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"dictEntries")) ::
              Data.ProtoLens.FieldDescriptor DebugAnnotation
        arrayValues__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "array_values"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DebugAnnotation)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"arrayValues")) ::
              Data.ProtoLens.FieldDescriptor DebugAnnotation
        nameIid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name_iid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nameIid")) ::
              Data.ProtoLens.FieldDescriptor DebugAnnotation
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'name")) ::
              Data.ProtoLens.FieldDescriptor DebugAnnotation
        boolValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bool_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'boolValue")) ::
              Data.ProtoLens.FieldDescriptor DebugAnnotation
        uintValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "uint_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'uintValue")) ::
              Data.ProtoLens.FieldDescriptor DebugAnnotation
        intValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "int_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'intValue")) ::
              Data.ProtoLens.FieldDescriptor DebugAnnotation
        doubleValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "double_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'doubleValue")) ::
              Data.ProtoLens.FieldDescriptor DebugAnnotation
        pointerValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pointer_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pointerValue")) ::
              Data.ProtoLens.FieldDescriptor DebugAnnotation
        nestedValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nested_value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DebugAnnotation'NestedValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nestedValue")) ::
              Data.ProtoLens.FieldDescriptor DebugAnnotation
        legacyJsonValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "legacy_json_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'legacyJsonValue")) ::
              Data.ProtoLens.FieldDescriptor DebugAnnotation
        stringValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "string_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'stringValue")) ::
              Data.ProtoLens.FieldDescriptor DebugAnnotation
        stringValueIid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "string_value_iid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'stringValueIid")) ::
              Data.ProtoLens.FieldDescriptor DebugAnnotation
        protoTypeName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proto_type_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'protoTypeName")) ::
              Data.ProtoLens.FieldDescriptor DebugAnnotation
        protoTypeNameIid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proto_type_name_iid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'protoTypeNameIid")) ::
              Data.ProtoLens.FieldDescriptor DebugAnnotation
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 14, protoValue__field_descriptor),
           (Data.ProtoLens.Tag 11, dictEntries__field_descriptor),
           (Data.ProtoLens.Tag 12, arrayValues__field_descriptor),
           (Data.ProtoLens.Tag 1, nameIid__field_descriptor),
           (Data.ProtoLens.Tag 10, name__field_descriptor),
           (Data.ProtoLens.Tag 2, boolValue__field_descriptor),
           (Data.ProtoLens.Tag 3, uintValue__field_descriptor),
           (Data.ProtoLens.Tag 4, intValue__field_descriptor),
           (Data.ProtoLens.Tag 5, doubleValue__field_descriptor),
           (Data.ProtoLens.Tag 7, pointerValue__field_descriptor),
           (Data.ProtoLens.Tag 8, nestedValue__field_descriptor),
           (Data.ProtoLens.Tag 9, legacyJsonValue__field_descriptor),
           (Data.ProtoLens.Tag 6, stringValue__field_descriptor),
           (Data.ProtoLens.Tag 17, stringValueIid__field_descriptor),
           (Data.ProtoLens.Tag 16, protoTypeName__field_descriptor),
           (Data.ProtoLens.Tag 13, protoTypeNameIid__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DebugAnnotation'_unknownFields
        (\ x__ y__ -> x__ {_DebugAnnotation'_unknownFields = y__})
  defMessage
    = DebugAnnotation'_constructor
        {_DebugAnnotation'protoValue = Prelude.Nothing,
         _DebugAnnotation'dictEntries = Data.Vector.Generic.empty,
         _DebugAnnotation'arrayValues = Data.Vector.Generic.empty,
         _DebugAnnotation'nameField = Prelude.Nothing,
         _DebugAnnotation'value = Prelude.Nothing,
         _DebugAnnotation'protoTypeDescriptor = Prelude.Nothing,
         _DebugAnnotation'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DebugAnnotation
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld DebugAnnotation
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld DebugAnnotation
                -> Data.ProtoLens.Encoding.Bytes.Parser DebugAnnotation
        loop x mutable'arrayValues mutable'dictEntries
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'arrayValues <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'arrayValues)
                      frozen'dictEntries <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'dictEntries)
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
                              (Data.ProtoLens.Field.field @"vec'arrayValues") frozen'arrayValues
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'dictEntries") frozen'dictEntries
                                 x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        114
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "proto_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"protoValue") y x)
                                  mutable'arrayValues mutable'dictEntries
                        90
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "dict_entries"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'dictEntries y)
                                loop x mutable'arrayValues v
                        98
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "array_values"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'arrayValues y)
                                loop x v mutable'dictEntries
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "name_iid"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nameIid") y x)
                                  mutable'arrayValues mutable'dictEntries
                        82
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
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                                  mutable'arrayValues mutable'dictEntries
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "bool_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"boolValue") y x)
                                  mutable'arrayValues mutable'dictEntries
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "uint_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"uintValue") y x)
                                  mutable'arrayValues mutable'dictEntries
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "int_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"intValue") y x)
                                  mutable'arrayValues mutable'dictEntries
                        41
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToDouble
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "double_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"doubleValue") y x)
                                  mutable'arrayValues mutable'dictEntries
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "pointer_value"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"pointerValue") y x)
                                  mutable'arrayValues mutable'dictEntries
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "nested_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nestedValue") y x)
                                  mutable'arrayValues mutable'dictEntries
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "legacy_json_value"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"legacyJsonValue") y x)
                                  mutable'arrayValues mutable'dictEntries
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
                                       "string_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"stringValue") y x)
                                  mutable'arrayValues mutable'dictEntries
                        136
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "string_value_iid"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"stringValueIid") y x)
                                  mutable'arrayValues mutable'dictEntries
                        130
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "proto_type_name"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"protoTypeName") y x)
                                  mutable'arrayValues mutable'dictEntries
                        104
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "proto_type_name_iid"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"protoTypeNameIid") y x)
                                  mutable'arrayValues mutable'dictEntries
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'arrayValues mutable'dictEntries
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'arrayValues <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              mutable'dictEntries <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'arrayValues mutable'dictEntries)
          "DebugAnnotation"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'protoValue") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 114)
                       ((\ bs
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                   (Prelude.fromIntegral (Data.ByteString.length bs)))
                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          _v))
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage _v))
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'dictEntries") _x))
                ((Data.Monoid.<>)
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 98)
                              ((Prelude..)
                                 (\ bs
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                         (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 Data.ProtoLens.encodeMessage _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'arrayValues") _x))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'nameField") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just (DebugAnnotation'NameIid v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt v)
                         (Prelude.Just (DebugAnnotation'Name v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.Text.Encoding.encodeUtf8 v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just (DebugAnnotation'BoolValue v))
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                                   ((Prelude..)
                                      Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (\ b -> if b then 1 else 0) v)
                            (Prelude.Just (DebugAnnotation'UintValue v))
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt v)
                            (Prelude.Just (DebugAnnotation'IntValue v))
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                   ((Prelude..)
                                      Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                      v)
                            (Prelude.Just (DebugAnnotation'DoubleValue v))
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 41)
                                   ((Prelude..)
                                      Data.ProtoLens.Encoding.Bytes.putFixed64
                                      Data.ProtoLens.Encoding.Bytes.doubleToWord v)
                            (Prelude.Just (DebugAnnotation'PointerValue v))
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt v)
                            (Prelude.Just (DebugAnnotation'NestedValue' v))
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.ProtoLens.encodeMessage v)
                            (Prelude.Just (DebugAnnotation'LegacyJsonValue v))
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.Text.Encoding.encodeUtf8 v)
                            (Prelude.Just (DebugAnnotation'StringValue v))
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.Text.Encoding.encodeUtf8 v)
                            (Prelude.Just (DebugAnnotation'StringValueIid v))
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 136)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'protoTypeDescriptor") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just (DebugAnnotation'ProtoTypeName v))
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 130)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.Text.Encoding.encodeUtf8 v)
                               (Prelude.Just (DebugAnnotation'ProtoTypeNameIid v))
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 104)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData DebugAnnotation where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DebugAnnotation'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DebugAnnotation'protoValue x__)
                (Control.DeepSeq.deepseq
                   (_DebugAnnotation'dictEntries x__)
                   (Control.DeepSeq.deepseq
                      (_DebugAnnotation'arrayValues x__)
                      (Control.DeepSeq.deepseq
                         (_DebugAnnotation'nameField x__)
                         (Control.DeepSeq.deepseq
                            (_DebugAnnotation'value x__)
                            (Control.DeepSeq.deepseq
                               (_DebugAnnotation'protoTypeDescriptor x__) ()))))))
instance Control.DeepSeq.NFData DebugAnnotation'NameField where
  rnf (DebugAnnotation'NameIid x__) = Control.DeepSeq.rnf x__
  rnf (DebugAnnotation'Name x__) = Control.DeepSeq.rnf x__
instance Control.DeepSeq.NFData DebugAnnotation'Value where
  rnf (DebugAnnotation'BoolValue x__) = Control.DeepSeq.rnf x__
  rnf (DebugAnnotation'UintValue x__) = Control.DeepSeq.rnf x__
  rnf (DebugAnnotation'IntValue x__) = Control.DeepSeq.rnf x__
  rnf (DebugAnnotation'DoubleValue x__) = Control.DeepSeq.rnf x__
  rnf (DebugAnnotation'PointerValue x__) = Control.DeepSeq.rnf x__
  rnf (DebugAnnotation'NestedValue' x__) = Control.DeepSeq.rnf x__
  rnf (DebugAnnotation'LegacyJsonValue x__) = Control.DeepSeq.rnf x__
  rnf (DebugAnnotation'StringValue x__) = Control.DeepSeq.rnf x__
  rnf (DebugAnnotation'StringValueIid x__) = Control.DeepSeq.rnf x__
instance Control.DeepSeq.NFData DebugAnnotation'ProtoTypeDescriptor where
  rnf (DebugAnnotation'ProtoTypeName x__) = Control.DeepSeq.rnf x__
  rnf (DebugAnnotation'ProtoTypeNameIid x__)
    = Control.DeepSeq.rnf x__
_DebugAnnotation'NameIid ::
  Data.ProtoLens.Prism.Prism' DebugAnnotation'NameField Data.Word.Word64
_DebugAnnotation'NameIid
  = Data.ProtoLens.Prism.prism'
      DebugAnnotation'NameIid
      (\ p__
         -> case p__ of
              (DebugAnnotation'NameIid p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_DebugAnnotation'Name ::
  Data.ProtoLens.Prism.Prism' DebugAnnotation'NameField Data.Text.Text
_DebugAnnotation'Name
  = Data.ProtoLens.Prism.prism'
      DebugAnnotation'Name
      (\ p__
         -> case p__ of
              (DebugAnnotation'Name p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_DebugAnnotation'BoolValue ::
  Data.ProtoLens.Prism.Prism' DebugAnnotation'Value Prelude.Bool
_DebugAnnotation'BoolValue
  = Data.ProtoLens.Prism.prism'
      DebugAnnotation'BoolValue
      (\ p__
         -> case p__ of
              (DebugAnnotation'BoolValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_DebugAnnotation'UintValue ::
  Data.ProtoLens.Prism.Prism' DebugAnnotation'Value Data.Word.Word64
_DebugAnnotation'UintValue
  = Data.ProtoLens.Prism.prism'
      DebugAnnotation'UintValue
      (\ p__
         -> case p__ of
              (DebugAnnotation'UintValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_DebugAnnotation'IntValue ::
  Data.ProtoLens.Prism.Prism' DebugAnnotation'Value Data.Int.Int64
_DebugAnnotation'IntValue
  = Data.ProtoLens.Prism.prism'
      DebugAnnotation'IntValue
      (\ p__
         -> case p__ of
              (DebugAnnotation'IntValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_DebugAnnotation'DoubleValue ::
  Data.ProtoLens.Prism.Prism' DebugAnnotation'Value Prelude.Double
_DebugAnnotation'DoubleValue
  = Data.ProtoLens.Prism.prism'
      DebugAnnotation'DoubleValue
      (\ p__
         -> case p__ of
              (DebugAnnotation'DoubleValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_DebugAnnotation'PointerValue ::
  Data.ProtoLens.Prism.Prism' DebugAnnotation'Value Data.Word.Word64
_DebugAnnotation'PointerValue
  = Data.ProtoLens.Prism.prism'
      DebugAnnotation'PointerValue
      (\ p__
         -> case p__ of
              (DebugAnnotation'PointerValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_DebugAnnotation'NestedValue' ::
  Data.ProtoLens.Prism.Prism' DebugAnnotation'Value DebugAnnotation'NestedValue
_DebugAnnotation'NestedValue'
  = Data.ProtoLens.Prism.prism'
      DebugAnnotation'NestedValue'
      (\ p__
         -> case p__ of
              (DebugAnnotation'NestedValue' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_DebugAnnotation'LegacyJsonValue ::
  Data.ProtoLens.Prism.Prism' DebugAnnotation'Value Data.Text.Text
_DebugAnnotation'LegacyJsonValue
  = Data.ProtoLens.Prism.prism'
      DebugAnnotation'LegacyJsonValue
      (\ p__
         -> case p__ of
              (DebugAnnotation'LegacyJsonValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_DebugAnnotation'StringValue ::
  Data.ProtoLens.Prism.Prism' DebugAnnotation'Value Data.Text.Text
_DebugAnnotation'StringValue
  = Data.ProtoLens.Prism.prism'
      DebugAnnotation'StringValue
      (\ p__
         -> case p__ of
              (DebugAnnotation'StringValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_DebugAnnotation'StringValueIid ::
  Data.ProtoLens.Prism.Prism' DebugAnnotation'Value Data.Word.Word64
_DebugAnnotation'StringValueIid
  = Data.ProtoLens.Prism.prism'
      DebugAnnotation'StringValueIid
      (\ p__
         -> case p__ of
              (DebugAnnotation'StringValueIid p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_DebugAnnotation'ProtoTypeName ::
  Data.ProtoLens.Prism.Prism' DebugAnnotation'ProtoTypeDescriptor Data.Text.Text
_DebugAnnotation'ProtoTypeName
  = Data.ProtoLens.Prism.prism'
      DebugAnnotation'ProtoTypeName
      (\ p__
         -> case p__ of
              (DebugAnnotation'ProtoTypeName p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_DebugAnnotation'ProtoTypeNameIid ::
  Data.ProtoLens.Prism.Prism' DebugAnnotation'ProtoTypeDescriptor Data.Word.Word64
_DebugAnnotation'ProtoTypeNameIid
  = Data.ProtoLens.Prism.prism'
      DebugAnnotation'ProtoTypeNameIid
      (\ p__
         -> case p__ of
              (DebugAnnotation'ProtoTypeNameIid p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.nestedType' @:: Lens' DebugAnnotation'NestedValue DebugAnnotation'NestedValue'NestedType@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.maybe'nestedType' @:: Lens' DebugAnnotation'NestedValue (Prelude.Maybe DebugAnnotation'NestedValue'NestedType)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.dictKeys' @:: Lens' DebugAnnotation'NestedValue [Data.Text.Text]@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.vec'dictKeys' @:: Lens' DebugAnnotation'NestedValue (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.dictValues' @:: Lens' DebugAnnotation'NestedValue [DebugAnnotation'NestedValue]@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.vec'dictValues' @:: Lens' DebugAnnotation'NestedValue (Data.Vector.Vector DebugAnnotation'NestedValue)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.arrayValues' @:: Lens' DebugAnnotation'NestedValue [DebugAnnotation'NestedValue]@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.vec'arrayValues' @:: Lens' DebugAnnotation'NestedValue (Data.Vector.Vector DebugAnnotation'NestedValue)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.intValue' @:: Lens' DebugAnnotation'NestedValue Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.maybe'intValue' @:: Lens' DebugAnnotation'NestedValue (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.doubleValue' @:: Lens' DebugAnnotation'NestedValue Prelude.Double@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.maybe'doubleValue' @:: Lens' DebugAnnotation'NestedValue (Prelude.Maybe Prelude.Double)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.boolValue' @:: Lens' DebugAnnotation'NestedValue Prelude.Bool@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.maybe'boolValue' @:: Lens' DebugAnnotation'NestedValue (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.stringValue' @:: Lens' DebugAnnotation'NestedValue Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.maybe'stringValue' @:: Lens' DebugAnnotation'NestedValue (Prelude.Maybe Data.Text.Text)@ -}
data DebugAnnotation'NestedValue
  = DebugAnnotation'NestedValue'_constructor {_DebugAnnotation'NestedValue'nestedType :: !(Prelude.Maybe DebugAnnotation'NestedValue'NestedType),
                                              _DebugAnnotation'NestedValue'dictKeys :: !(Data.Vector.Vector Data.Text.Text),
                                              _DebugAnnotation'NestedValue'dictValues :: !(Data.Vector.Vector DebugAnnotation'NestedValue),
                                              _DebugAnnotation'NestedValue'arrayValues :: !(Data.Vector.Vector DebugAnnotation'NestedValue),
                                              _DebugAnnotation'NestedValue'intValue :: !(Prelude.Maybe Data.Int.Int64),
                                              _DebugAnnotation'NestedValue'doubleValue :: !(Prelude.Maybe Prelude.Double),
                                              _DebugAnnotation'NestedValue'boolValue :: !(Prelude.Maybe Prelude.Bool),
                                              _DebugAnnotation'NestedValue'stringValue :: !(Prelude.Maybe Data.Text.Text),
                                              _DebugAnnotation'NestedValue'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DebugAnnotation'NestedValue where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DebugAnnotation'NestedValue "nestedType" DebugAnnotation'NestedValue'NestedType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'NestedValue'nestedType
           (\ x__ y__ -> x__ {_DebugAnnotation'NestedValue'nestedType = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DebugAnnotation'NestedValue "maybe'nestedType" (Prelude.Maybe DebugAnnotation'NestedValue'NestedType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'NestedValue'nestedType
           (\ x__ y__ -> x__ {_DebugAnnotation'NestedValue'nestedType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DebugAnnotation'NestedValue "dictKeys" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'NestedValue'dictKeys
           (\ x__ y__ -> x__ {_DebugAnnotation'NestedValue'dictKeys = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DebugAnnotation'NestedValue "vec'dictKeys" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'NestedValue'dictKeys
           (\ x__ y__ -> x__ {_DebugAnnotation'NestedValue'dictKeys = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DebugAnnotation'NestedValue "dictValues" [DebugAnnotation'NestedValue] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'NestedValue'dictValues
           (\ x__ y__ -> x__ {_DebugAnnotation'NestedValue'dictValues = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DebugAnnotation'NestedValue "vec'dictValues" (Data.Vector.Vector DebugAnnotation'NestedValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'NestedValue'dictValues
           (\ x__ y__ -> x__ {_DebugAnnotation'NestedValue'dictValues = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DebugAnnotation'NestedValue "arrayValues" [DebugAnnotation'NestedValue] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'NestedValue'arrayValues
           (\ x__ y__
              -> x__ {_DebugAnnotation'NestedValue'arrayValues = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DebugAnnotation'NestedValue "vec'arrayValues" (Data.Vector.Vector DebugAnnotation'NestedValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'NestedValue'arrayValues
           (\ x__ y__
              -> x__ {_DebugAnnotation'NestedValue'arrayValues = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DebugAnnotation'NestedValue "intValue" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'NestedValue'intValue
           (\ x__ y__ -> x__ {_DebugAnnotation'NestedValue'intValue = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DebugAnnotation'NestedValue "maybe'intValue" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'NestedValue'intValue
           (\ x__ y__ -> x__ {_DebugAnnotation'NestedValue'intValue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DebugAnnotation'NestedValue "doubleValue" Prelude.Double where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'NestedValue'doubleValue
           (\ x__ y__
              -> x__ {_DebugAnnotation'NestedValue'doubleValue = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DebugAnnotation'NestedValue "maybe'doubleValue" (Prelude.Maybe Prelude.Double) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'NestedValue'doubleValue
           (\ x__ y__
              -> x__ {_DebugAnnotation'NestedValue'doubleValue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DebugAnnotation'NestedValue "boolValue" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'NestedValue'boolValue
           (\ x__ y__ -> x__ {_DebugAnnotation'NestedValue'boolValue = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DebugAnnotation'NestedValue "maybe'boolValue" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'NestedValue'boolValue
           (\ x__ y__ -> x__ {_DebugAnnotation'NestedValue'boolValue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DebugAnnotation'NestedValue "stringValue" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'NestedValue'stringValue
           (\ x__ y__
              -> x__ {_DebugAnnotation'NestedValue'stringValue = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DebugAnnotation'NestedValue "maybe'stringValue" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotation'NestedValue'stringValue
           (\ x__ y__
              -> x__ {_DebugAnnotation'NestedValue'stringValue = y__}))
        Prelude.id
instance Data.ProtoLens.Message DebugAnnotation'NestedValue where
  messageName _
    = Data.Text.pack "perfetto.protos.DebugAnnotation.NestedValue"
  packedMessageDescriptor _
    = "\n\
      \\vNestedValue\DC2X\n\
      \\vnested_type\CAN\SOH \SOH(\SO27.perfetto.protos.DebugAnnotation.NestedValue.NestedTypeR\n\
      \nestedType\DC2\ESC\n\
      \\tdict_keys\CAN\STX \ETX(\tR\bdictKeys\DC2M\n\
      \\vdict_values\CAN\ETX \ETX(\v2,.perfetto.protos.DebugAnnotation.NestedValueR\n\
      \dictValues\DC2O\n\
      \\farray_values\CAN\EOT \ETX(\v2,.perfetto.protos.DebugAnnotation.NestedValueR\varrayValues\DC2\ESC\n\
      \\tint_value\CAN\ENQ \SOH(\ETXR\bintValue\DC2!\n\
      \\fdouble_value\CAN\ACK \SOH(\SOHR\vdoubleValue\DC2\GS\n\
      \\n\
      \bool_value\CAN\a \SOH(\bR\tboolValue\DC2!\n\
      \\fstring_value\CAN\b \SOH(\tR\vstringValue\"2\n\
      \\n\
      \NestedType\DC2\SI\n\
      \\vUNSPECIFIED\DLE\NUL\DC2\b\n\
      \\EOTDICT\DLE\SOH\DC2\t\n\
      \\ENQARRAY\DLE\STX"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        nestedType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nested_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor DebugAnnotation'NestedValue'NestedType)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nestedType")) ::
              Data.ProtoLens.FieldDescriptor DebugAnnotation'NestedValue
        dictKeys__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dict_keys"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"dictKeys")) ::
              Data.ProtoLens.FieldDescriptor DebugAnnotation'NestedValue
        dictValues__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dict_values"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DebugAnnotation'NestedValue)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"dictValues")) ::
              Data.ProtoLens.FieldDescriptor DebugAnnotation'NestedValue
        arrayValues__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "array_values"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DebugAnnotation'NestedValue)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"arrayValues")) ::
              Data.ProtoLens.FieldDescriptor DebugAnnotation'NestedValue
        intValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "int_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'intValue")) ::
              Data.ProtoLens.FieldDescriptor DebugAnnotation'NestedValue
        doubleValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "double_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'doubleValue")) ::
              Data.ProtoLens.FieldDescriptor DebugAnnotation'NestedValue
        boolValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bool_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'boolValue")) ::
              Data.ProtoLens.FieldDescriptor DebugAnnotation'NestedValue
        stringValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "string_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'stringValue")) ::
              Data.ProtoLens.FieldDescriptor DebugAnnotation'NestedValue
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, nestedType__field_descriptor),
           (Data.ProtoLens.Tag 2, dictKeys__field_descriptor),
           (Data.ProtoLens.Tag 3, dictValues__field_descriptor),
           (Data.ProtoLens.Tag 4, arrayValues__field_descriptor),
           (Data.ProtoLens.Tag 5, intValue__field_descriptor),
           (Data.ProtoLens.Tag 6, doubleValue__field_descriptor),
           (Data.ProtoLens.Tag 7, boolValue__field_descriptor),
           (Data.ProtoLens.Tag 8, stringValue__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DebugAnnotation'NestedValue'_unknownFields
        (\ x__ y__
           -> x__ {_DebugAnnotation'NestedValue'_unknownFields = y__})
  defMessage
    = DebugAnnotation'NestedValue'_constructor
        {_DebugAnnotation'NestedValue'nestedType = Prelude.Nothing,
         _DebugAnnotation'NestedValue'dictKeys = Data.Vector.Generic.empty,
         _DebugAnnotation'NestedValue'dictValues = Data.Vector.Generic.empty,
         _DebugAnnotation'NestedValue'arrayValues = Data.Vector.Generic.empty,
         _DebugAnnotation'NestedValue'intValue = Prelude.Nothing,
         _DebugAnnotation'NestedValue'doubleValue = Prelude.Nothing,
         _DebugAnnotation'NestedValue'boolValue = Prelude.Nothing,
         _DebugAnnotation'NestedValue'stringValue = Prelude.Nothing,
         _DebugAnnotation'NestedValue'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DebugAnnotation'NestedValue
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld DebugAnnotation'NestedValue
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld DebugAnnotation'NestedValue
                   -> Data.ProtoLens.Encoding.Bytes.Parser DebugAnnotation'NestedValue
        loop x mutable'arrayValues mutable'dictKeys mutable'dictValues
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'arrayValues <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'arrayValues)
                      frozen'dictKeys <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'dictKeys)
                      frozen'dictValues <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'dictValues)
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
                              (Data.ProtoLens.Field.field @"vec'arrayValues") frozen'arrayValues
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'dictKeys") frozen'dictKeys
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'dictValues") frozen'dictValues
                                    x))))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "nested_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nestedType") y x)
                                  mutable'arrayValues mutable'dictKeys mutable'dictValues
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
                                        "dict_keys"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'dictKeys y)
                                loop x mutable'arrayValues v mutable'dictValues
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "dict_values"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'dictValues y)
                                loop x mutable'arrayValues mutable'dictKeys v
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "array_values"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'arrayValues y)
                                loop x v mutable'dictKeys mutable'dictValues
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "int_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"intValue") y x)
                                  mutable'arrayValues mutable'dictKeys mutable'dictValues
                        49
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToDouble
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "double_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"doubleValue") y x)
                                  mutable'arrayValues mutable'dictKeys mutable'dictValues
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "bool_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"boolValue") y x)
                                  mutable'arrayValues mutable'dictKeys mutable'dictValues
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
                                       "string_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"stringValue") y x)
                                  mutable'arrayValues mutable'dictKeys mutable'dictValues
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'arrayValues mutable'dictKeys mutable'dictValues
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'arrayValues <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              mutable'dictKeys <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              mutable'dictValues <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'arrayValues mutable'dictKeys
                mutable'dictValues)
          "NestedValue"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'nestedType") _x
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
                      (Data.ProtoLens.Field.field @"vec'dictKeys") _x))
                ((Data.Monoid.<>)
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                              ((Prelude..)
                                 (\ bs
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                         (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 Data.ProtoLens.encodeMessage _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'dictValues") _x))
                   ((Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                         (\ _v
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                 ((Prelude..)
                                    (\ bs
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (Prelude.fromIntegral (Data.ByteString.length bs)))
                                            (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                    Data.ProtoLens.encodeMessage _v))
                         (Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vec'arrayValues") _x))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'intValue") _x
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
                                   (Data.ProtoLens.Field.field @"maybe'doubleValue") _x
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
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'boolValue") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                         ((Prelude..)
                                            Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (\ b -> if b then 1 else 0) _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'stringValue") _x
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
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData DebugAnnotation'NestedValue where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DebugAnnotation'NestedValue'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DebugAnnotation'NestedValue'nestedType x__)
                (Control.DeepSeq.deepseq
                   (_DebugAnnotation'NestedValue'dictKeys x__)
                   (Control.DeepSeq.deepseq
                      (_DebugAnnotation'NestedValue'dictValues x__)
                      (Control.DeepSeq.deepseq
                         (_DebugAnnotation'NestedValue'arrayValues x__)
                         (Control.DeepSeq.deepseq
                            (_DebugAnnotation'NestedValue'intValue x__)
                            (Control.DeepSeq.deepseq
                               (_DebugAnnotation'NestedValue'doubleValue x__)
                               (Control.DeepSeq.deepseq
                                  (_DebugAnnotation'NestedValue'boolValue x__)
                                  (Control.DeepSeq.deepseq
                                     (_DebugAnnotation'NestedValue'stringValue x__) ()))))))))
data DebugAnnotation'NestedValue'NestedType
  = DebugAnnotation'NestedValue'UNSPECIFIED |
    DebugAnnotation'NestedValue'DICT |
    DebugAnnotation'NestedValue'ARRAY
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum DebugAnnotation'NestedValue'NestedType where
  maybeToEnum 0
    = Prelude.Just DebugAnnotation'NestedValue'UNSPECIFIED
  maybeToEnum 1 = Prelude.Just DebugAnnotation'NestedValue'DICT
  maybeToEnum 2 = Prelude.Just DebugAnnotation'NestedValue'ARRAY
  maybeToEnum _ = Prelude.Nothing
  showEnum DebugAnnotation'NestedValue'UNSPECIFIED = "UNSPECIFIED"
  showEnum DebugAnnotation'NestedValue'DICT = "DICT"
  showEnum DebugAnnotation'NestedValue'ARRAY = "ARRAY"
  readEnum k
    | (Prelude.==) k "UNSPECIFIED"
    = Prelude.Just DebugAnnotation'NestedValue'UNSPECIFIED
    | (Prelude.==) k "DICT"
    = Prelude.Just DebugAnnotation'NestedValue'DICT
    | (Prelude.==) k "ARRAY"
    = Prelude.Just DebugAnnotation'NestedValue'ARRAY
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded DebugAnnotation'NestedValue'NestedType where
  minBound = DebugAnnotation'NestedValue'UNSPECIFIED
  maxBound = DebugAnnotation'NestedValue'ARRAY
instance Prelude.Enum DebugAnnotation'NestedValue'NestedType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum NestedType: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum DebugAnnotation'NestedValue'UNSPECIFIED = 0
  fromEnum DebugAnnotation'NestedValue'DICT = 1
  fromEnum DebugAnnotation'NestedValue'ARRAY = 2
  succ DebugAnnotation'NestedValue'ARRAY
    = Prelude.error
        "DebugAnnotation'NestedValue'NestedType.succ: bad argument DebugAnnotation'NestedValue'ARRAY. This value would be out of bounds."
  succ DebugAnnotation'NestedValue'UNSPECIFIED
    = DebugAnnotation'NestedValue'DICT
  succ DebugAnnotation'NestedValue'DICT
    = DebugAnnotation'NestedValue'ARRAY
  pred DebugAnnotation'NestedValue'UNSPECIFIED
    = Prelude.error
        "DebugAnnotation'NestedValue'NestedType.pred: bad argument DebugAnnotation'NestedValue'UNSPECIFIED. This value would be out of bounds."
  pred DebugAnnotation'NestedValue'DICT
    = DebugAnnotation'NestedValue'UNSPECIFIED
  pred DebugAnnotation'NestedValue'ARRAY
    = DebugAnnotation'NestedValue'DICT
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault DebugAnnotation'NestedValue'NestedType where
  fieldDefault = DebugAnnotation'NestedValue'UNSPECIFIED
instance Control.DeepSeq.NFData DebugAnnotation'NestedValue'NestedType where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.iid' @:: Lens' DebugAnnotationName Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.maybe'iid' @:: Lens' DebugAnnotationName (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.name' @:: Lens' DebugAnnotationName Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.maybe'name' @:: Lens' DebugAnnotationName (Prelude.Maybe Data.Text.Text)@ -}
data DebugAnnotationName
  = DebugAnnotationName'_constructor {_DebugAnnotationName'iid :: !(Prelude.Maybe Data.Word.Word64),
                                      _DebugAnnotationName'name :: !(Prelude.Maybe Data.Text.Text),
                                      _DebugAnnotationName'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DebugAnnotationName where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DebugAnnotationName "iid" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotationName'iid
           (\ x__ y__ -> x__ {_DebugAnnotationName'iid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DebugAnnotationName "maybe'iid" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotationName'iid
           (\ x__ y__ -> x__ {_DebugAnnotationName'iid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DebugAnnotationName "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotationName'name
           (\ x__ y__ -> x__ {_DebugAnnotationName'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DebugAnnotationName "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotationName'name
           (\ x__ y__ -> x__ {_DebugAnnotationName'name = y__}))
        Prelude.id
instance Data.ProtoLens.Message DebugAnnotationName where
  messageName _
    = Data.Text.pack "perfetto.protos.DebugAnnotationName"
  packedMessageDescriptor _
    = "\n\
      \\DC3DebugAnnotationName\DC2\DLE\n\
      \\ETXiid\CAN\SOH \SOH(\EOTR\ETXiid\DC2\DC2\n\
      \\EOTname\CAN\STX \SOH(\tR\EOTname"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        iid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "iid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'iid")) ::
              Data.ProtoLens.FieldDescriptor DebugAnnotationName
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'name")) ::
              Data.ProtoLens.FieldDescriptor DebugAnnotationName
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, iid__field_descriptor),
           (Data.ProtoLens.Tag 2, name__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DebugAnnotationName'_unknownFields
        (\ x__ y__ -> x__ {_DebugAnnotationName'_unknownFields = y__})
  defMessage
    = DebugAnnotationName'_constructor
        {_DebugAnnotationName'iid = Prelude.Nothing,
         _DebugAnnotationName'name = Prelude.Nothing,
         _DebugAnnotationName'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DebugAnnotationName
          -> Data.ProtoLens.Encoding.Bytes.Parser DebugAnnotationName
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "iid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"iid") y x)
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
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DebugAnnotationName"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'iid") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'name") _x
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
instance Control.DeepSeq.NFData DebugAnnotationName where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DebugAnnotationName'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DebugAnnotationName'iid x__)
                (Control.DeepSeq.deepseq (_DebugAnnotationName'name x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.iid' @:: Lens' DebugAnnotationValueTypeName Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.maybe'iid' @:: Lens' DebugAnnotationValueTypeName (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.name' @:: Lens' DebugAnnotationValueTypeName Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields.maybe'name' @:: Lens' DebugAnnotationValueTypeName (Prelude.Maybe Data.Text.Text)@ -}
data DebugAnnotationValueTypeName
  = DebugAnnotationValueTypeName'_constructor {_DebugAnnotationValueTypeName'iid :: !(Prelude.Maybe Data.Word.Word64),
                                               _DebugAnnotationValueTypeName'name :: !(Prelude.Maybe Data.Text.Text),
                                               _DebugAnnotationValueTypeName'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DebugAnnotationValueTypeName where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DebugAnnotationValueTypeName "iid" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotationValueTypeName'iid
           (\ x__ y__ -> x__ {_DebugAnnotationValueTypeName'iid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DebugAnnotationValueTypeName "maybe'iid" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotationValueTypeName'iid
           (\ x__ y__ -> x__ {_DebugAnnotationValueTypeName'iid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DebugAnnotationValueTypeName "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotationValueTypeName'name
           (\ x__ y__ -> x__ {_DebugAnnotationValueTypeName'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DebugAnnotationValueTypeName "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DebugAnnotationValueTypeName'name
           (\ x__ y__ -> x__ {_DebugAnnotationValueTypeName'name = y__}))
        Prelude.id
instance Data.ProtoLens.Message DebugAnnotationValueTypeName where
  messageName _
    = Data.Text.pack "perfetto.protos.DebugAnnotationValueTypeName"
  packedMessageDescriptor _
    = "\n\
      \\FSDebugAnnotationValueTypeName\DC2\DLE\n\
      \\ETXiid\CAN\SOH \SOH(\EOTR\ETXiid\DC2\DC2\n\
      \\EOTname\CAN\STX \SOH(\tR\EOTname"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        iid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "iid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'iid")) ::
              Data.ProtoLens.FieldDescriptor DebugAnnotationValueTypeName
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'name")) ::
              Data.ProtoLens.FieldDescriptor DebugAnnotationValueTypeName
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, iid__field_descriptor),
           (Data.ProtoLens.Tag 2, name__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DebugAnnotationValueTypeName'_unknownFields
        (\ x__ y__
           -> x__ {_DebugAnnotationValueTypeName'_unknownFields = y__})
  defMessage
    = DebugAnnotationValueTypeName'_constructor
        {_DebugAnnotationValueTypeName'iid = Prelude.Nothing,
         _DebugAnnotationValueTypeName'name = Prelude.Nothing,
         _DebugAnnotationValueTypeName'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DebugAnnotationValueTypeName
          -> Data.ProtoLens.Encoding.Bytes.Parser DebugAnnotationValueTypeName
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "iid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"iid") y x)
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
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DebugAnnotationValueTypeName"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'iid") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'name") _x
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
instance Control.DeepSeq.NFData DebugAnnotationValueTypeName where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DebugAnnotationValueTypeName'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DebugAnnotationValueTypeName'iid x__)
                (Control.DeepSeq.deepseq
                   (_DebugAnnotationValueTypeName'name x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \8protos/perfetto/trace/track_event/debug_annotation.proto\DC2\SIperfetto.protos\"\214\t\n\
    \\SIDebugAnnotation\DC2\ESC\n\
    \\bname_iid\CAN\SOH \SOH(\EOTH\NULR\anameIid\DC2\DC4\n\
    \\EOTname\CAN\n\
    \ \SOH(\tH\NULR\EOTname\DC2\US\n\
    \\n\
    \bool_value\CAN\STX \SOH(\bH\SOHR\tboolValue\DC2\US\n\
    \\n\
    \uint_value\CAN\ETX \SOH(\EOTH\SOHR\tuintValue\DC2\GS\n\
    \\tint_value\CAN\EOT \SOH(\ETXH\SOHR\bintValue\DC2#\n\
    \\fdouble_value\CAN\ENQ \SOH(\SOHH\SOHR\vdoubleValue\DC2%\n\
    \\rpointer_value\CAN\a \SOH(\EOTH\SOHR\fpointerValue\DC2Q\n\
    \\fnested_value\CAN\b \SOH(\v2,.perfetto.protos.DebugAnnotation.NestedValueH\SOHR\vnestedValue\DC2,\n\
    \\DC1legacy_json_value\CAN\t \SOH(\tH\SOHR\SIlegacyJsonValue\DC2#\n\
    \\fstring_value\CAN\ACK \SOH(\tH\SOHR\vstringValue\DC2*\n\
    \\DLEstring_value_iid\CAN\DC1 \SOH(\EOTH\SOHR\SOstringValueIid\DC2(\n\
    \\SIproto_type_name\CAN\DLE \SOH(\tH\STXR\rprotoTypeName\DC2/\n\
    \\DC3proto_type_name_iid\CAN\r \SOH(\EOTH\STXR\DLEprotoTypeNameIid\DC2\US\n\
    \\vproto_value\CAN\SO \SOH(\fR\n\
    \protoValue\DC2C\n\
    \\fdict_entries\CAN\v \ETX(\v2 .perfetto.protos.DebugAnnotationR\vdictEntries\DC2C\n\
    \\farray_values\CAN\f \ETX(\v2 .perfetto.protos.DebugAnnotationR\varrayValues\SUB\218\ETX\n\
    \\vNestedValue\DC2X\n\
    \\vnested_type\CAN\SOH \SOH(\SO27.perfetto.protos.DebugAnnotation.NestedValue.NestedTypeR\n\
    \nestedType\DC2\ESC\n\
    \\tdict_keys\CAN\STX \ETX(\tR\bdictKeys\DC2M\n\
    \\vdict_values\CAN\ETX \ETX(\v2,.perfetto.protos.DebugAnnotation.NestedValueR\n\
    \dictValues\DC2O\n\
    \\farray_values\CAN\EOT \ETX(\v2,.perfetto.protos.DebugAnnotation.NestedValueR\varrayValues\DC2\ESC\n\
    \\tint_value\CAN\ENQ \SOH(\ETXR\bintValue\DC2!\n\
    \\fdouble_value\CAN\ACK \SOH(\SOHR\vdoubleValue\DC2\GS\n\
    \\n\
    \bool_value\CAN\a \SOH(\bR\tboolValue\DC2!\n\
    \\fstring_value\CAN\b \SOH(\tR\vstringValue\"2\n\
    \\n\
    \NestedType\DC2\SI\n\
    \\vUNSPECIFIED\DLE\NUL\DC2\b\n\
    \\EOTDICT\DLE\SOH\DC2\t\n\
    \\ENQARRAY\DLE\STXB\f\n\
    \\n\
    \name_fieldB\a\n\
    \\ENQvalueB\ETB\n\
    \\NAKproto_type_descriptor\";\n\
    \\DC3DebugAnnotationName\DC2\DLE\n\
    \\ETXiid\CAN\SOH \SOH(\EOTR\ETXiid\DC2\DC2\n\
    \\EOTname\CAN\STX \SOH(\tR\EOTname\"D\n\
    \\FSDebugAnnotationValueTypeName\DC2\DLE\n\
    \\ETXiid\CAN\SOH \SOH(\EOTR\ETXiid\DC2\DC2\n\
    \\EOTname\CAN\STX \SOH(\tR\EOTnameJ\138)\n\
    \\a\DC2\ENQ\DLE\NUL\142\SOH\SOH\n\
    \\215\EOT\n\
    \\SOH\f\DC2\ETX\DLE\NUL\DC22\204\EOT\n\
    \ Copyright (C) 2019 The Android Open Source Project\n\
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
    \\160\t\n\
    \\STX\EOT\NUL\DC2\EOT=\NUL\DEL\SOH\SUB\147\t Proto representation of untyped key/value annotations provided in TRACE_EVENT\n\
    \ macros. Users of the Perfetto SDK should prefer to use the\n\
    \ perfetto::TracedValue API to fill these protos, rather than filling them\n\
    \ manually.\n\
    \\n\
    \ Debug annotations are intended for debug use and are not considered a stable\n\
    \ API of the trace contents. Trace-based metrics that use debug annotation\n\
    \ values are prone to breakage, so please rely on typed TrackEvent fields for\n\
    \ these instead.\n\
    \\n\
    \ DebugAnnotations support nested arrays and dictionaries. Each entry is\n\
    \ encoded as a single DebugAnnotation message. Only dictionary entries\n\
    \ set the \"name\" field. The TrackEvent message forms an implicit root\n\
    \ dictionary.\n\
    \\n\
    \ Example TrackEvent with nested annotations:\n\
    \   track_event {\n\
    \     debug_annotations {\n\
    \       name: \"foo\"\n\
    \       dict_entries {\n\
    \         name: \"a\"\n\
    \         bool_value: true\n\
    \       }\n\
    \       dict_entries {\n\
    \         name: \"b\"\n\
    \         int_value: 123\n\
    \       }\n\
    \     }\n\
    \     debug_annotations {\n\
    \       name: \"bar\"\n\
    \       array_values {\n\
    \         string_value: \"hello\"\n\
    \       }\n\
    \       array_values {\n\
    \         string_value: \"world\"\n\
    \       }\n\
    \     }\n\
    \   }\n\
    \\n\
    \ Next ID: 18.\n\
    \ Reserved ID: 15\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX=\b\ETB\n\
    \@\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT?\STXD\ETX\SUB2 Name fields are set only for dictionary entries.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX?\b\DC2\n\
    \,\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETXA\EOT\CAN\SUB\US interned DebugAnnotationName.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETXA\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETXA\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETXA\SYN\ETB\n\
    \$\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETXC\EOT\NAK\SUB\ETB non-interned variant.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETXC\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETXC\v\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETXC\DC2\DC4\n\
    \\f\n\
    \\EOT\EOT\NUL\b\SOH\DC2\EOTF\STXZ\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\SOH\SOH\DC2\ETXF\b\r\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETXG\EOT\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETXG\EOT\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETXG\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETXG\SYN\ETB\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETXH\EOT\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETXH\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETXH\v\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETXH\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETXI\EOT\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETXI\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETXI\n\
    \\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETXI\SYN\ETB\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETXJ\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETXJ\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETXJ\v\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETXJ\SUB\ESC\n\
    \{\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETXM\EOT\GS\SUBn Pointers are stored in a separate type as the JSON output treats them\n\
    \ differently from other uint64 values.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ENQ\DC2\ETXM\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETXM\v\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETXM\ESC\FS\n\
    \C\n\
    \\EOT\EOT\NUL\STX\a\DC2\ETXP\EOT!\SUB6 Deprecated. Use dict_entries / array_values instead.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ACK\DC2\ETXP\EOT\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\ETXP\DLE\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\ETXP\US \n\
    \d\n\
    \\EOT\EOT\NUL\STX\b\DC2\ETXT\EOT!\SUBW Legacy instrumentation may not support conversion of nested data to\n\
    \ NestedValue yet.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ENQ\DC2\ETXT\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\SOH\DC2\ETXT\v\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ETX\DC2\ETXT\US \n\
    \=\n\
    \\EOT\EOT\NUL\STX\t\DC2\ETXW\EOT\FS\SUB0 interned and non-interned variants of strings.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\ENQ\DC2\ETXW\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\SOH\DC2\ETXW\v\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\ETX\DC2\ETXW\SUB\ESC\n\
    \U\n\
    \\EOT\EOT\NUL\STX\n\
    \\DC2\ETXY\EOT!\SUBH Corresponds to |debug_annotation_string_values| field in InternedData.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ENQ\DC2\ETXY\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\SOH\DC2\ETXY\v\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ETX\DC2\ETXY\RS \n\
    \\241\STX\n\
    \\EOT\EOT\NUL\b\STX\DC2\EOTa\STXe\ETX\SUB\226\STX Used to embed arbitrary proto messages (which are also typically used to\n\
    \ represent typed TrackEvent arguments). |proto_type_name| or\n\
    \ |proto_type_name_iid| are storing the full name of the proto messages (e.g.\n\
    \ .perfetto.protos.DebugAnnotation) and |proto_value| contains the serialised\n\
    \ proto messages. See |TracedValue::WriteProto| for more details.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\STX\SOH\DC2\ETXa\b\GS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\v\DC2\ETXb\EOT \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\ENQ\DC2\ETXb\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\SOH\DC2\ETXb\v\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\ETX\DC2\ETXb\GS\US\n\
    \5\n\
    \\EOT\EOT\NUL\STX\f\DC2\ETXd\EOT$\SUB( interned DebugAnnotationValueTypeName.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\f\ENQ\DC2\ETXd\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\f\SOH\DC2\ETXd\v\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\f\ETX\DC2\ETXd!#\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\r\DC2\ETXf\STX\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\r\EOT\DC2\ETXf\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\r\ENQ\DC2\ETXf\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\r\SOH\DC2\ETXf\DC1\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\r\ETX\DC2\ETXf\US!\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SO\DC2\ETXh\STX-\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SO\EOT\DC2\ETXh\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SO\ACK\DC2\ETXh\v\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SO\SOH\DC2\ETXh\ESC'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SO\ETX\DC2\ETXh*,\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SI\DC2\ETXi\STX-\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SI\EOT\DC2\ETXi\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SI\ACK\DC2\ETXi\v\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SI\SOH\DC2\ETXi\ESC'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SI\ETX\DC2\ETXi*,\n\
    \\224\SOH\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOTn\STX~\ETX\SUB\209\SOH Deprecated legacy way to use nested values. Only kept for\n\
    \ backwards-compatibility in TraceProcessor. May be removed in the future -\n\
    \ code filling protos should use |dict_entries| and |array_values| instead.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETXn\n\
    \\NAK\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\NUL\EOT\NUL\DC2\EOTo\EOTt\ENQ\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\EOT\NUL\SOH\DC2\ETXo\t\DC3\n\
    \\RS\n\
    \\b\EOT\NUL\ETX\NUL\EOT\NUL\STX\NUL\DC2\ETXq\ACK\SYN\SUB\r leaf value.\n\
    \\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\NUL\SOH\DC2\ETXq\ACK\DC1\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\NUL\STX\DC2\ETXq\DC4\NAK\n\
    \\SI\n\
    \\b\EOT\NUL\ETX\NUL\EOT\NUL\STX\SOH\DC2\ETXr\ACK\SI\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\SOH\SOH\DC2\ETXr\ACK\n\
    \\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\SOH\STX\DC2\ETXr\r\SO\n\
    \\SI\n\
    \\b\EOT\NUL\ETX\NUL\EOT\NUL\STX\STX\DC2\ETXs\ACK\DLE\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\STX\SOH\DC2\ETXs\ACK\v\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\STX\STX\DC2\ETXs\SO\SI\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETXu\EOT(\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\EOT\DC2\ETXu\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ACK\DC2\ETXu\r\ETB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETXu\CAN#\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETXu&'\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\ETXw\EOT\"\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\EOT\DC2\ETXw\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ENQ\DC2\ETXw\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETXw\DC4\GS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETXw !\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\STX\DC2\ETXx\EOT)\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\EOT\DC2\ETXx\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ACK\DC2\ETXx\r\CAN\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\SOH\DC2\ETXx\EM$\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ETX\DC2\ETXx'(\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\ETX\DC2\ETXy\EOT*\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\EOT\DC2\ETXy\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\ACK\DC2\ETXy\r\CAN\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\SOH\DC2\ETXy\EM%\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\ETX\DC2\ETXy()\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\EOT\DC2\ETXz\EOT!\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\EOT\DC2\ETXz\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\ENQ\DC2\ETXz\r\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\SOH\DC2\ETXz\DC3\FS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\ETX\DC2\ETXz\US \n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\ENQ\DC2\ETX{\EOT%\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\EOT\DC2\ETX{\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\ENQ\DC2\ETX{\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\SOH\DC2\ETX{\DC4 \n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\ETX\DC2\ETX{#$\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\ACK\DC2\ETX|\EOT!\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ACK\EOT\DC2\ETX|\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ACK\ENQ\DC2\ETX|\r\DC1\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ACK\SOH\DC2\ETX|\DC2\FS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ACK\ETX\DC2\ETX|\US \n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\a\DC2\ETX}\EOT%\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\a\EOT\DC2\ETX}\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\a\ENQ\DC2\ETX}\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\a\SOH\DC2\ETX}\DC4 \n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\a\ETX\DC2\ETX}#$\n\
    \P\n\
    \\STX\EOT\SOH\DC2\ACK\133\SOH\NUL\136\SOH\SOH2B --------------------\n\
    \ Interned data types:\n\
    \ --------------------\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SOH\SOH\DC2\EOT\133\SOH\b\ESC\n\
    \\f\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\EOT\134\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\EOT\134\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\EOT\134\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\EOT\134\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\EOT\134\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\EOT\135\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\EOT\135\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\EOT\135\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\EOT\135\SOH\DC2\SYN\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\EOT\135\SOH\EM\SUB\n\
    \8\n\
    \\STX\EOT\STX\DC2\ACK\139\SOH\NUL\142\SOH\SOH\SUB* See the |proto_type_descriptor| comment.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\STX\SOH\DC2\EOT\139\SOH\b$\n\
    \\f\n\
    \\EOT\EOT\STX\STX\NUL\DC2\EOT\140\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\EOT\140\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\EOT\140\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\EOT\140\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\EOT\140\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\STX\STX\SOH\DC2\EOT\141\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\EOT\141\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\EOT\141\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\EOT\141\SOH\DC2\SYN\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\EOT\141\SOH\EM\SUB"