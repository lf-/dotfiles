{- This file was auto-generated from protos/perfetto/trace/ftrace/irq.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Irq (
        IrqHandlerEntryFtraceEvent(), IrqHandlerExitFtraceEvent(),
        SoftirqEntryFtraceEvent(), SoftirqExitFtraceEvent(),
        SoftirqRaiseFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Irq_Fields.irq' @:: Lens' IrqHandlerEntryFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Irq_Fields.maybe'irq' @:: Lens' IrqHandlerEntryFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Irq_Fields.name' @:: Lens' IrqHandlerEntryFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Irq_Fields.maybe'name' @:: Lens' IrqHandlerEntryFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Irq_Fields.handler' @:: Lens' IrqHandlerEntryFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Irq_Fields.maybe'handler' @:: Lens' IrqHandlerEntryFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data IrqHandlerEntryFtraceEvent
  = IrqHandlerEntryFtraceEvent'_constructor {_IrqHandlerEntryFtraceEvent'irq :: !(Prelude.Maybe Data.Int.Int32),
                                             _IrqHandlerEntryFtraceEvent'name :: !(Prelude.Maybe Data.Text.Text),
                                             _IrqHandlerEntryFtraceEvent'handler :: !(Prelude.Maybe Data.Word.Word32),
                                             _IrqHandlerEntryFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show IrqHandlerEntryFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField IrqHandlerEntryFtraceEvent "irq" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IrqHandlerEntryFtraceEvent'irq
           (\ x__ y__ -> x__ {_IrqHandlerEntryFtraceEvent'irq = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IrqHandlerEntryFtraceEvent "maybe'irq" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IrqHandlerEntryFtraceEvent'irq
           (\ x__ y__ -> x__ {_IrqHandlerEntryFtraceEvent'irq = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IrqHandlerEntryFtraceEvent "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IrqHandlerEntryFtraceEvent'name
           (\ x__ y__ -> x__ {_IrqHandlerEntryFtraceEvent'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IrqHandlerEntryFtraceEvent "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IrqHandlerEntryFtraceEvent'name
           (\ x__ y__ -> x__ {_IrqHandlerEntryFtraceEvent'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IrqHandlerEntryFtraceEvent "handler" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IrqHandlerEntryFtraceEvent'handler
           (\ x__ y__ -> x__ {_IrqHandlerEntryFtraceEvent'handler = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IrqHandlerEntryFtraceEvent "maybe'handler" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IrqHandlerEntryFtraceEvent'handler
           (\ x__ y__ -> x__ {_IrqHandlerEntryFtraceEvent'handler = y__}))
        Prelude.id
instance Data.ProtoLens.Message IrqHandlerEntryFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.IrqHandlerEntryFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SUBIrqHandlerEntryFtraceEvent\DC2\DLE\n\
      \\ETXirq\CAN\SOH \SOH(\ENQR\ETXirq\DC2\DC2\n\
      \\EOTname\CAN\STX \SOH(\tR\EOTname\DC2\CAN\n\
      \\ahandler\CAN\ETX \SOH(\rR\ahandler"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        irq__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "irq"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'irq")) ::
              Data.ProtoLens.FieldDescriptor IrqHandlerEntryFtraceEvent
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'name")) ::
              Data.ProtoLens.FieldDescriptor IrqHandlerEntryFtraceEvent
        handler__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "handler"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'handler")) ::
              Data.ProtoLens.FieldDescriptor IrqHandlerEntryFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, irq__field_descriptor),
           (Data.ProtoLens.Tag 2, name__field_descriptor),
           (Data.ProtoLens.Tag 3, handler__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _IrqHandlerEntryFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_IrqHandlerEntryFtraceEvent'_unknownFields = y__})
  defMessage
    = IrqHandlerEntryFtraceEvent'_constructor
        {_IrqHandlerEntryFtraceEvent'irq = Prelude.Nothing,
         _IrqHandlerEntryFtraceEvent'name = Prelude.Nothing,
         _IrqHandlerEntryFtraceEvent'handler = Prelude.Nothing,
         _IrqHandlerEntryFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          IrqHandlerEntryFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser IrqHandlerEntryFtraceEvent
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
                                       "irq"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"irq") y x)
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
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "handler"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"handler") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "IrqHandlerEntryFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'irq") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'name") _x
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'handler") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData IrqHandlerEntryFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_IrqHandlerEntryFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_IrqHandlerEntryFtraceEvent'irq x__)
                (Control.DeepSeq.deepseq
                   (_IrqHandlerEntryFtraceEvent'name x__)
                   (Control.DeepSeq.deepseq
                      (_IrqHandlerEntryFtraceEvent'handler x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Irq_Fields.irq' @:: Lens' IrqHandlerExitFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Irq_Fields.maybe'irq' @:: Lens' IrqHandlerExitFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Irq_Fields.ret' @:: Lens' IrqHandlerExitFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Irq_Fields.maybe'ret' @:: Lens' IrqHandlerExitFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data IrqHandlerExitFtraceEvent
  = IrqHandlerExitFtraceEvent'_constructor {_IrqHandlerExitFtraceEvent'irq :: !(Prelude.Maybe Data.Int.Int32),
                                            _IrqHandlerExitFtraceEvent'ret :: !(Prelude.Maybe Data.Int.Int32),
                                            _IrqHandlerExitFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show IrqHandlerExitFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField IrqHandlerExitFtraceEvent "irq" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IrqHandlerExitFtraceEvent'irq
           (\ x__ y__ -> x__ {_IrqHandlerExitFtraceEvent'irq = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IrqHandlerExitFtraceEvent "maybe'irq" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IrqHandlerExitFtraceEvent'irq
           (\ x__ y__ -> x__ {_IrqHandlerExitFtraceEvent'irq = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IrqHandlerExitFtraceEvent "ret" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IrqHandlerExitFtraceEvent'ret
           (\ x__ y__ -> x__ {_IrqHandlerExitFtraceEvent'ret = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IrqHandlerExitFtraceEvent "maybe'ret" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IrqHandlerExitFtraceEvent'ret
           (\ x__ y__ -> x__ {_IrqHandlerExitFtraceEvent'ret = y__}))
        Prelude.id
instance Data.ProtoLens.Message IrqHandlerExitFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.IrqHandlerExitFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\EMIrqHandlerExitFtraceEvent\DC2\DLE\n\
      \\ETXirq\CAN\SOH \SOH(\ENQR\ETXirq\DC2\DLE\n\
      \\ETXret\CAN\STX \SOH(\ENQR\ETXret"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        irq__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "irq"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'irq")) ::
              Data.ProtoLens.FieldDescriptor IrqHandlerExitFtraceEvent
        ret__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ret"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ret")) ::
              Data.ProtoLens.FieldDescriptor IrqHandlerExitFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, irq__field_descriptor),
           (Data.ProtoLens.Tag 2, ret__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _IrqHandlerExitFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_IrqHandlerExitFtraceEvent'_unknownFields = y__})
  defMessage
    = IrqHandlerExitFtraceEvent'_constructor
        {_IrqHandlerExitFtraceEvent'irq = Prelude.Nothing,
         _IrqHandlerExitFtraceEvent'ret = Prelude.Nothing,
         _IrqHandlerExitFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          IrqHandlerExitFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser IrqHandlerExitFtraceEvent
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
                                       "irq"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"irq") y x)
                        16
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
          (do loop Data.ProtoLens.defMessage) "IrqHandlerExitFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'irq") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ret") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData IrqHandlerExitFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_IrqHandlerExitFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_IrqHandlerExitFtraceEvent'irq x__)
                (Control.DeepSeq.deepseq (_IrqHandlerExitFtraceEvent'ret x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Irq_Fields.vec' @:: Lens' SoftirqEntryFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Irq_Fields.maybe'vec' @:: Lens' SoftirqEntryFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data SoftirqEntryFtraceEvent
  = SoftirqEntryFtraceEvent'_constructor {_SoftirqEntryFtraceEvent'vec :: !(Prelude.Maybe Data.Word.Word32),
                                          _SoftirqEntryFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SoftirqEntryFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SoftirqEntryFtraceEvent "vec" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SoftirqEntryFtraceEvent'vec
           (\ x__ y__ -> x__ {_SoftirqEntryFtraceEvent'vec = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SoftirqEntryFtraceEvent "maybe'vec" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SoftirqEntryFtraceEvent'vec
           (\ x__ y__ -> x__ {_SoftirqEntryFtraceEvent'vec = y__}))
        Prelude.id
instance Data.ProtoLens.Message SoftirqEntryFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.SoftirqEntryFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ETBSoftirqEntryFtraceEvent\DC2\DLE\n\
      \\ETXvec\CAN\SOH \SOH(\rR\ETXvec"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        vec__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vec"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'vec")) ::
              Data.ProtoLens.FieldDescriptor SoftirqEntryFtraceEvent
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, vec__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SoftirqEntryFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_SoftirqEntryFtraceEvent'_unknownFields = y__})
  defMessage
    = SoftirqEntryFtraceEvent'_constructor
        {_SoftirqEntryFtraceEvent'vec = Prelude.Nothing,
         _SoftirqEntryFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SoftirqEntryFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser SoftirqEntryFtraceEvent
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
                                       "vec"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"vec") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SoftirqEntryFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'vec") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData SoftirqEntryFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SoftirqEntryFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq (_SoftirqEntryFtraceEvent'vec x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Irq_Fields.vec' @:: Lens' SoftirqExitFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Irq_Fields.maybe'vec' @:: Lens' SoftirqExitFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data SoftirqExitFtraceEvent
  = SoftirqExitFtraceEvent'_constructor {_SoftirqExitFtraceEvent'vec :: !(Prelude.Maybe Data.Word.Word32),
                                         _SoftirqExitFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SoftirqExitFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SoftirqExitFtraceEvent "vec" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SoftirqExitFtraceEvent'vec
           (\ x__ y__ -> x__ {_SoftirqExitFtraceEvent'vec = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SoftirqExitFtraceEvent "maybe'vec" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SoftirqExitFtraceEvent'vec
           (\ x__ y__ -> x__ {_SoftirqExitFtraceEvent'vec = y__}))
        Prelude.id
instance Data.ProtoLens.Message SoftirqExitFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.SoftirqExitFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SYNSoftirqExitFtraceEvent\DC2\DLE\n\
      \\ETXvec\CAN\SOH \SOH(\rR\ETXvec"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        vec__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vec"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'vec")) ::
              Data.ProtoLens.FieldDescriptor SoftirqExitFtraceEvent
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, vec__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SoftirqExitFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_SoftirqExitFtraceEvent'_unknownFields = y__})
  defMessage
    = SoftirqExitFtraceEvent'_constructor
        {_SoftirqExitFtraceEvent'vec = Prelude.Nothing,
         _SoftirqExitFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SoftirqExitFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser SoftirqExitFtraceEvent
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
                                       "vec"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"vec") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SoftirqExitFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'vec") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData SoftirqExitFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SoftirqExitFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq (_SoftirqExitFtraceEvent'vec x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Irq_Fields.vec' @:: Lens' SoftirqRaiseFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Irq_Fields.maybe'vec' @:: Lens' SoftirqRaiseFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data SoftirqRaiseFtraceEvent
  = SoftirqRaiseFtraceEvent'_constructor {_SoftirqRaiseFtraceEvent'vec :: !(Prelude.Maybe Data.Word.Word32),
                                          _SoftirqRaiseFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SoftirqRaiseFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SoftirqRaiseFtraceEvent "vec" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SoftirqRaiseFtraceEvent'vec
           (\ x__ y__ -> x__ {_SoftirqRaiseFtraceEvent'vec = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SoftirqRaiseFtraceEvent "maybe'vec" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SoftirqRaiseFtraceEvent'vec
           (\ x__ y__ -> x__ {_SoftirqRaiseFtraceEvent'vec = y__}))
        Prelude.id
instance Data.ProtoLens.Message SoftirqRaiseFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.SoftirqRaiseFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ETBSoftirqRaiseFtraceEvent\DC2\DLE\n\
      \\ETXvec\CAN\SOH \SOH(\rR\ETXvec"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        vec__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vec"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'vec")) ::
              Data.ProtoLens.FieldDescriptor SoftirqRaiseFtraceEvent
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, vec__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SoftirqRaiseFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_SoftirqRaiseFtraceEvent'_unknownFields = y__})
  defMessage
    = SoftirqRaiseFtraceEvent'_constructor
        {_SoftirqRaiseFtraceEvent'vec = Prelude.Nothing,
         _SoftirqRaiseFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SoftirqRaiseFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser SoftirqRaiseFtraceEvent
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
                                       "vec"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"vec") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SoftirqRaiseFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'vec") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData SoftirqRaiseFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SoftirqRaiseFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq (_SoftirqRaiseFtraceEvent'vec x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \&protos/perfetto/trace/ftrace/irq.proto\DC2\SIperfetto.protos\"+\n\
    \\ETBSoftirqEntryFtraceEvent\DC2\DLE\n\
    \\ETXvec\CAN\SOH \SOH(\rR\ETXvec\"*\n\
    \\SYNSoftirqExitFtraceEvent\DC2\DLE\n\
    \\ETXvec\CAN\SOH \SOH(\rR\ETXvec\"+\n\
    \\ETBSoftirqRaiseFtraceEvent\DC2\DLE\n\
    \\ETXvec\CAN\SOH \SOH(\rR\ETXvec\"\\\n\
    \\SUBIrqHandlerEntryFtraceEvent\DC2\DLE\n\
    \\ETXirq\CAN\SOH \SOH(\ENQR\ETXirq\DC2\DC2\n\
    \\EOTname\CAN\STX \SOH(\tR\EOTname\DC2\CAN\n\
    \\ahandler\CAN\ETX \SOH(\rR\ahandler\"?\n\
    \\EMIrqHandlerExitFtraceEvent\DC2\DLE\n\
    \\ETXirq\CAN\SOH \SOH(\ENQR\ETXirq\DC2\DLE\n\
    \\ETXret\CAN\STX \SOH(\ENQR\ETXretJ\149\ACK\n\
    \\ACK\DC2\EOT\EOT\NUL\CAN\SOH\n\
    \a\n\
    \\SOH\f\DC2\ETX\EOT\NUL\DC22W Autogenerated by:\n\
    \ ../../src/tools/ftrace_proto_gen/ftrace_proto_gen.cc\n\
    \ Do not edit.\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\ENQ\NUL\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\a\NUL\t\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b\US\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\b\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\b\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\b\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\b\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\b\CAN\EM\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\n\
    \\NUL\f\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\n\
    \\b\RS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\v\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\v\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\v\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\v\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\v\CAN\EM\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT\r\NUL\SI\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\r\b\US\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\SO\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETX\SO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX\SO\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\SO\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\SO\CAN\EM\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOT\DLE\NUL\DC4\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX\DLE\b\"\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX\DC1\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETX\DC1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX\DC1\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX\DC1\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX\DC1\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX\DC2\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\EOT\DC2\ETX\DC2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETX\DC2\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX\DC2\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX\DC2\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETX\DC3\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\EOT\DC2\ETX\DC3\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\ETX\DC3\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETX\DC3\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETX\DC3\FS\GS\n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOT\NAK\NUL\CAN\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX\NAK\b!\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX\SYN\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\EOT\DC2\ETX\SYN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX\SYN\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX\SYN\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX\SYN\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETX\ETB\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\EOT\DC2\ETX\ETB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETX\ETB\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETX\ETB\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETX\ETB\ETB\CAN"