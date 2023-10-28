{- This file was auto-generated from protos/perfetto/trace/ftrace/signal.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Signal (
        SignalDeliverFtraceEvent(), SignalGenerateFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Signal_Fields.code' @:: Lens' SignalDeliverFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Signal_Fields.maybe'code' @:: Lens' SignalDeliverFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Signal_Fields.saFlags' @:: Lens' SignalDeliverFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Signal_Fields.maybe'saFlags' @:: Lens' SignalDeliverFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Signal_Fields.sig' @:: Lens' SignalDeliverFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Signal_Fields.maybe'sig' @:: Lens' SignalDeliverFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data SignalDeliverFtraceEvent
  = SignalDeliverFtraceEvent'_constructor {_SignalDeliverFtraceEvent'code :: !(Prelude.Maybe Data.Int.Int32),
                                           _SignalDeliverFtraceEvent'saFlags :: !(Prelude.Maybe Data.Word.Word64),
                                           _SignalDeliverFtraceEvent'sig :: !(Prelude.Maybe Data.Int.Int32),
                                           _SignalDeliverFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SignalDeliverFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SignalDeliverFtraceEvent "code" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalDeliverFtraceEvent'code
           (\ x__ y__ -> x__ {_SignalDeliverFtraceEvent'code = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SignalDeliverFtraceEvent "maybe'code" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalDeliverFtraceEvent'code
           (\ x__ y__ -> x__ {_SignalDeliverFtraceEvent'code = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SignalDeliverFtraceEvent "saFlags" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalDeliverFtraceEvent'saFlags
           (\ x__ y__ -> x__ {_SignalDeliverFtraceEvent'saFlags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SignalDeliverFtraceEvent "maybe'saFlags" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalDeliverFtraceEvent'saFlags
           (\ x__ y__ -> x__ {_SignalDeliverFtraceEvent'saFlags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SignalDeliverFtraceEvent "sig" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalDeliverFtraceEvent'sig
           (\ x__ y__ -> x__ {_SignalDeliverFtraceEvent'sig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SignalDeliverFtraceEvent "maybe'sig" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalDeliverFtraceEvent'sig
           (\ x__ y__ -> x__ {_SignalDeliverFtraceEvent'sig = y__}))
        Prelude.id
instance Data.ProtoLens.Message SignalDeliverFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.SignalDeliverFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\CANSignalDeliverFtraceEvent\DC2\DC2\n\
      \\EOTcode\CAN\SOH \SOH(\ENQR\EOTcode\DC2\EM\n\
      \\bsa_flags\CAN\STX \SOH(\EOTR\asaFlags\DC2\DLE\n\
      \\ETXsig\CAN\ETX \SOH(\ENQR\ETXsig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        code__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "code"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'code")) ::
              Data.ProtoLens.FieldDescriptor SignalDeliverFtraceEvent
        saFlags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sa_flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'saFlags")) ::
              Data.ProtoLens.FieldDescriptor SignalDeliverFtraceEvent
        sig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sig"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sig")) ::
              Data.ProtoLens.FieldDescriptor SignalDeliverFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, code__field_descriptor),
           (Data.ProtoLens.Tag 2, saFlags__field_descriptor),
           (Data.ProtoLens.Tag 3, sig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SignalDeliverFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_SignalDeliverFtraceEvent'_unknownFields = y__})
  defMessage
    = SignalDeliverFtraceEvent'_constructor
        {_SignalDeliverFtraceEvent'code = Prelude.Nothing,
         _SignalDeliverFtraceEvent'saFlags = Prelude.Nothing,
         _SignalDeliverFtraceEvent'sig = Prelude.Nothing,
         _SignalDeliverFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SignalDeliverFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser SignalDeliverFtraceEvent
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
                                       "code"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"code") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "sa_flags"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"saFlags") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "sig"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"sig") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SignalDeliverFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'code") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'saFlags") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'sig") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData SignalDeliverFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SignalDeliverFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SignalDeliverFtraceEvent'code x__)
                (Control.DeepSeq.deepseq
                   (_SignalDeliverFtraceEvent'saFlags x__)
                   (Control.DeepSeq.deepseq (_SignalDeliverFtraceEvent'sig x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Signal_Fields.code' @:: Lens' SignalGenerateFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Signal_Fields.maybe'code' @:: Lens' SignalGenerateFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Signal_Fields.comm' @:: Lens' SignalGenerateFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Signal_Fields.maybe'comm' @:: Lens' SignalGenerateFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Signal_Fields.group' @:: Lens' SignalGenerateFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Signal_Fields.maybe'group' @:: Lens' SignalGenerateFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Signal_Fields.pid' @:: Lens' SignalGenerateFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Signal_Fields.maybe'pid' @:: Lens' SignalGenerateFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Signal_Fields.result' @:: Lens' SignalGenerateFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Signal_Fields.maybe'result' @:: Lens' SignalGenerateFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Signal_Fields.sig' @:: Lens' SignalGenerateFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Signal_Fields.maybe'sig' @:: Lens' SignalGenerateFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data SignalGenerateFtraceEvent
  = SignalGenerateFtraceEvent'_constructor {_SignalGenerateFtraceEvent'code :: !(Prelude.Maybe Data.Int.Int32),
                                            _SignalGenerateFtraceEvent'comm :: !(Prelude.Maybe Data.Text.Text),
                                            _SignalGenerateFtraceEvent'group :: !(Prelude.Maybe Data.Int.Int32),
                                            _SignalGenerateFtraceEvent'pid :: !(Prelude.Maybe Data.Int.Int32),
                                            _SignalGenerateFtraceEvent'result :: !(Prelude.Maybe Data.Int.Int32),
                                            _SignalGenerateFtraceEvent'sig :: !(Prelude.Maybe Data.Int.Int32),
                                            _SignalGenerateFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SignalGenerateFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SignalGenerateFtraceEvent "code" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalGenerateFtraceEvent'code
           (\ x__ y__ -> x__ {_SignalGenerateFtraceEvent'code = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SignalGenerateFtraceEvent "maybe'code" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalGenerateFtraceEvent'code
           (\ x__ y__ -> x__ {_SignalGenerateFtraceEvent'code = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SignalGenerateFtraceEvent "comm" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalGenerateFtraceEvent'comm
           (\ x__ y__ -> x__ {_SignalGenerateFtraceEvent'comm = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SignalGenerateFtraceEvent "maybe'comm" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalGenerateFtraceEvent'comm
           (\ x__ y__ -> x__ {_SignalGenerateFtraceEvent'comm = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SignalGenerateFtraceEvent "group" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalGenerateFtraceEvent'group
           (\ x__ y__ -> x__ {_SignalGenerateFtraceEvent'group = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SignalGenerateFtraceEvent "maybe'group" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalGenerateFtraceEvent'group
           (\ x__ y__ -> x__ {_SignalGenerateFtraceEvent'group = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SignalGenerateFtraceEvent "pid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalGenerateFtraceEvent'pid
           (\ x__ y__ -> x__ {_SignalGenerateFtraceEvent'pid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SignalGenerateFtraceEvent "maybe'pid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalGenerateFtraceEvent'pid
           (\ x__ y__ -> x__ {_SignalGenerateFtraceEvent'pid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SignalGenerateFtraceEvent "result" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalGenerateFtraceEvent'result
           (\ x__ y__ -> x__ {_SignalGenerateFtraceEvent'result = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SignalGenerateFtraceEvent "maybe'result" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalGenerateFtraceEvent'result
           (\ x__ y__ -> x__ {_SignalGenerateFtraceEvent'result = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SignalGenerateFtraceEvent "sig" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalGenerateFtraceEvent'sig
           (\ x__ y__ -> x__ {_SignalGenerateFtraceEvent'sig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SignalGenerateFtraceEvent "maybe'sig" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignalGenerateFtraceEvent'sig
           (\ x__ y__ -> x__ {_SignalGenerateFtraceEvent'sig = y__}))
        Prelude.id
instance Data.ProtoLens.Message SignalGenerateFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.SignalGenerateFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\EMSignalGenerateFtraceEvent\DC2\DC2\n\
      \\EOTcode\CAN\SOH \SOH(\ENQR\EOTcode\DC2\DC2\n\
      \\EOTcomm\CAN\STX \SOH(\tR\EOTcomm\DC2\DC4\n\
      \\ENQgroup\CAN\ETX \SOH(\ENQR\ENQgroup\DC2\DLE\n\
      \\ETXpid\CAN\EOT \SOH(\ENQR\ETXpid\DC2\SYN\n\
      \\ACKresult\CAN\ENQ \SOH(\ENQR\ACKresult\DC2\DLE\n\
      \\ETXsig\CAN\ACK \SOH(\ENQR\ETXsig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        code__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "code"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'code")) ::
              Data.ProtoLens.FieldDescriptor SignalGenerateFtraceEvent
        comm__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "comm"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'comm")) ::
              Data.ProtoLens.FieldDescriptor SignalGenerateFtraceEvent
        group__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'group")) ::
              Data.ProtoLens.FieldDescriptor SignalGenerateFtraceEvent
        pid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pid")) ::
              Data.ProtoLens.FieldDescriptor SignalGenerateFtraceEvent
        result__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "result"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'result")) ::
              Data.ProtoLens.FieldDescriptor SignalGenerateFtraceEvent
        sig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sig"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sig")) ::
              Data.ProtoLens.FieldDescriptor SignalGenerateFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, code__field_descriptor),
           (Data.ProtoLens.Tag 2, comm__field_descriptor),
           (Data.ProtoLens.Tag 3, group__field_descriptor),
           (Data.ProtoLens.Tag 4, pid__field_descriptor),
           (Data.ProtoLens.Tag 5, result__field_descriptor),
           (Data.ProtoLens.Tag 6, sig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SignalGenerateFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_SignalGenerateFtraceEvent'_unknownFields = y__})
  defMessage
    = SignalGenerateFtraceEvent'_constructor
        {_SignalGenerateFtraceEvent'code = Prelude.Nothing,
         _SignalGenerateFtraceEvent'comm = Prelude.Nothing,
         _SignalGenerateFtraceEvent'group = Prelude.Nothing,
         _SignalGenerateFtraceEvent'pid = Prelude.Nothing,
         _SignalGenerateFtraceEvent'result = Prelude.Nothing,
         _SignalGenerateFtraceEvent'sig = Prelude.Nothing,
         _SignalGenerateFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SignalGenerateFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser SignalGenerateFtraceEvent
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
                                       "code"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"code") y x)
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
                                       "comm"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"comm") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "group"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"group") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "pid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pid") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "result"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"result") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "sig"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"sig") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SignalGenerateFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'code") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'comm") _x
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
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'group") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pid") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'result") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'sig") _x
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
instance Control.DeepSeq.NFData SignalGenerateFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SignalGenerateFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SignalGenerateFtraceEvent'code x__)
                (Control.DeepSeq.deepseq
                   (_SignalGenerateFtraceEvent'comm x__)
                   (Control.DeepSeq.deepseq
                      (_SignalGenerateFtraceEvent'group x__)
                      (Control.DeepSeq.deepseq
                         (_SignalGenerateFtraceEvent'pid x__)
                         (Control.DeepSeq.deepseq
                            (_SignalGenerateFtraceEvent'result x__)
                            (Control.DeepSeq.deepseq
                               (_SignalGenerateFtraceEvent'sig x__) ()))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \)protos/perfetto/trace/ftrace/signal.proto\DC2\SIperfetto.protos\"[\n\
    \\CANSignalDeliverFtraceEvent\DC2\DC2\n\
    \\EOTcode\CAN\SOH \SOH(\ENQR\EOTcode\DC2\EM\n\
    \\bsa_flags\CAN\STX \SOH(\EOTR\asaFlags\DC2\DLE\n\
    \\ETXsig\CAN\ETX \SOH(\ENQR\ETXsig\"\149\SOH\n\
    \\EMSignalGenerateFtraceEvent\DC2\DC2\n\
    \\EOTcode\CAN\SOH \SOH(\ENQR\EOTcode\DC2\DC2\n\
    \\EOTcomm\CAN\STX \SOH(\tR\EOTcomm\DC2\DC4\n\
    \\ENQgroup\CAN\ETX \SOH(\ENQR\ENQgroup\DC2\DLE\n\
    \\ETXpid\CAN\EOT \SOH(\ENQR\ETXpid\DC2\SYN\n\
    \\ACKresult\CAN\ENQ \SOH(\ENQR\ACKresult\DC2\DLE\n\
    \\ETXsig\CAN\ACK \SOH(\ENQR\ETXsigJ\146\ACK\n\
    \\ACK\DC2\EOT\EOT\NUL\DC3\SOH\n\
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
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b \n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\b\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\b\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\b\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\b\DC1\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\b\CAN\EM\n\
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
    \\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\n\
    \\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\n\
    \\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\n\
    \\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\n\
    \\ETB\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\f\NUL\DC3\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\f\b!\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\r\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\r\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\r\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\r\DC1\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\r\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\SO\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX\SO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\SO\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\SO\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\SO\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX\SI\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\EOT\DC2\ETX\SI\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX\SI\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX\SI\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX\SI\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX\DLE\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\EOT\DC2\ETX\DLE\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX\DLE\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX\DLE\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX\DLE\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETX\DC1\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\EOT\DC2\ETX\DC1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ENQ\DC2\ETX\DC1\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETX\DC1\DC1\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETX\DC1\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\ETX\DC2\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\EOT\DC2\ETX\DC2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ENQ\DC2\ETX\DC2\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\ETX\DC2\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\ETX\DC2\ETB\CAN"