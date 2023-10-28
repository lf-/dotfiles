{- This file was auto-generated from protos/perfetto/trace/track_event/debug_annotation.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation_Fields where
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
arrayValues ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "arrayValues" a) =>
  Lens.Family2.LensLike' f s a
arrayValues = Data.ProtoLens.Field.field @"arrayValues"
boolValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "boolValue" a) =>
  Lens.Family2.LensLike' f s a
boolValue = Data.ProtoLens.Field.field @"boolValue"
dictEntries ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dictEntries" a) =>
  Lens.Family2.LensLike' f s a
dictEntries = Data.ProtoLens.Field.field @"dictEntries"
dictKeys ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dictKeys" a) =>
  Lens.Family2.LensLike' f s a
dictKeys = Data.ProtoLens.Field.field @"dictKeys"
dictValues ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dictValues" a) =>
  Lens.Family2.LensLike' f s a
dictValues = Data.ProtoLens.Field.field @"dictValues"
doubleValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "doubleValue" a) =>
  Lens.Family2.LensLike' f s a
doubleValue = Data.ProtoLens.Field.field @"doubleValue"
iid ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "iid" a) =>
  Lens.Family2.LensLike' f s a
iid = Data.ProtoLens.Field.field @"iid"
intValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "intValue" a) =>
  Lens.Family2.LensLike' f s a
intValue = Data.ProtoLens.Field.field @"intValue"
legacyJsonValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "legacyJsonValue" a) =>
  Lens.Family2.LensLike' f s a
legacyJsonValue = Data.ProtoLens.Field.field @"legacyJsonValue"
maybe'boolValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'boolValue" a) =>
  Lens.Family2.LensLike' f s a
maybe'boolValue = Data.ProtoLens.Field.field @"maybe'boolValue"
maybe'doubleValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'doubleValue" a) =>
  Lens.Family2.LensLike' f s a
maybe'doubleValue = Data.ProtoLens.Field.field @"maybe'doubleValue"
maybe'iid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'iid" a) =>
  Lens.Family2.LensLike' f s a
maybe'iid = Data.ProtoLens.Field.field @"maybe'iid"
maybe'intValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'intValue" a) =>
  Lens.Family2.LensLike' f s a
maybe'intValue = Data.ProtoLens.Field.field @"maybe'intValue"
maybe'legacyJsonValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'legacyJsonValue" a) =>
  Lens.Family2.LensLike' f s a
maybe'legacyJsonValue
  = Data.ProtoLens.Field.field @"maybe'legacyJsonValue"
maybe'name ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'name" a) =>
  Lens.Family2.LensLike' f s a
maybe'name = Data.ProtoLens.Field.field @"maybe'name"
maybe'nameField ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nameField" a) =>
  Lens.Family2.LensLike' f s a
maybe'nameField = Data.ProtoLens.Field.field @"maybe'nameField"
maybe'nameIid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nameIid" a) =>
  Lens.Family2.LensLike' f s a
maybe'nameIid = Data.ProtoLens.Field.field @"maybe'nameIid"
maybe'nestedType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nestedType" a) =>
  Lens.Family2.LensLike' f s a
maybe'nestedType = Data.ProtoLens.Field.field @"maybe'nestedType"
maybe'nestedValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nestedValue" a) =>
  Lens.Family2.LensLike' f s a
maybe'nestedValue = Data.ProtoLens.Field.field @"maybe'nestedValue"
maybe'pointerValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pointerValue" a) =>
  Lens.Family2.LensLike' f s a
maybe'pointerValue
  = Data.ProtoLens.Field.field @"maybe'pointerValue"
maybe'protoTypeDescriptor ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'protoTypeDescriptor" a) =>
  Lens.Family2.LensLike' f s a
maybe'protoTypeDescriptor
  = Data.ProtoLens.Field.field @"maybe'protoTypeDescriptor"
maybe'protoTypeName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'protoTypeName" a) =>
  Lens.Family2.LensLike' f s a
maybe'protoTypeName
  = Data.ProtoLens.Field.field @"maybe'protoTypeName"
maybe'protoTypeNameIid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'protoTypeNameIid" a) =>
  Lens.Family2.LensLike' f s a
maybe'protoTypeNameIid
  = Data.ProtoLens.Field.field @"maybe'protoTypeNameIid"
maybe'protoValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'protoValue" a) =>
  Lens.Family2.LensLike' f s a
maybe'protoValue = Data.ProtoLens.Field.field @"maybe'protoValue"
maybe'stringValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'stringValue" a) =>
  Lens.Family2.LensLike' f s a
maybe'stringValue = Data.ProtoLens.Field.field @"maybe'stringValue"
maybe'stringValueIid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'stringValueIid" a) =>
  Lens.Family2.LensLike' f s a
maybe'stringValueIid
  = Data.ProtoLens.Field.field @"maybe'stringValueIid"
maybe'uintValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'uintValue" a) =>
  Lens.Family2.LensLike' f s a
maybe'uintValue = Data.ProtoLens.Field.field @"maybe'uintValue"
maybe'value ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'value" a) =>
  Lens.Family2.LensLike' f s a
maybe'value = Data.ProtoLens.Field.field @"maybe'value"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
nameIid ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "nameIid" a) =>
  Lens.Family2.LensLike' f s a
nameIid = Data.ProtoLens.Field.field @"nameIid"
nestedType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nestedType" a) =>
  Lens.Family2.LensLike' f s a
nestedType = Data.ProtoLens.Field.field @"nestedType"
nestedValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nestedValue" a) =>
  Lens.Family2.LensLike' f s a
nestedValue = Data.ProtoLens.Field.field @"nestedValue"
pointerValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "pointerValue" a) =>
  Lens.Family2.LensLike' f s a
pointerValue = Data.ProtoLens.Field.field @"pointerValue"
protoTypeName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "protoTypeName" a) =>
  Lens.Family2.LensLike' f s a
protoTypeName = Data.ProtoLens.Field.field @"protoTypeName"
protoTypeNameIid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "protoTypeNameIid" a) =>
  Lens.Family2.LensLike' f s a
protoTypeNameIid = Data.ProtoLens.Field.field @"protoTypeNameIid"
protoValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "protoValue" a) =>
  Lens.Family2.LensLike' f s a
protoValue = Data.ProtoLens.Field.field @"protoValue"
stringValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "stringValue" a) =>
  Lens.Family2.LensLike' f s a
stringValue = Data.ProtoLens.Field.field @"stringValue"
stringValueIid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "stringValueIid" a) =>
  Lens.Family2.LensLike' f s a
stringValueIid = Data.ProtoLens.Field.field @"stringValueIid"
uintValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "uintValue" a) =>
  Lens.Family2.LensLike' f s a
uintValue = Data.ProtoLens.Field.field @"uintValue"
vec'arrayValues ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'arrayValues" a) =>
  Lens.Family2.LensLike' f s a
vec'arrayValues = Data.ProtoLens.Field.field @"vec'arrayValues"
vec'dictEntries ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'dictEntries" a) =>
  Lens.Family2.LensLike' f s a
vec'dictEntries = Data.ProtoLens.Field.field @"vec'dictEntries"
vec'dictKeys ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'dictKeys" a) =>
  Lens.Family2.LensLike' f s a
vec'dictKeys = Data.ProtoLens.Field.field @"vec'dictKeys"
vec'dictValues ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'dictValues" a) =>
  Lens.Family2.LensLike' f s a
vec'dictValues = Data.ProtoLens.Field.field @"vec'dictValues"