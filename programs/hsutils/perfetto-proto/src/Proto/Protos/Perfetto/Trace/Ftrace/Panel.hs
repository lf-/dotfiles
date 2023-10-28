{- This file was auto-generated from protos/perfetto/trace/ftrace/panel.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Panel (
        DsiCmdFifoStatusFtraceEvent(), DsiRxFtraceEvent(),
        DsiTxFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Panel_Fields.header' @:: Lens' DsiCmdFifoStatusFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Panel_Fields.maybe'header' @:: Lens' DsiCmdFifoStatusFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Panel_Fields.payload' @:: Lens' DsiCmdFifoStatusFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Panel_Fields.maybe'payload' @:: Lens' DsiCmdFifoStatusFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data DsiCmdFifoStatusFtraceEvent
  = DsiCmdFifoStatusFtraceEvent'_constructor {_DsiCmdFifoStatusFtraceEvent'header :: !(Prelude.Maybe Data.Word.Word32),
                                              _DsiCmdFifoStatusFtraceEvent'payload :: !(Prelude.Maybe Data.Word.Word32),
                                              _DsiCmdFifoStatusFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DsiCmdFifoStatusFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DsiCmdFifoStatusFtraceEvent "header" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DsiCmdFifoStatusFtraceEvent'header
           (\ x__ y__ -> x__ {_DsiCmdFifoStatusFtraceEvent'header = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DsiCmdFifoStatusFtraceEvent "maybe'header" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DsiCmdFifoStatusFtraceEvent'header
           (\ x__ y__ -> x__ {_DsiCmdFifoStatusFtraceEvent'header = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DsiCmdFifoStatusFtraceEvent "payload" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DsiCmdFifoStatusFtraceEvent'payload
           (\ x__ y__ -> x__ {_DsiCmdFifoStatusFtraceEvent'payload = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DsiCmdFifoStatusFtraceEvent "maybe'payload" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DsiCmdFifoStatusFtraceEvent'payload
           (\ x__ y__ -> x__ {_DsiCmdFifoStatusFtraceEvent'payload = y__}))
        Prelude.id
instance Data.ProtoLens.Message DsiCmdFifoStatusFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.DsiCmdFifoStatusFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ESCDsiCmdFifoStatusFtraceEvent\DC2\SYN\n\
      \\ACKheader\CAN\SOH \SOH(\rR\ACKheader\DC2\CAN\n\
      \\apayload\CAN\STX \SOH(\rR\apayload"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        header__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "header"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'header")) ::
              Data.ProtoLens.FieldDescriptor DsiCmdFifoStatusFtraceEvent
        payload__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "payload"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'payload")) ::
              Data.ProtoLens.FieldDescriptor DsiCmdFifoStatusFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, header__field_descriptor),
           (Data.ProtoLens.Tag 2, payload__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DsiCmdFifoStatusFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_DsiCmdFifoStatusFtraceEvent'_unknownFields = y__})
  defMessage
    = DsiCmdFifoStatusFtraceEvent'_constructor
        {_DsiCmdFifoStatusFtraceEvent'header = Prelude.Nothing,
         _DsiCmdFifoStatusFtraceEvent'payload = Prelude.Nothing,
         _DsiCmdFifoStatusFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DsiCmdFifoStatusFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser DsiCmdFifoStatusFtraceEvent
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
                                       "header"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"header") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "payload"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"payload") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DsiCmdFifoStatusFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'header") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'payload") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData DsiCmdFifoStatusFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DsiCmdFifoStatusFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DsiCmdFifoStatusFtraceEvent'header x__)
                (Control.DeepSeq.deepseq
                   (_DsiCmdFifoStatusFtraceEvent'payload x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Panel_Fields.cmd' @:: Lens' DsiRxFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Panel_Fields.maybe'cmd' @:: Lens' DsiRxFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Panel_Fields.rxBuf' @:: Lens' DsiRxFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Panel_Fields.maybe'rxBuf' @:: Lens' DsiRxFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data DsiRxFtraceEvent
  = DsiRxFtraceEvent'_constructor {_DsiRxFtraceEvent'cmd :: !(Prelude.Maybe Data.Word.Word32),
                                   _DsiRxFtraceEvent'rxBuf :: !(Prelude.Maybe Data.Word.Word32),
                                   _DsiRxFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DsiRxFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DsiRxFtraceEvent "cmd" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DsiRxFtraceEvent'cmd
           (\ x__ y__ -> x__ {_DsiRxFtraceEvent'cmd = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DsiRxFtraceEvent "maybe'cmd" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DsiRxFtraceEvent'cmd
           (\ x__ y__ -> x__ {_DsiRxFtraceEvent'cmd = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DsiRxFtraceEvent "rxBuf" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DsiRxFtraceEvent'rxBuf
           (\ x__ y__ -> x__ {_DsiRxFtraceEvent'rxBuf = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DsiRxFtraceEvent "maybe'rxBuf" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DsiRxFtraceEvent'rxBuf
           (\ x__ y__ -> x__ {_DsiRxFtraceEvent'rxBuf = y__}))
        Prelude.id
instance Data.ProtoLens.Message DsiRxFtraceEvent where
  messageName _ = Data.Text.pack "perfetto.protos.DsiRxFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\DLEDsiRxFtraceEvent\DC2\DLE\n\
      \\ETXcmd\CAN\SOH \SOH(\rR\ETXcmd\DC2\NAK\n\
      \\ACKrx_buf\CAN\STX \SOH(\rR\ENQrxBuf"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        cmd__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cmd"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cmd")) ::
              Data.ProtoLens.FieldDescriptor DsiRxFtraceEvent
        rxBuf__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rx_buf"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rxBuf")) ::
              Data.ProtoLens.FieldDescriptor DsiRxFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, cmd__field_descriptor),
           (Data.ProtoLens.Tag 2, rxBuf__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DsiRxFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_DsiRxFtraceEvent'_unknownFields = y__})
  defMessage
    = DsiRxFtraceEvent'_constructor
        {_DsiRxFtraceEvent'cmd = Prelude.Nothing,
         _DsiRxFtraceEvent'rxBuf = Prelude.Nothing,
         _DsiRxFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DsiRxFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser DsiRxFtraceEvent
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
                                       "cmd"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cmd") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "rx_buf"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"rxBuf") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DsiRxFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cmd") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'rxBuf") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData DsiRxFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DsiRxFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DsiRxFtraceEvent'cmd x__)
                (Control.DeepSeq.deepseq (_DsiRxFtraceEvent'rxBuf x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Panel_Fields.last' @:: Lens' DsiTxFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Panel_Fields.maybe'last' @:: Lens' DsiTxFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Panel_Fields.txBuf' @:: Lens' DsiTxFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Panel_Fields.maybe'txBuf' @:: Lens' DsiTxFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Panel_Fields.type'' @:: Lens' DsiTxFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Panel_Fields.maybe'type'' @:: Lens' DsiTxFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data DsiTxFtraceEvent
  = DsiTxFtraceEvent'_constructor {_DsiTxFtraceEvent'last :: !(Prelude.Maybe Data.Word.Word32),
                                   _DsiTxFtraceEvent'txBuf :: !(Prelude.Maybe Data.Word.Word32),
                                   _DsiTxFtraceEvent'type' :: !(Prelude.Maybe Data.Word.Word32),
                                   _DsiTxFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DsiTxFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DsiTxFtraceEvent "last" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DsiTxFtraceEvent'last
           (\ x__ y__ -> x__ {_DsiTxFtraceEvent'last = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DsiTxFtraceEvent "maybe'last" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DsiTxFtraceEvent'last
           (\ x__ y__ -> x__ {_DsiTxFtraceEvent'last = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DsiTxFtraceEvent "txBuf" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DsiTxFtraceEvent'txBuf
           (\ x__ y__ -> x__ {_DsiTxFtraceEvent'txBuf = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DsiTxFtraceEvent "maybe'txBuf" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DsiTxFtraceEvent'txBuf
           (\ x__ y__ -> x__ {_DsiTxFtraceEvent'txBuf = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DsiTxFtraceEvent "type'" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DsiTxFtraceEvent'type'
           (\ x__ y__ -> x__ {_DsiTxFtraceEvent'type' = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DsiTxFtraceEvent "maybe'type'" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DsiTxFtraceEvent'type'
           (\ x__ y__ -> x__ {_DsiTxFtraceEvent'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Message DsiTxFtraceEvent where
  messageName _ = Data.Text.pack "perfetto.protos.DsiTxFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\DLEDsiTxFtraceEvent\DC2\DC2\n\
      \\EOTlast\CAN\SOH \SOH(\rR\EOTlast\DC2\NAK\n\
      \\ACKtx_buf\CAN\STX \SOH(\rR\ENQtxBuf\DC2\DC2\n\
      \\EOTtype\CAN\ETX \SOH(\rR\EOTtype"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        last__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'last")) ::
              Data.ProtoLens.FieldDescriptor DsiTxFtraceEvent
        txBuf__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tx_buf"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'txBuf")) ::
              Data.ProtoLens.FieldDescriptor DsiTxFtraceEvent
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'type'")) ::
              Data.ProtoLens.FieldDescriptor DsiTxFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, last__field_descriptor),
           (Data.ProtoLens.Tag 2, txBuf__field_descriptor),
           (Data.ProtoLens.Tag 3, type'__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DsiTxFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_DsiTxFtraceEvent'_unknownFields = y__})
  defMessage
    = DsiTxFtraceEvent'_constructor
        {_DsiTxFtraceEvent'last = Prelude.Nothing,
         _DsiTxFtraceEvent'txBuf = Prelude.Nothing,
         _DsiTxFtraceEvent'type' = Prelude.Nothing,
         _DsiTxFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DsiTxFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser DsiTxFtraceEvent
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
                                       "last"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"last") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "tx_buf"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"txBuf") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DsiTxFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'last") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'txBuf") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'type'") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData DsiTxFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DsiTxFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DsiTxFtraceEvent'last x__)
                (Control.DeepSeq.deepseq
                   (_DsiTxFtraceEvent'txBuf x__)
                   (Control.DeepSeq.deepseq (_DsiTxFtraceEvent'type' x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \(protos/perfetto/trace/ftrace/panel.proto\DC2\SIperfetto.protos\"O\n\
    \\ESCDsiCmdFifoStatusFtraceEvent\DC2\SYN\n\
    \\ACKheader\CAN\SOH \SOH(\rR\ACKheader\DC2\CAN\n\
    \\apayload\CAN\STX \SOH(\rR\apayload\";\n\
    \\DLEDsiRxFtraceEvent\DC2\DLE\n\
    \\ETXcmd\CAN\SOH \SOH(\rR\ETXcmd\DC2\NAK\n\
    \\ACKrx_buf\CAN\STX \SOH(\rR\ENQrxBuf\"Q\n\
    \\DLEDsiTxFtraceEvent\DC2\DC2\n\
    \\EOTlast\CAN\SOH \SOH(\rR\EOTlast\DC2\NAK\n\
    \\ACKtx_buf\CAN\STX \SOH(\rR\ENQtxBuf\DC2\DC2\n\
    \\EOTtype\CAN\ETX \SOH(\rR\EOTtypeJ\160\ENQ\n\
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
    \\STX\EOT\NUL\DC2\EOT\a\NUL\n\
    \\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b#\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\b\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\b\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\b\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\b\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\b\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\t\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\t\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\t\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\t\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\t\FS\GS\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\v\NUL\SO\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\v\b\CAN\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\f\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\f\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\f\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\f\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\f\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\r\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX\r\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\r\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\r\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\r\ESC\FS\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT\SI\NUL\DC3\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\SI\b\CAN\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\DLE\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETX\DLE\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX\DLE\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\DLE\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\DLE\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX\DC1\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETX\DC1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX\DC1\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX\DC1\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX\DC1\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX\DC2\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\EOT\DC2\ETX\DC2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETX\DC2\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX\DC2\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX\DC2\EM\SUB"