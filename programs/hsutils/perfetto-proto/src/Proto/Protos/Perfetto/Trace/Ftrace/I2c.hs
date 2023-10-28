{- This file was auto-generated from protos/perfetto/trace/ftrace/i2c.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.I2c (
        I2cReadFtraceEvent(), I2cReplyFtraceEvent(),
        I2cResultFtraceEvent(), I2cWriteFtraceEvent(),
        SmbusReadFtraceEvent(), SmbusReplyFtraceEvent(),
        SmbusResultFtraceEvent(), SmbusWriteFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.adapterNr' @:: Lens' I2cReadFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.maybe'adapterNr' @:: Lens' I2cReadFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.msgNr' @:: Lens' I2cReadFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.maybe'msgNr' @:: Lens' I2cReadFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.addr' @:: Lens' I2cReadFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.maybe'addr' @:: Lens' I2cReadFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.flags' @:: Lens' I2cReadFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.maybe'flags' @:: Lens' I2cReadFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.len' @:: Lens' I2cReadFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.maybe'len' @:: Lens' I2cReadFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data I2cReadFtraceEvent
  = I2cReadFtraceEvent'_constructor {_I2cReadFtraceEvent'adapterNr :: !(Prelude.Maybe Data.Int.Int32),
                                     _I2cReadFtraceEvent'msgNr :: !(Prelude.Maybe Data.Word.Word32),
                                     _I2cReadFtraceEvent'addr :: !(Prelude.Maybe Data.Word.Word32),
                                     _I2cReadFtraceEvent'flags :: !(Prelude.Maybe Data.Word.Word32),
                                     _I2cReadFtraceEvent'len :: !(Prelude.Maybe Data.Word.Word32),
                                     _I2cReadFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show I2cReadFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField I2cReadFtraceEvent "adapterNr" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _I2cReadFtraceEvent'adapterNr
           (\ x__ y__ -> x__ {_I2cReadFtraceEvent'adapterNr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField I2cReadFtraceEvent "maybe'adapterNr" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _I2cReadFtraceEvent'adapterNr
           (\ x__ y__ -> x__ {_I2cReadFtraceEvent'adapterNr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField I2cReadFtraceEvent "msgNr" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _I2cReadFtraceEvent'msgNr
           (\ x__ y__ -> x__ {_I2cReadFtraceEvent'msgNr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField I2cReadFtraceEvent "maybe'msgNr" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _I2cReadFtraceEvent'msgNr
           (\ x__ y__ -> x__ {_I2cReadFtraceEvent'msgNr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField I2cReadFtraceEvent "addr" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _I2cReadFtraceEvent'addr
           (\ x__ y__ -> x__ {_I2cReadFtraceEvent'addr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField I2cReadFtraceEvent "maybe'addr" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _I2cReadFtraceEvent'addr
           (\ x__ y__ -> x__ {_I2cReadFtraceEvent'addr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField I2cReadFtraceEvent "flags" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _I2cReadFtraceEvent'flags
           (\ x__ y__ -> x__ {_I2cReadFtraceEvent'flags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField I2cReadFtraceEvent "maybe'flags" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _I2cReadFtraceEvent'flags
           (\ x__ y__ -> x__ {_I2cReadFtraceEvent'flags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField I2cReadFtraceEvent "len" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _I2cReadFtraceEvent'len
           (\ x__ y__ -> x__ {_I2cReadFtraceEvent'len = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField I2cReadFtraceEvent "maybe'len" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _I2cReadFtraceEvent'len
           (\ x__ y__ -> x__ {_I2cReadFtraceEvent'len = y__}))
        Prelude.id
instance Data.ProtoLens.Message I2cReadFtraceEvent where
  messageName _ = Data.Text.pack "perfetto.protos.I2cReadFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\DC2I2cReadFtraceEvent\DC2\GS\n\
      \\n\
      \adapter_nr\CAN\SOH \SOH(\ENQR\tadapterNr\DC2\NAK\n\
      \\ACKmsg_nr\CAN\STX \SOH(\rR\ENQmsgNr\DC2\DC2\n\
      \\EOTaddr\CAN\ETX \SOH(\rR\EOTaddr\DC2\DC4\n\
      \\ENQflags\CAN\EOT \SOH(\rR\ENQflags\DC2\DLE\n\
      \\ETXlen\CAN\ENQ \SOH(\rR\ETXlen"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        adapterNr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "adapter_nr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'adapterNr")) ::
              Data.ProtoLens.FieldDescriptor I2cReadFtraceEvent
        msgNr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "msg_nr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'msgNr")) ::
              Data.ProtoLens.FieldDescriptor I2cReadFtraceEvent
        addr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "addr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'addr")) ::
              Data.ProtoLens.FieldDescriptor I2cReadFtraceEvent
        flags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'flags")) ::
              Data.ProtoLens.FieldDescriptor I2cReadFtraceEvent
        len__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "len"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'len")) ::
              Data.ProtoLens.FieldDescriptor I2cReadFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, adapterNr__field_descriptor),
           (Data.ProtoLens.Tag 2, msgNr__field_descriptor),
           (Data.ProtoLens.Tag 3, addr__field_descriptor),
           (Data.ProtoLens.Tag 4, flags__field_descriptor),
           (Data.ProtoLens.Tag 5, len__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _I2cReadFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_I2cReadFtraceEvent'_unknownFields = y__})
  defMessage
    = I2cReadFtraceEvent'_constructor
        {_I2cReadFtraceEvent'adapterNr = Prelude.Nothing,
         _I2cReadFtraceEvent'msgNr = Prelude.Nothing,
         _I2cReadFtraceEvent'addr = Prelude.Nothing,
         _I2cReadFtraceEvent'flags = Prelude.Nothing,
         _I2cReadFtraceEvent'len = Prelude.Nothing,
         _I2cReadFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          I2cReadFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser I2cReadFtraceEvent
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
                                       "adapter_nr"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"adapterNr") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "msg_nr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"msgNr") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "addr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"addr") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "flags"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"flags") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "len"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"len") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "I2cReadFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'adapterNr") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'msgNr") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'addr") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'flags") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'len") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   ((Prelude..)
                                      Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                      _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData I2cReadFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_I2cReadFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_I2cReadFtraceEvent'adapterNr x__)
                (Control.DeepSeq.deepseq
                   (_I2cReadFtraceEvent'msgNr x__)
                   (Control.DeepSeq.deepseq
                      (_I2cReadFtraceEvent'addr x__)
                      (Control.DeepSeq.deepseq
                         (_I2cReadFtraceEvent'flags x__)
                         (Control.DeepSeq.deepseq (_I2cReadFtraceEvent'len x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.adapterNr' @:: Lens' I2cReplyFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.maybe'adapterNr' @:: Lens' I2cReplyFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.msgNr' @:: Lens' I2cReplyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.maybe'msgNr' @:: Lens' I2cReplyFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.addr' @:: Lens' I2cReplyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.maybe'addr' @:: Lens' I2cReplyFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.flags' @:: Lens' I2cReplyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.maybe'flags' @:: Lens' I2cReplyFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.len' @:: Lens' I2cReplyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.maybe'len' @:: Lens' I2cReplyFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.buf' @:: Lens' I2cReplyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.maybe'buf' @:: Lens' I2cReplyFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data I2cReplyFtraceEvent
  = I2cReplyFtraceEvent'_constructor {_I2cReplyFtraceEvent'adapterNr :: !(Prelude.Maybe Data.Int.Int32),
                                      _I2cReplyFtraceEvent'msgNr :: !(Prelude.Maybe Data.Word.Word32),
                                      _I2cReplyFtraceEvent'addr :: !(Prelude.Maybe Data.Word.Word32),
                                      _I2cReplyFtraceEvent'flags :: !(Prelude.Maybe Data.Word.Word32),
                                      _I2cReplyFtraceEvent'len :: !(Prelude.Maybe Data.Word.Word32),
                                      _I2cReplyFtraceEvent'buf :: !(Prelude.Maybe Data.Word.Word32),
                                      _I2cReplyFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show I2cReplyFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField I2cReplyFtraceEvent "adapterNr" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _I2cReplyFtraceEvent'adapterNr
           (\ x__ y__ -> x__ {_I2cReplyFtraceEvent'adapterNr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField I2cReplyFtraceEvent "maybe'adapterNr" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _I2cReplyFtraceEvent'adapterNr
           (\ x__ y__ -> x__ {_I2cReplyFtraceEvent'adapterNr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField I2cReplyFtraceEvent "msgNr" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _I2cReplyFtraceEvent'msgNr
           (\ x__ y__ -> x__ {_I2cReplyFtraceEvent'msgNr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField I2cReplyFtraceEvent "maybe'msgNr" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _I2cReplyFtraceEvent'msgNr
           (\ x__ y__ -> x__ {_I2cReplyFtraceEvent'msgNr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField I2cReplyFtraceEvent "addr" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _I2cReplyFtraceEvent'addr
           (\ x__ y__ -> x__ {_I2cReplyFtraceEvent'addr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField I2cReplyFtraceEvent "maybe'addr" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _I2cReplyFtraceEvent'addr
           (\ x__ y__ -> x__ {_I2cReplyFtraceEvent'addr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField I2cReplyFtraceEvent "flags" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _I2cReplyFtraceEvent'flags
           (\ x__ y__ -> x__ {_I2cReplyFtraceEvent'flags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField I2cReplyFtraceEvent "maybe'flags" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _I2cReplyFtraceEvent'flags
           (\ x__ y__ -> x__ {_I2cReplyFtraceEvent'flags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField I2cReplyFtraceEvent "len" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _I2cReplyFtraceEvent'len
           (\ x__ y__ -> x__ {_I2cReplyFtraceEvent'len = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField I2cReplyFtraceEvent "maybe'len" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _I2cReplyFtraceEvent'len
           (\ x__ y__ -> x__ {_I2cReplyFtraceEvent'len = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField I2cReplyFtraceEvent "buf" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _I2cReplyFtraceEvent'buf
           (\ x__ y__ -> x__ {_I2cReplyFtraceEvent'buf = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField I2cReplyFtraceEvent "maybe'buf" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _I2cReplyFtraceEvent'buf
           (\ x__ y__ -> x__ {_I2cReplyFtraceEvent'buf = y__}))
        Prelude.id
instance Data.ProtoLens.Message I2cReplyFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.I2cReplyFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\DC3I2cReplyFtraceEvent\DC2\GS\n\
      \\n\
      \adapter_nr\CAN\SOH \SOH(\ENQR\tadapterNr\DC2\NAK\n\
      \\ACKmsg_nr\CAN\STX \SOH(\rR\ENQmsgNr\DC2\DC2\n\
      \\EOTaddr\CAN\ETX \SOH(\rR\EOTaddr\DC2\DC4\n\
      \\ENQflags\CAN\EOT \SOH(\rR\ENQflags\DC2\DLE\n\
      \\ETXlen\CAN\ENQ \SOH(\rR\ETXlen\DC2\DLE\n\
      \\ETXbuf\CAN\ACK \SOH(\rR\ETXbuf"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        adapterNr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "adapter_nr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'adapterNr")) ::
              Data.ProtoLens.FieldDescriptor I2cReplyFtraceEvent
        msgNr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "msg_nr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'msgNr")) ::
              Data.ProtoLens.FieldDescriptor I2cReplyFtraceEvent
        addr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "addr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'addr")) ::
              Data.ProtoLens.FieldDescriptor I2cReplyFtraceEvent
        flags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'flags")) ::
              Data.ProtoLens.FieldDescriptor I2cReplyFtraceEvent
        len__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "len"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'len")) ::
              Data.ProtoLens.FieldDescriptor I2cReplyFtraceEvent
        buf__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "buf"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'buf")) ::
              Data.ProtoLens.FieldDescriptor I2cReplyFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, adapterNr__field_descriptor),
           (Data.ProtoLens.Tag 2, msgNr__field_descriptor),
           (Data.ProtoLens.Tag 3, addr__field_descriptor),
           (Data.ProtoLens.Tag 4, flags__field_descriptor),
           (Data.ProtoLens.Tag 5, len__field_descriptor),
           (Data.ProtoLens.Tag 6, buf__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _I2cReplyFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_I2cReplyFtraceEvent'_unknownFields = y__})
  defMessage
    = I2cReplyFtraceEvent'_constructor
        {_I2cReplyFtraceEvent'adapterNr = Prelude.Nothing,
         _I2cReplyFtraceEvent'msgNr = Prelude.Nothing,
         _I2cReplyFtraceEvent'addr = Prelude.Nothing,
         _I2cReplyFtraceEvent'flags = Prelude.Nothing,
         _I2cReplyFtraceEvent'len = Prelude.Nothing,
         _I2cReplyFtraceEvent'buf = Prelude.Nothing,
         _I2cReplyFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          I2cReplyFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser I2cReplyFtraceEvent
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
                                       "adapter_nr"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"adapterNr") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "msg_nr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"msgNr") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "addr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"addr") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "flags"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"flags") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "len"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"len") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "buf"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"buf") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "I2cReplyFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'adapterNr") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'msgNr") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'addr") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'flags") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'len") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'buf") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                      ((Prelude..)
                                         Data.ProtoLens.Encoding.Bytes.putVarInt
                                         Prelude.fromIntegral _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData I2cReplyFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_I2cReplyFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_I2cReplyFtraceEvent'adapterNr x__)
                (Control.DeepSeq.deepseq
                   (_I2cReplyFtraceEvent'msgNr x__)
                   (Control.DeepSeq.deepseq
                      (_I2cReplyFtraceEvent'addr x__)
                      (Control.DeepSeq.deepseq
                         (_I2cReplyFtraceEvent'flags x__)
                         (Control.DeepSeq.deepseq
                            (_I2cReplyFtraceEvent'len x__)
                            (Control.DeepSeq.deepseq (_I2cReplyFtraceEvent'buf x__) ()))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.adapterNr' @:: Lens' I2cResultFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.maybe'adapterNr' @:: Lens' I2cResultFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.nrMsgs' @:: Lens' I2cResultFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.maybe'nrMsgs' @:: Lens' I2cResultFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.ret' @:: Lens' I2cResultFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.maybe'ret' @:: Lens' I2cResultFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data I2cResultFtraceEvent
  = I2cResultFtraceEvent'_constructor {_I2cResultFtraceEvent'adapterNr :: !(Prelude.Maybe Data.Int.Int32),
                                       _I2cResultFtraceEvent'nrMsgs :: !(Prelude.Maybe Data.Word.Word32),
                                       _I2cResultFtraceEvent'ret :: !(Prelude.Maybe Data.Int.Int32),
                                       _I2cResultFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show I2cResultFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField I2cResultFtraceEvent "adapterNr" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _I2cResultFtraceEvent'adapterNr
           (\ x__ y__ -> x__ {_I2cResultFtraceEvent'adapterNr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField I2cResultFtraceEvent "maybe'adapterNr" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _I2cResultFtraceEvent'adapterNr
           (\ x__ y__ -> x__ {_I2cResultFtraceEvent'adapterNr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField I2cResultFtraceEvent "nrMsgs" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _I2cResultFtraceEvent'nrMsgs
           (\ x__ y__ -> x__ {_I2cResultFtraceEvent'nrMsgs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField I2cResultFtraceEvent "maybe'nrMsgs" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _I2cResultFtraceEvent'nrMsgs
           (\ x__ y__ -> x__ {_I2cResultFtraceEvent'nrMsgs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField I2cResultFtraceEvent "ret" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _I2cResultFtraceEvent'ret
           (\ x__ y__ -> x__ {_I2cResultFtraceEvent'ret = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField I2cResultFtraceEvent "maybe'ret" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _I2cResultFtraceEvent'ret
           (\ x__ y__ -> x__ {_I2cResultFtraceEvent'ret = y__}))
        Prelude.id
instance Data.ProtoLens.Message I2cResultFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.I2cResultFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\DC4I2cResultFtraceEvent\DC2\GS\n\
      \\n\
      \adapter_nr\CAN\SOH \SOH(\ENQR\tadapterNr\DC2\ETB\n\
      \\anr_msgs\CAN\STX \SOH(\rR\ACKnrMsgs\DC2\DLE\n\
      \\ETXret\CAN\ETX \SOH(\ENQR\ETXret"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        adapterNr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "adapter_nr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'adapterNr")) ::
              Data.ProtoLens.FieldDescriptor I2cResultFtraceEvent
        nrMsgs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nr_msgs"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nrMsgs")) ::
              Data.ProtoLens.FieldDescriptor I2cResultFtraceEvent
        ret__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ret"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ret")) ::
              Data.ProtoLens.FieldDescriptor I2cResultFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, adapterNr__field_descriptor),
           (Data.ProtoLens.Tag 2, nrMsgs__field_descriptor),
           (Data.ProtoLens.Tag 3, ret__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _I2cResultFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_I2cResultFtraceEvent'_unknownFields = y__})
  defMessage
    = I2cResultFtraceEvent'_constructor
        {_I2cResultFtraceEvent'adapterNr = Prelude.Nothing,
         _I2cResultFtraceEvent'nrMsgs = Prelude.Nothing,
         _I2cResultFtraceEvent'ret = Prelude.Nothing,
         _I2cResultFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          I2cResultFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser I2cResultFtraceEvent
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
                                       "adapter_nr"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"adapterNr") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "nr_msgs"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nrMsgs") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ret"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ret") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "I2cResultFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'adapterNr") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nrMsgs") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ret") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData I2cResultFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_I2cResultFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_I2cResultFtraceEvent'adapterNr x__)
                (Control.DeepSeq.deepseq
                   (_I2cResultFtraceEvent'nrMsgs x__)
                   (Control.DeepSeq.deepseq (_I2cResultFtraceEvent'ret x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.adapterNr' @:: Lens' I2cWriteFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.maybe'adapterNr' @:: Lens' I2cWriteFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.msgNr' @:: Lens' I2cWriteFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.maybe'msgNr' @:: Lens' I2cWriteFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.addr' @:: Lens' I2cWriteFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.maybe'addr' @:: Lens' I2cWriteFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.flags' @:: Lens' I2cWriteFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.maybe'flags' @:: Lens' I2cWriteFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.len' @:: Lens' I2cWriteFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.maybe'len' @:: Lens' I2cWriteFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.buf' @:: Lens' I2cWriteFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.maybe'buf' @:: Lens' I2cWriteFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data I2cWriteFtraceEvent
  = I2cWriteFtraceEvent'_constructor {_I2cWriteFtraceEvent'adapterNr :: !(Prelude.Maybe Data.Int.Int32),
                                      _I2cWriteFtraceEvent'msgNr :: !(Prelude.Maybe Data.Word.Word32),
                                      _I2cWriteFtraceEvent'addr :: !(Prelude.Maybe Data.Word.Word32),
                                      _I2cWriteFtraceEvent'flags :: !(Prelude.Maybe Data.Word.Word32),
                                      _I2cWriteFtraceEvent'len :: !(Prelude.Maybe Data.Word.Word32),
                                      _I2cWriteFtraceEvent'buf :: !(Prelude.Maybe Data.Word.Word32),
                                      _I2cWriteFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show I2cWriteFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField I2cWriteFtraceEvent "adapterNr" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _I2cWriteFtraceEvent'adapterNr
           (\ x__ y__ -> x__ {_I2cWriteFtraceEvent'adapterNr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField I2cWriteFtraceEvent "maybe'adapterNr" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _I2cWriteFtraceEvent'adapterNr
           (\ x__ y__ -> x__ {_I2cWriteFtraceEvent'adapterNr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField I2cWriteFtraceEvent "msgNr" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _I2cWriteFtraceEvent'msgNr
           (\ x__ y__ -> x__ {_I2cWriteFtraceEvent'msgNr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField I2cWriteFtraceEvent "maybe'msgNr" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _I2cWriteFtraceEvent'msgNr
           (\ x__ y__ -> x__ {_I2cWriteFtraceEvent'msgNr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField I2cWriteFtraceEvent "addr" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _I2cWriteFtraceEvent'addr
           (\ x__ y__ -> x__ {_I2cWriteFtraceEvent'addr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField I2cWriteFtraceEvent "maybe'addr" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _I2cWriteFtraceEvent'addr
           (\ x__ y__ -> x__ {_I2cWriteFtraceEvent'addr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField I2cWriteFtraceEvent "flags" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _I2cWriteFtraceEvent'flags
           (\ x__ y__ -> x__ {_I2cWriteFtraceEvent'flags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField I2cWriteFtraceEvent "maybe'flags" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _I2cWriteFtraceEvent'flags
           (\ x__ y__ -> x__ {_I2cWriteFtraceEvent'flags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField I2cWriteFtraceEvent "len" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _I2cWriteFtraceEvent'len
           (\ x__ y__ -> x__ {_I2cWriteFtraceEvent'len = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField I2cWriteFtraceEvent "maybe'len" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _I2cWriteFtraceEvent'len
           (\ x__ y__ -> x__ {_I2cWriteFtraceEvent'len = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField I2cWriteFtraceEvent "buf" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _I2cWriteFtraceEvent'buf
           (\ x__ y__ -> x__ {_I2cWriteFtraceEvent'buf = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField I2cWriteFtraceEvent "maybe'buf" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _I2cWriteFtraceEvent'buf
           (\ x__ y__ -> x__ {_I2cWriteFtraceEvent'buf = y__}))
        Prelude.id
instance Data.ProtoLens.Message I2cWriteFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.I2cWriteFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\DC3I2cWriteFtraceEvent\DC2\GS\n\
      \\n\
      \adapter_nr\CAN\SOH \SOH(\ENQR\tadapterNr\DC2\NAK\n\
      \\ACKmsg_nr\CAN\STX \SOH(\rR\ENQmsgNr\DC2\DC2\n\
      \\EOTaddr\CAN\ETX \SOH(\rR\EOTaddr\DC2\DC4\n\
      \\ENQflags\CAN\EOT \SOH(\rR\ENQflags\DC2\DLE\n\
      \\ETXlen\CAN\ENQ \SOH(\rR\ETXlen\DC2\DLE\n\
      \\ETXbuf\CAN\ACK \SOH(\rR\ETXbuf"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        adapterNr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "adapter_nr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'adapterNr")) ::
              Data.ProtoLens.FieldDescriptor I2cWriteFtraceEvent
        msgNr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "msg_nr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'msgNr")) ::
              Data.ProtoLens.FieldDescriptor I2cWriteFtraceEvent
        addr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "addr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'addr")) ::
              Data.ProtoLens.FieldDescriptor I2cWriteFtraceEvent
        flags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'flags")) ::
              Data.ProtoLens.FieldDescriptor I2cWriteFtraceEvent
        len__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "len"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'len")) ::
              Data.ProtoLens.FieldDescriptor I2cWriteFtraceEvent
        buf__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "buf"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'buf")) ::
              Data.ProtoLens.FieldDescriptor I2cWriteFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, adapterNr__field_descriptor),
           (Data.ProtoLens.Tag 2, msgNr__field_descriptor),
           (Data.ProtoLens.Tag 3, addr__field_descriptor),
           (Data.ProtoLens.Tag 4, flags__field_descriptor),
           (Data.ProtoLens.Tag 5, len__field_descriptor),
           (Data.ProtoLens.Tag 6, buf__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _I2cWriteFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_I2cWriteFtraceEvent'_unknownFields = y__})
  defMessage
    = I2cWriteFtraceEvent'_constructor
        {_I2cWriteFtraceEvent'adapterNr = Prelude.Nothing,
         _I2cWriteFtraceEvent'msgNr = Prelude.Nothing,
         _I2cWriteFtraceEvent'addr = Prelude.Nothing,
         _I2cWriteFtraceEvent'flags = Prelude.Nothing,
         _I2cWriteFtraceEvent'len = Prelude.Nothing,
         _I2cWriteFtraceEvent'buf = Prelude.Nothing,
         _I2cWriteFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          I2cWriteFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser I2cWriteFtraceEvent
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
                                       "adapter_nr"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"adapterNr") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "msg_nr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"msgNr") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "addr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"addr") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "flags"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"flags") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "len"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"len") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "buf"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"buf") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "I2cWriteFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'adapterNr") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'msgNr") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'addr") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'flags") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'len") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'buf") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                      ((Prelude..)
                                         Data.ProtoLens.Encoding.Bytes.putVarInt
                                         Prelude.fromIntegral _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData I2cWriteFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_I2cWriteFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_I2cWriteFtraceEvent'adapterNr x__)
                (Control.DeepSeq.deepseq
                   (_I2cWriteFtraceEvent'msgNr x__)
                   (Control.DeepSeq.deepseq
                      (_I2cWriteFtraceEvent'addr x__)
                      (Control.DeepSeq.deepseq
                         (_I2cWriteFtraceEvent'flags x__)
                         (Control.DeepSeq.deepseq
                            (_I2cWriteFtraceEvent'len x__)
                            (Control.DeepSeq.deepseq (_I2cWriteFtraceEvent'buf x__) ()))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.adapterNr' @:: Lens' SmbusReadFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.maybe'adapterNr' @:: Lens' SmbusReadFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.flags' @:: Lens' SmbusReadFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.maybe'flags' @:: Lens' SmbusReadFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.addr' @:: Lens' SmbusReadFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.maybe'addr' @:: Lens' SmbusReadFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.command' @:: Lens' SmbusReadFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.maybe'command' @:: Lens' SmbusReadFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.protocol' @:: Lens' SmbusReadFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.maybe'protocol' @:: Lens' SmbusReadFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data SmbusReadFtraceEvent
  = SmbusReadFtraceEvent'_constructor {_SmbusReadFtraceEvent'adapterNr :: !(Prelude.Maybe Data.Int.Int32),
                                       _SmbusReadFtraceEvent'flags :: !(Prelude.Maybe Data.Word.Word32),
                                       _SmbusReadFtraceEvent'addr :: !(Prelude.Maybe Data.Word.Word32),
                                       _SmbusReadFtraceEvent'command :: !(Prelude.Maybe Data.Word.Word32),
                                       _SmbusReadFtraceEvent'protocol :: !(Prelude.Maybe Data.Word.Word32),
                                       _SmbusReadFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SmbusReadFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SmbusReadFtraceEvent "adapterNr" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusReadFtraceEvent'adapterNr
           (\ x__ y__ -> x__ {_SmbusReadFtraceEvent'adapterNr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SmbusReadFtraceEvent "maybe'adapterNr" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusReadFtraceEvent'adapterNr
           (\ x__ y__ -> x__ {_SmbusReadFtraceEvent'adapterNr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SmbusReadFtraceEvent "flags" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusReadFtraceEvent'flags
           (\ x__ y__ -> x__ {_SmbusReadFtraceEvent'flags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SmbusReadFtraceEvent "maybe'flags" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusReadFtraceEvent'flags
           (\ x__ y__ -> x__ {_SmbusReadFtraceEvent'flags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SmbusReadFtraceEvent "addr" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusReadFtraceEvent'addr
           (\ x__ y__ -> x__ {_SmbusReadFtraceEvent'addr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SmbusReadFtraceEvent "maybe'addr" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusReadFtraceEvent'addr
           (\ x__ y__ -> x__ {_SmbusReadFtraceEvent'addr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SmbusReadFtraceEvent "command" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusReadFtraceEvent'command
           (\ x__ y__ -> x__ {_SmbusReadFtraceEvent'command = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SmbusReadFtraceEvent "maybe'command" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusReadFtraceEvent'command
           (\ x__ y__ -> x__ {_SmbusReadFtraceEvent'command = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SmbusReadFtraceEvent "protocol" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusReadFtraceEvent'protocol
           (\ x__ y__ -> x__ {_SmbusReadFtraceEvent'protocol = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SmbusReadFtraceEvent "maybe'protocol" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusReadFtraceEvent'protocol
           (\ x__ y__ -> x__ {_SmbusReadFtraceEvent'protocol = y__}))
        Prelude.id
instance Data.ProtoLens.Message SmbusReadFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.SmbusReadFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\DC4SmbusReadFtraceEvent\DC2\GS\n\
      \\n\
      \adapter_nr\CAN\SOH \SOH(\ENQR\tadapterNr\DC2\DC4\n\
      \\ENQflags\CAN\STX \SOH(\rR\ENQflags\DC2\DC2\n\
      \\EOTaddr\CAN\ETX \SOH(\rR\EOTaddr\DC2\CAN\n\
      \\acommand\CAN\EOT \SOH(\rR\acommand\DC2\SUB\n\
      \\bprotocol\CAN\ENQ \SOH(\rR\bprotocol"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        adapterNr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "adapter_nr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'adapterNr")) ::
              Data.ProtoLens.FieldDescriptor SmbusReadFtraceEvent
        flags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'flags")) ::
              Data.ProtoLens.FieldDescriptor SmbusReadFtraceEvent
        addr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "addr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'addr")) ::
              Data.ProtoLens.FieldDescriptor SmbusReadFtraceEvent
        command__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "command"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'command")) ::
              Data.ProtoLens.FieldDescriptor SmbusReadFtraceEvent
        protocol__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "protocol"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'protocol")) ::
              Data.ProtoLens.FieldDescriptor SmbusReadFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, adapterNr__field_descriptor),
           (Data.ProtoLens.Tag 2, flags__field_descriptor),
           (Data.ProtoLens.Tag 3, addr__field_descriptor),
           (Data.ProtoLens.Tag 4, command__field_descriptor),
           (Data.ProtoLens.Tag 5, protocol__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SmbusReadFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_SmbusReadFtraceEvent'_unknownFields = y__})
  defMessage
    = SmbusReadFtraceEvent'_constructor
        {_SmbusReadFtraceEvent'adapterNr = Prelude.Nothing,
         _SmbusReadFtraceEvent'flags = Prelude.Nothing,
         _SmbusReadFtraceEvent'addr = Prelude.Nothing,
         _SmbusReadFtraceEvent'command = Prelude.Nothing,
         _SmbusReadFtraceEvent'protocol = Prelude.Nothing,
         _SmbusReadFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SmbusReadFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser SmbusReadFtraceEvent
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
                                       "adapter_nr"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"adapterNr") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "flags"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"flags") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "addr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"addr") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "command"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"command") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "protocol"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"protocol") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SmbusReadFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'adapterNr") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'flags") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'addr") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'command") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'protocol") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   ((Prelude..)
                                      Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                      _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData SmbusReadFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SmbusReadFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SmbusReadFtraceEvent'adapterNr x__)
                (Control.DeepSeq.deepseq
                   (_SmbusReadFtraceEvent'flags x__)
                   (Control.DeepSeq.deepseq
                      (_SmbusReadFtraceEvent'addr x__)
                      (Control.DeepSeq.deepseq
                         (_SmbusReadFtraceEvent'command x__)
                         (Control.DeepSeq.deepseq
                            (_SmbusReadFtraceEvent'protocol x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.adapterNr' @:: Lens' SmbusReplyFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.maybe'adapterNr' @:: Lens' SmbusReplyFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.addr' @:: Lens' SmbusReplyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.maybe'addr' @:: Lens' SmbusReplyFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.flags' @:: Lens' SmbusReplyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.maybe'flags' @:: Lens' SmbusReplyFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.command' @:: Lens' SmbusReplyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.maybe'command' @:: Lens' SmbusReplyFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.len' @:: Lens' SmbusReplyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.maybe'len' @:: Lens' SmbusReplyFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.protocol' @:: Lens' SmbusReplyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.maybe'protocol' @:: Lens' SmbusReplyFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data SmbusReplyFtraceEvent
  = SmbusReplyFtraceEvent'_constructor {_SmbusReplyFtraceEvent'adapterNr :: !(Prelude.Maybe Data.Int.Int32),
                                        _SmbusReplyFtraceEvent'addr :: !(Prelude.Maybe Data.Word.Word32),
                                        _SmbusReplyFtraceEvent'flags :: !(Prelude.Maybe Data.Word.Word32),
                                        _SmbusReplyFtraceEvent'command :: !(Prelude.Maybe Data.Word.Word32),
                                        _SmbusReplyFtraceEvent'len :: !(Prelude.Maybe Data.Word.Word32),
                                        _SmbusReplyFtraceEvent'protocol :: !(Prelude.Maybe Data.Word.Word32),
                                        _SmbusReplyFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SmbusReplyFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SmbusReplyFtraceEvent "adapterNr" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusReplyFtraceEvent'adapterNr
           (\ x__ y__ -> x__ {_SmbusReplyFtraceEvent'adapterNr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SmbusReplyFtraceEvent "maybe'adapterNr" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusReplyFtraceEvent'adapterNr
           (\ x__ y__ -> x__ {_SmbusReplyFtraceEvent'adapterNr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SmbusReplyFtraceEvent "addr" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusReplyFtraceEvent'addr
           (\ x__ y__ -> x__ {_SmbusReplyFtraceEvent'addr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SmbusReplyFtraceEvent "maybe'addr" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusReplyFtraceEvent'addr
           (\ x__ y__ -> x__ {_SmbusReplyFtraceEvent'addr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SmbusReplyFtraceEvent "flags" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusReplyFtraceEvent'flags
           (\ x__ y__ -> x__ {_SmbusReplyFtraceEvent'flags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SmbusReplyFtraceEvent "maybe'flags" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusReplyFtraceEvent'flags
           (\ x__ y__ -> x__ {_SmbusReplyFtraceEvent'flags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SmbusReplyFtraceEvent "command" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusReplyFtraceEvent'command
           (\ x__ y__ -> x__ {_SmbusReplyFtraceEvent'command = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SmbusReplyFtraceEvent "maybe'command" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusReplyFtraceEvent'command
           (\ x__ y__ -> x__ {_SmbusReplyFtraceEvent'command = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SmbusReplyFtraceEvent "len" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusReplyFtraceEvent'len
           (\ x__ y__ -> x__ {_SmbusReplyFtraceEvent'len = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SmbusReplyFtraceEvent "maybe'len" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusReplyFtraceEvent'len
           (\ x__ y__ -> x__ {_SmbusReplyFtraceEvent'len = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SmbusReplyFtraceEvent "protocol" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusReplyFtraceEvent'protocol
           (\ x__ y__ -> x__ {_SmbusReplyFtraceEvent'protocol = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SmbusReplyFtraceEvent "maybe'protocol" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusReplyFtraceEvent'protocol
           (\ x__ y__ -> x__ {_SmbusReplyFtraceEvent'protocol = y__}))
        Prelude.id
instance Data.ProtoLens.Message SmbusReplyFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.SmbusReplyFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\NAKSmbusReplyFtraceEvent\DC2\GS\n\
      \\n\
      \adapter_nr\CAN\SOH \SOH(\ENQR\tadapterNr\DC2\DC2\n\
      \\EOTaddr\CAN\STX \SOH(\rR\EOTaddr\DC2\DC4\n\
      \\ENQflags\CAN\ETX \SOH(\rR\ENQflags\DC2\CAN\n\
      \\acommand\CAN\EOT \SOH(\rR\acommand\DC2\DLE\n\
      \\ETXlen\CAN\ENQ \SOH(\rR\ETXlen\DC2\SUB\n\
      \\bprotocol\CAN\ACK \SOH(\rR\bprotocol"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        adapterNr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "adapter_nr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'adapterNr")) ::
              Data.ProtoLens.FieldDescriptor SmbusReplyFtraceEvent
        addr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "addr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'addr")) ::
              Data.ProtoLens.FieldDescriptor SmbusReplyFtraceEvent
        flags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'flags")) ::
              Data.ProtoLens.FieldDescriptor SmbusReplyFtraceEvent
        command__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "command"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'command")) ::
              Data.ProtoLens.FieldDescriptor SmbusReplyFtraceEvent
        len__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "len"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'len")) ::
              Data.ProtoLens.FieldDescriptor SmbusReplyFtraceEvent
        protocol__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "protocol"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'protocol")) ::
              Data.ProtoLens.FieldDescriptor SmbusReplyFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, adapterNr__field_descriptor),
           (Data.ProtoLens.Tag 2, addr__field_descriptor),
           (Data.ProtoLens.Tag 3, flags__field_descriptor),
           (Data.ProtoLens.Tag 4, command__field_descriptor),
           (Data.ProtoLens.Tag 5, len__field_descriptor),
           (Data.ProtoLens.Tag 6, protocol__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SmbusReplyFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_SmbusReplyFtraceEvent'_unknownFields = y__})
  defMessage
    = SmbusReplyFtraceEvent'_constructor
        {_SmbusReplyFtraceEvent'adapterNr = Prelude.Nothing,
         _SmbusReplyFtraceEvent'addr = Prelude.Nothing,
         _SmbusReplyFtraceEvent'flags = Prelude.Nothing,
         _SmbusReplyFtraceEvent'command = Prelude.Nothing,
         _SmbusReplyFtraceEvent'len = Prelude.Nothing,
         _SmbusReplyFtraceEvent'protocol = Prelude.Nothing,
         _SmbusReplyFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SmbusReplyFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser SmbusReplyFtraceEvent
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
                                       "adapter_nr"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"adapterNr") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "addr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"addr") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "flags"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"flags") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "command"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"command") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "len"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"len") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "protocol"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"protocol") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SmbusReplyFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'adapterNr") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'addr") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'flags") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'command") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'len") _x
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
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData SmbusReplyFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SmbusReplyFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SmbusReplyFtraceEvent'adapterNr x__)
                (Control.DeepSeq.deepseq
                   (_SmbusReplyFtraceEvent'addr x__)
                   (Control.DeepSeq.deepseq
                      (_SmbusReplyFtraceEvent'flags x__)
                      (Control.DeepSeq.deepseq
                         (_SmbusReplyFtraceEvent'command x__)
                         (Control.DeepSeq.deepseq
                            (_SmbusReplyFtraceEvent'len x__)
                            (Control.DeepSeq.deepseq
                               (_SmbusReplyFtraceEvent'protocol x__) ()))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.adapterNr' @:: Lens' SmbusResultFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.maybe'adapterNr' @:: Lens' SmbusResultFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.addr' @:: Lens' SmbusResultFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.maybe'addr' @:: Lens' SmbusResultFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.flags' @:: Lens' SmbusResultFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.maybe'flags' @:: Lens' SmbusResultFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.readWrite' @:: Lens' SmbusResultFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.maybe'readWrite' @:: Lens' SmbusResultFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.command' @:: Lens' SmbusResultFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.maybe'command' @:: Lens' SmbusResultFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.res' @:: Lens' SmbusResultFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.maybe'res' @:: Lens' SmbusResultFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.protocol' @:: Lens' SmbusResultFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.maybe'protocol' @:: Lens' SmbusResultFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data SmbusResultFtraceEvent
  = SmbusResultFtraceEvent'_constructor {_SmbusResultFtraceEvent'adapterNr :: !(Prelude.Maybe Data.Int.Int32),
                                         _SmbusResultFtraceEvent'addr :: !(Prelude.Maybe Data.Word.Word32),
                                         _SmbusResultFtraceEvent'flags :: !(Prelude.Maybe Data.Word.Word32),
                                         _SmbusResultFtraceEvent'readWrite :: !(Prelude.Maybe Data.Word.Word32),
                                         _SmbusResultFtraceEvent'command :: !(Prelude.Maybe Data.Word.Word32),
                                         _SmbusResultFtraceEvent'res :: !(Prelude.Maybe Data.Int.Int32),
                                         _SmbusResultFtraceEvent'protocol :: !(Prelude.Maybe Data.Word.Word32),
                                         _SmbusResultFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SmbusResultFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SmbusResultFtraceEvent "adapterNr" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusResultFtraceEvent'adapterNr
           (\ x__ y__ -> x__ {_SmbusResultFtraceEvent'adapterNr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SmbusResultFtraceEvent "maybe'adapterNr" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusResultFtraceEvent'adapterNr
           (\ x__ y__ -> x__ {_SmbusResultFtraceEvent'adapterNr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SmbusResultFtraceEvent "addr" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusResultFtraceEvent'addr
           (\ x__ y__ -> x__ {_SmbusResultFtraceEvent'addr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SmbusResultFtraceEvent "maybe'addr" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusResultFtraceEvent'addr
           (\ x__ y__ -> x__ {_SmbusResultFtraceEvent'addr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SmbusResultFtraceEvent "flags" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusResultFtraceEvent'flags
           (\ x__ y__ -> x__ {_SmbusResultFtraceEvent'flags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SmbusResultFtraceEvent "maybe'flags" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusResultFtraceEvent'flags
           (\ x__ y__ -> x__ {_SmbusResultFtraceEvent'flags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SmbusResultFtraceEvent "readWrite" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusResultFtraceEvent'readWrite
           (\ x__ y__ -> x__ {_SmbusResultFtraceEvent'readWrite = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SmbusResultFtraceEvent "maybe'readWrite" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusResultFtraceEvent'readWrite
           (\ x__ y__ -> x__ {_SmbusResultFtraceEvent'readWrite = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SmbusResultFtraceEvent "command" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusResultFtraceEvent'command
           (\ x__ y__ -> x__ {_SmbusResultFtraceEvent'command = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SmbusResultFtraceEvent "maybe'command" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusResultFtraceEvent'command
           (\ x__ y__ -> x__ {_SmbusResultFtraceEvent'command = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SmbusResultFtraceEvent "res" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusResultFtraceEvent'res
           (\ x__ y__ -> x__ {_SmbusResultFtraceEvent'res = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SmbusResultFtraceEvent "maybe'res" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusResultFtraceEvent'res
           (\ x__ y__ -> x__ {_SmbusResultFtraceEvent'res = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SmbusResultFtraceEvent "protocol" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusResultFtraceEvent'protocol
           (\ x__ y__ -> x__ {_SmbusResultFtraceEvent'protocol = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SmbusResultFtraceEvent "maybe'protocol" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusResultFtraceEvent'protocol
           (\ x__ y__ -> x__ {_SmbusResultFtraceEvent'protocol = y__}))
        Prelude.id
instance Data.ProtoLens.Message SmbusResultFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.SmbusResultFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SYNSmbusResultFtraceEvent\DC2\GS\n\
      \\n\
      \adapter_nr\CAN\SOH \SOH(\ENQR\tadapterNr\DC2\DC2\n\
      \\EOTaddr\CAN\STX \SOH(\rR\EOTaddr\DC2\DC4\n\
      \\ENQflags\CAN\ETX \SOH(\rR\ENQflags\DC2\GS\n\
      \\n\
      \read_write\CAN\EOT \SOH(\rR\treadWrite\DC2\CAN\n\
      \\acommand\CAN\ENQ \SOH(\rR\acommand\DC2\DLE\n\
      \\ETXres\CAN\ACK \SOH(\ENQR\ETXres\DC2\SUB\n\
      \\bprotocol\CAN\a \SOH(\rR\bprotocol"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        adapterNr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "adapter_nr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'adapterNr")) ::
              Data.ProtoLens.FieldDescriptor SmbusResultFtraceEvent
        addr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "addr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'addr")) ::
              Data.ProtoLens.FieldDescriptor SmbusResultFtraceEvent
        flags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'flags")) ::
              Data.ProtoLens.FieldDescriptor SmbusResultFtraceEvent
        readWrite__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "read_write"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'readWrite")) ::
              Data.ProtoLens.FieldDescriptor SmbusResultFtraceEvent
        command__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "command"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'command")) ::
              Data.ProtoLens.FieldDescriptor SmbusResultFtraceEvent
        res__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "res"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'res")) ::
              Data.ProtoLens.FieldDescriptor SmbusResultFtraceEvent
        protocol__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "protocol"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'protocol")) ::
              Data.ProtoLens.FieldDescriptor SmbusResultFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, adapterNr__field_descriptor),
           (Data.ProtoLens.Tag 2, addr__field_descriptor),
           (Data.ProtoLens.Tag 3, flags__field_descriptor),
           (Data.ProtoLens.Tag 4, readWrite__field_descriptor),
           (Data.ProtoLens.Tag 5, command__field_descriptor),
           (Data.ProtoLens.Tag 6, res__field_descriptor),
           (Data.ProtoLens.Tag 7, protocol__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SmbusResultFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_SmbusResultFtraceEvent'_unknownFields = y__})
  defMessage
    = SmbusResultFtraceEvent'_constructor
        {_SmbusResultFtraceEvent'adapterNr = Prelude.Nothing,
         _SmbusResultFtraceEvent'addr = Prelude.Nothing,
         _SmbusResultFtraceEvent'flags = Prelude.Nothing,
         _SmbusResultFtraceEvent'readWrite = Prelude.Nothing,
         _SmbusResultFtraceEvent'command = Prelude.Nothing,
         _SmbusResultFtraceEvent'res = Prelude.Nothing,
         _SmbusResultFtraceEvent'protocol = Prelude.Nothing,
         _SmbusResultFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SmbusResultFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser SmbusResultFtraceEvent
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
                                       "adapter_nr"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"adapterNr") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "addr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"addr") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "flags"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"flags") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "read_write"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"readWrite") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "command"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"command") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "res"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"res") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "protocol"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"protocol") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SmbusResultFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'adapterNr") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'addr") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'flags") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'readWrite") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'command") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'res") _x
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
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'protocol") _x
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
instance Control.DeepSeq.NFData SmbusResultFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SmbusResultFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SmbusResultFtraceEvent'adapterNr x__)
                (Control.DeepSeq.deepseq
                   (_SmbusResultFtraceEvent'addr x__)
                   (Control.DeepSeq.deepseq
                      (_SmbusResultFtraceEvent'flags x__)
                      (Control.DeepSeq.deepseq
                         (_SmbusResultFtraceEvent'readWrite x__)
                         (Control.DeepSeq.deepseq
                            (_SmbusResultFtraceEvent'command x__)
                            (Control.DeepSeq.deepseq
                               (_SmbusResultFtraceEvent'res x__)
                               (Control.DeepSeq.deepseq
                                  (_SmbusResultFtraceEvent'protocol x__) ())))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.adapterNr' @:: Lens' SmbusWriteFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.maybe'adapterNr' @:: Lens' SmbusWriteFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.addr' @:: Lens' SmbusWriteFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.maybe'addr' @:: Lens' SmbusWriteFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.flags' @:: Lens' SmbusWriteFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.maybe'flags' @:: Lens' SmbusWriteFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.command' @:: Lens' SmbusWriteFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.maybe'command' @:: Lens' SmbusWriteFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.len' @:: Lens' SmbusWriteFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.maybe'len' @:: Lens' SmbusWriteFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.protocol' @:: Lens' SmbusWriteFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields.maybe'protocol' @:: Lens' SmbusWriteFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data SmbusWriteFtraceEvent
  = SmbusWriteFtraceEvent'_constructor {_SmbusWriteFtraceEvent'adapterNr :: !(Prelude.Maybe Data.Int.Int32),
                                        _SmbusWriteFtraceEvent'addr :: !(Prelude.Maybe Data.Word.Word32),
                                        _SmbusWriteFtraceEvent'flags :: !(Prelude.Maybe Data.Word.Word32),
                                        _SmbusWriteFtraceEvent'command :: !(Prelude.Maybe Data.Word.Word32),
                                        _SmbusWriteFtraceEvent'len :: !(Prelude.Maybe Data.Word.Word32),
                                        _SmbusWriteFtraceEvent'protocol :: !(Prelude.Maybe Data.Word.Word32),
                                        _SmbusWriteFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SmbusWriteFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SmbusWriteFtraceEvent "adapterNr" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusWriteFtraceEvent'adapterNr
           (\ x__ y__ -> x__ {_SmbusWriteFtraceEvent'adapterNr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SmbusWriteFtraceEvent "maybe'adapterNr" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusWriteFtraceEvent'adapterNr
           (\ x__ y__ -> x__ {_SmbusWriteFtraceEvent'adapterNr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SmbusWriteFtraceEvent "addr" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusWriteFtraceEvent'addr
           (\ x__ y__ -> x__ {_SmbusWriteFtraceEvent'addr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SmbusWriteFtraceEvent "maybe'addr" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusWriteFtraceEvent'addr
           (\ x__ y__ -> x__ {_SmbusWriteFtraceEvent'addr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SmbusWriteFtraceEvent "flags" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusWriteFtraceEvent'flags
           (\ x__ y__ -> x__ {_SmbusWriteFtraceEvent'flags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SmbusWriteFtraceEvent "maybe'flags" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusWriteFtraceEvent'flags
           (\ x__ y__ -> x__ {_SmbusWriteFtraceEvent'flags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SmbusWriteFtraceEvent "command" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusWriteFtraceEvent'command
           (\ x__ y__ -> x__ {_SmbusWriteFtraceEvent'command = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SmbusWriteFtraceEvent "maybe'command" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusWriteFtraceEvent'command
           (\ x__ y__ -> x__ {_SmbusWriteFtraceEvent'command = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SmbusWriteFtraceEvent "len" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusWriteFtraceEvent'len
           (\ x__ y__ -> x__ {_SmbusWriteFtraceEvent'len = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SmbusWriteFtraceEvent "maybe'len" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusWriteFtraceEvent'len
           (\ x__ y__ -> x__ {_SmbusWriteFtraceEvent'len = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SmbusWriteFtraceEvent "protocol" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusWriteFtraceEvent'protocol
           (\ x__ y__ -> x__ {_SmbusWriteFtraceEvent'protocol = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SmbusWriteFtraceEvent "maybe'protocol" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SmbusWriteFtraceEvent'protocol
           (\ x__ y__ -> x__ {_SmbusWriteFtraceEvent'protocol = y__}))
        Prelude.id
instance Data.ProtoLens.Message SmbusWriteFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.SmbusWriteFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\NAKSmbusWriteFtraceEvent\DC2\GS\n\
      \\n\
      \adapter_nr\CAN\SOH \SOH(\ENQR\tadapterNr\DC2\DC2\n\
      \\EOTaddr\CAN\STX \SOH(\rR\EOTaddr\DC2\DC4\n\
      \\ENQflags\CAN\ETX \SOH(\rR\ENQflags\DC2\CAN\n\
      \\acommand\CAN\EOT \SOH(\rR\acommand\DC2\DLE\n\
      \\ETXlen\CAN\ENQ \SOH(\rR\ETXlen\DC2\SUB\n\
      \\bprotocol\CAN\ACK \SOH(\rR\bprotocol"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        adapterNr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "adapter_nr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'adapterNr")) ::
              Data.ProtoLens.FieldDescriptor SmbusWriteFtraceEvent
        addr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "addr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'addr")) ::
              Data.ProtoLens.FieldDescriptor SmbusWriteFtraceEvent
        flags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'flags")) ::
              Data.ProtoLens.FieldDescriptor SmbusWriteFtraceEvent
        command__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "command"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'command")) ::
              Data.ProtoLens.FieldDescriptor SmbusWriteFtraceEvent
        len__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "len"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'len")) ::
              Data.ProtoLens.FieldDescriptor SmbusWriteFtraceEvent
        protocol__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "protocol"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'protocol")) ::
              Data.ProtoLens.FieldDescriptor SmbusWriteFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, adapterNr__field_descriptor),
           (Data.ProtoLens.Tag 2, addr__field_descriptor),
           (Data.ProtoLens.Tag 3, flags__field_descriptor),
           (Data.ProtoLens.Tag 4, command__field_descriptor),
           (Data.ProtoLens.Tag 5, len__field_descriptor),
           (Data.ProtoLens.Tag 6, protocol__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SmbusWriteFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_SmbusWriteFtraceEvent'_unknownFields = y__})
  defMessage
    = SmbusWriteFtraceEvent'_constructor
        {_SmbusWriteFtraceEvent'adapterNr = Prelude.Nothing,
         _SmbusWriteFtraceEvent'addr = Prelude.Nothing,
         _SmbusWriteFtraceEvent'flags = Prelude.Nothing,
         _SmbusWriteFtraceEvent'command = Prelude.Nothing,
         _SmbusWriteFtraceEvent'len = Prelude.Nothing,
         _SmbusWriteFtraceEvent'protocol = Prelude.Nothing,
         _SmbusWriteFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SmbusWriteFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser SmbusWriteFtraceEvent
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
                                       "adapter_nr"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"adapterNr") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "addr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"addr") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "flags"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"flags") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "command"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"command") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "len"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"len") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "protocol"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"protocol") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SmbusWriteFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'adapterNr") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'addr") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'flags") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'command") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'len") _x
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
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData SmbusWriteFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SmbusWriteFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SmbusWriteFtraceEvent'adapterNr x__)
                (Control.DeepSeq.deepseq
                   (_SmbusWriteFtraceEvent'addr x__)
                   (Control.DeepSeq.deepseq
                      (_SmbusWriteFtraceEvent'flags x__)
                      (Control.DeepSeq.deepseq
                         (_SmbusWriteFtraceEvent'command x__)
                         (Control.DeepSeq.deepseq
                            (_SmbusWriteFtraceEvent'len x__)
                            (Control.DeepSeq.deepseq
                               (_SmbusWriteFtraceEvent'protocol x__) ()))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \&protos/perfetto/trace/ftrace/i2c.proto\DC2\SIperfetto.protos\"\134\SOH\n\
    \\DC2I2cReadFtraceEvent\DC2\GS\n\
    \\n\
    \adapter_nr\CAN\SOH \SOH(\ENQR\tadapterNr\DC2\NAK\n\
    \\ACKmsg_nr\CAN\STX \SOH(\rR\ENQmsgNr\DC2\DC2\n\
    \\EOTaddr\CAN\ETX \SOH(\rR\EOTaddr\DC2\DC4\n\
    \\ENQflags\CAN\EOT \SOH(\rR\ENQflags\DC2\DLE\n\
    \\ETXlen\CAN\ENQ \SOH(\rR\ETXlen\"\153\SOH\n\
    \\DC3I2cWriteFtraceEvent\DC2\GS\n\
    \\n\
    \adapter_nr\CAN\SOH \SOH(\ENQR\tadapterNr\DC2\NAK\n\
    \\ACKmsg_nr\CAN\STX \SOH(\rR\ENQmsgNr\DC2\DC2\n\
    \\EOTaddr\CAN\ETX \SOH(\rR\EOTaddr\DC2\DC4\n\
    \\ENQflags\CAN\EOT \SOH(\rR\ENQflags\DC2\DLE\n\
    \\ETXlen\CAN\ENQ \SOH(\rR\ETXlen\DC2\DLE\n\
    \\ETXbuf\CAN\ACK \SOH(\rR\ETXbuf\"`\n\
    \\DC4I2cResultFtraceEvent\DC2\GS\n\
    \\n\
    \adapter_nr\CAN\SOH \SOH(\ENQR\tadapterNr\DC2\ETB\n\
    \\anr_msgs\CAN\STX \SOH(\rR\ACKnrMsgs\DC2\DLE\n\
    \\ETXret\CAN\ETX \SOH(\ENQR\ETXret\"\153\SOH\n\
    \\DC3I2cReplyFtraceEvent\DC2\GS\n\
    \\n\
    \adapter_nr\CAN\SOH \SOH(\ENQR\tadapterNr\DC2\NAK\n\
    \\ACKmsg_nr\CAN\STX \SOH(\rR\ENQmsgNr\DC2\DC2\n\
    \\EOTaddr\CAN\ETX \SOH(\rR\EOTaddr\DC2\DC4\n\
    \\ENQflags\CAN\EOT \SOH(\rR\ENQflags\DC2\DLE\n\
    \\ETXlen\CAN\ENQ \SOH(\rR\ETXlen\DC2\DLE\n\
    \\ETXbuf\CAN\ACK \SOH(\rR\ETXbuf\"\149\SOH\n\
    \\DC4SmbusReadFtraceEvent\DC2\GS\n\
    \\n\
    \adapter_nr\CAN\SOH \SOH(\ENQR\tadapterNr\DC2\DC4\n\
    \\ENQflags\CAN\STX \SOH(\rR\ENQflags\DC2\DC2\n\
    \\EOTaddr\CAN\ETX \SOH(\rR\EOTaddr\DC2\CAN\n\
    \\acommand\CAN\EOT \SOH(\rR\acommand\DC2\SUB\n\
    \\bprotocol\CAN\ENQ \SOH(\rR\bprotocol\"\168\SOH\n\
    \\NAKSmbusWriteFtraceEvent\DC2\GS\n\
    \\n\
    \adapter_nr\CAN\SOH \SOH(\ENQR\tadapterNr\DC2\DC2\n\
    \\EOTaddr\CAN\STX \SOH(\rR\EOTaddr\DC2\DC4\n\
    \\ENQflags\CAN\ETX \SOH(\rR\ENQflags\DC2\CAN\n\
    \\acommand\CAN\EOT \SOH(\rR\acommand\DC2\DLE\n\
    \\ETXlen\CAN\ENQ \SOH(\rR\ETXlen\DC2\SUB\n\
    \\bprotocol\CAN\ACK \SOH(\rR\bprotocol\"\200\SOH\n\
    \\SYNSmbusResultFtraceEvent\DC2\GS\n\
    \\n\
    \adapter_nr\CAN\SOH \SOH(\ENQR\tadapterNr\DC2\DC2\n\
    \\EOTaddr\CAN\STX \SOH(\rR\EOTaddr\DC2\DC4\n\
    \\ENQflags\CAN\ETX \SOH(\rR\ENQflags\DC2\GS\n\
    \\n\
    \read_write\CAN\EOT \SOH(\rR\treadWrite\DC2\CAN\n\
    \\acommand\CAN\ENQ \SOH(\rR\acommand\DC2\DLE\n\
    \\ETXres\CAN\ACK \SOH(\ENQR\ETXres\DC2\SUB\n\
    \\bprotocol\CAN\a \SOH(\rR\bprotocol\"\168\SOH\n\
    \\NAKSmbusReplyFtraceEvent\DC2\GS\n\
    \\n\
    \adapter_nr\CAN\SOH \SOH(\ENQR\tadapterNr\DC2\DC2\n\
    \\EOTaddr\CAN\STX \SOH(\rR\EOTaddr\DC2\DC4\n\
    \\ENQflags\CAN\ETX \SOH(\rR\ENQflags\DC2\CAN\n\
    \\acommand\CAN\EOT \SOH(\rR\acommand\DC2\DLE\n\
    \\ETXlen\CAN\ENQ \SOH(\rR\ETXlen\DC2\SUB\n\
    \\bprotocol\CAN\ACK \SOH(\rR\bprotocolJ\145\SUB\n\
    \\ACK\DC2\EOT\EOT\NULB\SOH\n\
    \a\n\
    \\SOH\f\DC2\ETX\EOT\NUL\DC22W Autogenerated by:\n\
    \ ../../src/tools/ftrace_proto_gen/ftrace_proto_gen.cc\n\
    \ Do not edit.\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\ENQ\NUL\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\a\NUL\r\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b\SUB\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\b\STX \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\b\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\b\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\b\DC1\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\b\RS\US\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\t\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\t\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\t\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\t\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\t\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\n\
    \\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\n\
    \\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\n\
    \\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\n\
    \\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\n\
    \\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\v\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX\v\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\v\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\v\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\v\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX\f\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\EOT\DC2\ETX\f\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX\f\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\f\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\f\CAN\EM\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\SO\NUL\NAK\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\SO\b\ESC\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\SI\STX \n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\SI\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\SI\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\SI\DC1\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\SI\RS\US\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\DLE\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX\DLE\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\DLE\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\DLE\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\DLE\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX\DC1\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\EOT\DC2\ETX\DC1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX\DC1\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX\DC1\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX\DC1\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX\DC2\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\EOT\DC2\ETX\DC2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX\DC2\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX\DC2\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX\DC2\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETX\DC3\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\EOT\DC2\ETX\DC3\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ENQ\DC2\ETX\DC3\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETX\DC3\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETX\DC3\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\ETX\DC4\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\EOT\DC2\ETX\DC4\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ENQ\DC2\ETX\DC4\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\ETX\DC4\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\ETX\DC4\CAN\EM\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT\SYN\NUL\SUB\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\SYN\b\FS\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\ETB\STX \n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETX\ETB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX\ETB\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\ETB\DC1\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\ETB\RS\US\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX\CAN\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETX\CAN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX\CAN\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX\CAN\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX\CAN\FS\GS\n\
    \\v\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX\EM\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\EOT\DC2\ETX\EM\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETX\EM\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX\EM\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX\EM\ETB\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOT\ESC\NUL\"\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX\ESC\b\ESC\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX\FS\STX \n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETX\FS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX\FS\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX\FS\DC1\ESC\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX\FS\RS\US\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX\GS\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\EOT\DC2\ETX\GS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETX\GS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX\GS\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX\GS\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETX\RS\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\EOT\DC2\ETX\RS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\ETX\RS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETX\RS\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETX\RS\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\ETX\US\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\EOT\DC2\ETX\US\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ENQ\DC2\ETX\US\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\ETX\US\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\ETX\US\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\EOT\DC2\ETX \STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\EOT\DC2\ETX \STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ENQ\DC2\ETX \v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\SOH\DC2\ETX \DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ETX\DC2\ETX \CAN\EM\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ENQ\DC2\ETX!\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\EOT\DC2\ETX!\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\ENQ\DC2\ETX!\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\SOH\DC2\ETX!\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\ETX\DC2\ETX!\CAN\EM\n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOT#\NUL)\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX#\b\FS\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX$\STX \n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\EOT\DC2\ETX$\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX$\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX$\DC1\ESC\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX$\RS\US\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETX%\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\EOT\DC2\ETX%\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETX%\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETX%\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETX%\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETX&\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\EOT\DC2\ETX&\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ENQ\DC2\ETX&\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETX&\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETX&\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\ETX'\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\EOT\DC2\ETX'\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ENQ\DC2\ETX'\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\ETX'\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\ETX'\FS\GS\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\EOT\DC2\ETX(\STX\US\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\EOT\DC2\ETX(\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\ENQ\DC2\ETX(\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\SOH\DC2\ETX(\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\ETX\DC2\ETX(\GS\RS\n\
    \\n\
    \\n\
    \\STX\EOT\ENQ\DC2\EOT*\NUL1\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX*\b\GS\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETX+\STX \n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\ETX+\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETX+\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX+\DC1\ESC\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX+\RS\US\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ETX,\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\EOT\DC2\ETX,\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\ETX,\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETX,\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETX,\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\ETX-\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\EOT\DC2\ETX-\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ENQ\DC2\ETX-\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\ETX-\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\ETX-\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\ETX\DC2\ETX.\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\EOT\DC2\ETX.\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\ENQ\DC2\ETX.\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\SOH\DC2\ETX.\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\ETX\DC2\ETX.\FS\GS\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\EOT\DC2\ETX/\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\EOT\DC2\ETX/\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\ENQ\DC2\ETX/\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\SOH\DC2\ETX/\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\ETX\DC2\ETX/\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\ENQ\DC2\ETX0\STX\US\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ENQ\EOT\DC2\ETX0\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ENQ\ENQ\DC2\ETX0\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ENQ\SOH\DC2\ETX0\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ENQ\ETX\DC2\ETX0\GS\RS\n\
    \\n\
    \\n\
    \\STX\EOT\ACK\DC2\EOT2\NUL:\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETX2\b\RS\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETX3\STX \n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\EOT\DC2\ETX3\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETX3\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETX3\DC1\ESC\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETX3\RS\US\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\ETX4\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\EOT\DC2\ETX4\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\ETX4\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\ETX4\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\ETX4\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\STX\DC2\ETX5\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\EOT\DC2\ETX5\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ENQ\DC2\ETX5\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\SOH\DC2\ETX5\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ETX\DC2\ETX5\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\ETX\DC2\ETX6\STX!\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\EOT\DC2\ETX6\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\ENQ\DC2\ETX6\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\SOH\DC2\ETX6\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\ETX\DC2\ETX6\US \n\
    \\v\n\
    \\EOT\EOT\ACK\STX\EOT\DC2\ETX7\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\EOT\EOT\DC2\ETX7\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\EOT\ENQ\DC2\ETX7\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\EOT\SOH\DC2\ETX7\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\EOT\ETX\DC2\ETX7\FS\GS\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\ENQ\DC2\ETX8\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ENQ\EOT\DC2\ETX8\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ENQ\ENQ\DC2\ETX8\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ENQ\SOH\DC2\ETX8\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ENQ\ETX\DC2\ETX8\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\ACK\DC2\ETX9\STX\US\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ACK\EOT\DC2\ETX9\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ACK\ENQ\DC2\ETX9\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ACK\SOH\DC2\ETX9\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ACK\ETX\DC2\ETX9\GS\RS\n\
    \\n\
    \\n\
    \\STX\EOT\a\DC2\EOT;\NULB\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETX;\b\GS\n\
    \\v\n\
    \\EOT\EOT\a\STX\NUL\DC2\ETX<\STX \n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\EOT\DC2\ETX<\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ENQ\DC2\ETX<\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\ETX<\DC1\ESC\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\ETX<\RS\US\n\
    \\v\n\
    \\EOT\EOT\a\STX\SOH\DC2\ETX=\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\EOT\DC2\ETX=\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ENQ\DC2\ETX=\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\ETX=\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\ETX=\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\a\STX\STX\DC2\ETX>\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\EOT\DC2\ETX>\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\ENQ\DC2\ETX>\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\SOH\DC2\ETX>\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\ETX\DC2\ETX>\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\a\STX\ETX\DC2\ETX?\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ETX\EOT\DC2\ETX?\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ETX\ENQ\DC2\ETX?\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ETX\SOH\DC2\ETX?\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ETX\ETX\DC2\ETX?\FS\GS\n\
    \\v\n\
    \\EOT\EOT\a\STX\EOT\DC2\ETX@\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\a\STX\EOT\EOT\DC2\ETX@\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\EOT\ENQ\DC2\ETX@\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\EOT\SOH\DC2\ETX@\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\a\STX\EOT\ETX\DC2\ETX@\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\a\STX\ENQ\DC2\ETXA\STX\US\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ENQ\EOT\DC2\ETXA\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ENQ\ENQ\DC2\ETXA\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ENQ\SOH\DC2\ETXA\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ENQ\ETX\DC2\ETXA\GS\RS"