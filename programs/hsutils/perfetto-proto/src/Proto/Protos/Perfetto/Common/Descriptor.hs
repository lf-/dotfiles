{- This file was auto-generated from protos/perfetto/common/descriptor.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Common.Descriptor (
        DescriptorProto(), DescriptorProto'ReservedRange(),
        EnumDescriptorProto(), EnumValueDescriptorProto(),
        FieldDescriptorProto(), FieldDescriptorProto'Label(..),
        FieldDescriptorProto'Label(), FieldDescriptorProto'Type(..),
        FieldDescriptorProto'Type(), FieldOptions(), FileDescriptorProto(),
        FileDescriptorSet(), OneofDescriptorProto(), OneofOptions(),
        UninterpretedOption(), UninterpretedOption'NamePart()
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
     
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.name' @:: Lens' DescriptorProto Data.Text.Text@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.maybe'name' @:: Lens' DescriptorProto (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.field' @:: Lens' DescriptorProto [FieldDescriptorProto]@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.vec'field' @:: Lens' DescriptorProto (Data.Vector.Vector FieldDescriptorProto)@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.extension' @:: Lens' DescriptorProto [FieldDescriptorProto]@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.vec'extension' @:: Lens' DescriptorProto (Data.Vector.Vector FieldDescriptorProto)@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.nestedType' @:: Lens' DescriptorProto [DescriptorProto]@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.vec'nestedType' @:: Lens' DescriptorProto (Data.Vector.Vector DescriptorProto)@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.enumType' @:: Lens' DescriptorProto [EnumDescriptorProto]@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.vec'enumType' @:: Lens' DescriptorProto (Data.Vector.Vector EnumDescriptorProto)@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.oneofDecl' @:: Lens' DescriptorProto [OneofDescriptorProto]@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.vec'oneofDecl' @:: Lens' DescriptorProto (Data.Vector.Vector OneofDescriptorProto)@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.reservedRange' @:: Lens' DescriptorProto [DescriptorProto'ReservedRange]@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.vec'reservedRange' @:: Lens' DescriptorProto (Data.Vector.Vector DescriptorProto'ReservedRange)@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.reservedName' @:: Lens' DescriptorProto [Data.Text.Text]@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.vec'reservedName' @:: Lens' DescriptorProto (Data.Vector.Vector Data.Text.Text)@ -}
data DescriptorProto
  = DescriptorProto'_constructor {_DescriptorProto'name :: !(Prelude.Maybe Data.Text.Text),
                                  _DescriptorProto'field :: !(Data.Vector.Vector FieldDescriptorProto),
                                  _DescriptorProto'extension :: !(Data.Vector.Vector FieldDescriptorProto),
                                  _DescriptorProto'nestedType :: !(Data.Vector.Vector DescriptorProto),
                                  _DescriptorProto'enumType :: !(Data.Vector.Vector EnumDescriptorProto),
                                  _DescriptorProto'oneofDecl :: !(Data.Vector.Vector OneofDescriptorProto),
                                  _DescriptorProto'reservedRange :: !(Data.Vector.Vector DescriptorProto'ReservedRange),
                                  _DescriptorProto'reservedName :: !(Data.Vector.Vector Data.Text.Text),
                                  _DescriptorProto'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DescriptorProto where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DescriptorProto "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DescriptorProto'name
           (\ x__ y__ -> x__ {_DescriptorProto'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DescriptorProto "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DescriptorProto'name
           (\ x__ y__ -> x__ {_DescriptorProto'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DescriptorProto "field" [FieldDescriptorProto] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DescriptorProto'field
           (\ x__ y__ -> x__ {_DescriptorProto'field = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DescriptorProto "vec'field" (Data.Vector.Vector FieldDescriptorProto) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DescriptorProto'field
           (\ x__ y__ -> x__ {_DescriptorProto'field = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DescriptorProto "extension" [FieldDescriptorProto] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DescriptorProto'extension
           (\ x__ y__ -> x__ {_DescriptorProto'extension = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DescriptorProto "vec'extension" (Data.Vector.Vector FieldDescriptorProto) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DescriptorProto'extension
           (\ x__ y__ -> x__ {_DescriptorProto'extension = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DescriptorProto "nestedType" [DescriptorProto] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DescriptorProto'nestedType
           (\ x__ y__ -> x__ {_DescriptorProto'nestedType = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DescriptorProto "vec'nestedType" (Data.Vector.Vector DescriptorProto) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DescriptorProto'nestedType
           (\ x__ y__ -> x__ {_DescriptorProto'nestedType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DescriptorProto "enumType" [EnumDescriptorProto] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DescriptorProto'enumType
           (\ x__ y__ -> x__ {_DescriptorProto'enumType = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DescriptorProto "vec'enumType" (Data.Vector.Vector EnumDescriptorProto) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DescriptorProto'enumType
           (\ x__ y__ -> x__ {_DescriptorProto'enumType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DescriptorProto "oneofDecl" [OneofDescriptorProto] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DescriptorProto'oneofDecl
           (\ x__ y__ -> x__ {_DescriptorProto'oneofDecl = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DescriptorProto "vec'oneofDecl" (Data.Vector.Vector OneofDescriptorProto) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DescriptorProto'oneofDecl
           (\ x__ y__ -> x__ {_DescriptorProto'oneofDecl = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DescriptorProto "reservedRange" [DescriptorProto'ReservedRange] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DescriptorProto'reservedRange
           (\ x__ y__ -> x__ {_DescriptorProto'reservedRange = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DescriptorProto "vec'reservedRange" (Data.Vector.Vector DescriptorProto'ReservedRange) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DescriptorProto'reservedRange
           (\ x__ y__ -> x__ {_DescriptorProto'reservedRange = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DescriptorProto "reservedName" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DescriptorProto'reservedName
           (\ x__ y__ -> x__ {_DescriptorProto'reservedName = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DescriptorProto "vec'reservedName" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DescriptorProto'reservedName
           (\ x__ y__ -> x__ {_DescriptorProto'reservedName = y__}))
        Prelude.id
instance Data.ProtoLens.Message DescriptorProto where
  messageName _ = Data.Text.pack "perfetto.protos.DescriptorProto"
  packedMessageDescriptor _
    = "\n\
      \\SIDescriptorProto\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2;\n\
      \\ENQfield\CAN\STX \ETX(\v2%.perfetto.protos.FieldDescriptorProtoR\ENQfield\DC2C\n\
      \\textension\CAN\ACK \ETX(\v2%.perfetto.protos.FieldDescriptorProtoR\textension\DC2A\n\
      \\vnested_type\CAN\ETX \ETX(\v2 .perfetto.protos.DescriptorProtoR\n\
      \nestedType\DC2A\n\
      \\tenum_type\CAN\EOT \ETX(\v2$.perfetto.protos.EnumDescriptorProtoR\benumType\DC2D\n\
      \\n\
      \oneof_decl\CAN\b \ETX(\v2%.perfetto.protos.OneofDescriptorProtoR\toneofDecl\DC2U\n\
      \\SOreserved_range\CAN\t \ETX(\v2..perfetto.protos.DescriptorProto.ReservedRangeR\rreservedRange\DC2#\n\
      \\rreserved_name\CAN\n\
      \ \ETX(\tR\freservedName\SUB7\n\
      \\rReservedRange\DC2\DC4\n\
      \\ENQstart\CAN\SOH \SOH(\ENQR\ENQstart\DC2\DLE\n\
      \\ETXend\CAN\STX \SOH(\ENQR\ETXendJ\EOT\b\ENQ\DLE\ACKJ\EOT\b\a\DLE\b"
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
              Data.ProtoLens.FieldDescriptor DescriptorProto
        field__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "field"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor FieldDescriptorProto)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"field")) ::
              Data.ProtoLens.FieldDescriptor DescriptorProto
        extension__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "extension"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor FieldDescriptorProto)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"extension")) ::
              Data.ProtoLens.FieldDescriptor DescriptorProto
        nestedType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nested_type"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DescriptorProto)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"nestedType")) ::
              Data.ProtoLens.FieldDescriptor DescriptorProto
        enumType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "enum_type"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor EnumDescriptorProto)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"enumType")) ::
              Data.ProtoLens.FieldDescriptor DescriptorProto
        oneofDecl__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "oneof_decl"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor OneofDescriptorProto)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"oneofDecl")) ::
              Data.ProtoLens.FieldDescriptor DescriptorProto
        reservedRange__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reserved_range"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DescriptorProto'ReservedRange)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"reservedRange")) ::
              Data.ProtoLens.FieldDescriptor DescriptorProto
        reservedName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reserved_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"reservedName")) ::
              Data.ProtoLens.FieldDescriptor DescriptorProto
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, field__field_descriptor),
           (Data.ProtoLens.Tag 6, extension__field_descriptor),
           (Data.ProtoLens.Tag 3, nestedType__field_descriptor),
           (Data.ProtoLens.Tag 4, enumType__field_descriptor),
           (Data.ProtoLens.Tag 8, oneofDecl__field_descriptor),
           (Data.ProtoLens.Tag 9, reservedRange__field_descriptor),
           (Data.ProtoLens.Tag 10, reservedName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DescriptorProto'_unknownFields
        (\ x__ y__ -> x__ {_DescriptorProto'_unknownFields = y__})
  defMessage
    = DescriptorProto'_constructor
        {_DescriptorProto'name = Prelude.Nothing,
         _DescriptorProto'field = Data.Vector.Generic.empty,
         _DescriptorProto'extension = Data.Vector.Generic.empty,
         _DescriptorProto'nestedType = Data.Vector.Generic.empty,
         _DescriptorProto'enumType = Data.Vector.Generic.empty,
         _DescriptorProto'oneofDecl = Data.Vector.Generic.empty,
         _DescriptorProto'reservedRange = Data.Vector.Generic.empty,
         _DescriptorProto'reservedName = Data.Vector.Generic.empty,
         _DescriptorProto'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DescriptorProto
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld EnumDescriptorProto
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld FieldDescriptorProto
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld FieldDescriptorProto
                   -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld DescriptorProto
                      -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld OneofDescriptorProto
                         -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                            -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld DescriptorProto'ReservedRange
                               -> Data.ProtoLens.Encoding.Bytes.Parser DescriptorProto
        loop
          x
          mutable'enumType
          mutable'extension
          mutable'field
          mutable'nestedType
          mutable'oneofDecl
          mutable'reservedName
          mutable'reservedRange
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'enumType <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'enumType)
                      frozen'extension <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'extension)
                      frozen'field <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'field)
                      frozen'nestedType <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'nestedType)
                      frozen'oneofDecl <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'oneofDecl)
                      frozen'reservedName <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'reservedName)
                      frozen'reservedRange <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'reservedRange)
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
                              (Data.ProtoLens.Field.field @"vec'enumType") frozen'enumType
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'extension") frozen'extension
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'field") frozen'field
                                    (Lens.Family2.set
                                       (Data.ProtoLens.Field.field @"vec'nestedType")
                                       frozen'nestedType
                                       (Lens.Family2.set
                                          (Data.ProtoLens.Field.field @"vec'oneofDecl")
                                          frozen'oneofDecl
                                          (Lens.Family2.set
                                             (Data.ProtoLens.Field.field @"vec'reservedName")
                                             frozen'reservedName
                                             (Lens.Family2.set
                                                (Data.ProtoLens.Field.field @"vec'reservedRange")
                                                frozen'reservedRange x))))))))
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
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                                  mutable'enumType mutable'extension mutable'field
                                  mutable'nestedType mutable'oneofDecl mutable'reservedName
                                  mutable'reservedRange
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "field"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'field y)
                                loop
                                  x mutable'enumType mutable'extension v mutable'nestedType
                                  mutable'oneofDecl mutable'reservedName mutable'reservedRange
                        50
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "extension"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'extension y)
                                loop
                                  x mutable'enumType v mutable'field mutable'nestedType
                                  mutable'oneofDecl mutable'reservedName mutable'reservedRange
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "nested_type"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'nestedType y)
                                loop
                                  x mutable'enumType mutable'extension mutable'field v
                                  mutable'oneofDecl mutable'reservedName mutable'reservedRange
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "enum_type"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'enumType y)
                                loop
                                  x v mutable'extension mutable'field mutable'nestedType
                                  mutable'oneofDecl mutable'reservedName mutable'reservedRange
                        66
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "oneof_decl"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'oneofDecl y)
                                loop
                                  x mutable'enumType mutable'extension mutable'field
                                  mutable'nestedType v mutable'reservedName mutable'reservedRange
                        74
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "reserved_range"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'reservedRange y)
                                loop
                                  x mutable'enumType mutable'extension mutable'field
                                  mutable'nestedType mutable'oneofDecl mutable'reservedName v
                        82
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "reserved_name"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'reservedName y)
                                loop
                                  x mutable'enumType mutable'extension mutable'field
                                  mutable'nestedType mutable'oneofDecl v mutable'reservedRange
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'enumType mutable'extension mutable'field
                                  mutable'nestedType mutable'oneofDecl mutable'reservedName
                                  mutable'reservedRange
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'enumType <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              mutable'extension <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              mutable'field <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              mutable'nestedType <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              mutable'oneofDecl <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              mutable'reservedName <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              mutable'reservedRange <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'enumType mutable'extension
                mutable'field mutable'nestedType mutable'oneofDecl
                mutable'reservedName mutable'reservedRange)
          "DescriptorProto"
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
                ((Data.Monoid.<>)
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                              ((Prelude..)
                                 (\ bs
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                         (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 Data.ProtoLens.encodeMessage _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'extension") _x))
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
                            (Data.ProtoLens.Field.field @"vec'nestedType") _x))
                      ((Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                            (\ _v
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                    ((Prelude..)
                                       (\ bs
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  (Prelude.fromIntegral
                                                     (Data.ByteString.length bs)))
                                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                       Data.ProtoLens.encodeMessage _v))
                            (Lens.Family2.view
                               (Data.ProtoLens.Field.field @"vec'enumType") _x))
                         ((Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                               (\ _v
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                       ((Prelude..)
                                          (\ bs
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                     (Prelude.fromIntegral
                                                        (Data.ByteString.length bs)))
                                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                          Data.ProtoLens.encodeMessage _v))
                               (Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"vec'oneofDecl") _x))
                            ((Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                  (\ _v
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                          ((Prelude..)
                                             (\ bs
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                        (Prelude.fromIntegral
                                                           (Data.ByteString.length bs)))
                                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                             Data.ProtoLens.encodeMessage _v))
                                  (Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"vec'reservedRange") _x))
                               ((Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                     (\ _v
                                        -> (Data.Monoid.<>)
                                             (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                                             ((Prelude..)
                                                (\ bs
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           (Prelude.fromIntegral
                                                              (Data.ByteString.length bs)))
                                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                Data.Text.Encoding.encodeUtf8 _v))
                                     (Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"vec'reservedName") _x))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData DescriptorProto where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DescriptorProto'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DescriptorProto'name x__)
                (Control.DeepSeq.deepseq
                   (_DescriptorProto'field x__)
                   (Control.DeepSeq.deepseq
                      (_DescriptorProto'extension x__)
                      (Control.DeepSeq.deepseq
                         (_DescriptorProto'nestedType x__)
                         (Control.DeepSeq.deepseq
                            (_DescriptorProto'enumType x__)
                            (Control.DeepSeq.deepseq
                               (_DescriptorProto'oneofDecl x__)
                               (Control.DeepSeq.deepseq
                                  (_DescriptorProto'reservedRange x__)
                                  (Control.DeepSeq.deepseq
                                     (_DescriptorProto'reservedName x__) ()))))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.start' @:: Lens' DescriptorProto'ReservedRange Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.maybe'start' @:: Lens' DescriptorProto'ReservedRange (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.end' @:: Lens' DescriptorProto'ReservedRange Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.maybe'end' @:: Lens' DescriptorProto'ReservedRange (Prelude.Maybe Data.Int.Int32)@ -}
data DescriptorProto'ReservedRange
  = DescriptorProto'ReservedRange'_constructor {_DescriptorProto'ReservedRange'start :: !(Prelude.Maybe Data.Int.Int32),
                                                _DescriptorProto'ReservedRange'end :: !(Prelude.Maybe Data.Int.Int32),
                                                _DescriptorProto'ReservedRange'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DescriptorProto'ReservedRange where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DescriptorProto'ReservedRange "start" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DescriptorProto'ReservedRange'start
           (\ x__ y__ -> x__ {_DescriptorProto'ReservedRange'start = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DescriptorProto'ReservedRange "maybe'start" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DescriptorProto'ReservedRange'start
           (\ x__ y__ -> x__ {_DescriptorProto'ReservedRange'start = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DescriptorProto'ReservedRange "end" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DescriptorProto'ReservedRange'end
           (\ x__ y__ -> x__ {_DescriptorProto'ReservedRange'end = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DescriptorProto'ReservedRange "maybe'end" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DescriptorProto'ReservedRange'end
           (\ x__ y__ -> x__ {_DescriptorProto'ReservedRange'end = y__}))
        Prelude.id
instance Data.ProtoLens.Message DescriptorProto'ReservedRange where
  messageName _
    = Data.Text.pack "perfetto.protos.DescriptorProto.ReservedRange"
  packedMessageDescriptor _
    = "\n\
      \\rReservedRange\DC2\DC4\n\
      \\ENQstart\CAN\SOH \SOH(\ENQR\ENQstart\DC2\DLE\n\
      \\ETXend\CAN\STX \SOH(\ENQR\ETXend"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        start__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'start")) ::
              Data.ProtoLens.FieldDescriptor DescriptorProto'ReservedRange
        end__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "end"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'end")) ::
              Data.ProtoLens.FieldDescriptor DescriptorProto'ReservedRange
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, start__field_descriptor),
           (Data.ProtoLens.Tag 2, end__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DescriptorProto'ReservedRange'_unknownFields
        (\ x__ y__
           -> x__ {_DescriptorProto'ReservedRange'_unknownFields = y__})
  defMessage
    = DescriptorProto'ReservedRange'_constructor
        {_DescriptorProto'ReservedRange'start = Prelude.Nothing,
         _DescriptorProto'ReservedRange'end = Prelude.Nothing,
         _DescriptorProto'ReservedRange'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DescriptorProto'ReservedRange
          -> Data.ProtoLens.Encoding.Bytes.Parser DescriptorProto'ReservedRange
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
                                       "start"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"start") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "end"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"end") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ReservedRange"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'start") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'end") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData DescriptorProto'ReservedRange where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DescriptorProto'ReservedRange'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DescriptorProto'ReservedRange'start x__)
                (Control.DeepSeq.deepseq
                   (_DescriptorProto'ReservedRange'end x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.name' @:: Lens' EnumDescriptorProto Data.Text.Text@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.maybe'name' @:: Lens' EnumDescriptorProto (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.value' @:: Lens' EnumDescriptorProto [EnumValueDescriptorProto]@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.vec'value' @:: Lens' EnumDescriptorProto (Data.Vector.Vector EnumValueDescriptorProto)@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.reservedName' @:: Lens' EnumDescriptorProto [Data.Text.Text]@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.vec'reservedName' @:: Lens' EnumDescriptorProto (Data.Vector.Vector Data.Text.Text)@ -}
data EnumDescriptorProto
  = EnumDescriptorProto'_constructor {_EnumDescriptorProto'name :: !(Prelude.Maybe Data.Text.Text),
                                      _EnumDescriptorProto'value :: !(Data.Vector.Vector EnumValueDescriptorProto),
                                      _EnumDescriptorProto'reservedName :: !(Data.Vector.Vector Data.Text.Text),
                                      _EnumDescriptorProto'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EnumDescriptorProto where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EnumDescriptorProto "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnumDescriptorProto'name
           (\ x__ y__ -> x__ {_EnumDescriptorProto'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField EnumDescriptorProto "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnumDescriptorProto'name
           (\ x__ y__ -> x__ {_EnumDescriptorProto'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EnumDescriptorProto "value" [EnumValueDescriptorProto] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnumDescriptorProto'value
           (\ x__ y__ -> x__ {_EnumDescriptorProto'value = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField EnumDescriptorProto "vec'value" (Data.Vector.Vector EnumValueDescriptorProto) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnumDescriptorProto'value
           (\ x__ y__ -> x__ {_EnumDescriptorProto'value = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EnumDescriptorProto "reservedName" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnumDescriptorProto'reservedName
           (\ x__ y__ -> x__ {_EnumDescriptorProto'reservedName = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField EnumDescriptorProto "vec'reservedName" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnumDescriptorProto'reservedName
           (\ x__ y__ -> x__ {_EnumDescriptorProto'reservedName = y__}))
        Prelude.id
instance Data.ProtoLens.Message EnumDescriptorProto where
  messageName _
    = Data.Text.pack "perfetto.protos.EnumDescriptorProto"
  packedMessageDescriptor _
    = "\n\
      \\DC3EnumDescriptorProto\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2?\n\
      \\ENQvalue\CAN\STX \ETX(\v2).perfetto.protos.EnumValueDescriptorProtoR\ENQvalue\DC2#\n\
      \\rreserved_name\CAN\ENQ \ETX(\tR\freservedNameJ\EOT\b\ETX\DLE\EOTJ\EOT\b\EOT\DLE\ENQ"
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
              Data.ProtoLens.FieldDescriptor EnumDescriptorProto
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor EnumValueDescriptorProto)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor EnumDescriptorProto
        reservedName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reserved_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"reservedName")) ::
              Data.ProtoLens.FieldDescriptor EnumDescriptorProto
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor),
           (Data.ProtoLens.Tag 5, reservedName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EnumDescriptorProto'_unknownFields
        (\ x__ y__ -> x__ {_EnumDescriptorProto'_unknownFields = y__})
  defMessage
    = EnumDescriptorProto'_constructor
        {_EnumDescriptorProto'name = Prelude.Nothing,
         _EnumDescriptorProto'value = Data.Vector.Generic.empty,
         _EnumDescriptorProto'reservedName = Data.Vector.Generic.empty,
         _EnumDescriptorProto'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EnumDescriptorProto
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld EnumValueDescriptorProto
                -> Data.ProtoLens.Encoding.Bytes.Parser EnumDescriptorProto
        loop x mutable'reservedName mutable'value
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'reservedName <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'reservedName)
                      frozen'value <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'value)
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
                              (Data.ProtoLens.Field.field @"vec'reservedName")
                              frozen'reservedName
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'value") frozen'value x)))
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
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                                  mutable'reservedName mutable'value
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "value"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'value y)
                                loop x mutable'reservedName v
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "reserved_name"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'reservedName y)
                                loop x v mutable'value
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'reservedName mutable'value
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'reservedName <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              mutable'value <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'reservedName mutable'value)
          "EnumDescriptorProto"
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
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'value") _x))
                ((Data.Monoid.<>)
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                              ((Prelude..)
                                 (\ bs
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                         (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 Data.Text.Encoding.encodeUtf8 _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'reservedName") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData EnumDescriptorProto where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EnumDescriptorProto'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EnumDescriptorProto'name x__)
                (Control.DeepSeq.deepseq
                   (_EnumDescriptorProto'value x__)
                   (Control.DeepSeq.deepseq
                      (_EnumDescriptorProto'reservedName x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.name' @:: Lens' EnumValueDescriptorProto Data.Text.Text@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.maybe'name' @:: Lens' EnumValueDescriptorProto (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.number' @:: Lens' EnumValueDescriptorProto Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.maybe'number' @:: Lens' EnumValueDescriptorProto (Prelude.Maybe Data.Int.Int32)@ -}
data EnumValueDescriptorProto
  = EnumValueDescriptorProto'_constructor {_EnumValueDescriptorProto'name :: !(Prelude.Maybe Data.Text.Text),
                                           _EnumValueDescriptorProto'number :: !(Prelude.Maybe Data.Int.Int32),
                                           _EnumValueDescriptorProto'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EnumValueDescriptorProto where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EnumValueDescriptorProto "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnumValueDescriptorProto'name
           (\ x__ y__ -> x__ {_EnumValueDescriptorProto'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField EnumValueDescriptorProto "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnumValueDescriptorProto'name
           (\ x__ y__ -> x__ {_EnumValueDescriptorProto'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EnumValueDescriptorProto "number" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnumValueDescriptorProto'number
           (\ x__ y__ -> x__ {_EnumValueDescriptorProto'number = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField EnumValueDescriptorProto "maybe'number" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EnumValueDescriptorProto'number
           (\ x__ y__ -> x__ {_EnumValueDescriptorProto'number = y__}))
        Prelude.id
instance Data.ProtoLens.Message EnumValueDescriptorProto where
  messageName _
    = Data.Text.pack "perfetto.protos.EnumValueDescriptorProto"
  packedMessageDescriptor _
    = "\n\
      \\CANEnumValueDescriptorProto\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\SYN\n\
      \\ACKnumber\CAN\STX \SOH(\ENQR\ACKnumberJ\EOT\b\ETX\DLE\EOT"
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
              Data.ProtoLens.FieldDescriptor EnumValueDescriptorProto
        number__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "number"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'number")) ::
              Data.ProtoLens.FieldDescriptor EnumValueDescriptorProto
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, number__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EnumValueDescriptorProto'_unknownFields
        (\ x__ y__ -> x__ {_EnumValueDescriptorProto'_unknownFields = y__})
  defMessage
    = EnumValueDescriptorProto'_constructor
        {_EnumValueDescriptorProto'name = Prelude.Nothing,
         _EnumValueDescriptorProto'number = Prelude.Nothing,
         _EnumValueDescriptorProto'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EnumValueDescriptorProto
          -> Data.ProtoLens.Encoding.Bytes.Parser EnumValueDescriptorProto
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
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "number"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"number") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EnumValueDescriptorProto"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'number") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData EnumValueDescriptorProto where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EnumValueDescriptorProto'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EnumValueDescriptorProto'name x__)
                (Control.DeepSeq.deepseq
                   (_EnumValueDescriptorProto'number x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.name' @:: Lens' FieldDescriptorProto Data.Text.Text@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.maybe'name' @:: Lens' FieldDescriptorProto (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.number' @:: Lens' FieldDescriptorProto Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.maybe'number' @:: Lens' FieldDescriptorProto (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.label' @:: Lens' FieldDescriptorProto FieldDescriptorProto'Label@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.maybe'label' @:: Lens' FieldDescriptorProto (Prelude.Maybe FieldDescriptorProto'Label)@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.type'' @:: Lens' FieldDescriptorProto FieldDescriptorProto'Type@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.maybe'type'' @:: Lens' FieldDescriptorProto (Prelude.Maybe FieldDescriptorProto'Type)@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.typeName' @:: Lens' FieldDescriptorProto Data.Text.Text@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.maybe'typeName' @:: Lens' FieldDescriptorProto (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.extendee' @:: Lens' FieldDescriptorProto Data.Text.Text@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.maybe'extendee' @:: Lens' FieldDescriptorProto (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.defaultValue' @:: Lens' FieldDescriptorProto Data.Text.Text@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.maybe'defaultValue' @:: Lens' FieldDescriptorProto (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.options' @:: Lens' FieldDescriptorProto FieldOptions@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.maybe'options' @:: Lens' FieldDescriptorProto (Prelude.Maybe FieldOptions)@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.oneofIndex' @:: Lens' FieldDescriptorProto Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.maybe'oneofIndex' @:: Lens' FieldDescriptorProto (Prelude.Maybe Data.Int.Int32)@ -}
data FieldDescriptorProto
  = FieldDescriptorProto'_constructor {_FieldDescriptorProto'name :: !(Prelude.Maybe Data.Text.Text),
                                       _FieldDescriptorProto'number :: !(Prelude.Maybe Data.Int.Int32),
                                       _FieldDescriptorProto'label :: !(Prelude.Maybe FieldDescriptorProto'Label),
                                       _FieldDescriptorProto'type' :: !(Prelude.Maybe FieldDescriptorProto'Type),
                                       _FieldDescriptorProto'typeName :: !(Prelude.Maybe Data.Text.Text),
                                       _FieldDescriptorProto'extendee :: !(Prelude.Maybe Data.Text.Text),
                                       _FieldDescriptorProto'defaultValue :: !(Prelude.Maybe Data.Text.Text),
                                       _FieldDescriptorProto'options :: !(Prelude.Maybe FieldOptions),
                                       _FieldDescriptorProto'oneofIndex :: !(Prelude.Maybe Data.Int.Int32),
                                       _FieldDescriptorProto'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FieldDescriptorProto where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FieldDescriptorProto "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldDescriptorProto'name
           (\ x__ y__ -> x__ {_FieldDescriptorProto'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FieldDescriptorProto "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldDescriptorProto'name
           (\ x__ y__ -> x__ {_FieldDescriptorProto'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FieldDescriptorProto "number" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldDescriptorProto'number
           (\ x__ y__ -> x__ {_FieldDescriptorProto'number = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FieldDescriptorProto "maybe'number" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldDescriptorProto'number
           (\ x__ y__ -> x__ {_FieldDescriptorProto'number = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FieldDescriptorProto "label" FieldDescriptorProto'Label where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldDescriptorProto'label
           (\ x__ y__ -> x__ {_FieldDescriptorProto'label = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FieldDescriptorProto "maybe'label" (Prelude.Maybe FieldDescriptorProto'Label) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldDescriptorProto'label
           (\ x__ y__ -> x__ {_FieldDescriptorProto'label = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FieldDescriptorProto "type'" FieldDescriptorProto'Type where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldDescriptorProto'type'
           (\ x__ y__ -> x__ {_FieldDescriptorProto'type' = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FieldDescriptorProto "maybe'type'" (Prelude.Maybe FieldDescriptorProto'Type) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldDescriptorProto'type'
           (\ x__ y__ -> x__ {_FieldDescriptorProto'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FieldDescriptorProto "typeName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldDescriptorProto'typeName
           (\ x__ y__ -> x__ {_FieldDescriptorProto'typeName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FieldDescriptorProto "maybe'typeName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldDescriptorProto'typeName
           (\ x__ y__ -> x__ {_FieldDescriptorProto'typeName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FieldDescriptorProto "extendee" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldDescriptorProto'extendee
           (\ x__ y__ -> x__ {_FieldDescriptorProto'extendee = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FieldDescriptorProto "maybe'extendee" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldDescriptorProto'extendee
           (\ x__ y__ -> x__ {_FieldDescriptorProto'extendee = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FieldDescriptorProto "defaultValue" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldDescriptorProto'defaultValue
           (\ x__ y__ -> x__ {_FieldDescriptorProto'defaultValue = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FieldDescriptorProto "maybe'defaultValue" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldDescriptorProto'defaultValue
           (\ x__ y__ -> x__ {_FieldDescriptorProto'defaultValue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FieldDescriptorProto "options" FieldOptions where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldDescriptorProto'options
           (\ x__ y__ -> x__ {_FieldDescriptorProto'options = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField FieldDescriptorProto "maybe'options" (Prelude.Maybe FieldOptions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldDescriptorProto'options
           (\ x__ y__ -> x__ {_FieldDescriptorProto'options = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FieldDescriptorProto "oneofIndex" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldDescriptorProto'oneofIndex
           (\ x__ y__ -> x__ {_FieldDescriptorProto'oneofIndex = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FieldDescriptorProto "maybe'oneofIndex" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldDescriptorProto'oneofIndex
           (\ x__ y__ -> x__ {_FieldDescriptorProto'oneofIndex = y__}))
        Prelude.id
instance Data.ProtoLens.Message FieldDescriptorProto where
  messageName _
    = Data.Text.pack "perfetto.protos.FieldDescriptorProto"
  packedMessageDescriptor _
    = "\n\
      \\DC4FieldDescriptorProto\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\SYN\n\
      \\ACKnumber\CAN\ETX \SOH(\ENQR\ACKnumber\DC2A\n\
      \\ENQlabel\CAN\EOT \SOH(\SO2+.perfetto.protos.FieldDescriptorProto.LabelR\ENQlabel\DC2>\n\
      \\EOTtype\CAN\ENQ \SOH(\SO2*.perfetto.protos.FieldDescriptorProto.TypeR\EOTtype\DC2\ESC\n\
      \\ttype_name\CAN\ACK \SOH(\tR\btypeName\DC2\SUB\n\
      \\bextendee\CAN\STX \SOH(\tR\bextendee\DC2#\n\
      \\rdefault_value\CAN\a \SOH(\tR\fdefaultValue\DC27\n\
      \\aoptions\CAN\b \SOH(\v2\GS.perfetto.protos.FieldOptionsR\aoptions\DC2\US\n\
      \\voneof_index\CAN\t \SOH(\ENQR\n\
      \oneofIndex\"\182\STX\n\
      \\EOTType\DC2\SI\n\
      \\vTYPE_DOUBLE\DLE\SOH\DC2\SO\n\
      \\n\
      \TYPE_FLOAT\DLE\STX\DC2\SO\n\
      \\n\
      \TYPE_INT64\DLE\ETX\DC2\SI\n\
      \\vTYPE_UINT64\DLE\EOT\DC2\SO\n\
      \\n\
      \TYPE_INT32\DLE\ENQ\DC2\DLE\n\
      \\fTYPE_FIXED64\DLE\ACK\DC2\DLE\n\
      \\fTYPE_FIXED32\DLE\a\DC2\r\n\
      \\tTYPE_BOOL\DLE\b\DC2\SI\n\
      \\vTYPE_STRING\DLE\t\DC2\SO\n\
      \\n\
      \TYPE_GROUP\DLE\n\
      \\DC2\DLE\n\
      \\fTYPE_MESSAGE\DLE\v\DC2\SO\n\
      \\n\
      \TYPE_BYTES\DLE\f\DC2\SI\n\
      \\vTYPE_UINT32\DLE\r\DC2\r\n\
      \\tTYPE_ENUM\DLE\SO\DC2\DC1\n\
      \\rTYPE_SFIXED32\DLE\SI\DC2\DC1\n\
      \\rTYPE_SFIXED64\DLE\DLE\DC2\SI\n\
      \\vTYPE_SINT32\DLE\DC1\DC2\SI\n\
      \\vTYPE_SINT64\DLE\DC2\"C\n\
      \\ENQLabel\DC2\DC2\n\
      \\SOLABEL_OPTIONAL\DLE\SOH\DC2\DC2\n\
      \\SOLABEL_REQUIRED\DLE\STX\DC2\DC2\n\
      \\SOLABEL_REPEATED\DLE\ETXJ\EOT\b\n\
      \\DLE\v"
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
              Data.ProtoLens.FieldDescriptor FieldDescriptorProto
        number__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "number"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'number")) ::
              Data.ProtoLens.FieldDescriptor FieldDescriptorProto
        label__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "label"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor FieldDescriptorProto'Label)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'label")) ::
              Data.ProtoLens.FieldDescriptor FieldDescriptorProto
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor FieldDescriptorProto'Type)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'type'")) ::
              Data.ProtoLens.FieldDescriptor FieldDescriptorProto
        typeName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'typeName")) ::
              Data.ProtoLens.FieldDescriptor FieldDescriptorProto
        extendee__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "extendee"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'extendee")) ::
              Data.ProtoLens.FieldDescriptor FieldDescriptorProto
        defaultValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "default_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'defaultValue")) ::
              Data.ProtoLens.FieldDescriptor FieldDescriptorProto
        options__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor FieldOptions)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'options")) ::
              Data.ProtoLens.FieldDescriptor FieldDescriptorProto
        oneofIndex__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "oneof_index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'oneofIndex")) ::
              Data.ProtoLens.FieldDescriptor FieldDescriptorProto
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 3, number__field_descriptor),
           (Data.ProtoLens.Tag 4, label__field_descriptor),
           (Data.ProtoLens.Tag 5, type'__field_descriptor),
           (Data.ProtoLens.Tag 6, typeName__field_descriptor),
           (Data.ProtoLens.Tag 2, extendee__field_descriptor),
           (Data.ProtoLens.Tag 7, defaultValue__field_descriptor),
           (Data.ProtoLens.Tag 8, options__field_descriptor),
           (Data.ProtoLens.Tag 9, oneofIndex__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FieldDescriptorProto'_unknownFields
        (\ x__ y__ -> x__ {_FieldDescriptorProto'_unknownFields = y__})
  defMessage
    = FieldDescriptorProto'_constructor
        {_FieldDescriptorProto'name = Prelude.Nothing,
         _FieldDescriptorProto'number = Prelude.Nothing,
         _FieldDescriptorProto'label = Prelude.Nothing,
         _FieldDescriptorProto'type' = Prelude.Nothing,
         _FieldDescriptorProto'typeName = Prelude.Nothing,
         _FieldDescriptorProto'extendee = Prelude.Nothing,
         _FieldDescriptorProto'defaultValue = Prelude.Nothing,
         _FieldDescriptorProto'options = Prelude.Nothing,
         _FieldDescriptorProto'oneofIndex = Prelude.Nothing,
         _FieldDescriptorProto'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FieldDescriptorProto
          -> Data.ProtoLens.Encoding.Bytes.Parser FieldDescriptorProto
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
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "number"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"number") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "label"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"label") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
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
                                       "type_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"typeName") y x)
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
                                       "extendee"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"extendee") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "default_value"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"defaultValue") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "options"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"options") y x)
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "oneof_index"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"oneofIndex") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "FieldDescriptorProto"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'number") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'label") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                             ((Prelude..)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                                Prelude.fromEnum _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'type'") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                ((Prelude..)
                                   ((Prelude..)
                                      Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                                   Prelude.fromEnum _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'typeName") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'extendee") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.Text.Encoding.encodeUtf8 _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'defaultValue") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                         ((Prelude..)
                                            (\ bs
                                               -> (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (Prelude.fromIntegral
                                                          (Data.ByteString.length bs)))
                                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                            Data.Text.Encoding.encodeUtf8 _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'options") _x
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
                                               Data.ProtoLens.encodeMessage _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"maybe'oneofIndex") _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                               ((Prelude..)
                                                  Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  Prelude.fromIntegral _v))
                                     (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                        (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))))
instance Control.DeepSeq.NFData FieldDescriptorProto where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FieldDescriptorProto'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FieldDescriptorProto'name x__)
                (Control.DeepSeq.deepseq
                   (_FieldDescriptorProto'number x__)
                   (Control.DeepSeq.deepseq
                      (_FieldDescriptorProto'label x__)
                      (Control.DeepSeq.deepseq
                         (_FieldDescriptorProto'type' x__)
                         (Control.DeepSeq.deepseq
                            (_FieldDescriptorProto'typeName x__)
                            (Control.DeepSeq.deepseq
                               (_FieldDescriptorProto'extendee x__)
                               (Control.DeepSeq.deepseq
                                  (_FieldDescriptorProto'defaultValue x__)
                                  (Control.DeepSeq.deepseq
                                     (_FieldDescriptorProto'options x__)
                                     (Control.DeepSeq.deepseq
                                        (_FieldDescriptorProto'oneofIndex x__) ())))))))))
data FieldDescriptorProto'Label
  = FieldDescriptorProto'LABEL_OPTIONAL |
    FieldDescriptorProto'LABEL_REQUIRED |
    FieldDescriptorProto'LABEL_REPEATED
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum FieldDescriptorProto'Label where
  maybeToEnum 1 = Prelude.Just FieldDescriptorProto'LABEL_OPTIONAL
  maybeToEnum 2 = Prelude.Just FieldDescriptorProto'LABEL_REQUIRED
  maybeToEnum 3 = Prelude.Just FieldDescriptorProto'LABEL_REPEATED
  maybeToEnum _ = Prelude.Nothing
  showEnum FieldDescriptorProto'LABEL_OPTIONAL = "LABEL_OPTIONAL"
  showEnum FieldDescriptorProto'LABEL_REQUIRED = "LABEL_REQUIRED"
  showEnum FieldDescriptorProto'LABEL_REPEATED = "LABEL_REPEATED"
  readEnum k
    | (Prelude.==) k "LABEL_OPTIONAL"
    = Prelude.Just FieldDescriptorProto'LABEL_OPTIONAL
    | (Prelude.==) k "LABEL_REQUIRED"
    = Prelude.Just FieldDescriptorProto'LABEL_REQUIRED
    | (Prelude.==) k "LABEL_REPEATED"
    = Prelude.Just FieldDescriptorProto'LABEL_REPEATED
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded FieldDescriptorProto'Label where
  minBound = FieldDescriptorProto'LABEL_OPTIONAL
  maxBound = FieldDescriptorProto'LABEL_REPEATED
instance Prelude.Enum FieldDescriptorProto'Label where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum Label: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum FieldDescriptorProto'LABEL_OPTIONAL = 1
  fromEnum FieldDescriptorProto'LABEL_REQUIRED = 2
  fromEnum FieldDescriptorProto'LABEL_REPEATED = 3
  succ FieldDescriptorProto'LABEL_REPEATED
    = Prelude.error
        "FieldDescriptorProto'Label.succ: bad argument FieldDescriptorProto'LABEL_REPEATED. This value would be out of bounds."
  succ FieldDescriptorProto'LABEL_OPTIONAL
    = FieldDescriptorProto'LABEL_REQUIRED
  succ FieldDescriptorProto'LABEL_REQUIRED
    = FieldDescriptorProto'LABEL_REPEATED
  pred FieldDescriptorProto'LABEL_OPTIONAL
    = Prelude.error
        "FieldDescriptorProto'Label.pred: bad argument FieldDescriptorProto'LABEL_OPTIONAL. This value would be out of bounds."
  pred FieldDescriptorProto'LABEL_REQUIRED
    = FieldDescriptorProto'LABEL_OPTIONAL
  pred FieldDescriptorProto'LABEL_REPEATED
    = FieldDescriptorProto'LABEL_REQUIRED
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault FieldDescriptorProto'Label where
  fieldDefault = FieldDescriptorProto'LABEL_OPTIONAL
instance Control.DeepSeq.NFData FieldDescriptorProto'Label where
  rnf x__ = Prelude.seq x__ ()
data FieldDescriptorProto'Type
  = FieldDescriptorProto'TYPE_DOUBLE |
    FieldDescriptorProto'TYPE_FLOAT |
    FieldDescriptorProto'TYPE_INT64 |
    FieldDescriptorProto'TYPE_UINT64 |
    FieldDescriptorProto'TYPE_INT32 |
    FieldDescriptorProto'TYPE_FIXED64 |
    FieldDescriptorProto'TYPE_FIXED32 |
    FieldDescriptorProto'TYPE_BOOL |
    FieldDescriptorProto'TYPE_STRING |
    FieldDescriptorProto'TYPE_GROUP |
    FieldDescriptorProto'TYPE_MESSAGE |
    FieldDescriptorProto'TYPE_BYTES |
    FieldDescriptorProto'TYPE_UINT32 |
    FieldDescriptorProto'TYPE_ENUM |
    FieldDescriptorProto'TYPE_SFIXED32 |
    FieldDescriptorProto'TYPE_SFIXED64 |
    FieldDescriptorProto'TYPE_SINT32 |
    FieldDescriptorProto'TYPE_SINT64
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum FieldDescriptorProto'Type where
  maybeToEnum 1 = Prelude.Just FieldDescriptorProto'TYPE_DOUBLE
  maybeToEnum 2 = Prelude.Just FieldDescriptorProto'TYPE_FLOAT
  maybeToEnum 3 = Prelude.Just FieldDescriptorProto'TYPE_INT64
  maybeToEnum 4 = Prelude.Just FieldDescriptorProto'TYPE_UINT64
  maybeToEnum 5 = Prelude.Just FieldDescriptorProto'TYPE_INT32
  maybeToEnum 6 = Prelude.Just FieldDescriptorProto'TYPE_FIXED64
  maybeToEnum 7 = Prelude.Just FieldDescriptorProto'TYPE_FIXED32
  maybeToEnum 8 = Prelude.Just FieldDescriptorProto'TYPE_BOOL
  maybeToEnum 9 = Prelude.Just FieldDescriptorProto'TYPE_STRING
  maybeToEnum 10 = Prelude.Just FieldDescriptorProto'TYPE_GROUP
  maybeToEnum 11 = Prelude.Just FieldDescriptorProto'TYPE_MESSAGE
  maybeToEnum 12 = Prelude.Just FieldDescriptorProto'TYPE_BYTES
  maybeToEnum 13 = Prelude.Just FieldDescriptorProto'TYPE_UINT32
  maybeToEnum 14 = Prelude.Just FieldDescriptorProto'TYPE_ENUM
  maybeToEnum 15 = Prelude.Just FieldDescriptorProto'TYPE_SFIXED32
  maybeToEnum 16 = Prelude.Just FieldDescriptorProto'TYPE_SFIXED64
  maybeToEnum 17 = Prelude.Just FieldDescriptorProto'TYPE_SINT32
  maybeToEnum 18 = Prelude.Just FieldDescriptorProto'TYPE_SINT64
  maybeToEnum _ = Prelude.Nothing
  showEnum FieldDescriptorProto'TYPE_DOUBLE = "TYPE_DOUBLE"
  showEnum FieldDescriptorProto'TYPE_FLOAT = "TYPE_FLOAT"
  showEnum FieldDescriptorProto'TYPE_INT64 = "TYPE_INT64"
  showEnum FieldDescriptorProto'TYPE_UINT64 = "TYPE_UINT64"
  showEnum FieldDescriptorProto'TYPE_INT32 = "TYPE_INT32"
  showEnum FieldDescriptorProto'TYPE_FIXED64 = "TYPE_FIXED64"
  showEnum FieldDescriptorProto'TYPE_FIXED32 = "TYPE_FIXED32"
  showEnum FieldDescriptorProto'TYPE_BOOL = "TYPE_BOOL"
  showEnum FieldDescriptorProto'TYPE_STRING = "TYPE_STRING"
  showEnum FieldDescriptorProto'TYPE_GROUP = "TYPE_GROUP"
  showEnum FieldDescriptorProto'TYPE_MESSAGE = "TYPE_MESSAGE"
  showEnum FieldDescriptorProto'TYPE_BYTES = "TYPE_BYTES"
  showEnum FieldDescriptorProto'TYPE_UINT32 = "TYPE_UINT32"
  showEnum FieldDescriptorProto'TYPE_ENUM = "TYPE_ENUM"
  showEnum FieldDescriptorProto'TYPE_SFIXED32 = "TYPE_SFIXED32"
  showEnum FieldDescriptorProto'TYPE_SFIXED64 = "TYPE_SFIXED64"
  showEnum FieldDescriptorProto'TYPE_SINT32 = "TYPE_SINT32"
  showEnum FieldDescriptorProto'TYPE_SINT64 = "TYPE_SINT64"
  readEnum k
    | (Prelude.==) k "TYPE_DOUBLE"
    = Prelude.Just FieldDescriptorProto'TYPE_DOUBLE
    | (Prelude.==) k "TYPE_FLOAT"
    = Prelude.Just FieldDescriptorProto'TYPE_FLOAT
    | (Prelude.==) k "TYPE_INT64"
    = Prelude.Just FieldDescriptorProto'TYPE_INT64
    | (Prelude.==) k "TYPE_UINT64"
    = Prelude.Just FieldDescriptorProto'TYPE_UINT64
    | (Prelude.==) k "TYPE_INT32"
    = Prelude.Just FieldDescriptorProto'TYPE_INT32
    | (Prelude.==) k "TYPE_FIXED64"
    = Prelude.Just FieldDescriptorProto'TYPE_FIXED64
    | (Prelude.==) k "TYPE_FIXED32"
    = Prelude.Just FieldDescriptorProto'TYPE_FIXED32
    | (Prelude.==) k "TYPE_BOOL"
    = Prelude.Just FieldDescriptorProto'TYPE_BOOL
    | (Prelude.==) k "TYPE_STRING"
    = Prelude.Just FieldDescriptorProto'TYPE_STRING
    | (Prelude.==) k "TYPE_GROUP"
    = Prelude.Just FieldDescriptorProto'TYPE_GROUP
    | (Prelude.==) k "TYPE_MESSAGE"
    = Prelude.Just FieldDescriptorProto'TYPE_MESSAGE
    | (Prelude.==) k "TYPE_BYTES"
    = Prelude.Just FieldDescriptorProto'TYPE_BYTES
    | (Prelude.==) k "TYPE_UINT32"
    = Prelude.Just FieldDescriptorProto'TYPE_UINT32
    | (Prelude.==) k "TYPE_ENUM"
    = Prelude.Just FieldDescriptorProto'TYPE_ENUM
    | (Prelude.==) k "TYPE_SFIXED32"
    = Prelude.Just FieldDescriptorProto'TYPE_SFIXED32
    | (Prelude.==) k "TYPE_SFIXED64"
    = Prelude.Just FieldDescriptorProto'TYPE_SFIXED64
    | (Prelude.==) k "TYPE_SINT32"
    = Prelude.Just FieldDescriptorProto'TYPE_SINT32
    | (Prelude.==) k "TYPE_SINT64"
    = Prelude.Just FieldDescriptorProto'TYPE_SINT64
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded FieldDescriptorProto'Type where
  minBound = FieldDescriptorProto'TYPE_DOUBLE
  maxBound = FieldDescriptorProto'TYPE_SINT64
instance Prelude.Enum FieldDescriptorProto'Type where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum Type: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum FieldDescriptorProto'TYPE_DOUBLE = 1
  fromEnum FieldDescriptorProto'TYPE_FLOAT = 2
  fromEnum FieldDescriptorProto'TYPE_INT64 = 3
  fromEnum FieldDescriptorProto'TYPE_UINT64 = 4
  fromEnum FieldDescriptorProto'TYPE_INT32 = 5
  fromEnum FieldDescriptorProto'TYPE_FIXED64 = 6
  fromEnum FieldDescriptorProto'TYPE_FIXED32 = 7
  fromEnum FieldDescriptorProto'TYPE_BOOL = 8
  fromEnum FieldDescriptorProto'TYPE_STRING = 9
  fromEnum FieldDescriptorProto'TYPE_GROUP = 10
  fromEnum FieldDescriptorProto'TYPE_MESSAGE = 11
  fromEnum FieldDescriptorProto'TYPE_BYTES = 12
  fromEnum FieldDescriptorProto'TYPE_UINT32 = 13
  fromEnum FieldDescriptorProto'TYPE_ENUM = 14
  fromEnum FieldDescriptorProto'TYPE_SFIXED32 = 15
  fromEnum FieldDescriptorProto'TYPE_SFIXED64 = 16
  fromEnum FieldDescriptorProto'TYPE_SINT32 = 17
  fromEnum FieldDescriptorProto'TYPE_SINT64 = 18
  succ FieldDescriptorProto'TYPE_SINT64
    = Prelude.error
        "FieldDescriptorProto'Type.succ: bad argument FieldDescriptorProto'TYPE_SINT64. This value would be out of bounds."
  succ FieldDescriptorProto'TYPE_DOUBLE
    = FieldDescriptorProto'TYPE_FLOAT
  succ FieldDescriptorProto'TYPE_FLOAT
    = FieldDescriptorProto'TYPE_INT64
  succ FieldDescriptorProto'TYPE_INT64
    = FieldDescriptorProto'TYPE_UINT64
  succ FieldDescriptorProto'TYPE_UINT64
    = FieldDescriptorProto'TYPE_INT32
  succ FieldDescriptorProto'TYPE_INT32
    = FieldDescriptorProto'TYPE_FIXED64
  succ FieldDescriptorProto'TYPE_FIXED64
    = FieldDescriptorProto'TYPE_FIXED32
  succ FieldDescriptorProto'TYPE_FIXED32
    = FieldDescriptorProto'TYPE_BOOL
  succ FieldDescriptorProto'TYPE_BOOL
    = FieldDescriptorProto'TYPE_STRING
  succ FieldDescriptorProto'TYPE_STRING
    = FieldDescriptorProto'TYPE_GROUP
  succ FieldDescriptorProto'TYPE_GROUP
    = FieldDescriptorProto'TYPE_MESSAGE
  succ FieldDescriptorProto'TYPE_MESSAGE
    = FieldDescriptorProto'TYPE_BYTES
  succ FieldDescriptorProto'TYPE_BYTES
    = FieldDescriptorProto'TYPE_UINT32
  succ FieldDescriptorProto'TYPE_UINT32
    = FieldDescriptorProto'TYPE_ENUM
  succ FieldDescriptorProto'TYPE_ENUM
    = FieldDescriptorProto'TYPE_SFIXED32
  succ FieldDescriptorProto'TYPE_SFIXED32
    = FieldDescriptorProto'TYPE_SFIXED64
  succ FieldDescriptorProto'TYPE_SFIXED64
    = FieldDescriptorProto'TYPE_SINT32
  succ FieldDescriptorProto'TYPE_SINT32
    = FieldDescriptorProto'TYPE_SINT64
  pred FieldDescriptorProto'TYPE_DOUBLE
    = Prelude.error
        "FieldDescriptorProto'Type.pred: bad argument FieldDescriptorProto'TYPE_DOUBLE. This value would be out of bounds."
  pred FieldDescriptorProto'TYPE_FLOAT
    = FieldDescriptorProto'TYPE_DOUBLE
  pred FieldDescriptorProto'TYPE_INT64
    = FieldDescriptorProto'TYPE_FLOAT
  pred FieldDescriptorProto'TYPE_UINT64
    = FieldDescriptorProto'TYPE_INT64
  pred FieldDescriptorProto'TYPE_INT32
    = FieldDescriptorProto'TYPE_UINT64
  pred FieldDescriptorProto'TYPE_FIXED64
    = FieldDescriptorProto'TYPE_INT32
  pred FieldDescriptorProto'TYPE_FIXED32
    = FieldDescriptorProto'TYPE_FIXED64
  pred FieldDescriptorProto'TYPE_BOOL
    = FieldDescriptorProto'TYPE_FIXED32
  pred FieldDescriptorProto'TYPE_STRING
    = FieldDescriptorProto'TYPE_BOOL
  pred FieldDescriptorProto'TYPE_GROUP
    = FieldDescriptorProto'TYPE_STRING
  pred FieldDescriptorProto'TYPE_MESSAGE
    = FieldDescriptorProto'TYPE_GROUP
  pred FieldDescriptorProto'TYPE_BYTES
    = FieldDescriptorProto'TYPE_MESSAGE
  pred FieldDescriptorProto'TYPE_UINT32
    = FieldDescriptorProto'TYPE_BYTES
  pred FieldDescriptorProto'TYPE_ENUM
    = FieldDescriptorProto'TYPE_UINT32
  pred FieldDescriptorProto'TYPE_SFIXED32
    = FieldDescriptorProto'TYPE_ENUM
  pred FieldDescriptorProto'TYPE_SFIXED64
    = FieldDescriptorProto'TYPE_SFIXED32
  pred FieldDescriptorProto'TYPE_SINT32
    = FieldDescriptorProto'TYPE_SFIXED64
  pred FieldDescriptorProto'TYPE_SINT64
    = FieldDescriptorProto'TYPE_SINT32
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault FieldDescriptorProto'Type where
  fieldDefault = FieldDescriptorProto'TYPE_DOUBLE
instance Control.DeepSeq.NFData FieldDescriptorProto'Type where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.packed' @:: Lens' FieldOptions Prelude.Bool@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.maybe'packed' @:: Lens' FieldOptions (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.uninterpretedOption' @:: Lens' FieldOptions [UninterpretedOption]@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.vec'uninterpretedOption' @:: Lens' FieldOptions (Data.Vector.Vector UninterpretedOption)@ -}
data FieldOptions
  = FieldOptions'_constructor {_FieldOptions'packed :: !(Prelude.Maybe Prelude.Bool),
                               _FieldOptions'uninterpretedOption :: !(Data.Vector.Vector UninterpretedOption),
                               _FieldOptions'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FieldOptions where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FieldOptions "packed" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldOptions'packed
           (\ x__ y__ -> x__ {_FieldOptions'packed = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FieldOptions "maybe'packed" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldOptions'packed
           (\ x__ y__ -> x__ {_FieldOptions'packed = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FieldOptions "uninterpretedOption" [UninterpretedOption] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldOptions'uninterpretedOption
           (\ x__ y__ -> x__ {_FieldOptions'uninterpretedOption = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FieldOptions "vec'uninterpretedOption" (Data.Vector.Vector UninterpretedOption) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldOptions'uninterpretedOption
           (\ x__ y__ -> x__ {_FieldOptions'uninterpretedOption = y__}))
        Prelude.id
instance Data.ProtoLens.Message FieldOptions where
  messageName _ = Data.Text.pack "perfetto.protos.FieldOptions"
  packedMessageDescriptor _
    = "\n\
      \\fFieldOptions\DC2\SYN\n\
      \\ACKpacked\CAN\STX \SOH(\bR\ACKpacked\DC2X\n\
      \\DC4uninterpreted_option\CAN\231\a \ETX(\v2$.perfetto.protos.UninterpretedOptionR\DC3uninterpretedOption"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        packed__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "packed"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'packed")) ::
              Data.ProtoLens.FieldDescriptor FieldOptions
        uninterpretedOption__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "uninterpreted_option"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor UninterpretedOption)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"uninterpretedOption")) ::
              Data.ProtoLens.FieldDescriptor FieldOptions
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 2, packed__field_descriptor),
           (Data.ProtoLens.Tag 999, uninterpretedOption__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FieldOptions'_unknownFields
        (\ x__ y__ -> x__ {_FieldOptions'_unknownFields = y__})
  defMessage
    = FieldOptions'_constructor
        {_FieldOptions'packed = Prelude.Nothing,
         _FieldOptions'uninterpretedOption = Data.Vector.Generic.empty,
         _FieldOptions'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FieldOptions
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld UninterpretedOption
             -> Data.ProtoLens.Encoding.Bytes.Parser FieldOptions
        loop x mutable'uninterpretedOption
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'uninterpretedOption <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                         mutable'uninterpretedOption)
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
                              (Data.ProtoLens.Field.field @"vec'uninterpretedOption")
                              frozen'uninterpretedOption x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "packed"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"packed") y x)
                                  mutable'uninterpretedOption
                        7994
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "uninterpreted_option"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'uninterpretedOption y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'uninterpretedOption
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'uninterpretedOption <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'uninterpretedOption)
          "FieldOptions"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'packed") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                          _v))
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 7994)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage _v))
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'uninterpretedOption") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData FieldOptions where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FieldOptions'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FieldOptions'packed x__)
                (Control.DeepSeq.deepseq
                   (_FieldOptions'uninterpretedOption x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.name' @:: Lens' FileDescriptorProto Data.Text.Text@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.maybe'name' @:: Lens' FileDescriptorProto (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.package' @:: Lens' FileDescriptorProto Data.Text.Text@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.maybe'package' @:: Lens' FileDescriptorProto (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.dependency' @:: Lens' FileDescriptorProto [Data.Text.Text]@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.vec'dependency' @:: Lens' FileDescriptorProto (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.publicDependency' @:: Lens' FileDescriptorProto [Data.Int.Int32]@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.vec'publicDependency' @:: Lens' FileDescriptorProto (Data.Vector.Unboxed.Vector Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.weakDependency' @:: Lens' FileDescriptorProto [Data.Int.Int32]@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.vec'weakDependency' @:: Lens' FileDescriptorProto (Data.Vector.Unboxed.Vector Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.messageType' @:: Lens' FileDescriptorProto [DescriptorProto]@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.vec'messageType' @:: Lens' FileDescriptorProto (Data.Vector.Vector DescriptorProto)@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.enumType' @:: Lens' FileDescriptorProto [EnumDescriptorProto]@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.vec'enumType' @:: Lens' FileDescriptorProto (Data.Vector.Vector EnumDescriptorProto)@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.extension' @:: Lens' FileDescriptorProto [FieldDescriptorProto]@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.vec'extension' @:: Lens' FileDescriptorProto (Data.Vector.Vector FieldDescriptorProto)@ -}
data FileDescriptorProto
  = FileDescriptorProto'_constructor {_FileDescriptorProto'name :: !(Prelude.Maybe Data.Text.Text),
                                      _FileDescriptorProto'package :: !(Prelude.Maybe Data.Text.Text),
                                      _FileDescriptorProto'dependency :: !(Data.Vector.Vector Data.Text.Text),
                                      _FileDescriptorProto'publicDependency :: !(Data.Vector.Unboxed.Vector Data.Int.Int32),
                                      _FileDescriptorProto'weakDependency :: !(Data.Vector.Unboxed.Vector Data.Int.Int32),
                                      _FileDescriptorProto'messageType :: !(Data.Vector.Vector DescriptorProto),
                                      _FileDescriptorProto'enumType :: !(Data.Vector.Vector EnumDescriptorProto),
                                      _FileDescriptorProto'extension :: !(Data.Vector.Vector FieldDescriptorProto),
                                      _FileDescriptorProto'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FileDescriptorProto where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FileDescriptorProto "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FileDescriptorProto'name
           (\ x__ y__ -> x__ {_FileDescriptorProto'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FileDescriptorProto "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FileDescriptorProto'name
           (\ x__ y__ -> x__ {_FileDescriptorProto'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FileDescriptorProto "package" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FileDescriptorProto'package
           (\ x__ y__ -> x__ {_FileDescriptorProto'package = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FileDescriptorProto "maybe'package" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FileDescriptorProto'package
           (\ x__ y__ -> x__ {_FileDescriptorProto'package = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FileDescriptorProto "dependency" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FileDescriptorProto'dependency
           (\ x__ y__ -> x__ {_FileDescriptorProto'dependency = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FileDescriptorProto "vec'dependency" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FileDescriptorProto'dependency
           (\ x__ y__ -> x__ {_FileDescriptorProto'dependency = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FileDescriptorProto "publicDependency" [Data.Int.Int32] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FileDescriptorProto'publicDependency
           (\ x__ y__ -> x__ {_FileDescriptorProto'publicDependency = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FileDescriptorProto "vec'publicDependency" (Data.Vector.Unboxed.Vector Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FileDescriptorProto'publicDependency
           (\ x__ y__ -> x__ {_FileDescriptorProto'publicDependency = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FileDescriptorProto "weakDependency" [Data.Int.Int32] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FileDescriptorProto'weakDependency
           (\ x__ y__ -> x__ {_FileDescriptorProto'weakDependency = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FileDescriptorProto "vec'weakDependency" (Data.Vector.Unboxed.Vector Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FileDescriptorProto'weakDependency
           (\ x__ y__ -> x__ {_FileDescriptorProto'weakDependency = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FileDescriptorProto "messageType" [DescriptorProto] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FileDescriptorProto'messageType
           (\ x__ y__ -> x__ {_FileDescriptorProto'messageType = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FileDescriptorProto "vec'messageType" (Data.Vector.Vector DescriptorProto) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FileDescriptorProto'messageType
           (\ x__ y__ -> x__ {_FileDescriptorProto'messageType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FileDescriptorProto "enumType" [EnumDescriptorProto] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FileDescriptorProto'enumType
           (\ x__ y__ -> x__ {_FileDescriptorProto'enumType = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FileDescriptorProto "vec'enumType" (Data.Vector.Vector EnumDescriptorProto) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FileDescriptorProto'enumType
           (\ x__ y__ -> x__ {_FileDescriptorProto'enumType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FileDescriptorProto "extension" [FieldDescriptorProto] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FileDescriptorProto'extension
           (\ x__ y__ -> x__ {_FileDescriptorProto'extension = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FileDescriptorProto "vec'extension" (Data.Vector.Vector FieldDescriptorProto) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FileDescriptorProto'extension
           (\ x__ y__ -> x__ {_FileDescriptorProto'extension = y__}))
        Prelude.id
instance Data.ProtoLens.Message FileDescriptorProto where
  messageName _
    = Data.Text.pack "perfetto.protos.FileDescriptorProto"
  packedMessageDescriptor _
    = "\n\
      \\DC3FileDescriptorProto\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\CAN\n\
      \\apackage\CAN\STX \SOH(\tR\apackage\DC2\RS\n\
      \\n\
      \dependency\CAN\ETX \ETX(\tR\n\
      \dependency\DC2+\n\
      \\DC1public_dependency\CAN\n\
      \ \ETX(\ENQR\DLEpublicDependency\DC2'\n\
      \\SIweak_dependency\CAN\v \ETX(\ENQR\SOweakDependency\DC2C\n\
      \\fmessage_type\CAN\EOT \ETX(\v2 .perfetto.protos.DescriptorProtoR\vmessageType\DC2A\n\
      \\tenum_type\CAN\ENQ \ETX(\v2$.perfetto.protos.EnumDescriptorProtoR\benumType\DC2C\n\
      \\textension\CAN\a \ETX(\v2%.perfetto.protos.FieldDescriptorProtoR\textensionJ\EOT\b\ACK\DLE\aJ\EOT\b\b\DLE\tJ\EOT\b\t\DLE\n\
      \J\EOT\b\f\DLE\r"
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
              Data.ProtoLens.FieldDescriptor FileDescriptorProto
        package__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "package"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'package")) ::
              Data.ProtoLens.FieldDescriptor FileDescriptorProto
        dependency__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dependency"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"dependency")) ::
              Data.ProtoLens.FieldDescriptor FileDescriptorProto
        publicDependency__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "public_dependency"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"publicDependency")) ::
              Data.ProtoLens.FieldDescriptor FileDescriptorProto
        weakDependency__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "weak_dependency"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"weakDependency")) ::
              Data.ProtoLens.FieldDescriptor FileDescriptorProto
        messageType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "message_type"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DescriptorProto)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"messageType")) ::
              Data.ProtoLens.FieldDescriptor FileDescriptorProto
        enumType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "enum_type"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor EnumDescriptorProto)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"enumType")) ::
              Data.ProtoLens.FieldDescriptor FileDescriptorProto
        extension__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "extension"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor FieldDescriptorProto)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"extension")) ::
              Data.ProtoLens.FieldDescriptor FileDescriptorProto
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, package__field_descriptor),
           (Data.ProtoLens.Tag 3, dependency__field_descriptor),
           (Data.ProtoLens.Tag 10, publicDependency__field_descriptor),
           (Data.ProtoLens.Tag 11, weakDependency__field_descriptor),
           (Data.ProtoLens.Tag 4, messageType__field_descriptor),
           (Data.ProtoLens.Tag 5, enumType__field_descriptor),
           (Data.ProtoLens.Tag 7, extension__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FileDescriptorProto'_unknownFields
        (\ x__ y__ -> x__ {_FileDescriptorProto'_unknownFields = y__})
  defMessage
    = FileDescriptorProto'_constructor
        {_FileDescriptorProto'name = Prelude.Nothing,
         _FileDescriptorProto'package = Prelude.Nothing,
         _FileDescriptorProto'dependency = Data.Vector.Generic.empty,
         _FileDescriptorProto'publicDependency = Data.Vector.Generic.empty,
         _FileDescriptorProto'weakDependency = Data.Vector.Generic.empty,
         _FileDescriptorProto'messageType = Data.Vector.Generic.empty,
         _FileDescriptorProto'enumType = Data.Vector.Generic.empty,
         _FileDescriptorProto'extension = Data.Vector.Generic.empty,
         _FileDescriptorProto'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FileDescriptorProto
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld EnumDescriptorProto
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld FieldDescriptorProto
                   -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld DescriptorProto
                      -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Int.Int32
                         -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Int.Int32
                            -> Data.ProtoLens.Encoding.Bytes.Parser FileDescriptorProto
        loop
          x
          mutable'dependency
          mutable'enumType
          mutable'extension
          mutable'messageType
          mutable'publicDependency
          mutable'weakDependency
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'dependency <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'dependency)
                      frozen'enumType <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'enumType)
                      frozen'extension <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'extension)
                      frozen'messageType <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'messageType)
                      frozen'publicDependency <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                   (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                      mutable'publicDependency)
                      frozen'weakDependency <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                    mutable'weakDependency)
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
                              (Data.ProtoLens.Field.field @"vec'dependency") frozen'dependency
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'enumType") frozen'enumType
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'extension") frozen'extension
                                    (Lens.Family2.set
                                       (Data.ProtoLens.Field.field @"vec'messageType")
                                       frozen'messageType
                                       (Lens.Family2.set
                                          (Data.ProtoLens.Field.field @"vec'publicDependency")
                                          frozen'publicDependency
                                          (Lens.Family2.set
                                             (Data.ProtoLens.Field.field @"vec'weakDependency")
                                             frozen'weakDependency x)))))))
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
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                                  mutable'dependency mutable'enumType mutable'extension
                                  mutable'messageType mutable'publicDependency
                                  mutable'weakDependency
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
                                       "package"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"package") y x)
                                  mutable'dependency mutable'enumType mutable'extension
                                  mutable'messageType mutable'publicDependency
                                  mutable'weakDependency
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "dependency"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'dependency y)
                                loop
                                  x v mutable'enumType mutable'extension mutable'messageType
                                  mutable'publicDependency mutable'weakDependency
                        80
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "public_dependency"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'publicDependency y)
                                loop
                                  x mutable'dependency mutable'enumType mutable'extension
                                  mutable'messageType v mutable'weakDependency
                        82
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
                                                                    "public_dependency"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'publicDependency)
                                loop
                                  x mutable'dependency mutable'enumType mutable'extension
                                  mutable'messageType y mutable'weakDependency
                        88
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "weak_dependency"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'weakDependency y)
                                loop
                                  x mutable'dependency mutable'enumType mutable'extension
                                  mutable'messageType mutable'publicDependency v
                        90
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
                                                                    "weak_dependency"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'weakDependency)
                                loop
                                  x mutable'dependency mutable'enumType mutable'extension
                                  mutable'messageType mutable'publicDependency y
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "message_type"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'messageType y)
                                loop
                                  x mutable'dependency mutable'enumType mutable'extension v
                                  mutable'publicDependency mutable'weakDependency
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "enum_type"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'enumType y)
                                loop
                                  x mutable'dependency v mutable'extension mutable'messageType
                                  mutable'publicDependency mutable'weakDependency
                        58
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "extension"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'extension y)
                                loop
                                  x mutable'dependency mutable'enumType v mutable'messageType
                                  mutable'publicDependency mutable'weakDependency
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'dependency mutable'enumType mutable'extension
                                  mutable'messageType mutable'publicDependency
                                  mutable'weakDependency
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'dependency <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              mutable'enumType <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              mutable'extension <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              mutable'messageType <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              mutable'publicDependency <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            Data.ProtoLens.Encoding.Growing.new
              mutable'weakDependency <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'dependency mutable'enumType
                mutable'extension mutable'messageType mutable'publicDependency
                mutable'weakDependency)
          "FileDescriptorProto"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'package") _x
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
                                 Data.Text.Encoding.encodeUtf8 _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'dependency") _x))
                   ((Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                         (\ _v
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 80)
                                 ((Prelude..)
                                    Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                    _v))
                         (Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vec'publicDependency") _x))
                      ((Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                            (\ _v
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 88)
                                    ((Prelude..)
                                       Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                       _v))
                            (Lens.Family2.view
                               (Data.ProtoLens.Field.field @"vec'weakDependency") _x))
                         ((Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                               (\ _v
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                       ((Prelude..)
                                          (\ bs
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                     (Prelude.fromIntegral
                                                        (Data.ByteString.length bs)))
                                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                          Data.ProtoLens.encodeMessage _v))
                               (Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"vec'messageType") _x))
                            ((Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                  (\ _v
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                          ((Prelude..)
                                             (\ bs
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                        (Prelude.fromIntegral
                                                           (Data.ByteString.length bs)))
                                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                             Data.ProtoLens.encodeMessage _v))
                                  (Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"vec'enumType") _x))
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
                                        (Data.ProtoLens.Field.field @"vec'extension") _x))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData FileDescriptorProto where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FileDescriptorProto'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FileDescriptorProto'name x__)
                (Control.DeepSeq.deepseq
                   (_FileDescriptorProto'package x__)
                   (Control.DeepSeq.deepseq
                      (_FileDescriptorProto'dependency x__)
                      (Control.DeepSeq.deepseq
                         (_FileDescriptorProto'publicDependency x__)
                         (Control.DeepSeq.deepseq
                            (_FileDescriptorProto'weakDependency x__)
                            (Control.DeepSeq.deepseq
                               (_FileDescriptorProto'messageType x__)
                               (Control.DeepSeq.deepseq
                                  (_FileDescriptorProto'enumType x__)
                                  (Control.DeepSeq.deepseq
                                     (_FileDescriptorProto'extension x__) ()))))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.file' @:: Lens' FileDescriptorSet [FileDescriptorProto]@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.vec'file' @:: Lens' FileDescriptorSet (Data.Vector.Vector FileDescriptorProto)@ -}
data FileDescriptorSet
  = FileDescriptorSet'_constructor {_FileDescriptorSet'file :: !(Data.Vector.Vector FileDescriptorProto),
                                    _FileDescriptorSet'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FileDescriptorSet where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FileDescriptorSet "file" [FileDescriptorProto] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FileDescriptorSet'file
           (\ x__ y__ -> x__ {_FileDescriptorSet'file = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FileDescriptorSet "vec'file" (Data.Vector.Vector FileDescriptorProto) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FileDescriptorSet'file
           (\ x__ y__ -> x__ {_FileDescriptorSet'file = y__}))
        Prelude.id
instance Data.ProtoLens.Message FileDescriptorSet where
  messageName _ = Data.Text.pack "perfetto.protos.FileDescriptorSet"
  packedMessageDescriptor _
    = "\n\
      \\DC1FileDescriptorSet\DC28\n\
      \\EOTfile\CAN\SOH \ETX(\v2$.perfetto.protos.FileDescriptorProtoR\EOTfile"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        file__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "file"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor FileDescriptorProto)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"file")) ::
              Data.ProtoLens.FieldDescriptor FileDescriptorSet
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, file__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FileDescriptorSet'_unknownFields
        (\ x__ y__ -> x__ {_FileDescriptorSet'_unknownFields = y__})
  defMessage
    = FileDescriptorSet'_constructor
        {_FileDescriptorSet'file = Data.Vector.Generic.empty,
         _FileDescriptorSet'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FileDescriptorSet
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld FileDescriptorProto
             -> Data.ProtoLens.Encoding.Bytes.Parser FileDescriptorSet
        loop x mutable'file
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'file <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'file)
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
                              (Data.ProtoLens.Field.field @"vec'file") frozen'file x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "file"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'file y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'file
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'file <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'file)
          "FileDescriptorSet"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'file") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData FileDescriptorSet where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FileDescriptorSet'_unknownFields x__)
             (Control.DeepSeq.deepseq (_FileDescriptorSet'file x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.name' @:: Lens' OneofDescriptorProto Data.Text.Text@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.maybe'name' @:: Lens' OneofDescriptorProto (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.options' @:: Lens' OneofDescriptorProto OneofOptions@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.maybe'options' @:: Lens' OneofDescriptorProto (Prelude.Maybe OneofOptions)@ -}
data OneofDescriptorProto
  = OneofDescriptorProto'_constructor {_OneofDescriptorProto'name :: !(Prelude.Maybe Data.Text.Text),
                                       _OneofDescriptorProto'options :: !(Prelude.Maybe OneofOptions),
                                       _OneofDescriptorProto'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show OneofDescriptorProto where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField OneofDescriptorProto "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OneofDescriptorProto'name
           (\ x__ y__ -> x__ {_OneofDescriptorProto'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField OneofDescriptorProto "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OneofDescriptorProto'name
           (\ x__ y__ -> x__ {_OneofDescriptorProto'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OneofDescriptorProto "options" OneofOptions where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OneofDescriptorProto'options
           (\ x__ y__ -> x__ {_OneofDescriptorProto'options = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField OneofDescriptorProto "maybe'options" (Prelude.Maybe OneofOptions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OneofDescriptorProto'options
           (\ x__ y__ -> x__ {_OneofDescriptorProto'options = y__}))
        Prelude.id
instance Data.ProtoLens.Message OneofDescriptorProto where
  messageName _
    = Data.Text.pack "perfetto.protos.OneofDescriptorProto"
  packedMessageDescriptor _
    = "\n\
      \\DC4OneofDescriptorProto\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC27\n\
      \\aoptions\CAN\STX \SOH(\v2\GS.perfetto.protos.OneofOptionsR\aoptions"
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
              Data.ProtoLens.FieldDescriptor OneofDescriptorProto
        options__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor OneofOptions)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'options")) ::
              Data.ProtoLens.FieldDescriptor OneofDescriptorProto
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, options__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _OneofDescriptorProto'_unknownFields
        (\ x__ y__ -> x__ {_OneofDescriptorProto'_unknownFields = y__})
  defMessage
    = OneofDescriptorProto'_constructor
        {_OneofDescriptorProto'name = Prelude.Nothing,
         _OneofDescriptorProto'options = Prelude.Nothing,
         _OneofDescriptorProto'_unknownFields = []}
  parseMessage
    = let
        loop ::
          OneofDescriptorProto
          -> Data.ProtoLens.Encoding.Bytes.Parser OneofDescriptorProto
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
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "options"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"options") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "OneofDescriptorProto"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'options") _x
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
                             Data.ProtoLens.encodeMessage _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData OneofDescriptorProto where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_OneofDescriptorProto'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_OneofDescriptorProto'name x__)
                (Control.DeepSeq.deepseq (_OneofDescriptorProto'options x__) ()))
{- | Fields :
      -}
data OneofOptions
  = OneofOptions'_constructor {_OneofOptions'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show OneofOptions where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message OneofOptions where
  messageName _ = Data.Text.pack "perfetto.protos.OneofOptions"
  packedMessageDescriptor _
    = "\n\
      \\fOneofOptions*\t\b\232\a\DLE\128\128\128\128\STXJ\ACK\b\231\a\DLE\232\a"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _OneofOptions'_unknownFields
        (\ x__ y__ -> x__ {_OneofOptions'_unknownFields = y__})
  defMessage
    = OneofOptions'_constructor {_OneofOptions'_unknownFields = []}
  parseMessage
    = let
        loop ::
          OneofOptions -> Data.ProtoLens.Encoding.Bytes.Parser OneofOptions
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "OneofOptions"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData OneofOptions where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq (_OneofOptions'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.name' @:: Lens' UninterpretedOption [UninterpretedOption'NamePart]@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.vec'name' @:: Lens' UninterpretedOption (Data.Vector.Vector UninterpretedOption'NamePart)@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.identifierValue' @:: Lens' UninterpretedOption Data.Text.Text@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.maybe'identifierValue' @:: Lens' UninterpretedOption (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.positiveIntValue' @:: Lens' UninterpretedOption Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.maybe'positiveIntValue' @:: Lens' UninterpretedOption (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.negativeIntValue' @:: Lens' UninterpretedOption Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.maybe'negativeIntValue' @:: Lens' UninterpretedOption (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.doubleValue' @:: Lens' UninterpretedOption Prelude.Double@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.maybe'doubleValue' @:: Lens' UninterpretedOption (Prelude.Maybe Prelude.Double)@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.stringValue' @:: Lens' UninterpretedOption Data.ByteString.ByteString@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.maybe'stringValue' @:: Lens' UninterpretedOption (Prelude.Maybe Data.ByteString.ByteString)@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.aggregateValue' @:: Lens' UninterpretedOption Data.Text.Text@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.maybe'aggregateValue' @:: Lens' UninterpretedOption (Prelude.Maybe Data.Text.Text)@ -}
data UninterpretedOption
  = UninterpretedOption'_constructor {_UninterpretedOption'name :: !(Data.Vector.Vector UninterpretedOption'NamePart),
                                      _UninterpretedOption'identifierValue :: !(Prelude.Maybe Data.Text.Text),
                                      _UninterpretedOption'positiveIntValue :: !(Prelude.Maybe Data.Word.Word64),
                                      _UninterpretedOption'negativeIntValue :: !(Prelude.Maybe Data.Int.Int64),
                                      _UninterpretedOption'doubleValue :: !(Prelude.Maybe Prelude.Double),
                                      _UninterpretedOption'stringValue :: !(Prelude.Maybe Data.ByteString.ByteString),
                                      _UninterpretedOption'aggregateValue :: !(Prelude.Maybe Data.Text.Text),
                                      _UninterpretedOption'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UninterpretedOption where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField UninterpretedOption "name" [UninterpretedOption'NamePart] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UninterpretedOption'name
           (\ x__ y__ -> x__ {_UninterpretedOption'name = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField UninterpretedOption "vec'name" (Data.Vector.Vector UninterpretedOption'NamePart) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UninterpretedOption'name
           (\ x__ y__ -> x__ {_UninterpretedOption'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UninterpretedOption "identifierValue" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UninterpretedOption'identifierValue
           (\ x__ y__ -> x__ {_UninterpretedOption'identifierValue = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField UninterpretedOption "maybe'identifierValue" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UninterpretedOption'identifierValue
           (\ x__ y__ -> x__ {_UninterpretedOption'identifierValue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UninterpretedOption "positiveIntValue" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UninterpretedOption'positiveIntValue
           (\ x__ y__ -> x__ {_UninterpretedOption'positiveIntValue = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField UninterpretedOption "maybe'positiveIntValue" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UninterpretedOption'positiveIntValue
           (\ x__ y__ -> x__ {_UninterpretedOption'positiveIntValue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UninterpretedOption "negativeIntValue" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UninterpretedOption'negativeIntValue
           (\ x__ y__ -> x__ {_UninterpretedOption'negativeIntValue = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField UninterpretedOption "maybe'negativeIntValue" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UninterpretedOption'negativeIntValue
           (\ x__ y__ -> x__ {_UninterpretedOption'negativeIntValue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UninterpretedOption "doubleValue" Prelude.Double where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UninterpretedOption'doubleValue
           (\ x__ y__ -> x__ {_UninterpretedOption'doubleValue = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField UninterpretedOption "maybe'doubleValue" (Prelude.Maybe Prelude.Double) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UninterpretedOption'doubleValue
           (\ x__ y__ -> x__ {_UninterpretedOption'doubleValue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UninterpretedOption "stringValue" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UninterpretedOption'stringValue
           (\ x__ y__ -> x__ {_UninterpretedOption'stringValue = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField UninterpretedOption "maybe'stringValue" (Prelude.Maybe Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UninterpretedOption'stringValue
           (\ x__ y__ -> x__ {_UninterpretedOption'stringValue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UninterpretedOption "aggregateValue" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UninterpretedOption'aggregateValue
           (\ x__ y__ -> x__ {_UninterpretedOption'aggregateValue = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField UninterpretedOption "maybe'aggregateValue" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UninterpretedOption'aggregateValue
           (\ x__ y__ -> x__ {_UninterpretedOption'aggregateValue = y__}))
        Prelude.id
instance Data.ProtoLens.Message UninterpretedOption where
  messageName _
    = Data.Text.pack "perfetto.protos.UninterpretedOption"
  packedMessageDescriptor _
    = "\n\
      \\DC3UninterpretedOption\DC2A\n\
      \\EOTname\CAN\STX \ETX(\v2-.perfetto.protos.UninterpretedOption.NamePartR\EOTname\DC2)\n\
      \\DLEidentifier_value\CAN\ETX \SOH(\tR\SIidentifierValue\DC2,\n\
      \\DC2positive_int_value\CAN\EOT \SOH(\EOTR\DLEpositiveIntValue\DC2,\n\
      \\DC2negative_int_value\CAN\ENQ \SOH(\ETXR\DLEnegativeIntValue\DC2!\n\
      \\fdouble_value\CAN\ACK \SOH(\SOHR\vdoubleValue\DC2!\n\
      \\fstring_value\CAN\a \SOH(\fR\vstringValue\DC2'\n\
      \\SIaggregate_value\CAN\b \SOH(\tR\SOaggregateValue\SUBJ\n\
      \\bNamePart\DC2\ESC\n\
      \\tname_part\CAN\SOH \SOH(\tR\bnamePart\DC2!\n\
      \\fis_extension\CAN\STX \SOH(\bR\visExtension"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor UninterpretedOption'NamePart)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"name")) ::
              Data.ProtoLens.FieldDescriptor UninterpretedOption
        identifierValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "identifier_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'identifierValue")) ::
              Data.ProtoLens.FieldDescriptor UninterpretedOption
        positiveIntValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "positive_int_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'positiveIntValue")) ::
              Data.ProtoLens.FieldDescriptor UninterpretedOption
        negativeIntValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "negative_int_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'negativeIntValue")) ::
              Data.ProtoLens.FieldDescriptor UninterpretedOption
        doubleValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "double_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'doubleValue")) ::
              Data.ProtoLens.FieldDescriptor UninterpretedOption
        stringValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "string_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'stringValue")) ::
              Data.ProtoLens.FieldDescriptor UninterpretedOption
        aggregateValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "aggregate_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'aggregateValue")) ::
              Data.ProtoLens.FieldDescriptor UninterpretedOption
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 2, name__field_descriptor),
           (Data.ProtoLens.Tag 3, identifierValue__field_descriptor),
           (Data.ProtoLens.Tag 4, positiveIntValue__field_descriptor),
           (Data.ProtoLens.Tag 5, negativeIntValue__field_descriptor),
           (Data.ProtoLens.Tag 6, doubleValue__field_descriptor),
           (Data.ProtoLens.Tag 7, stringValue__field_descriptor),
           (Data.ProtoLens.Tag 8, aggregateValue__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _UninterpretedOption'_unknownFields
        (\ x__ y__ -> x__ {_UninterpretedOption'_unknownFields = y__})
  defMessage
    = UninterpretedOption'_constructor
        {_UninterpretedOption'name = Data.Vector.Generic.empty,
         _UninterpretedOption'identifierValue = Prelude.Nothing,
         _UninterpretedOption'positiveIntValue = Prelude.Nothing,
         _UninterpretedOption'negativeIntValue = Prelude.Nothing,
         _UninterpretedOption'doubleValue = Prelude.Nothing,
         _UninterpretedOption'stringValue = Prelude.Nothing,
         _UninterpretedOption'aggregateValue = Prelude.Nothing,
         _UninterpretedOption'_unknownFields = []}
  parseMessage
    = let
        loop ::
          UninterpretedOption
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld UninterpretedOption'NamePart
             -> Data.ProtoLens.Encoding.Bytes.Parser UninterpretedOption
        loop x mutable'name
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'name <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'name)
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
                              (Data.ProtoLens.Field.field @"vec'name") frozen'name x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "name"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'name y)
                                loop x v
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
                                       "identifier_value"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"identifierValue") y x)
                                  mutable'name
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "positive_int_value"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"positiveIntValue") y x)
                                  mutable'name
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "negative_int_value"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"negativeIntValue") y x)
                                  mutable'name
                        49
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToDouble
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "double_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"doubleValue") y x)
                                  mutable'name
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "string_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"stringValue") y x)
                                  mutable'name
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
                                       "aggregate_value"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"aggregateValue") y x)
                                  mutable'name
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'name
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'name <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'name)
          "UninterpretedOption"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'name") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'identifierValue") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
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
                          (Data.ProtoLens.Field.field @"maybe'positiveIntValue") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'negativeIntValue") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
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
                                   (Data.ProtoLens.Field.field @"maybe'stringValue") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                      ((\ bs
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  (Prelude.fromIntegral
                                                     (Data.ByteString.length bs)))
                                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'aggregateValue") _x
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
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData UninterpretedOption where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_UninterpretedOption'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_UninterpretedOption'name x__)
                (Control.DeepSeq.deepseq
                   (_UninterpretedOption'identifierValue x__)
                   (Control.DeepSeq.deepseq
                      (_UninterpretedOption'positiveIntValue x__)
                      (Control.DeepSeq.deepseq
                         (_UninterpretedOption'negativeIntValue x__)
                         (Control.DeepSeq.deepseq
                            (_UninterpretedOption'doubleValue x__)
                            (Control.DeepSeq.deepseq
                               (_UninterpretedOption'stringValue x__)
                               (Control.DeepSeq.deepseq
                                  (_UninterpretedOption'aggregateValue x__) ())))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.namePart' @:: Lens' UninterpretedOption'NamePart Data.Text.Text@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.maybe'namePart' @:: Lens' UninterpretedOption'NamePart (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.isExtension' @:: Lens' UninterpretedOption'NamePart Prelude.Bool@
         * 'Proto.Protos.Perfetto.Common.Descriptor_Fields.maybe'isExtension' @:: Lens' UninterpretedOption'NamePart (Prelude.Maybe Prelude.Bool)@ -}
data UninterpretedOption'NamePart
  = UninterpretedOption'NamePart'_constructor {_UninterpretedOption'NamePart'namePart :: !(Prelude.Maybe Data.Text.Text),
                                               _UninterpretedOption'NamePart'isExtension :: !(Prelude.Maybe Prelude.Bool),
                                               _UninterpretedOption'NamePart'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UninterpretedOption'NamePart where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField UninterpretedOption'NamePart "namePart" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UninterpretedOption'NamePart'namePart
           (\ x__ y__ -> x__ {_UninterpretedOption'NamePart'namePart = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField UninterpretedOption'NamePart "maybe'namePart" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UninterpretedOption'NamePart'namePart
           (\ x__ y__ -> x__ {_UninterpretedOption'NamePart'namePart = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UninterpretedOption'NamePart "isExtension" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UninterpretedOption'NamePart'isExtension
           (\ x__ y__
              -> x__ {_UninterpretedOption'NamePart'isExtension = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField UninterpretedOption'NamePart "maybe'isExtension" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UninterpretedOption'NamePart'isExtension
           (\ x__ y__
              -> x__ {_UninterpretedOption'NamePart'isExtension = y__}))
        Prelude.id
instance Data.ProtoLens.Message UninterpretedOption'NamePart where
  messageName _
    = Data.Text.pack "perfetto.protos.UninterpretedOption.NamePart"
  packedMessageDescriptor _
    = "\n\
      \\bNamePart\DC2\ESC\n\
      \\tname_part\CAN\SOH \SOH(\tR\bnamePart\DC2!\n\
      \\fis_extension\CAN\STX \SOH(\bR\visExtension"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        namePart__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name_part"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'namePart")) ::
              Data.ProtoLens.FieldDescriptor UninterpretedOption'NamePart
        isExtension__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "is_extension"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'isExtension")) ::
              Data.ProtoLens.FieldDescriptor UninterpretedOption'NamePart
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, namePart__field_descriptor),
           (Data.ProtoLens.Tag 2, isExtension__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _UninterpretedOption'NamePart'_unknownFields
        (\ x__ y__
           -> x__ {_UninterpretedOption'NamePart'_unknownFields = y__})
  defMessage
    = UninterpretedOption'NamePart'_constructor
        {_UninterpretedOption'NamePart'namePart = Prelude.Nothing,
         _UninterpretedOption'NamePart'isExtension = Prelude.Nothing,
         _UninterpretedOption'NamePart'_unknownFields = []}
  parseMessage
    = let
        loop ::
          UninterpretedOption'NamePart
          -> Data.ProtoLens.Encoding.Bytes.Parser UninterpretedOption'NamePart
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
                                       "name_part"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"namePart") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "is_extension"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"isExtension") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "NamePart"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'namePart") _x
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
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'isExtension") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                             _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData UninterpretedOption'NamePart where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_UninterpretedOption'NamePart'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_UninterpretedOption'NamePart'namePart x__)
                (Control.DeepSeq.deepseq
                   (_UninterpretedOption'NamePart'isExtension x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \'protos/perfetto/common/descriptor.proto\DC2\SIperfetto.protos\"M\n\
    \\DC1FileDescriptorSet\DC28\n\
    \\EOTfile\CAN\SOH \ETX(\v2$.perfetto.protos.FileDescriptorProtoR\EOTfile\"\158\ETX\n\
    \\DC3FileDescriptorProto\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\CAN\n\
    \\apackage\CAN\STX \SOH(\tR\apackage\DC2\RS\n\
    \\n\
    \dependency\CAN\ETX \ETX(\tR\n\
    \dependency\DC2+\n\
    \\DC1public_dependency\CAN\n\
    \ \ETX(\ENQR\DLEpublicDependency\DC2'\n\
    \\SIweak_dependency\CAN\v \ETX(\ENQR\SOweakDependency\DC2C\n\
    \\fmessage_type\CAN\EOT \ETX(\v2 .perfetto.protos.DescriptorProtoR\vmessageType\DC2A\n\
    \\tenum_type\CAN\ENQ \ETX(\v2$.perfetto.protos.EnumDescriptorProtoR\benumType\DC2C\n\
    \\textension\CAN\a \ETX(\v2%.perfetto.protos.FieldDescriptorProtoR\textensionJ\EOT\b\ACK\DLE\aJ\EOT\b\b\DLE\tJ\EOT\b\t\DLE\n\
    \J\EOT\b\f\DLE\r\"\180\EOT\n\
    \\SIDescriptorProto\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2;\n\
    \\ENQfield\CAN\STX \ETX(\v2%.perfetto.protos.FieldDescriptorProtoR\ENQfield\DC2C\n\
    \\textension\CAN\ACK \ETX(\v2%.perfetto.protos.FieldDescriptorProtoR\textension\DC2A\n\
    \\vnested_type\CAN\ETX \ETX(\v2 .perfetto.protos.DescriptorProtoR\n\
    \nestedType\DC2A\n\
    \\tenum_type\CAN\EOT \ETX(\v2$.perfetto.protos.EnumDescriptorProtoR\benumType\DC2D\n\
    \\n\
    \oneof_decl\CAN\b \ETX(\v2%.perfetto.protos.OneofDescriptorProtoR\toneofDecl\DC2U\n\
    \\SOreserved_range\CAN\t \ETX(\v2..perfetto.protos.DescriptorProto.ReservedRangeR\rreservedRange\DC2#\n\
    \\rreserved_name\CAN\n\
    \ \ETX(\tR\freservedName\SUB7\n\
    \\rReservedRange\DC2\DC4\n\
    \\ENQstart\CAN\SOH \SOH(\ENQR\ENQstart\DC2\DLE\n\
    \\ETXend\CAN\STX \SOH(\ENQR\ETXendJ\EOT\b\ENQ\DLE\ACKJ\EOT\b\a\DLE\b\"\154\ETX\n\
    \\DC3UninterpretedOption\DC2A\n\
    \\EOTname\CAN\STX \ETX(\v2-.perfetto.protos.UninterpretedOption.NamePartR\EOTname\DC2)\n\
    \\DLEidentifier_value\CAN\ETX \SOH(\tR\SIidentifierValue\DC2,\n\
    \\DC2positive_int_value\CAN\EOT \SOH(\EOTR\DLEpositiveIntValue\DC2,\n\
    \\DC2negative_int_value\CAN\ENQ \SOH(\ETXR\DLEnegativeIntValue\DC2!\n\
    \\fdouble_value\CAN\ACK \SOH(\SOHR\vdoubleValue\DC2!\n\
    \\fstring_value\CAN\a \SOH(\fR\vstringValue\DC2'\n\
    \\SIaggregate_value\CAN\b \SOH(\tR\SOaggregateValue\SUBJ\n\
    \\bNamePart\DC2\ESC\n\
    \\tname_part\CAN\SOH \SOH(\tR\bnamePart\DC2!\n\
    \\fis_extension\CAN\STX \SOH(\bR\visExtension\"\128\SOH\n\
    \\fFieldOptions\DC2\SYN\n\
    \\ACKpacked\CAN\STX \SOH(\bR\ACKpacked\DC2X\n\
    \\DC4uninterpreted_option\CAN\231\a \ETX(\v2$.perfetto.protos.UninterpretedOptionR\DC3uninterpretedOption\"\129\ACK\n\
    \\DC4FieldDescriptorProto\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\SYN\n\
    \\ACKnumber\CAN\ETX \SOH(\ENQR\ACKnumber\DC2A\n\
    \\ENQlabel\CAN\EOT \SOH(\SO2+.perfetto.protos.FieldDescriptorProto.LabelR\ENQlabel\DC2>\n\
    \\EOTtype\CAN\ENQ \SOH(\SO2*.perfetto.protos.FieldDescriptorProto.TypeR\EOTtype\DC2\ESC\n\
    \\ttype_name\CAN\ACK \SOH(\tR\btypeName\DC2\SUB\n\
    \\bextendee\CAN\STX \SOH(\tR\bextendee\DC2#\n\
    \\rdefault_value\CAN\a \SOH(\tR\fdefaultValue\DC27\n\
    \\aoptions\CAN\b \SOH(\v2\GS.perfetto.protos.FieldOptionsR\aoptions\DC2\US\n\
    \\voneof_index\CAN\t \SOH(\ENQR\n\
    \oneofIndex\"\182\STX\n\
    \\EOTType\DC2\SI\n\
    \\vTYPE_DOUBLE\DLE\SOH\DC2\SO\n\
    \\n\
    \TYPE_FLOAT\DLE\STX\DC2\SO\n\
    \\n\
    \TYPE_INT64\DLE\ETX\DC2\SI\n\
    \\vTYPE_UINT64\DLE\EOT\DC2\SO\n\
    \\n\
    \TYPE_INT32\DLE\ENQ\DC2\DLE\n\
    \\fTYPE_FIXED64\DLE\ACK\DC2\DLE\n\
    \\fTYPE_FIXED32\DLE\a\DC2\r\n\
    \\tTYPE_BOOL\DLE\b\DC2\SI\n\
    \\vTYPE_STRING\DLE\t\DC2\SO\n\
    \\n\
    \TYPE_GROUP\DLE\n\
    \\DC2\DLE\n\
    \\fTYPE_MESSAGE\DLE\v\DC2\SO\n\
    \\n\
    \TYPE_BYTES\DLE\f\DC2\SI\n\
    \\vTYPE_UINT32\DLE\r\DC2\r\n\
    \\tTYPE_ENUM\DLE\SO\DC2\DC1\n\
    \\rTYPE_SFIXED32\DLE\SI\DC2\DC1\n\
    \\rTYPE_SFIXED64\DLE\DLE\DC2\SI\n\
    \\vTYPE_SINT32\DLE\DC1\DC2\SI\n\
    \\vTYPE_SINT64\DLE\DC2\"C\n\
    \\ENQLabel\DC2\DC2\n\
    \\SOLABEL_OPTIONAL\DLE\SOH\DC2\DC2\n\
    \\SOLABEL_REQUIRED\DLE\STX\DC2\DC2\n\
    \\SOLABEL_REPEATED\DLE\ETXJ\EOT\b\n\
    \\DLE\v\"c\n\
    \\DC4OneofDescriptorProto\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC27\n\
    \\aoptions\CAN\STX \SOH(\v2\GS.perfetto.protos.OneofOptionsR\aoptions\"\155\SOH\n\
    \\DC3EnumDescriptorProto\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2?\n\
    \\ENQvalue\CAN\STX \ETX(\v2).perfetto.protos.EnumValueDescriptorProtoR\ENQvalue\DC2#\n\
    \\rreserved_name\CAN\ENQ \ETX(\tR\freservedNameJ\EOT\b\ETX\DLE\EOTJ\EOT\b\EOT\DLE\ENQ\"L\n\
    \\CANEnumValueDescriptorProto\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\SYN\n\
    \\ACKnumber\CAN\STX \SOH(\ENQR\ACKnumberJ\EOT\b\ETX\DLE\EOT\"!\n\
    \\fOneofOptions*\t\b\232\a\DLE\128\128\128\128\STXJ\ACK\b\231\a\DLE\232\aJ\161N\n\
    \\a\DC2\ENQ\DC1\NUL\237\SOH\SOH\n\
    \\154\ENQ\n\
    \\SOH\f\DC2\ETX\DC1\NUL\DC2\SUBA This is a subset of descriptor.proto from the Protobuf library.\n\
    \2\204\EOT\n\
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
    \\SOH\STX\DC2\ETX\DC3\NUL\CAN\n\
    \j\n\
    \\STX\EOT\NUL\DC2\EOT\ETB\NUL\EM\SOH\SUB^ The protocol compiler can output a FileDescriptorSet containing the .proto\n\
    \ files it parses.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\ETB\b\EM\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\CAN\STX(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\CAN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\CAN\v\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\CAN\US#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\CAN&'\n\
    \/\n\
    \\STX\EOT\SOH\DC2\EOT\FS\NUL3\SOH\SUB# Describes a complete .proto file.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\FS\b\ESC\n\
    \9\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\RS\STX\ESC\SUB, file name, relative to root of source tree\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\RS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\RS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\RS\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\RS\EM\SUB\n\
    \*\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX \STX\RS\SUB\GS e.g. \"foo\", \"foo.bar\", etc.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX \STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX \v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX \DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX \FS\GS\n\
    \4\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX#\STX!\SUB' Names of files imported by this file.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\EOT\DC2\ETX#\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX#\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX#\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX#\US \n\
    \Q\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX%\STX(\SUBD Indexes of the public imported files in the dependency list above.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\EOT\DC2\ETX%\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX%\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX%\DC1\"\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX%%'\n\
    \z\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETX(\STX&\SUBm Indexes of the weak imported files in the dependency list.\n\
    \ For Google-internal migration only. Do not use.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\EOT\DC2\ETX(\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ENQ\DC2\ETX(\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETX(\DC1 \n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETX(#%\n\
    \6\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\ETX+\STX,\SUB) All top-level definitions in this file.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\EOT\DC2\ETX+\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ACK\DC2\ETX+\v\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\ETX+\ESC'\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\ETX+*+\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ACK\DC2\ETX,\STX-\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\EOT\DC2\ETX,\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ACK\DC2\ETX,\v\RS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\SOH\DC2\ETX,\US(\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ETX\DC2\ETX,+,\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\a\DC2\ETX-\STX.\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\EOT\DC2\ETX-\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\ACK\DC2\ETX-\v\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\SOH\DC2\ETX- )\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\ETX\DC2\ETX-,-\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\t\DC2\ETX/\STX\r\n\
    \\v\n\
    \\EOT\EOT\SOH\t\NUL\DC2\ETX/\v\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\t\NUL\SOH\DC2\ETX/\v\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\t\NUL\STX\DC2\ETX/\v\f\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\t\DC2\ETX0\STX\r\n\
    \\v\n\
    \\EOT\EOT\SOH\t\SOH\DC2\ETX0\v\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\t\SOH\SOH\DC2\ETX0\v\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\t\SOH\STX\DC2\ETX0\v\f\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\t\DC2\ETX1\STX\r\n\
    \\v\n\
    \\EOT\EOT\SOH\t\STX\DC2\ETX1\v\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\t\STX\SOH\DC2\ETX1\v\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\t\STX\STX\DC2\ETX1\v\f\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\t\DC2\ETX2\STX\SO\n\
    \\v\n\
    \\EOT\EOT\SOH\t\ETX\DC2\ETX2\v\r\n\
    \\f\n\
    \\ENQ\EOT\SOH\t\ETX\SOH\DC2\ETX2\v\r\n\
    \\f\n\
    \\ENQ\EOT\SOH\t\ETX\STX\DC2\ETX2\v\r\n\
    \'\n\
    \\STX\EOT\STX\DC2\EOT6\NULR\SOH\SUB\ESC Describes a message type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX6\b\ETB\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX7\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETX7\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX7\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX7\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX7\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX9\STX*\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETX9\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\ETX9\v\US\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX9 %\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX9()\n\
    \\v\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX:\STX.\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\EOT\DC2\ETX:\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ACK\DC2\ETX:\v\US\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX: )\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX:,-\n\
    \\v\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETX<\STX+\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\EOT\DC2\ETX<\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ACK\DC2\ETX<\v\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETX<\ESC&\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETX<)*\n\
    \\v\n\
    \\EOT\EOT\STX\STX\EOT\DC2\ETX=\STX-\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\EOT\DC2\ETX=\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ACK\DC2\ETX=\v\RS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\ETX=\US(\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\ETX=+,\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\t\DC2\ETX?\STX\r\n\
    \\v\n\
    \\EOT\EOT\STX\t\NUL\DC2\ETX?\v\f\n\
    \\f\n\
    \\ENQ\EOT\STX\t\NUL\SOH\DC2\ETX?\v\f\n\
    \\f\n\
    \\ENQ\EOT\STX\t\NUL\STX\DC2\ETX?\v\f\n\
    \\v\n\
    \\EOT\EOT\STX\STX\ENQ\DC2\ETXA\STX/\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\EOT\DC2\ETXA\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ACK\DC2\ETXA\v\US\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\SOH\DC2\ETXA *\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ETX\DC2\ETXA-.\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\t\DC2\ETXC\STX\r\n\
    \\v\n\
    \\EOT\EOT\STX\t\SOH\DC2\ETXC\v\f\n\
    \\f\n\
    \\ENQ\EOT\STX\t\SOH\SOH\DC2\ETXC\v\f\n\
    \\f\n\
    \\ENQ\EOT\STX\t\SOH\STX\DC2\ETXC\v\f\n\
    \\170\SOH\n\
    \\EOT\EOT\STX\ETX\NUL\DC2\EOTH\STXM\ETX\SUB\155\SOH Range of reserved tag numbers. Reserved tag numbers may not be used by\n\
    \ fields or extension ranges in the same message. Reserved ranges may\n\
    \ not overlap.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\ETX\NUL\SOH\DC2\ETXH\n\
    \\ETB\n\
    \\ESC\n\
    \\ACK\EOT\STX\ETX\NUL\STX\NUL\DC2\ETXJ\EOT\GS\SUB\f Inclusive.\n\
    \\n\
    \\SO\n\
    \\a\EOT\STX\ETX\NUL\STX\NUL\EOT\DC2\ETXJ\EOT\f\n\
    \\SO\n\
    \\a\EOT\STX\ETX\NUL\STX\NUL\ENQ\DC2\ETXJ\r\DC2\n\
    \\SO\n\
    \\a\EOT\STX\ETX\NUL\STX\NUL\SOH\DC2\ETXJ\DC3\CAN\n\
    \\SO\n\
    \\a\EOT\STX\ETX\NUL\STX\NUL\ETX\DC2\ETXJ\ESC\FS\n\
    \\ESC\n\
    \\ACK\EOT\STX\ETX\NUL\STX\SOH\DC2\ETXL\EOT\ESC\SUB\f Exclusive.\n\
    \\n\
    \\SO\n\
    \\a\EOT\STX\ETX\NUL\STX\SOH\EOT\DC2\ETXL\EOT\f\n\
    \\SO\n\
    \\a\EOT\STX\ETX\NUL\STX\SOH\ENQ\DC2\ETXL\r\DC2\n\
    \\SO\n\
    \\a\EOT\STX\ETX\NUL\STX\SOH\SOH\DC2\ETXL\DC3\SYN\n\
    \\SO\n\
    \\a\EOT\STX\ETX\NUL\STX\SOH\ETX\DC2\ETXL\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\STX\STX\ACK\DC2\ETXN\STX,\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\EOT\DC2\ETXN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\ACK\DC2\ETXN\v\CAN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\SOH\DC2\ETXN\EM'\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\ETX\DC2\ETXN*+\n\
    \\130\SOH\n\
    \\EOT\EOT\STX\STX\a\DC2\ETXQ\STX%\SUBu Reserved field names, which may not be used by fields in the same message.\n\
    \ A given name may only be reserved once.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\EOT\DC2\ETXQ\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\ENQ\DC2\ETXQ\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\SOH\DC2\ETXQ\DC2\US\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\ETX\DC2\ETXQ\"$\n\
    \\137\ETX\n\
    \\STX\EOT\ETX\DC2\EOTZ\NULn\SOH\SUB\252\STX A message representing a option the parser does not recognize. This only\n\
    \ appears in options protos created by the compiler::Parser class.\n\
    \ DescriptorPool resolves these when building Descriptor objects. Therefore,\n\
    \ options protos in descriptor objects (e.g. returned by Descriptor::options(),\n\
    \ or produced by Descriptor::CopyTo()) will never have UninterpretedOptions\n\
    \ in them.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXZ\b\ESC\n\
    \\201\STX\n\
    \\EOT\EOT\ETX\ETX\NUL\DC2\EOT`\STXc\ETX\SUB\186\STX The name of the uninterpreted option.  Each string represents a segment in\n\
    \ a dot-separated name.  is_extension is true iff a segment represents an\n\
    \ extension (denoted with parentheses in options specs in .proto files).\n\
    \ E.g.,{ [\"foo\", false], [\"bar.baz\", true], [\"moo\", false] } represents\n\
    \ \"foo.(bar.baz).moo\".\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\ETX\NUL\SOH\DC2\ETX`\n\
    \\DC2\n\
    \\r\n\
    \\ACK\EOT\ETX\ETX\NUL\STX\NUL\DC2\ETXa\EOT\"\n\
    \\SO\n\
    \\a\EOT\ETX\ETX\NUL\STX\NUL\EOT\DC2\ETXa\EOT\f\n\
    \\SO\n\
    \\a\EOT\ETX\ETX\NUL\STX\NUL\ENQ\DC2\ETXa\r\DC3\n\
    \\SO\n\
    \\a\EOT\ETX\ETX\NUL\STX\NUL\SOH\DC2\ETXa\DC4\GS\n\
    \\SO\n\
    \\a\EOT\ETX\ETX\NUL\STX\NUL\ETX\DC2\ETXa !\n\
    \\r\n\
    \\ACK\EOT\ETX\ETX\NUL\STX\SOH\DC2\ETXb\EOT#\n\
    \\SO\n\
    \\a\EOT\ETX\ETX\NUL\STX\SOH\EOT\DC2\ETXb\EOT\f\n\
    \\SO\n\
    \\a\EOT\ETX\ETX\NUL\STX\SOH\ENQ\DC2\ETXb\r\DC1\n\
    \\SO\n\
    \\a\EOT\ETX\ETX\NUL\STX\SOH\SOH\DC2\ETXb\DC2\RS\n\
    \\SO\n\
    \\a\EOT\ETX\ETX\NUL\STX\SOH\ETX\DC2\ETXb!\"\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETXd\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETXd\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\ETXd\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXd\DC4\CAN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXd\ESC\FS\n\
    \\155\SOH\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETXh\STX'\SUB\141\SOH The value of the uninterpreted option, in whatever type the tokenizer\n\
    \ identified it as during parsing. Exactly one of these should be set.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\EOT\DC2\ETXh\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETXh\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETXh\DC2\"\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETXh%&\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETXi\STX)\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\EOT\DC2\ETXi\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\ETXi\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETXi\DC2$\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETXi'(\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\ETXj\STX(\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\EOT\DC2\ETXj\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ENQ\DC2\ETXj\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\ETXj\DC1#\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\ETXj&'\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\EOT\DC2\ETXk\STX#\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\EOT\DC2\ETXk\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ENQ\DC2\ETXk\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\SOH\DC2\ETXk\DC2\RS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ETX\DC2\ETXk!\"\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ENQ\DC2\ETXl\STX\"\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\EOT\DC2\ETXl\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\ENQ\DC2\ETXl\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\SOH\DC2\ETXl\DC1\GS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\ETX\DC2\ETXl !\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ACK\DC2\ETXm\STX&\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\EOT\DC2\ETXm\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\ENQ\DC2\ETXm\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\SOH\DC2\ETXm\DC2!\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\ETX\DC2\ETXm$%\n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOTp\NULz\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXp\b\DC4\n\
    \\217\STX\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXv\STX\ESC\SUB\203\STX The packed option can be enabled for repeated primitive fields to enable\n\
    \ a more efficient representation on the wire. Rather than repeatedly\n\
    \ writing the tag and type for each element, the entire array is encoded as\n\
    \ a single length-delimited blob. In proto3, only explicit setting it to\n\
    \ false will avoid using packed encoding.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\EOT\DC2\ETXv\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETXv\v\SI\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXv\DLE\SYN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXv\EM\SUB\n\
    \N\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETXy\STX:\SUBA The parser stores options it doesn't recognize here. See above.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\EOT\DC2\ETXy\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ACK\DC2\ETXy\v\RS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETXy\US3\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETXy69\n\
    \2\n\
    \\STX\EOT\ENQ\DC2\ENQ}\NUL\202\SOH\SOH\SUB% Describes a field within a message.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX}\b\FS\n\
    \\r\n\
    \\EOT\EOT\ENQ\EOT\NUL\DC2\ENQ~\STX\160\SOH\ETX\n\
    \\f\n\
    \\ENQ\EOT\ENQ\EOT\NUL\SOH\DC2\ETX~\a\v\n\
    \S\n\
    \\ACK\EOT\ENQ\EOT\NUL\STX\NUL\DC2\EOT\129\SOH\EOT\DC4\SUBC 0 is reserved for errors.\n\
    \ Order is weird for historical reasons.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\NUL\SOH\DC2\EOT\129\SOH\EOT\SI\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\NUL\STX\DC2\EOT\129\SOH\DC2\DC3\n\
    \\SO\n\
    \\ACK\EOT\ENQ\EOT\NUL\STX\SOH\DC2\EOT\130\SOH\EOT\DC3\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\SOH\SOH\DC2\EOT\130\SOH\EOT\SO\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\SOH\STX\DC2\EOT\130\SOH\DC1\DC2\n\
    \w\n\
    \\ACK\EOT\ENQ\EOT\NUL\STX\STX\DC2\EOT\133\SOH\EOT\DC3\SUBg Not ZigZag encoded.  Negative numbers take 10 bytes.  Use TYPE_SINT64 if\n\
    \ negative values are likely.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\STX\SOH\DC2\EOT\133\SOH\EOT\SO\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\STX\STX\DC2\EOT\133\SOH\DC1\DC2\n\
    \\SO\n\
    \\ACK\EOT\ENQ\EOT\NUL\STX\ETX\DC2\EOT\134\SOH\EOT\DC4\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\ETX\SOH\DC2\EOT\134\SOH\EOT\SI\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\ETX\STX\DC2\EOT\134\SOH\DC2\DC3\n\
    \w\n\
    \\ACK\EOT\ENQ\EOT\NUL\STX\EOT\DC2\EOT\137\SOH\EOT\DC3\SUBg Not ZigZag encoded.  Negative numbers take 10 bytes.  Use TYPE_SINT32 if\n\
    \ negative values are likely.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\EOT\SOH\DC2\EOT\137\SOH\EOT\SO\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\EOT\STX\DC2\EOT\137\SOH\DC1\DC2\n\
    \\SO\n\
    \\ACK\EOT\ENQ\EOT\NUL\STX\ENQ\DC2\EOT\138\SOH\EOT\NAK\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\EOT\138\SOH\EOT\DLE\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\ENQ\STX\DC2\EOT\138\SOH\DC3\DC4\n\
    \\SO\n\
    \\ACK\EOT\ENQ\EOT\NUL\STX\ACK\DC2\EOT\139\SOH\EOT\NAK\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\ACK\SOH\DC2\EOT\139\SOH\EOT\DLE\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\ACK\STX\DC2\EOT\139\SOH\DC3\DC4\n\
    \\SO\n\
    \\ACK\EOT\ENQ\EOT\NUL\STX\a\DC2\EOT\140\SOH\EOT\DC2\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\a\SOH\DC2\EOT\140\SOH\EOT\r\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\a\STX\DC2\EOT\140\SOH\DLE\DC1\n\
    \\SO\n\
    \\ACK\EOT\ENQ\EOT\NUL\STX\b\DC2\EOT\141\SOH\EOT\DC4\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\b\SOH\DC2\EOT\141\SOH\EOT\SI\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\b\STX\DC2\EOT\141\SOH\DC2\DC3\n\
    \\226\SOH\n\
    \\ACK\EOT\ENQ\EOT\NUL\STX\t\DC2\EOT\146\SOH\EOT\DC4\SUB\209\SOH Tag-delimited aggregate.\n\
    \ Group type is deprecated and not supported in proto3. However, Proto3\n\
    \ implementations should still be able to parse the group wire format and\n\
    \ treat group fields as unknown fields.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\t\SOH\DC2\EOT\146\SOH\EOT\SO\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\t\STX\DC2\EOT\146\SOH\DC1\DC3\n\
    \-\n\
    \\ACK\EOT\ENQ\EOT\NUL\STX\n\
    \\DC2\EOT\148\SOH\EOT\SYN\SUB\GS Length-delimited aggregate.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\n\
    \\SOH\DC2\EOT\148\SOH\EOT\DLE\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\n\
    \\STX\DC2\EOT\148\SOH\DC3\NAK\n\
    \#\n\
    \\ACK\EOT\ENQ\EOT\NUL\STX\v\DC2\EOT\151\SOH\EOT\DC4\SUB\DC3 New in version 2.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\v\SOH\DC2\EOT\151\SOH\EOT\SO\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\v\STX\DC2\EOT\151\SOH\DC1\DC3\n\
    \\SO\n\
    \\ACK\EOT\ENQ\EOT\NUL\STX\f\DC2\EOT\152\SOH\EOT\NAK\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\f\SOH\DC2\EOT\152\SOH\EOT\SI\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\f\STX\DC2\EOT\152\SOH\DC2\DC4\n\
    \\SO\n\
    \\ACK\EOT\ENQ\EOT\NUL\STX\r\DC2\EOT\153\SOH\EOT\DC3\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\r\SOH\DC2\EOT\153\SOH\EOT\r\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\r\STX\DC2\EOT\153\SOH\DLE\DC2\n\
    \\SO\n\
    \\ACK\EOT\ENQ\EOT\NUL\STX\SO\DC2\EOT\154\SOH\EOT\ETB\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\SO\SOH\DC2\EOT\154\SOH\EOT\DC1\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\SO\STX\DC2\EOT\154\SOH\DC4\SYN\n\
    \\SO\n\
    \\ACK\EOT\ENQ\EOT\NUL\STX\SI\DC2\EOT\155\SOH\EOT\ETB\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\SI\SOH\DC2\EOT\155\SOH\EOT\DC1\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\SI\STX\DC2\EOT\155\SOH\DC4\SYN\n\
    \'\n\
    \\ACK\EOT\ENQ\EOT\NUL\STX\DLE\DC2\EOT\157\SOH\EOT\NAK\SUB\ETB Uses ZigZag encoding.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\DLE\SOH\DC2\EOT\157\SOH\EOT\SI\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\DLE\STX\DC2\EOT\157\SOH\DC2\DC4\n\
    \'\n\
    \\ACK\EOT\ENQ\EOT\NUL\STX\DC1\DC2\EOT\159\SOH\EOT\NAK\SUB\ETB Uses ZigZag encoding.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\DC1\SOH\DC2\EOT\159\SOH\EOT\SI\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\DC1\STX\DC2\EOT\159\SOH\DC2\DC4\n\
    \\SO\n\
    \\EOT\EOT\ENQ\EOT\SOH\DC2\ACK\162\SOH\STX\167\SOH\ETX\n\
    \\r\n\
    \\ENQ\EOT\ENQ\EOT\SOH\SOH\DC2\EOT\162\SOH\a\f\n\
    \*\n\
    \\ACK\EOT\ENQ\EOT\SOH\STX\NUL\DC2\EOT\164\SOH\EOT\ETB\SUB\SUB 0 is reserved for errors\n\
    \\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\SOH\STX\NUL\SOH\DC2\EOT\164\SOH\EOT\DC2\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\SOH\STX\NUL\STX\DC2\EOT\164\SOH\NAK\SYN\n\
    \\SO\n\
    \\ACK\EOT\ENQ\EOT\SOH\STX\SOH\DC2\EOT\165\SOH\EOT\ETB\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\SOH\STX\SOH\SOH\DC2\EOT\165\SOH\EOT\DC2\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\SOH\STX\SOH\STX\DC2\EOT\165\SOH\NAK\SYN\n\
    \\SO\n\
    \\ACK\EOT\ENQ\EOT\SOH\STX\STX\DC2\EOT\166\SOH\EOT\ETB\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\SOH\STX\STX\SOH\DC2\EOT\166\SOH\EOT\DC2\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\SOH\STX\STX\STX\DC2\EOT\166\SOH\NAK\SYN\n\
    \\f\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\EOT\169\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\EOT\169\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\EOT\169\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\EOT\169\SOH\DC2\SYN\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\EOT\169\SOH\EM\SUB\n\
    \\f\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\EOT\170\SOH\STX\FS\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\EOT\DC2\EOT\170\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\EOT\170\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\EOT\170\SOH\DC1\ETB\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\EOT\170\SOH\SUB\ESC\n\
    \\f\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\EOT\171\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\EOT\DC2\EOT\171\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\ACK\DC2\EOT\171\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\EOT\171\SOH\DC1\SYN\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\EOT\171\SOH\EM\SUB\n\
    \\156\SOH\n\
    \\EOT\EOT\ENQ\STX\ETX\DC2\EOT\175\SOH\STX\EM\SUB\141\SOH If type_name is set, this need not be set.  If both this and type_name\n\
    \ are set, this must be one of TYPE_ENUM, TYPE_MESSAGE or TYPE_GROUP.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\EOT\DC2\EOT\175\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\ACK\DC2\EOT\175\SOH\v\SI\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\SOH\DC2\EOT\175\SOH\DLE\DC4\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\ETX\DC2\EOT\175\SOH\ETB\CAN\n\
    \\183\STX\n\
    \\EOT\EOT\ENQ\STX\EOT\DC2\EOT\182\SOH\STX \SUB\168\STX For message and enum types, this is the name of the type.  If the name\n\
    \ starts with a '.', it is fully-qualified.  Otherwise, C++-like scoping\n\
    \ rules are used to find the type (i.e. first the nested types within this\n\
    \ message are searched, then within the parent, on up to the root\n\
    \ namespace).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\EOT\EOT\DC2\EOT\182\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\EOT\ENQ\DC2\EOT\182\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\EOT\SOH\DC2\EOT\182\SOH\DC2\ESC\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\EOT\ETX\DC2\EOT\182\SOH\RS\US\n\
    \~\n\
    \\EOT\EOT\ENQ\STX\ENQ\DC2\EOT\186\SOH\STX\US\SUBp For extensions, this is the name of the type being extended.  It is\n\
    \ resolved in the same manner as type_name.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ENQ\EOT\DC2\EOT\186\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ENQ\ENQ\DC2\EOT\186\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ENQ\SOH\DC2\EOT\186\SOH\DC2\SUB\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ENQ\ETX\DC2\EOT\186\SOH\GS\RS\n\
    \\177\STX\n\
    \\EOT\EOT\ENQ\STX\ACK\DC2\EOT\193\SOH\STX$\SUB\162\STX For numeric types, contains the original text representation of the value.\n\
    \ For booleans, \"true\" or \"false\".\n\
    \ For strings, contains the default text contents (not escaped in any way).\n\
    \ For bytes, contains the C escaped value.  All bytes >= 128 are escaped.\n\
    \ TODO(kenton):  Base-64 encode?\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ACK\EOT\DC2\EOT\193\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ACK\ENQ\DC2\EOT\193\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ACK\SOH\DC2\EOT\193\SOH\DC2\US\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ACK\ETX\DC2\EOT\193\SOH\"#\n\
    \\f\n\
    \\EOT\EOT\ENQ\STX\a\DC2\EOT\195\SOH\STX$\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\a\EOT\DC2\EOT\195\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\a\ACK\DC2\EOT\195\SOH\v\ETB\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\a\SOH\DC2\EOT\195\SOH\CAN\US\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\a\ETX\DC2\EOT\195\SOH\"#\n\
    \\132\SOH\n\
    \\EOT\EOT\ENQ\STX\b\DC2\EOT\199\SOH\STX!\SUBv If set, gives the index of a oneof in the containing type's oneof_decl\n\
    \ list.  This field is a member of that oneof.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\b\EOT\DC2\EOT\199\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\b\ENQ\DC2\EOT\199\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\b\SOH\DC2\EOT\199\SOH\DC1\FS\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\b\ETX\DC2\EOT\199\SOH\US \n\
    \\v\n\
    \\ETX\EOT\ENQ\t\DC2\EOT\201\SOH\STX\SO\n\
    \\f\n\
    \\EOT\EOT\ENQ\t\NUL\DC2\EOT\201\SOH\v\r\n\
    \\r\n\
    \\ENQ\EOT\ENQ\t\NUL\SOH\DC2\EOT\201\SOH\v\r\n\
    \\r\n\
    \\ENQ\EOT\ENQ\t\NUL\STX\DC2\EOT\201\SOH\v\r\n\
    \\"\n\
    \\STX\EOT\ACK\DC2\ACK\205\SOH\NUL\208\SOH\SOH\SUB\DC4 Describes a oneof.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ACK\SOH\DC2\EOT\205\SOH\b\FS\n\
    \\f\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\EOT\206\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\EOT\DC2\EOT\206\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\EOT\206\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\EOT\206\SOH\DC2\SYN\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\EOT\206\SOH\EM\SUB\n\
    \\f\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\EOT\207\SOH\STX$\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\EOT\DC2\EOT\207\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ACK\DC2\EOT\207\SOH\v\ETB\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\EOT\207\SOH\CAN\US\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\EOT\207\SOH\"#\n\
    \'\n\
    \\STX\EOT\a\DC2\ACK\211\SOH\NUL\222\SOH\SOH\SUB\EM Describes an enum type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\a\SOH\DC2\EOT\211\SOH\b\ESC\n\
    \\f\n\
    \\EOT\EOT\a\STX\NUL\DC2\EOT\212\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\EOT\DC2\EOT\212\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ENQ\DC2\EOT\212\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\EOT\212\SOH\DC2\SYN\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\EOT\212\SOH\EM\SUB\n\
    \\f\n\
    \\EOT\EOT\a\STX\SOH\DC2\EOT\214\SOH\STX.\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\EOT\DC2\EOT\214\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ACK\DC2\EOT\214\SOH\v#\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\EOT\214\SOH$)\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\EOT\214\SOH,-\n\
    \\v\n\
    \\ETX\EOT\a\t\DC2\EOT\216\SOH\STX\r\n\
    \\f\n\
    \\EOT\EOT\a\t\NUL\DC2\EOT\216\SOH\v\f\n\
    \\r\n\
    \\ENQ\EOT\a\t\NUL\SOH\DC2\EOT\216\SOH\v\f\n\
    \\r\n\
    \\ENQ\EOT\a\t\NUL\STX\DC2\EOT\216\SOH\v\f\n\
    \\v\n\
    \\ETX\EOT\a\t\DC2\EOT\217\SOH\STX\r\n\
    \\f\n\
    \\EOT\EOT\a\t\SOH\DC2\EOT\217\SOH\v\f\n\
    \\r\n\
    \\ENQ\EOT\a\t\SOH\SOH\DC2\EOT\217\SOH\v\f\n\
    \\r\n\
    \\ENQ\EOT\a\t\SOH\STX\DC2\EOT\217\SOH\v\f\n\
    \l\n\
    \\EOT\EOT\a\STX\STX\DC2\EOT\221\SOH\STX$\SUB^ Reserved enum value names, which may not be reused. A given name may only\n\
    \ be reserved once.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\EOT\DC2\EOT\221\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\ENQ\DC2\EOT\221\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\SOH\DC2\EOT\221\SOH\DC2\US\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\ETX\DC2\EOT\221\SOH\"#\n\
    \1\n\
    \\STX\EOT\b\DC2\ACK\225\SOH\NUL\230\SOH\SOH\SUB# Describes a value within an enum.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\b\SOH\DC2\EOT\225\SOH\b \n\
    \\f\n\
    \\EOT\EOT\b\STX\NUL\DC2\EOT\226\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\EOT\DC2\EOT\226\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\EOT\226\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\EOT\226\SOH\DC2\SYN\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\EOT\226\SOH\EM\SUB\n\
    \\f\n\
    \\EOT\EOT\b\STX\SOH\DC2\EOT\227\SOH\STX\FS\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\EOT\DC2\EOT\227\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ENQ\DC2\EOT\227\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\EOT\227\SOH\DC1\ETB\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\EOT\227\SOH\SUB\ESC\n\
    \\v\n\
    \\ETX\EOT\b\t\DC2\EOT\229\SOH\STX\r\n\
    \\f\n\
    \\EOT\EOT\b\t\NUL\DC2\EOT\229\SOH\v\f\n\
    \\r\n\
    \\ENQ\EOT\b\t\NUL\SOH\DC2\EOT\229\SOH\v\f\n\
    \\r\n\
    \\ENQ\EOT\b\t\NUL\STX\DC2\EOT\229\SOH\v\f\n\
    \\f\n\
    \\STX\EOT\t\DC2\ACK\232\SOH\NUL\237\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\t\SOH\DC2\EOT\232\SOH\b\DC4\n\
    \\v\n\
    \\ETX\EOT\t\t\DC2\EOT\233\SOH\STX\SI\n\
    \\f\n\
    \\EOT\EOT\t\t\NUL\DC2\EOT\233\SOH\v\SO\n\
    \\r\n\
    \\ENQ\EOT\t\t\NUL\SOH\DC2\EOT\233\SOH\v\SO\n\
    \\r\n\
    \\ENQ\EOT\t\t\NUL\STX\DC2\EOT\233\SOH\v\SO\n\
    \Z\n\
    \\ETX\EOT\t\ENQ\DC2\EOT\236\SOH\STX\EM\SUBM Clients can define custom options in extensions of this message. See above.\n\
    \\n\
    \\f\n\
    \\EOT\EOT\t\ENQ\NUL\DC2\EOT\236\SOH\r\CAN\n\
    \\r\n\
    \\ENQ\EOT\t\ENQ\NUL\SOH\DC2\EOT\236\SOH\r\DC1\n\
    \\r\n\
    \\ENQ\EOT\t\ENQ\NUL\STX\DC2\EOT\236\SOH\NAK\CAN"