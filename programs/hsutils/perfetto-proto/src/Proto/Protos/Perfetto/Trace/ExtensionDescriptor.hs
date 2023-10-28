{- This file was auto-generated from protos/perfetto/trace/extension_descriptor.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.ExtensionDescriptor (
        ExtensionDescriptor()
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
import qualified Proto.Protos.Perfetto.Common.Descriptor
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.ExtensionDescriptor_Fields.extensionSet' @:: Lens' ExtensionDescriptor Proto.Protos.Perfetto.Common.Descriptor.FileDescriptorSet@
         * 'Proto.Protos.Perfetto.Trace.ExtensionDescriptor_Fields.maybe'extensionSet' @:: Lens' ExtensionDescriptor (Prelude.Maybe Proto.Protos.Perfetto.Common.Descriptor.FileDescriptorSet)@ -}
data ExtensionDescriptor
  = ExtensionDescriptor'_constructor {_ExtensionDescriptor'extensionSet :: !(Prelude.Maybe Proto.Protos.Perfetto.Common.Descriptor.FileDescriptorSet),
                                      _ExtensionDescriptor'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ExtensionDescriptor where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ExtensionDescriptor "extensionSet" Proto.Protos.Perfetto.Common.Descriptor.FileDescriptorSet where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtensionDescriptor'extensionSet
           (\ x__ y__ -> x__ {_ExtensionDescriptor'extensionSet = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ExtensionDescriptor "maybe'extensionSet" (Prelude.Maybe Proto.Protos.Perfetto.Common.Descriptor.FileDescriptorSet) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtensionDescriptor'extensionSet
           (\ x__ y__ -> x__ {_ExtensionDescriptor'extensionSet = y__}))
        Prelude.id
instance Data.ProtoLens.Message ExtensionDescriptor where
  messageName _
    = Data.Text.pack "perfetto.protos.ExtensionDescriptor"
  packedMessageDescriptor _
    = "\n\
      \\DC3ExtensionDescriptor\DC2G\n\
      \\rextension_set\CAN\SOH \SOH(\v2\".perfetto.protos.FileDescriptorSetR\fextensionSet"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        extensionSet__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "extension_set"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Common.Descriptor.FileDescriptorSet)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'extensionSet")) ::
              Data.ProtoLens.FieldDescriptor ExtensionDescriptor
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, extensionSet__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ExtensionDescriptor'_unknownFields
        (\ x__ y__ -> x__ {_ExtensionDescriptor'_unknownFields = y__})
  defMessage
    = ExtensionDescriptor'_constructor
        {_ExtensionDescriptor'extensionSet = Prelude.Nothing,
         _ExtensionDescriptor'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ExtensionDescriptor
          -> Data.ProtoLens.Encoding.Bytes.Parser ExtensionDescriptor
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
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "extension_set"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"extensionSet") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ExtensionDescriptor"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'extensionSet") _x
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
                          Data.ProtoLens.encodeMessage _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ExtensionDescriptor where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ExtensionDescriptor'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ExtensionDescriptor'extensionSet x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \0protos/perfetto/trace/extension_descriptor.proto\DC2\SIperfetto.protos\SUB'protos/perfetto/common/descriptor.proto\"^\n\
    \\DC3ExtensionDescriptor\DC2G\n\
    \\rextension_set\CAN\SOH \SOH(\v2\".perfetto.protos.FileDescriptorSetR\fextensionSetJ\225\ACK\n\
    \\ACK\DC2\EOT\DLE\NUL\FS\SOH\n\
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
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\DC4\NUL1\n\
    \\150\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\SUB\NUL\FS\SOH\SUB\137\SOH This message contains descriptors used to parse extension fields of\n\
    \ TrackEvent.\n\
    \\n\
    \ See docs/design-docs/extensions.md for more details.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\SUB\b\ESC\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\ESC\STX/\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\ESC\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\ESC\v\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\ESC\GS*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\ESC-."