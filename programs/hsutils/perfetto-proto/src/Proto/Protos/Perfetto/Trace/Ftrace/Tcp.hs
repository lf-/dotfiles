{- This file was auto-generated from protos/perfetto/trace/ftrace/tcp.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Tcp (
        TcpRetransmitSkbFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Tcp_Fields.daddr' @:: Lens' TcpRetransmitSkbFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Tcp_Fields.maybe'daddr' @:: Lens' TcpRetransmitSkbFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Tcp_Fields.dport' @:: Lens' TcpRetransmitSkbFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Tcp_Fields.maybe'dport' @:: Lens' TcpRetransmitSkbFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Tcp_Fields.saddr' @:: Lens' TcpRetransmitSkbFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Tcp_Fields.maybe'saddr' @:: Lens' TcpRetransmitSkbFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Tcp_Fields.skaddr' @:: Lens' TcpRetransmitSkbFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Tcp_Fields.maybe'skaddr' @:: Lens' TcpRetransmitSkbFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Tcp_Fields.skbaddr' @:: Lens' TcpRetransmitSkbFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Tcp_Fields.maybe'skbaddr' @:: Lens' TcpRetransmitSkbFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Tcp_Fields.sport' @:: Lens' TcpRetransmitSkbFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Tcp_Fields.maybe'sport' @:: Lens' TcpRetransmitSkbFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Tcp_Fields.state' @:: Lens' TcpRetransmitSkbFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Tcp_Fields.maybe'state' @:: Lens' TcpRetransmitSkbFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data TcpRetransmitSkbFtraceEvent
  = TcpRetransmitSkbFtraceEvent'_constructor {_TcpRetransmitSkbFtraceEvent'daddr :: !(Prelude.Maybe Data.Word.Word32),
                                              _TcpRetransmitSkbFtraceEvent'dport :: !(Prelude.Maybe Data.Word.Word32),
                                              _TcpRetransmitSkbFtraceEvent'saddr :: !(Prelude.Maybe Data.Word.Word32),
                                              _TcpRetransmitSkbFtraceEvent'skaddr :: !(Prelude.Maybe Data.Word.Word64),
                                              _TcpRetransmitSkbFtraceEvent'skbaddr :: !(Prelude.Maybe Data.Word.Word64),
                                              _TcpRetransmitSkbFtraceEvent'sport :: !(Prelude.Maybe Data.Word.Word32),
                                              _TcpRetransmitSkbFtraceEvent'state :: !(Prelude.Maybe Data.Int.Int32),
                                              _TcpRetransmitSkbFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TcpRetransmitSkbFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TcpRetransmitSkbFtraceEvent "daddr" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpRetransmitSkbFtraceEvent'daddr
           (\ x__ y__ -> x__ {_TcpRetransmitSkbFtraceEvent'daddr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TcpRetransmitSkbFtraceEvent "maybe'daddr" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpRetransmitSkbFtraceEvent'daddr
           (\ x__ y__ -> x__ {_TcpRetransmitSkbFtraceEvent'daddr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TcpRetransmitSkbFtraceEvent "dport" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpRetransmitSkbFtraceEvent'dport
           (\ x__ y__ -> x__ {_TcpRetransmitSkbFtraceEvent'dport = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TcpRetransmitSkbFtraceEvent "maybe'dport" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpRetransmitSkbFtraceEvent'dport
           (\ x__ y__ -> x__ {_TcpRetransmitSkbFtraceEvent'dport = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TcpRetransmitSkbFtraceEvent "saddr" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpRetransmitSkbFtraceEvent'saddr
           (\ x__ y__ -> x__ {_TcpRetransmitSkbFtraceEvent'saddr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TcpRetransmitSkbFtraceEvent "maybe'saddr" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpRetransmitSkbFtraceEvent'saddr
           (\ x__ y__ -> x__ {_TcpRetransmitSkbFtraceEvent'saddr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TcpRetransmitSkbFtraceEvent "skaddr" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpRetransmitSkbFtraceEvent'skaddr
           (\ x__ y__ -> x__ {_TcpRetransmitSkbFtraceEvent'skaddr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TcpRetransmitSkbFtraceEvent "maybe'skaddr" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpRetransmitSkbFtraceEvent'skaddr
           (\ x__ y__ -> x__ {_TcpRetransmitSkbFtraceEvent'skaddr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TcpRetransmitSkbFtraceEvent "skbaddr" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpRetransmitSkbFtraceEvent'skbaddr
           (\ x__ y__ -> x__ {_TcpRetransmitSkbFtraceEvent'skbaddr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TcpRetransmitSkbFtraceEvent "maybe'skbaddr" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpRetransmitSkbFtraceEvent'skbaddr
           (\ x__ y__ -> x__ {_TcpRetransmitSkbFtraceEvent'skbaddr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TcpRetransmitSkbFtraceEvent "sport" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpRetransmitSkbFtraceEvent'sport
           (\ x__ y__ -> x__ {_TcpRetransmitSkbFtraceEvent'sport = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TcpRetransmitSkbFtraceEvent "maybe'sport" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpRetransmitSkbFtraceEvent'sport
           (\ x__ y__ -> x__ {_TcpRetransmitSkbFtraceEvent'sport = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TcpRetransmitSkbFtraceEvent "state" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpRetransmitSkbFtraceEvent'state
           (\ x__ y__ -> x__ {_TcpRetransmitSkbFtraceEvent'state = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TcpRetransmitSkbFtraceEvent "maybe'state" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpRetransmitSkbFtraceEvent'state
           (\ x__ y__ -> x__ {_TcpRetransmitSkbFtraceEvent'state = y__}))
        Prelude.id
instance Data.ProtoLens.Message TcpRetransmitSkbFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.TcpRetransmitSkbFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ESCTcpRetransmitSkbFtraceEvent\DC2\DC4\n\
      \\ENQdaddr\CAN\SOH \SOH(\rR\ENQdaddr\DC2\DC4\n\
      \\ENQdport\CAN\STX \SOH(\rR\ENQdport\DC2\DC4\n\
      \\ENQsaddr\CAN\ETX \SOH(\rR\ENQsaddr\DC2\SYN\n\
      \\ACKskaddr\CAN\EOT \SOH(\EOTR\ACKskaddr\DC2\CAN\n\
      \\askbaddr\CAN\ENQ \SOH(\EOTR\askbaddr\DC2\DC4\n\
      \\ENQsport\CAN\ACK \SOH(\rR\ENQsport\DC2\DC4\n\
      \\ENQstate\CAN\a \SOH(\ENQR\ENQstate"
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
              Data.ProtoLens.FieldDescriptor TcpRetransmitSkbFtraceEvent
        dport__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dport"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dport")) ::
              Data.ProtoLens.FieldDescriptor TcpRetransmitSkbFtraceEvent
        saddr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "saddr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'saddr")) ::
              Data.ProtoLens.FieldDescriptor TcpRetransmitSkbFtraceEvent
        skaddr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "skaddr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'skaddr")) ::
              Data.ProtoLens.FieldDescriptor TcpRetransmitSkbFtraceEvent
        skbaddr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "skbaddr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'skbaddr")) ::
              Data.ProtoLens.FieldDescriptor TcpRetransmitSkbFtraceEvent
        sport__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sport"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sport")) ::
              Data.ProtoLens.FieldDescriptor TcpRetransmitSkbFtraceEvent
        state__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'state")) ::
              Data.ProtoLens.FieldDescriptor TcpRetransmitSkbFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, daddr__field_descriptor),
           (Data.ProtoLens.Tag 2, dport__field_descriptor),
           (Data.ProtoLens.Tag 3, saddr__field_descriptor),
           (Data.ProtoLens.Tag 4, skaddr__field_descriptor),
           (Data.ProtoLens.Tag 5, skbaddr__field_descriptor),
           (Data.ProtoLens.Tag 6, sport__field_descriptor),
           (Data.ProtoLens.Tag 7, state__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TcpRetransmitSkbFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_TcpRetransmitSkbFtraceEvent'_unknownFields = y__})
  defMessage
    = TcpRetransmitSkbFtraceEvent'_constructor
        {_TcpRetransmitSkbFtraceEvent'daddr = Prelude.Nothing,
         _TcpRetransmitSkbFtraceEvent'dport = Prelude.Nothing,
         _TcpRetransmitSkbFtraceEvent'saddr = Prelude.Nothing,
         _TcpRetransmitSkbFtraceEvent'skaddr = Prelude.Nothing,
         _TcpRetransmitSkbFtraceEvent'skbaddr = Prelude.Nothing,
         _TcpRetransmitSkbFtraceEvent'sport = Prelude.Nothing,
         _TcpRetransmitSkbFtraceEvent'state = Prelude.Nothing,
         _TcpRetransmitSkbFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TcpRetransmitSkbFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser TcpRetransmitSkbFtraceEvent
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
                                       "saddr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"saddr") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "skaddr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"skaddr") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "skbaddr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"skbaddr") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "sport"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"sport") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "state"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"state") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TcpRetransmitSkbFtraceEvent"
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'saddr") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'skaddr") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'skbaddr") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'sport") _x
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
                                    Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'state") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                         ((Prelude..)
                                            Data.ProtoLens.Encoding.Bytes.putVarInt
                                            Prelude.fromIntegral _v))
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData TcpRetransmitSkbFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TcpRetransmitSkbFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TcpRetransmitSkbFtraceEvent'daddr x__)
                (Control.DeepSeq.deepseq
                   (_TcpRetransmitSkbFtraceEvent'dport x__)
                   (Control.DeepSeq.deepseq
                      (_TcpRetransmitSkbFtraceEvent'saddr x__)
                      (Control.DeepSeq.deepseq
                         (_TcpRetransmitSkbFtraceEvent'skaddr x__)
                         (Control.DeepSeq.deepseq
                            (_TcpRetransmitSkbFtraceEvent'skbaddr x__)
                            (Control.DeepSeq.deepseq
                               (_TcpRetransmitSkbFtraceEvent'sport x__)
                               (Control.DeepSeq.deepseq
                                  (_TcpRetransmitSkbFtraceEvent'state x__) ())))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \&protos/perfetto/trace/ftrace/tcp.proto\DC2\SIperfetto.protos\"\189\SOH\n\
    \\ESCTcpRetransmitSkbFtraceEvent\DC2\DC4\n\
    \\ENQdaddr\CAN\SOH \SOH(\rR\ENQdaddr\DC2\DC4\n\
    \\ENQdport\CAN\STX \SOH(\rR\ENQdport\DC2\DC4\n\
    \\ENQsaddr\CAN\ETX \SOH(\rR\ENQsaddr\DC2\SYN\n\
    \\ACKskaddr\CAN\EOT \SOH(\EOTR\ACKskaddr\DC2\CAN\n\
    \\askbaddr\CAN\ENQ \SOH(\EOTR\askbaddr\DC2\DC4\n\
    \\ENQsport\CAN\ACK \SOH(\rR\ENQsport\DC2\DC4\n\
    \\ENQstate\CAN\a \SOH(\ENQR\ENQstateJ\240\EOT\n\
    \\ACK\DC2\EOT\EOT\NUL\SI\SOH\n\
    \a\n\
    \\SOH\f\DC2\ETX\EOT\NUL\DC22W Autogenerated by:\n\
    \ ../../src/tools/ftrace_proto_gen/ftrace_proto_gen.cc\n\
    \ Do not edit.\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\ENQ\NUL\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\a\NUL\SI\SOH\n\
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
    \\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\n\
    \\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\n\
    \\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\n\
    \\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\n\
    \\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\v\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX\v\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\v\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\v\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\v\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX\f\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\EOT\DC2\ETX\f\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX\f\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\f\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\f\FS\GS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX\r\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\EOT\DC2\ETX\r\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETX\r\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX\r\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX\r\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETX\SO\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\EOT\DC2\ETX\SO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ENQ\DC2\ETX\SO\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETX\SO\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETX\SO\EM\SUB"