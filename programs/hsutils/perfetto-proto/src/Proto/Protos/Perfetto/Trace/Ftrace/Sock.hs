{- This file was auto-generated from protos/perfetto/trace/ftrace/sock.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Sock (
        InetSockSetStateFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sock_Fields.daddr' @:: Lens' InetSockSetStateFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sock_Fields.maybe'daddr' @:: Lens' InetSockSetStateFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sock_Fields.dport' @:: Lens' InetSockSetStateFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sock_Fields.maybe'dport' @:: Lens' InetSockSetStateFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sock_Fields.family' @:: Lens' InetSockSetStateFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sock_Fields.maybe'family' @:: Lens' InetSockSetStateFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sock_Fields.newstate' @:: Lens' InetSockSetStateFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sock_Fields.maybe'newstate' @:: Lens' InetSockSetStateFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sock_Fields.oldstate' @:: Lens' InetSockSetStateFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sock_Fields.maybe'oldstate' @:: Lens' InetSockSetStateFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sock_Fields.protocol' @:: Lens' InetSockSetStateFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sock_Fields.maybe'protocol' @:: Lens' InetSockSetStateFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sock_Fields.saddr' @:: Lens' InetSockSetStateFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sock_Fields.maybe'saddr' @:: Lens' InetSockSetStateFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sock_Fields.skaddr' @:: Lens' InetSockSetStateFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sock_Fields.maybe'skaddr' @:: Lens' InetSockSetStateFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sock_Fields.sport' @:: Lens' InetSockSetStateFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sock_Fields.maybe'sport' @:: Lens' InetSockSetStateFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data InetSockSetStateFtraceEvent
  = InetSockSetStateFtraceEvent'_constructor {_InetSockSetStateFtraceEvent'daddr :: !(Prelude.Maybe Data.Word.Word32),
                                              _InetSockSetStateFtraceEvent'dport :: !(Prelude.Maybe Data.Word.Word32),
                                              _InetSockSetStateFtraceEvent'family :: !(Prelude.Maybe Data.Word.Word32),
                                              _InetSockSetStateFtraceEvent'newstate :: !(Prelude.Maybe Data.Int.Int32),
                                              _InetSockSetStateFtraceEvent'oldstate :: !(Prelude.Maybe Data.Int.Int32),
                                              _InetSockSetStateFtraceEvent'protocol :: !(Prelude.Maybe Data.Word.Word32),
                                              _InetSockSetStateFtraceEvent'saddr :: !(Prelude.Maybe Data.Word.Word32),
                                              _InetSockSetStateFtraceEvent'skaddr :: !(Prelude.Maybe Data.Word.Word64),
                                              _InetSockSetStateFtraceEvent'sport :: !(Prelude.Maybe Data.Word.Word32),
                                              _InetSockSetStateFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show InetSockSetStateFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField InetSockSetStateFtraceEvent "daddr" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InetSockSetStateFtraceEvent'daddr
           (\ x__ y__ -> x__ {_InetSockSetStateFtraceEvent'daddr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField InetSockSetStateFtraceEvent "maybe'daddr" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InetSockSetStateFtraceEvent'daddr
           (\ x__ y__ -> x__ {_InetSockSetStateFtraceEvent'daddr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InetSockSetStateFtraceEvent "dport" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InetSockSetStateFtraceEvent'dport
           (\ x__ y__ -> x__ {_InetSockSetStateFtraceEvent'dport = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField InetSockSetStateFtraceEvent "maybe'dport" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InetSockSetStateFtraceEvent'dport
           (\ x__ y__ -> x__ {_InetSockSetStateFtraceEvent'dport = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InetSockSetStateFtraceEvent "family" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InetSockSetStateFtraceEvent'family
           (\ x__ y__ -> x__ {_InetSockSetStateFtraceEvent'family = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField InetSockSetStateFtraceEvent "maybe'family" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InetSockSetStateFtraceEvent'family
           (\ x__ y__ -> x__ {_InetSockSetStateFtraceEvent'family = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InetSockSetStateFtraceEvent "newstate" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InetSockSetStateFtraceEvent'newstate
           (\ x__ y__ -> x__ {_InetSockSetStateFtraceEvent'newstate = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField InetSockSetStateFtraceEvent "maybe'newstate" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InetSockSetStateFtraceEvent'newstate
           (\ x__ y__ -> x__ {_InetSockSetStateFtraceEvent'newstate = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InetSockSetStateFtraceEvent "oldstate" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InetSockSetStateFtraceEvent'oldstate
           (\ x__ y__ -> x__ {_InetSockSetStateFtraceEvent'oldstate = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField InetSockSetStateFtraceEvent "maybe'oldstate" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InetSockSetStateFtraceEvent'oldstate
           (\ x__ y__ -> x__ {_InetSockSetStateFtraceEvent'oldstate = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InetSockSetStateFtraceEvent "protocol" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InetSockSetStateFtraceEvent'protocol
           (\ x__ y__ -> x__ {_InetSockSetStateFtraceEvent'protocol = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField InetSockSetStateFtraceEvent "maybe'protocol" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InetSockSetStateFtraceEvent'protocol
           (\ x__ y__ -> x__ {_InetSockSetStateFtraceEvent'protocol = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InetSockSetStateFtraceEvent "saddr" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InetSockSetStateFtraceEvent'saddr
           (\ x__ y__ -> x__ {_InetSockSetStateFtraceEvent'saddr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField InetSockSetStateFtraceEvent "maybe'saddr" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InetSockSetStateFtraceEvent'saddr
           (\ x__ y__ -> x__ {_InetSockSetStateFtraceEvent'saddr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InetSockSetStateFtraceEvent "skaddr" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InetSockSetStateFtraceEvent'skaddr
           (\ x__ y__ -> x__ {_InetSockSetStateFtraceEvent'skaddr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField InetSockSetStateFtraceEvent "maybe'skaddr" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InetSockSetStateFtraceEvent'skaddr
           (\ x__ y__ -> x__ {_InetSockSetStateFtraceEvent'skaddr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InetSockSetStateFtraceEvent "sport" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InetSockSetStateFtraceEvent'sport
           (\ x__ y__ -> x__ {_InetSockSetStateFtraceEvent'sport = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField InetSockSetStateFtraceEvent "maybe'sport" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InetSockSetStateFtraceEvent'sport
           (\ x__ y__ -> x__ {_InetSockSetStateFtraceEvent'sport = y__}))
        Prelude.id
instance Data.ProtoLens.Message InetSockSetStateFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.InetSockSetStateFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ESCInetSockSetStateFtraceEvent\DC2\DC4\n\
      \\ENQdaddr\CAN\SOH \SOH(\rR\ENQdaddr\DC2\DC4\n\
      \\ENQdport\CAN\STX \SOH(\rR\ENQdport\DC2\SYN\n\
      \\ACKfamily\CAN\ETX \SOH(\rR\ACKfamily\DC2\SUB\n\
      \\bnewstate\CAN\EOT \SOH(\ENQR\bnewstate\DC2\SUB\n\
      \\boldstate\CAN\ENQ \SOH(\ENQR\boldstate\DC2\SUB\n\
      \\bprotocol\CAN\ACK \SOH(\rR\bprotocol\DC2\DC4\n\
      \\ENQsaddr\CAN\a \SOH(\rR\ENQsaddr\DC2\SYN\n\
      \\ACKskaddr\CAN\b \SOH(\EOTR\ACKskaddr\DC2\DC4\n\
      \\ENQsport\CAN\t \SOH(\rR\ENQsport"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        daddr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "daddr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'daddr")) ::
              Data.ProtoLens.FieldDescriptor InetSockSetStateFtraceEvent
        dport__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dport"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dport")) ::
              Data.ProtoLens.FieldDescriptor InetSockSetStateFtraceEvent
        family__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "family"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'family")) ::
              Data.ProtoLens.FieldDescriptor InetSockSetStateFtraceEvent
        newstate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "newstate"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'newstate")) ::
              Data.ProtoLens.FieldDescriptor InetSockSetStateFtraceEvent
        oldstate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "oldstate"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'oldstate")) ::
              Data.ProtoLens.FieldDescriptor InetSockSetStateFtraceEvent
        protocol__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "protocol"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'protocol")) ::
              Data.ProtoLens.FieldDescriptor InetSockSetStateFtraceEvent
        saddr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "saddr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'saddr")) ::
              Data.ProtoLens.FieldDescriptor InetSockSetStateFtraceEvent
        skaddr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "skaddr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'skaddr")) ::
              Data.ProtoLens.FieldDescriptor InetSockSetStateFtraceEvent
        sport__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sport"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sport")) ::
              Data.ProtoLens.FieldDescriptor InetSockSetStateFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, daddr__field_descriptor),
           (Data.ProtoLens.Tag 2, dport__field_descriptor),
           (Data.ProtoLens.Tag 3, family__field_descriptor),
           (Data.ProtoLens.Tag 4, newstate__field_descriptor),
           (Data.ProtoLens.Tag 5, oldstate__field_descriptor),
           (Data.ProtoLens.Tag 6, protocol__field_descriptor),
           (Data.ProtoLens.Tag 7, saddr__field_descriptor),
           (Data.ProtoLens.Tag 8, skaddr__field_descriptor),
           (Data.ProtoLens.Tag 9, sport__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _InetSockSetStateFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_InetSockSetStateFtraceEvent'_unknownFields = y__})
  defMessage
    = InetSockSetStateFtraceEvent'_constructor
        {_InetSockSetStateFtraceEvent'daddr = Prelude.Nothing,
         _InetSockSetStateFtraceEvent'dport = Prelude.Nothing,
         _InetSockSetStateFtraceEvent'family = Prelude.Nothing,
         _InetSockSetStateFtraceEvent'newstate = Prelude.Nothing,
         _InetSockSetStateFtraceEvent'oldstate = Prelude.Nothing,
         _InetSockSetStateFtraceEvent'protocol = Prelude.Nothing,
         _InetSockSetStateFtraceEvent'saddr = Prelude.Nothing,
         _InetSockSetStateFtraceEvent'skaddr = Prelude.Nothing,
         _InetSockSetStateFtraceEvent'sport = Prelude.Nothing,
         _InetSockSetStateFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          InetSockSetStateFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser InetSockSetStateFtraceEvent
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
                                       "daddr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"daddr") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "dport"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dport") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "family"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"family") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "newstate"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"newstate") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "oldstate"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"oldstate") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "protocol"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"protocol") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "saddr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"saddr") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "skaddr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"skaddr") y x)
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "sport"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"sport") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "InetSockSetStateFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'daddr") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dport") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'family") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'newstate") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'oldstate") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'protocol") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                      ((Prelude..)
                                         Data.ProtoLens.Encoding.Bytes.putVarInt
                                         Prelude.fromIntegral _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'saddr") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                         ((Prelude..)
                                            Data.ProtoLens.Encoding.Bytes.putVarInt
                                            Prelude.fromIntegral _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'skaddr") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"maybe'sport") _x
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
instance Control.DeepSeq.NFData InetSockSetStateFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_InetSockSetStateFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_InetSockSetStateFtraceEvent'daddr x__)
                (Control.DeepSeq.deepseq
                   (_InetSockSetStateFtraceEvent'dport x__)
                   (Control.DeepSeq.deepseq
                      (_InetSockSetStateFtraceEvent'family x__)
                      (Control.DeepSeq.deepseq
                         (_InetSockSetStateFtraceEvent'newstate x__)
                         (Control.DeepSeq.deepseq
                            (_InetSockSetStateFtraceEvent'oldstate x__)
                            (Control.DeepSeq.deepseq
                               (_InetSockSetStateFtraceEvent'protocol x__)
                               (Control.DeepSeq.deepseq
                                  (_InetSockSetStateFtraceEvent'saddr x__)
                                  (Control.DeepSeq.deepseq
                                     (_InetSockSetStateFtraceEvent'skaddr x__)
                                     (Control.DeepSeq.deepseq
                                        (_InetSockSetStateFtraceEvent'sport x__) ())))))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \'protos/perfetto/trace/ftrace/sock.proto\DC2\SIperfetto.protos\"\249\SOH\n\
    \\ESCInetSockSetStateFtraceEvent\DC2\DC4\n\
    \\ENQdaddr\CAN\SOH \SOH(\rR\ENQdaddr\DC2\DC4\n\
    \\ENQdport\CAN\STX \SOH(\rR\ENQdport\DC2\SYN\n\
    \\ACKfamily\CAN\ETX \SOH(\rR\ACKfamily\DC2\SUB\n\
    \\bnewstate\CAN\EOT \SOH(\ENQR\bnewstate\DC2\SUB\n\
    \\boldstate\CAN\ENQ \SOH(\ENQR\boldstate\DC2\SUB\n\
    \\bprotocol\CAN\ACK \SOH(\rR\bprotocol\DC2\DC4\n\
    \\ENQsaddr\CAN\a \SOH(\rR\ENQsaddr\DC2\SYN\n\
    \\ACKskaddr\CAN\b \SOH(\EOTR\ACKskaddr\DC2\DC4\n\
    \\ENQsport\CAN\t \SOH(\rR\ENQsportJ\250\ENQ\n\
    \\ACK\DC2\EOT\EOT\NUL\DC1\SOH\n\
    \a\n\
    \\SOH\f\DC2\ETX\EOT\NUL\DC22W Autogenerated by:\n\
    \ ../../src/tools/ftrace_proto_gen/ftrace_proto_gen.cc\n\
    \ Do not edit.\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\ENQ\NUL\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\a\NUL\DC1\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b#\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\b\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\b\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\b\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\b\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\b\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\t\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\t\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\t\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\t\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\t\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\n\
    \\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\n\
    \\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\n\
    \\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\n\
    \\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\n\
    \\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\v\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX\v\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\v\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\v\DC1\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\v\FS\GS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX\f\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\EOT\DC2\ETX\f\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX\f\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\f\DC1\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\f\FS\GS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX\r\STX\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\EOT\DC2\ETX\r\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETX\r\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX\r\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX\r\GS\RS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETX\SO\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\EOT\DC2\ETX\SO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ENQ\DC2\ETX\SO\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETX\SO\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETX\SO\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\a\DC2\ETX\SI\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\EOT\DC2\ETX\SI\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ENQ\DC2\ETX\SI\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\ETX\SI\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\ETX\SI\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\b\DC2\ETX\DLE\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\EOT\DC2\ETX\DLE\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ENQ\DC2\ETX\DLE\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\SOH\DC2\ETX\DLE\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ETX\DC2\ETX\DLE\SUB\ESC"