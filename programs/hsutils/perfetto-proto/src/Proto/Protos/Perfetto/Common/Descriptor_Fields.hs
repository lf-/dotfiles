{- This file was auto-generated from protos/perfetto/common/descriptor.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Common.Descriptor_Fields where
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
aggregateValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "aggregateValue" a) =>
  Lens.Family2.LensLike' f s a
aggregateValue = Data.ProtoLens.Field.field @"aggregateValue"
defaultValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "defaultValue" a) =>
  Lens.Family2.LensLike' f s a
defaultValue = Data.ProtoLens.Field.field @"defaultValue"
dependency ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dependency" a) =>
  Lens.Family2.LensLike' f s a
dependency = Data.ProtoLens.Field.field @"dependency"
doubleValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "doubleValue" a) =>
  Lens.Family2.LensLike' f s a
doubleValue = Data.ProtoLens.Field.field @"doubleValue"
end ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "end" a) =>
  Lens.Family2.LensLike' f s a
end = Data.ProtoLens.Field.field @"end"
enumType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "enumType" a) =>
  Lens.Family2.LensLike' f s a
enumType = Data.ProtoLens.Field.field @"enumType"
extendee ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "extendee" a) =>
  Lens.Family2.LensLike' f s a
extendee = Data.ProtoLens.Field.field @"extendee"
extension ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "extension" a) =>
  Lens.Family2.LensLike' f s a
extension = Data.ProtoLens.Field.field @"extension"
field ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "field" a) =>
  Lens.Family2.LensLike' f s a
field = Data.ProtoLens.Field.field @"field"
file ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "file" a) =>
  Lens.Family2.LensLike' f s a
file = Data.ProtoLens.Field.field @"file"
identifierValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "identifierValue" a) =>
  Lens.Family2.LensLike' f s a
identifierValue = Data.ProtoLens.Field.field @"identifierValue"
isExtension ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "isExtension" a) =>
  Lens.Family2.LensLike' f s a
isExtension = Data.ProtoLens.Field.field @"isExtension"
label ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "label" a) =>
  Lens.Family2.LensLike' f s a
label = Data.ProtoLens.Field.field @"label"
maybe'aggregateValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'aggregateValue" a) =>
  Lens.Family2.LensLike' f s a
maybe'aggregateValue
  = Data.ProtoLens.Field.field @"maybe'aggregateValue"
maybe'defaultValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'defaultValue" a) =>
  Lens.Family2.LensLike' f s a
maybe'defaultValue
  = Data.ProtoLens.Field.field @"maybe'defaultValue"
maybe'doubleValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'doubleValue" a) =>
  Lens.Family2.LensLike' f s a
maybe'doubleValue = Data.ProtoLens.Field.field @"maybe'doubleValue"
maybe'end ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'end" a) =>
  Lens.Family2.LensLike' f s a
maybe'end = Data.ProtoLens.Field.field @"maybe'end"
maybe'extendee ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'extendee" a) =>
  Lens.Family2.LensLike' f s a
maybe'extendee = Data.ProtoLens.Field.field @"maybe'extendee"
maybe'identifierValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'identifierValue" a) =>
  Lens.Family2.LensLike' f s a
maybe'identifierValue
  = Data.ProtoLens.Field.field @"maybe'identifierValue"
maybe'isExtension ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'isExtension" a) =>
  Lens.Family2.LensLike' f s a
maybe'isExtension = Data.ProtoLens.Field.field @"maybe'isExtension"
maybe'label ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'label" a) =>
  Lens.Family2.LensLike' f s a
maybe'label = Data.ProtoLens.Field.field @"maybe'label"
maybe'name ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'name" a) =>
  Lens.Family2.LensLike' f s a
maybe'name = Data.ProtoLens.Field.field @"maybe'name"
maybe'namePart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'namePart" a) =>
  Lens.Family2.LensLike' f s a
maybe'namePart = Data.ProtoLens.Field.field @"maybe'namePart"
maybe'negativeIntValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'negativeIntValue" a) =>
  Lens.Family2.LensLike' f s a
maybe'negativeIntValue
  = Data.ProtoLens.Field.field @"maybe'negativeIntValue"
maybe'number ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'number" a) =>
  Lens.Family2.LensLike' f s a
maybe'number = Data.ProtoLens.Field.field @"maybe'number"
maybe'oneofIndex ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'oneofIndex" a) =>
  Lens.Family2.LensLike' f s a
maybe'oneofIndex = Data.ProtoLens.Field.field @"maybe'oneofIndex"
maybe'options ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'options" a) =>
  Lens.Family2.LensLike' f s a
maybe'options = Data.ProtoLens.Field.field @"maybe'options"
maybe'package ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'package" a) =>
  Lens.Family2.LensLike' f s a
maybe'package = Data.ProtoLens.Field.field @"maybe'package"
maybe'packed ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'packed" a) =>
  Lens.Family2.LensLike' f s a
maybe'packed = Data.ProtoLens.Field.field @"maybe'packed"
maybe'positiveIntValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'positiveIntValue" a) =>
  Lens.Family2.LensLike' f s a
maybe'positiveIntValue
  = Data.ProtoLens.Field.field @"maybe'positiveIntValue"
maybe'start ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'start" a) =>
  Lens.Family2.LensLike' f s a
maybe'start = Data.ProtoLens.Field.field @"maybe'start"
maybe'stringValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'stringValue" a) =>
  Lens.Family2.LensLike' f s a
maybe'stringValue = Data.ProtoLens.Field.field @"maybe'stringValue"
maybe'type' ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'type'" a) =>
  Lens.Family2.LensLike' f s a
maybe'type' = Data.ProtoLens.Field.field @"maybe'type'"
maybe'typeName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'typeName" a) =>
  Lens.Family2.LensLike' f s a
maybe'typeName = Data.ProtoLens.Field.field @"maybe'typeName"
messageType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "messageType" a) =>
  Lens.Family2.LensLike' f s a
messageType = Data.ProtoLens.Field.field @"messageType"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
namePart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "namePart" a) =>
  Lens.Family2.LensLike' f s a
namePart = Data.ProtoLens.Field.field @"namePart"
negativeIntValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "negativeIntValue" a) =>
  Lens.Family2.LensLike' f s a
negativeIntValue = Data.ProtoLens.Field.field @"negativeIntValue"
nestedType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nestedType" a) =>
  Lens.Family2.LensLike' f s a
nestedType = Data.ProtoLens.Field.field @"nestedType"
number ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "number" a) =>
  Lens.Family2.LensLike' f s a
number = Data.ProtoLens.Field.field @"number"
oneofDecl ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "oneofDecl" a) =>
  Lens.Family2.LensLike' f s a
oneofDecl = Data.ProtoLens.Field.field @"oneofDecl"
oneofIndex ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "oneofIndex" a) =>
  Lens.Family2.LensLike' f s a
oneofIndex = Data.ProtoLens.Field.field @"oneofIndex"
options ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "options" a) =>
  Lens.Family2.LensLike' f s a
options = Data.ProtoLens.Field.field @"options"
package ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "package" a) =>
  Lens.Family2.LensLike' f s a
package = Data.ProtoLens.Field.field @"package"
packed ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "packed" a) =>
  Lens.Family2.LensLike' f s a
packed = Data.ProtoLens.Field.field @"packed"
positiveIntValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "positiveIntValue" a) =>
  Lens.Family2.LensLike' f s a
positiveIntValue = Data.ProtoLens.Field.field @"positiveIntValue"
publicDependency ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "publicDependency" a) =>
  Lens.Family2.LensLike' f s a
publicDependency = Data.ProtoLens.Field.field @"publicDependency"
reservedName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "reservedName" a) =>
  Lens.Family2.LensLike' f s a
reservedName = Data.ProtoLens.Field.field @"reservedName"
reservedRange ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "reservedRange" a) =>
  Lens.Family2.LensLike' f s a
reservedRange = Data.ProtoLens.Field.field @"reservedRange"
start ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "start" a) =>
  Lens.Family2.LensLike' f s a
start = Data.ProtoLens.Field.field @"start"
stringValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "stringValue" a) =>
  Lens.Family2.LensLike' f s a
stringValue = Data.ProtoLens.Field.field @"stringValue"
type' ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "type'" a) =>
  Lens.Family2.LensLike' f s a
type' = Data.ProtoLens.Field.field @"type'"
typeName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "typeName" a) =>
  Lens.Family2.LensLike' f s a
typeName = Data.ProtoLens.Field.field @"typeName"
uninterpretedOption ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "uninterpretedOption" a) =>
  Lens.Family2.LensLike' f s a
uninterpretedOption
  = Data.ProtoLens.Field.field @"uninterpretedOption"
value ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "value" a) =>
  Lens.Family2.LensLike' f s a
value = Data.ProtoLens.Field.field @"value"
vec'dependency ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'dependency" a) =>
  Lens.Family2.LensLike' f s a
vec'dependency = Data.ProtoLens.Field.field @"vec'dependency"
vec'enumType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'enumType" a) =>
  Lens.Family2.LensLike' f s a
vec'enumType = Data.ProtoLens.Field.field @"vec'enumType"
vec'extension ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'extension" a) =>
  Lens.Family2.LensLike' f s a
vec'extension = Data.ProtoLens.Field.field @"vec'extension"
vec'field ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'field" a) =>
  Lens.Family2.LensLike' f s a
vec'field = Data.ProtoLens.Field.field @"vec'field"
vec'file ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'file" a) =>
  Lens.Family2.LensLike' f s a
vec'file = Data.ProtoLens.Field.field @"vec'file"
vec'messageType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'messageType" a) =>
  Lens.Family2.LensLike' f s a
vec'messageType = Data.ProtoLens.Field.field @"vec'messageType"
vec'name ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'name" a) =>
  Lens.Family2.LensLike' f s a
vec'name = Data.ProtoLens.Field.field @"vec'name"
vec'nestedType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'nestedType" a) =>
  Lens.Family2.LensLike' f s a
vec'nestedType = Data.ProtoLens.Field.field @"vec'nestedType"
vec'oneofDecl ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'oneofDecl" a) =>
  Lens.Family2.LensLike' f s a
vec'oneofDecl = Data.ProtoLens.Field.field @"vec'oneofDecl"
vec'publicDependency ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'publicDependency" a) =>
  Lens.Family2.LensLike' f s a
vec'publicDependency
  = Data.ProtoLens.Field.field @"vec'publicDependency"
vec'reservedName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'reservedName" a) =>
  Lens.Family2.LensLike' f s a
vec'reservedName = Data.ProtoLens.Field.field @"vec'reservedName"
vec'reservedRange ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'reservedRange" a) =>
  Lens.Family2.LensLike' f s a
vec'reservedRange = Data.ProtoLens.Field.field @"vec'reservedRange"
vec'uninterpretedOption ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'uninterpretedOption" a) =>
  Lens.Family2.LensLike' f s a
vec'uninterpretedOption
  = Data.ProtoLens.Field.field @"vec'uninterpretedOption"
vec'value ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'value" a) =>
  Lens.Family2.LensLike' f s a
vec'value = Data.ProtoLens.Field.field @"vec'value"
vec'weakDependency ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'weakDependency" a) =>
  Lens.Family2.LensLike' f s a
vec'weakDependency
  = Data.ProtoLens.Field.field @"vec'weakDependency"
weakDependency ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "weakDependency" a) =>
  Lens.Family2.LensLike' f s a
weakDependency = Data.ProtoLens.Field.field @"weakDependency"