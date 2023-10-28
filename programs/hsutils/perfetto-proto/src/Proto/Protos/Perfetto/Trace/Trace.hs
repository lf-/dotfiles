{- This file was auto-generated from protos/perfetto/trace/trace.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Trace (
        Trace()
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
import qualified Proto.Protos.Perfetto.Trace.TracePacket
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Trace_Fields.packet' @:: Lens' Trace [Proto.Protos.Perfetto.Trace.TracePacket.TracePacket]@
         * 'Proto.Protos.Perfetto.Trace.Trace_Fields.vec'packet' @:: Lens' Trace (Data.Vector.Vector Proto.Protos.Perfetto.Trace.TracePacket.TracePacket)@ -}
data Trace
  = Trace'_constructor {_Trace'packet :: !(Data.Vector.Vector Proto.Protos.Perfetto.Trace.TracePacket.TracePacket),
                        _Trace'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Trace where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Trace "packet" [Proto.Protos.Perfetto.Trace.TracePacket.TracePacket] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Trace'packet (\ x__ y__ -> x__ {_Trace'packet = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Trace "vec'packet" (Data.Vector.Vector Proto.Protos.Perfetto.Trace.TracePacket.TracePacket) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Trace'packet (\ x__ y__ -> x__ {_Trace'packet = y__}))
        Prelude.id
instance Data.ProtoLens.Message Trace where
  messageName _ = Data.Text.pack "perfetto.protos.Trace"
  packedMessageDescriptor _
    = "\n\
      \\ENQTrace\DC24\n\
      \\ACKpacket\CAN\SOH \ETX(\v2\FS.perfetto.protos.TracePacketR\ACKpacket"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        packet__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "packet"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.TracePacket.TracePacket)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"packet")) ::
              Data.ProtoLens.FieldDescriptor Trace
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, packet__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Trace'_unknownFields
        (\ x__ y__ -> x__ {_Trace'_unknownFields = y__})
  defMessage
    = Trace'_constructor
        {_Trace'packet = Data.Vector.Generic.empty,
         _Trace'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Trace
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Protos.Perfetto.Trace.TracePacket.TracePacket
             -> Data.ProtoLens.Encoding.Bytes.Parser Trace
        loop x mutable'packet
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'packet <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'packet)
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
                              (Data.ProtoLens.Field.field @"vec'packet") frozen'packet x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "packet"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'packet y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'packet
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'packet <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'packet)
          "Trace"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'packet") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Trace where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Trace'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Trace'packet x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \!protos/perfetto/trace/trace.proto\DC2\SIperfetto.protos\SUB(protos/perfetto/trace/trace_packet.proto\"=\n\
    \\ENQTrace\DC24\n\
    \\ACKpacket\CAN\SOH \ETX(\v2\FS.perfetto.protos.TracePacketR\ACKpacketJ\212\ENQ\n\
    \\ACK\DC2\EOT\DLE\NUL\RS\SOH\n\
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
    \\STX\ETX\NUL\DC2\ETX\DC2\NUL2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\DC4\NUL\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\SYN\NUL\RS\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\SYN\b\r\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\ETB\STX\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\ETB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\ETB\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\ETB\ETB\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\ETB !"