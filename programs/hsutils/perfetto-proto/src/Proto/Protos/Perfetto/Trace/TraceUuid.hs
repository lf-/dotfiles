{- This file was auto-generated from protos/perfetto/trace/trace_uuid.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.TraceUuid (
        TraceUuid()
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
     
         * 'Proto.Protos.Perfetto.Trace.TraceUuid_Fields.msb' @:: Lens' TraceUuid Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.TraceUuid_Fields.maybe'msb' @:: Lens' TraceUuid (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.TraceUuid_Fields.lsb' @:: Lens' TraceUuid Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.TraceUuid_Fields.maybe'lsb' @:: Lens' TraceUuid (Prelude.Maybe Data.Int.Int64)@ -}
data TraceUuid
  = TraceUuid'_constructor {_TraceUuid'msb :: !(Prelude.Maybe Data.Int.Int64),
                            _TraceUuid'lsb :: !(Prelude.Maybe Data.Int.Int64),
                            _TraceUuid'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TraceUuid where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TraceUuid "msb" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceUuid'msb (\ x__ y__ -> x__ {_TraceUuid'msb = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TraceUuid "maybe'msb" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceUuid'msb (\ x__ y__ -> x__ {_TraceUuid'msb = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceUuid "lsb" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceUuid'lsb (\ x__ y__ -> x__ {_TraceUuid'lsb = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TraceUuid "maybe'lsb" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceUuid'lsb (\ x__ y__ -> x__ {_TraceUuid'lsb = y__}))
        Prelude.id
instance Data.ProtoLens.Message TraceUuid where
  messageName _ = Data.Text.pack "perfetto.protos.TraceUuid"
  packedMessageDescriptor _
    = "\n\
      \\tTraceUuid\DC2\DLE\n\
      \\ETXmsb\CAN\SOH \SOH(\ETXR\ETXmsb\DC2\DLE\n\
      \\ETXlsb\CAN\STX \SOH(\ETXR\ETXlsb"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        msb__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "msb"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'msb")) ::
              Data.ProtoLens.FieldDescriptor TraceUuid
        lsb__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lsb"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lsb")) ::
              Data.ProtoLens.FieldDescriptor TraceUuid
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, msb__field_descriptor),
           (Data.ProtoLens.Tag 2, lsb__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TraceUuid'_unknownFields
        (\ x__ y__ -> x__ {_TraceUuid'_unknownFields = y__})
  defMessage
    = TraceUuid'_constructor
        {_TraceUuid'msb = Prelude.Nothing,
         _TraceUuid'lsb = Prelude.Nothing, _TraceUuid'_unknownFields = []}
  parseMessage
    = let
        loop :: TraceUuid -> Data.ProtoLens.Encoding.Bytes.Parser TraceUuid
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
                                       "msb"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"msb") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "lsb"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"lsb") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TraceUuid"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'msb") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'lsb") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData TraceUuid where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TraceUuid'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TraceUuid'msb x__)
                (Control.DeepSeq.deepseq (_TraceUuid'lsb x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \&protos/perfetto/trace/trace_uuid.proto\DC2\SIperfetto.protos\"/\n\
    \\tTraceUuid\DC2\DLE\n\
    \\ETXmsb\CAN\SOH \SOH(\ETXR\ETXmsb\DC2\DLE\n\
    \\ETXlsb\CAN\STX \SOH(\ETXR\ETXlsbJ\208\t\n\
    \\ACK\DC2\EOT\SI\NUL\GS\SOH\n\
    \\215\EOT\n\
    \\SOH\f\DC2\ETX\SI\NUL\DC2\SUB\204\EOT\n\
    \ Copyright (C) 2022 The Android Open Source Project\n\
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
    \\SOH\STX\DC2\ETX\DC1\NUL\CAN\n\
    \\203\ETX\n\
    \\STX\EOT\NUL\DC2\EOT\SUB\NUL\GS\SOH\SUB\190\ETX A random unique ID that identifies the trace.\n\
    \ This message has been introduced in v32. Prior to that, the UUID was\n\
    \ only (optionally) present in the TraceConfig.trace_uuid_msb/lsb fields.\n\
    \ This has been moved to a standalone packet to deal with new use-cases for\n\
    \ go/gapless-aot, where the same tracing session can be serialized several\n\
    \ times, in which case the UUID is changed on each snapshot and does not match\n\
    \ the one in the TraceConfig.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\SUB\b\DC1\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\ESC\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\ESC\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\ESC\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\ESC\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\ESC\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\FS\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\FS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\FS\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\FS\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\FS\ETB\CAN"