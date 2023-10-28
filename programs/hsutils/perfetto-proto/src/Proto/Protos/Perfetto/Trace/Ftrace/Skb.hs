{- This file was auto-generated from protos/perfetto/trace/ftrace/skb.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Skb (
        KfreeSkbFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Skb_Fields.location' @:: Lens' KfreeSkbFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Skb_Fields.maybe'location' @:: Lens' KfreeSkbFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Skb_Fields.protocol' @:: Lens' KfreeSkbFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Skb_Fields.maybe'protocol' @:: Lens' KfreeSkbFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Skb_Fields.skbaddr' @:: Lens' KfreeSkbFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Skb_Fields.maybe'skbaddr' @:: Lens' KfreeSkbFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data KfreeSkbFtraceEvent
  = KfreeSkbFtraceEvent'_constructor {_KfreeSkbFtraceEvent'location :: !(Prelude.Maybe Data.Word.Word64),
                                      _KfreeSkbFtraceEvent'protocol :: !(Prelude.Maybe Data.Word.Word32),
                                      _KfreeSkbFtraceEvent'skbaddr :: !(Prelude.Maybe Data.Word.Word64),
                                      _KfreeSkbFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KfreeSkbFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KfreeSkbFtraceEvent "location" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KfreeSkbFtraceEvent'location
           (\ x__ y__ -> x__ {_KfreeSkbFtraceEvent'location = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KfreeSkbFtraceEvent "maybe'location" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KfreeSkbFtraceEvent'location
           (\ x__ y__ -> x__ {_KfreeSkbFtraceEvent'location = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KfreeSkbFtraceEvent "protocol" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KfreeSkbFtraceEvent'protocol
           (\ x__ y__ -> x__ {_KfreeSkbFtraceEvent'protocol = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KfreeSkbFtraceEvent "maybe'protocol" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KfreeSkbFtraceEvent'protocol
           (\ x__ y__ -> x__ {_KfreeSkbFtraceEvent'protocol = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KfreeSkbFtraceEvent "skbaddr" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KfreeSkbFtraceEvent'skbaddr
           (\ x__ y__ -> x__ {_KfreeSkbFtraceEvent'skbaddr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KfreeSkbFtraceEvent "maybe'skbaddr" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KfreeSkbFtraceEvent'skbaddr
           (\ x__ y__ -> x__ {_KfreeSkbFtraceEvent'skbaddr = y__}))
        Prelude.id
instance Data.ProtoLens.Message KfreeSkbFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.KfreeSkbFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\DC3KfreeSkbFtraceEvent\DC2\SUB\n\
      \\blocation\CAN\SOH \SOH(\EOTR\blocation\DC2\SUB\n\
      \\bprotocol\CAN\STX \SOH(\rR\bprotocol\DC2\CAN\n\
      \\askbaddr\CAN\ETX \SOH(\EOTR\askbaddr"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        location__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "location"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'location")) ::
              Data.ProtoLens.FieldDescriptor KfreeSkbFtraceEvent
        protocol__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "protocol"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'protocol")) ::
              Data.ProtoLens.FieldDescriptor KfreeSkbFtraceEvent
        skbaddr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "skbaddr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'skbaddr")) ::
              Data.ProtoLens.FieldDescriptor KfreeSkbFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, location__field_descriptor),
           (Data.ProtoLens.Tag 2, protocol__field_descriptor),
           (Data.ProtoLens.Tag 3, skbaddr__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KfreeSkbFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_KfreeSkbFtraceEvent'_unknownFields = y__})
  defMessage
    = KfreeSkbFtraceEvent'_constructor
        {_KfreeSkbFtraceEvent'location = Prelude.Nothing,
         _KfreeSkbFtraceEvent'protocol = Prelude.Nothing,
         _KfreeSkbFtraceEvent'skbaddr = Prelude.Nothing,
         _KfreeSkbFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KfreeSkbFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser KfreeSkbFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "location"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"location") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "protocol"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"protocol") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "skbaddr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"skbaddr") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "KfreeSkbFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'location") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'protocol") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'skbaddr") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData KfreeSkbFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KfreeSkbFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_KfreeSkbFtraceEvent'location x__)
                (Control.DeepSeq.deepseq
                   (_KfreeSkbFtraceEvent'protocol x__)
                   (Control.DeepSeq.deepseq (_KfreeSkbFtraceEvent'skbaddr x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \&protos/perfetto/trace/ftrace/skb.proto\DC2\SIperfetto.protos\"g\n\
    \\DC3KfreeSkbFtraceEvent\DC2\SUB\n\
    \\blocation\CAN\SOH \SOH(\EOTR\blocation\DC2\SUB\n\
    \\bprotocol\CAN\STX \SOH(\rR\bprotocol\DC2\CAN\n\
    \\askbaddr\CAN\ETX \SOH(\EOTR\askbaddrJ\220\STX\n\
    \\ACK\DC2\EOT\EOT\NUL\v\SOH\n\
    \a\n\
    \\SOH\f\DC2\ETX\EOT\NUL\DC22W Autogenerated by:\n\
    \ ../../src/tools/ftrace_proto_gen/ftrace_proto_gen.cc\n\
    \ Do not edit.\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\ENQ\NUL\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\a\NUL\v\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b\ESC\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\b\STX\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\b\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\b\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\b\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\b\GS\RS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\t\STX\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\t\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\t\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\t\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\t\GS\RS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\n\
    \\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\n\
    \\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\n\
    \\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\n\
    \\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\n\
    \\FS\GS"