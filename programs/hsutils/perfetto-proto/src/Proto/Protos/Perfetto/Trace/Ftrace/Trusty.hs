{- This file was auto-generated from protos/perfetto/trace/ftrace/trusty.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Trusty (
        TrustyEnqueueNopFtraceEvent(), TrustyIpcConnectEndFtraceEvent(),
        TrustyIpcConnectFtraceEvent(), TrustyIpcHandleEventFtraceEvent(),
        TrustyIpcPollFtraceEvent(), TrustyIpcReadEndFtraceEvent(),
        TrustyIpcReadFtraceEvent(), TrustyIpcRxFtraceEvent(),
        TrustyIpcWriteFtraceEvent(), TrustyIrqFtraceEvent(),
        TrustyReclaimMemoryDoneFtraceEvent(),
        TrustyReclaimMemoryFtraceEvent(),
        TrustyShareMemoryDoneFtraceEvent(), TrustyShareMemoryFtraceEvent(),
        TrustySmcDoneFtraceEvent(), TrustySmcFtraceEvent(),
        TrustyStdCall32DoneFtraceEvent(), TrustyStdCall32FtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.arg1' @:: Lens' TrustyEnqueueNopFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'arg1' @:: Lens' TrustyEnqueueNopFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.arg2' @:: Lens' TrustyEnqueueNopFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'arg2' @:: Lens' TrustyEnqueueNopFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.arg3' @:: Lens' TrustyEnqueueNopFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'arg3' @:: Lens' TrustyEnqueueNopFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data TrustyEnqueueNopFtraceEvent
  = TrustyEnqueueNopFtraceEvent'_constructor {_TrustyEnqueueNopFtraceEvent'arg1 :: !(Prelude.Maybe Data.Word.Word32),
                                              _TrustyEnqueueNopFtraceEvent'arg2 :: !(Prelude.Maybe Data.Word.Word32),
                                              _TrustyEnqueueNopFtraceEvent'arg3 :: !(Prelude.Maybe Data.Word.Word32),
                                              _TrustyEnqueueNopFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TrustyEnqueueNopFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TrustyEnqueueNopFtraceEvent "arg1" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyEnqueueNopFtraceEvent'arg1
           (\ x__ y__ -> x__ {_TrustyEnqueueNopFtraceEvent'arg1 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyEnqueueNopFtraceEvent "maybe'arg1" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyEnqueueNopFtraceEvent'arg1
           (\ x__ y__ -> x__ {_TrustyEnqueueNopFtraceEvent'arg1 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrustyEnqueueNopFtraceEvent "arg2" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyEnqueueNopFtraceEvent'arg2
           (\ x__ y__ -> x__ {_TrustyEnqueueNopFtraceEvent'arg2 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyEnqueueNopFtraceEvent "maybe'arg2" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyEnqueueNopFtraceEvent'arg2
           (\ x__ y__ -> x__ {_TrustyEnqueueNopFtraceEvent'arg2 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrustyEnqueueNopFtraceEvent "arg3" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyEnqueueNopFtraceEvent'arg3
           (\ x__ y__ -> x__ {_TrustyEnqueueNopFtraceEvent'arg3 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyEnqueueNopFtraceEvent "maybe'arg3" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyEnqueueNopFtraceEvent'arg3
           (\ x__ y__ -> x__ {_TrustyEnqueueNopFtraceEvent'arg3 = y__}))
        Prelude.id
instance Data.ProtoLens.Message TrustyEnqueueNopFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.TrustyEnqueueNopFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ESCTrustyEnqueueNopFtraceEvent\DC2\DC2\n\
      \\EOTarg1\CAN\SOH \SOH(\rR\EOTarg1\DC2\DC2\n\
      \\EOTarg2\CAN\STX \SOH(\rR\EOTarg2\DC2\DC2\n\
      \\EOTarg3\CAN\ETX \SOH(\rR\EOTarg3"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        arg1__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "arg1"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'arg1")) ::
              Data.ProtoLens.FieldDescriptor TrustyEnqueueNopFtraceEvent
        arg2__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "arg2"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'arg2")) ::
              Data.ProtoLens.FieldDescriptor TrustyEnqueueNopFtraceEvent
        arg3__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "arg3"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'arg3")) ::
              Data.ProtoLens.FieldDescriptor TrustyEnqueueNopFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, arg1__field_descriptor),
           (Data.ProtoLens.Tag 2, arg2__field_descriptor),
           (Data.ProtoLens.Tag 3, arg3__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TrustyEnqueueNopFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_TrustyEnqueueNopFtraceEvent'_unknownFields = y__})
  defMessage
    = TrustyEnqueueNopFtraceEvent'_constructor
        {_TrustyEnqueueNopFtraceEvent'arg1 = Prelude.Nothing,
         _TrustyEnqueueNopFtraceEvent'arg2 = Prelude.Nothing,
         _TrustyEnqueueNopFtraceEvent'arg3 = Prelude.Nothing,
         _TrustyEnqueueNopFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TrustyEnqueueNopFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser TrustyEnqueueNopFtraceEvent
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
                                       "arg1"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"arg1") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "arg2"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"arg2") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "arg3"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"arg3") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TrustyEnqueueNopFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'arg1") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'arg2") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'arg3") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData TrustyEnqueueNopFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TrustyEnqueueNopFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TrustyEnqueueNopFtraceEvent'arg1 x__)
                (Control.DeepSeq.deepseq
                   (_TrustyEnqueueNopFtraceEvent'arg2 x__)
                   (Control.DeepSeq.deepseq
                      (_TrustyEnqueueNopFtraceEvent'arg3 x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.chan' @:: Lens' TrustyIpcConnectEndFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'chan' @:: Lens' TrustyIpcConnectEndFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.err' @:: Lens' TrustyIpcConnectEndFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'err' @:: Lens' TrustyIpcConnectEndFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.state' @:: Lens' TrustyIpcConnectEndFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'state' @:: Lens' TrustyIpcConnectEndFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data TrustyIpcConnectEndFtraceEvent
  = TrustyIpcConnectEndFtraceEvent'_constructor {_TrustyIpcConnectEndFtraceEvent'chan :: !(Prelude.Maybe Data.Word.Word32),
                                                 _TrustyIpcConnectEndFtraceEvent'err :: !(Prelude.Maybe Data.Int.Int32),
                                                 _TrustyIpcConnectEndFtraceEvent'state :: !(Prelude.Maybe Data.Int.Int32),
                                                 _TrustyIpcConnectEndFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TrustyIpcConnectEndFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TrustyIpcConnectEndFtraceEvent "chan" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcConnectEndFtraceEvent'chan
           (\ x__ y__ -> x__ {_TrustyIpcConnectEndFtraceEvent'chan = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyIpcConnectEndFtraceEvent "maybe'chan" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcConnectEndFtraceEvent'chan
           (\ x__ y__ -> x__ {_TrustyIpcConnectEndFtraceEvent'chan = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrustyIpcConnectEndFtraceEvent "err" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcConnectEndFtraceEvent'err
           (\ x__ y__ -> x__ {_TrustyIpcConnectEndFtraceEvent'err = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyIpcConnectEndFtraceEvent "maybe'err" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcConnectEndFtraceEvent'err
           (\ x__ y__ -> x__ {_TrustyIpcConnectEndFtraceEvent'err = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrustyIpcConnectEndFtraceEvent "state" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcConnectEndFtraceEvent'state
           (\ x__ y__ -> x__ {_TrustyIpcConnectEndFtraceEvent'state = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyIpcConnectEndFtraceEvent "maybe'state" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcConnectEndFtraceEvent'state
           (\ x__ y__ -> x__ {_TrustyIpcConnectEndFtraceEvent'state = y__}))
        Prelude.id
instance Data.ProtoLens.Message TrustyIpcConnectEndFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.TrustyIpcConnectEndFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\RSTrustyIpcConnectEndFtraceEvent\DC2\DC2\n\
      \\EOTchan\CAN\SOH \SOH(\rR\EOTchan\DC2\DLE\n\
      \\ETXerr\CAN\STX \SOH(\ENQR\ETXerr\DC2\DC4\n\
      \\ENQstate\CAN\ETX \SOH(\ENQR\ENQstate"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        chan__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "chan"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'chan")) ::
              Data.ProtoLens.FieldDescriptor TrustyIpcConnectEndFtraceEvent
        err__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "err"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'err")) ::
              Data.ProtoLens.FieldDescriptor TrustyIpcConnectEndFtraceEvent
        state__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'state")) ::
              Data.ProtoLens.FieldDescriptor TrustyIpcConnectEndFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, chan__field_descriptor),
           (Data.ProtoLens.Tag 2, err__field_descriptor),
           (Data.ProtoLens.Tag 3, state__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TrustyIpcConnectEndFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_TrustyIpcConnectEndFtraceEvent'_unknownFields = y__})
  defMessage
    = TrustyIpcConnectEndFtraceEvent'_constructor
        {_TrustyIpcConnectEndFtraceEvent'chan = Prelude.Nothing,
         _TrustyIpcConnectEndFtraceEvent'err = Prelude.Nothing,
         _TrustyIpcConnectEndFtraceEvent'state = Prelude.Nothing,
         _TrustyIpcConnectEndFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TrustyIpcConnectEndFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser TrustyIpcConnectEndFtraceEvent
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
                                       "chan"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"chan") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "err"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"err") y x)
                        24
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
          (do loop Data.ProtoLens.defMessage)
          "TrustyIpcConnectEndFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'chan") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'err") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'state") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData TrustyIpcConnectEndFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TrustyIpcConnectEndFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TrustyIpcConnectEndFtraceEvent'chan x__)
                (Control.DeepSeq.deepseq
                   (_TrustyIpcConnectEndFtraceEvent'err x__)
                   (Control.DeepSeq.deepseq
                      (_TrustyIpcConnectEndFtraceEvent'state x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.chan' @:: Lens' TrustyIpcConnectFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'chan' @:: Lens' TrustyIpcConnectFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.port' @:: Lens' TrustyIpcConnectFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'port' @:: Lens' TrustyIpcConnectFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.state' @:: Lens' TrustyIpcConnectFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'state' @:: Lens' TrustyIpcConnectFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data TrustyIpcConnectFtraceEvent
  = TrustyIpcConnectFtraceEvent'_constructor {_TrustyIpcConnectFtraceEvent'chan :: !(Prelude.Maybe Data.Word.Word32),
                                              _TrustyIpcConnectFtraceEvent'port :: !(Prelude.Maybe Data.Text.Text),
                                              _TrustyIpcConnectFtraceEvent'state :: !(Prelude.Maybe Data.Int.Int32),
                                              _TrustyIpcConnectFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TrustyIpcConnectFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TrustyIpcConnectFtraceEvent "chan" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcConnectFtraceEvent'chan
           (\ x__ y__ -> x__ {_TrustyIpcConnectFtraceEvent'chan = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyIpcConnectFtraceEvent "maybe'chan" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcConnectFtraceEvent'chan
           (\ x__ y__ -> x__ {_TrustyIpcConnectFtraceEvent'chan = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrustyIpcConnectFtraceEvent "port" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcConnectFtraceEvent'port
           (\ x__ y__ -> x__ {_TrustyIpcConnectFtraceEvent'port = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyIpcConnectFtraceEvent "maybe'port" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcConnectFtraceEvent'port
           (\ x__ y__ -> x__ {_TrustyIpcConnectFtraceEvent'port = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrustyIpcConnectFtraceEvent "state" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcConnectFtraceEvent'state
           (\ x__ y__ -> x__ {_TrustyIpcConnectFtraceEvent'state = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyIpcConnectFtraceEvent "maybe'state" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcConnectFtraceEvent'state
           (\ x__ y__ -> x__ {_TrustyIpcConnectFtraceEvent'state = y__}))
        Prelude.id
instance Data.ProtoLens.Message TrustyIpcConnectFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.TrustyIpcConnectFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ESCTrustyIpcConnectFtraceEvent\DC2\DC2\n\
      \\EOTchan\CAN\SOH \SOH(\rR\EOTchan\DC2\DC2\n\
      \\EOTport\CAN\STX \SOH(\tR\EOTport\DC2\DC4\n\
      \\ENQstate\CAN\ETX \SOH(\ENQR\ENQstate"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        chan__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "chan"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'chan")) ::
              Data.ProtoLens.FieldDescriptor TrustyIpcConnectFtraceEvent
        port__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "port"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'port")) ::
              Data.ProtoLens.FieldDescriptor TrustyIpcConnectFtraceEvent
        state__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'state")) ::
              Data.ProtoLens.FieldDescriptor TrustyIpcConnectFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, chan__field_descriptor),
           (Data.ProtoLens.Tag 2, port__field_descriptor),
           (Data.ProtoLens.Tag 3, state__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TrustyIpcConnectFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_TrustyIpcConnectFtraceEvent'_unknownFields = y__})
  defMessage
    = TrustyIpcConnectFtraceEvent'_constructor
        {_TrustyIpcConnectFtraceEvent'chan = Prelude.Nothing,
         _TrustyIpcConnectFtraceEvent'port = Prelude.Nothing,
         _TrustyIpcConnectFtraceEvent'state = Prelude.Nothing,
         _TrustyIpcConnectFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TrustyIpcConnectFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser TrustyIpcConnectFtraceEvent
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
                                       "chan"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"chan") y x)
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
                                       "port"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"port") y x)
                        24
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
          (do loop Data.ProtoLens.defMessage) "TrustyIpcConnectFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'chan") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'port") _x
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'state") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData TrustyIpcConnectFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TrustyIpcConnectFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TrustyIpcConnectFtraceEvent'chan x__)
                (Control.DeepSeq.deepseq
                   (_TrustyIpcConnectFtraceEvent'port x__)
                   (Control.DeepSeq.deepseq
                      (_TrustyIpcConnectFtraceEvent'state x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.chan' @:: Lens' TrustyIpcHandleEventFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'chan' @:: Lens' TrustyIpcHandleEventFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.eventId' @:: Lens' TrustyIpcHandleEventFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'eventId' @:: Lens' TrustyIpcHandleEventFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.srvName' @:: Lens' TrustyIpcHandleEventFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'srvName' @:: Lens' TrustyIpcHandleEventFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data TrustyIpcHandleEventFtraceEvent
  = TrustyIpcHandleEventFtraceEvent'_constructor {_TrustyIpcHandleEventFtraceEvent'chan :: !(Prelude.Maybe Data.Word.Word32),
                                                  _TrustyIpcHandleEventFtraceEvent'eventId :: !(Prelude.Maybe Data.Word.Word32),
                                                  _TrustyIpcHandleEventFtraceEvent'srvName :: !(Prelude.Maybe Data.Text.Text),
                                                  _TrustyIpcHandleEventFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TrustyIpcHandleEventFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TrustyIpcHandleEventFtraceEvent "chan" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcHandleEventFtraceEvent'chan
           (\ x__ y__ -> x__ {_TrustyIpcHandleEventFtraceEvent'chan = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyIpcHandleEventFtraceEvent "maybe'chan" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcHandleEventFtraceEvent'chan
           (\ x__ y__ -> x__ {_TrustyIpcHandleEventFtraceEvent'chan = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrustyIpcHandleEventFtraceEvent "eventId" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcHandleEventFtraceEvent'eventId
           (\ x__ y__
              -> x__ {_TrustyIpcHandleEventFtraceEvent'eventId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyIpcHandleEventFtraceEvent "maybe'eventId" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcHandleEventFtraceEvent'eventId
           (\ x__ y__
              -> x__ {_TrustyIpcHandleEventFtraceEvent'eventId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrustyIpcHandleEventFtraceEvent "srvName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcHandleEventFtraceEvent'srvName
           (\ x__ y__
              -> x__ {_TrustyIpcHandleEventFtraceEvent'srvName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyIpcHandleEventFtraceEvent "maybe'srvName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcHandleEventFtraceEvent'srvName
           (\ x__ y__
              -> x__ {_TrustyIpcHandleEventFtraceEvent'srvName = y__}))
        Prelude.id
instance Data.ProtoLens.Message TrustyIpcHandleEventFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.TrustyIpcHandleEventFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\USTrustyIpcHandleEventFtraceEvent\DC2\DC2\n\
      \\EOTchan\CAN\SOH \SOH(\rR\EOTchan\DC2\EM\n\
      \\bevent_id\CAN\STX \SOH(\rR\aeventId\DC2\EM\n\
      \\bsrv_name\CAN\ETX \SOH(\tR\asrvName"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        chan__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "chan"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'chan")) ::
              Data.ProtoLens.FieldDescriptor TrustyIpcHandleEventFtraceEvent
        eventId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "event_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'eventId")) ::
              Data.ProtoLens.FieldDescriptor TrustyIpcHandleEventFtraceEvent
        srvName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "srv_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'srvName")) ::
              Data.ProtoLens.FieldDescriptor TrustyIpcHandleEventFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, chan__field_descriptor),
           (Data.ProtoLens.Tag 2, eventId__field_descriptor),
           (Data.ProtoLens.Tag 3, srvName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TrustyIpcHandleEventFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_TrustyIpcHandleEventFtraceEvent'_unknownFields = y__})
  defMessage
    = TrustyIpcHandleEventFtraceEvent'_constructor
        {_TrustyIpcHandleEventFtraceEvent'chan = Prelude.Nothing,
         _TrustyIpcHandleEventFtraceEvent'eventId = Prelude.Nothing,
         _TrustyIpcHandleEventFtraceEvent'srvName = Prelude.Nothing,
         _TrustyIpcHandleEventFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TrustyIpcHandleEventFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser TrustyIpcHandleEventFtraceEvent
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
                                       "chan"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"chan") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "event_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"eventId") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "srv_name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"srvName") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "TrustyIpcHandleEventFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'chan") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'eventId") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'srvName") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.Text.Encoding.encodeUtf8 _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData TrustyIpcHandleEventFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TrustyIpcHandleEventFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TrustyIpcHandleEventFtraceEvent'chan x__)
                (Control.DeepSeq.deepseq
                   (_TrustyIpcHandleEventFtraceEvent'eventId x__)
                   (Control.DeepSeq.deepseq
                      (_TrustyIpcHandleEventFtraceEvent'srvName x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.chan' @:: Lens' TrustyIpcPollFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'chan' @:: Lens' TrustyIpcPollFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.pollMask' @:: Lens' TrustyIpcPollFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'pollMask' @:: Lens' TrustyIpcPollFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.srvName' @:: Lens' TrustyIpcPollFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'srvName' @:: Lens' TrustyIpcPollFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data TrustyIpcPollFtraceEvent
  = TrustyIpcPollFtraceEvent'_constructor {_TrustyIpcPollFtraceEvent'chan :: !(Prelude.Maybe Data.Word.Word32),
                                           _TrustyIpcPollFtraceEvent'pollMask :: !(Prelude.Maybe Data.Word.Word32),
                                           _TrustyIpcPollFtraceEvent'srvName :: !(Prelude.Maybe Data.Text.Text),
                                           _TrustyIpcPollFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TrustyIpcPollFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TrustyIpcPollFtraceEvent "chan" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcPollFtraceEvent'chan
           (\ x__ y__ -> x__ {_TrustyIpcPollFtraceEvent'chan = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyIpcPollFtraceEvent "maybe'chan" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcPollFtraceEvent'chan
           (\ x__ y__ -> x__ {_TrustyIpcPollFtraceEvent'chan = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrustyIpcPollFtraceEvent "pollMask" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcPollFtraceEvent'pollMask
           (\ x__ y__ -> x__ {_TrustyIpcPollFtraceEvent'pollMask = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyIpcPollFtraceEvent "maybe'pollMask" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcPollFtraceEvent'pollMask
           (\ x__ y__ -> x__ {_TrustyIpcPollFtraceEvent'pollMask = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrustyIpcPollFtraceEvent "srvName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcPollFtraceEvent'srvName
           (\ x__ y__ -> x__ {_TrustyIpcPollFtraceEvent'srvName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyIpcPollFtraceEvent "maybe'srvName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcPollFtraceEvent'srvName
           (\ x__ y__ -> x__ {_TrustyIpcPollFtraceEvent'srvName = y__}))
        Prelude.id
instance Data.ProtoLens.Message TrustyIpcPollFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.TrustyIpcPollFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\CANTrustyIpcPollFtraceEvent\DC2\DC2\n\
      \\EOTchan\CAN\SOH \SOH(\rR\EOTchan\DC2\ESC\n\
      \\tpoll_mask\CAN\STX \SOH(\rR\bpollMask\DC2\EM\n\
      \\bsrv_name\CAN\ETX \SOH(\tR\asrvName"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        chan__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "chan"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'chan")) ::
              Data.ProtoLens.FieldDescriptor TrustyIpcPollFtraceEvent
        pollMask__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "poll_mask"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pollMask")) ::
              Data.ProtoLens.FieldDescriptor TrustyIpcPollFtraceEvent
        srvName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "srv_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'srvName")) ::
              Data.ProtoLens.FieldDescriptor TrustyIpcPollFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, chan__field_descriptor),
           (Data.ProtoLens.Tag 2, pollMask__field_descriptor),
           (Data.ProtoLens.Tag 3, srvName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TrustyIpcPollFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_TrustyIpcPollFtraceEvent'_unknownFields = y__})
  defMessage
    = TrustyIpcPollFtraceEvent'_constructor
        {_TrustyIpcPollFtraceEvent'chan = Prelude.Nothing,
         _TrustyIpcPollFtraceEvent'pollMask = Prelude.Nothing,
         _TrustyIpcPollFtraceEvent'srvName = Prelude.Nothing,
         _TrustyIpcPollFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TrustyIpcPollFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser TrustyIpcPollFtraceEvent
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
                                       "chan"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"chan") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "poll_mask"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pollMask") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "srv_name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"srvName") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TrustyIpcPollFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'chan") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pollMask") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'srvName") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.Text.Encoding.encodeUtf8 _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData TrustyIpcPollFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TrustyIpcPollFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TrustyIpcPollFtraceEvent'chan x__)
                (Control.DeepSeq.deepseq
                   (_TrustyIpcPollFtraceEvent'pollMask x__)
                   (Control.DeepSeq.deepseq
                      (_TrustyIpcPollFtraceEvent'srvName x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.bufId' @:: Lens' TrustyIpcReadEndFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'bufId' @:: Lens' TrustyIpcReadEndFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.chan' @:: Lens' TrustyIpcReadEndFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'chan' @:: Lens' TrustyIpcReadEndFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.lenOrErr' @:: Lens' TrustyIpcReadEndFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'lenOrErr' @:: Lens' TrustyIpcReadEndFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.shmCnt' @:: Lens' TrustyIpcReadEndFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'shmCnt' @:: Lens' TrustyIpcReadEndFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.srvName' @:: Lens' TrustyIpcReadEndFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'srvName' @:: Lens' TrustyIpcReadEndFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data TrustyIpcReadEndFtraceEvent
  = TrustyIpcReadEndFtraceEvent'_constructor {_TrustyIpcReadEndFtraceEvent'bufId :: !(Prelude.Maybe Data.Word.Word64),
                                              _TrustyIpcReadEndFtraceEvent'chan :: !(Prelude.Maybe Data.Word.Word32),
                                              _TrustyIpcReadEndFtraceEvent'lenOrErr :: !(Prelude.Maybe Data.Int.Int32),
                                              _TrustyIpcReadEndFtraceEvent'shmCnt :: !(Prelude.Maybe Data.Word.Word64),
                                              _TrustyIpcReadEndFtraceEvent'srvName :: !(Prelude.Maybe Data.Text.Text),
                                              _TrustyIpcReadEndFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TrustyIpcReadEndFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TrustyIpcReadEndFtraceEvent "bufId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcReadEndFtraceEvent'bufId
           (\ x__ y__ -> x__ {_TrustyIpcReadEndFtraceEvent'bufId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyIpcReadEndFtraceEvent "maybe'bufId" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcReadEndFtraceEvent'bufId
           (\ x__ y__ -> x__ {_TrustyIpcReadEndFtraceEvent'bufId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrustyIpcReadEndFtraceEvent "chan" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcReadEndFtraceEvent'chan
           (\ x__ y__ -> x__ {_TrustyIpcReadEndFtraceEvent'chan = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyIpcReadEndFtraceEvent "maybe'chan" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcReadEndFtraceEvent'chan
           (\ x__ y__ -> x__ {_TrustyIpcReadEndFtraceEvent'chan = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrustyIpcReadEndFtraceEvent "lenOrErr" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcReadEndFtraceEvent'lenOrErr
           (\ x__ y__ -> x__ {_TrustyIpcReadEndFtraceEvent'lenOrErr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyIpcReadEndFtraceEvent "maybe'lenOrErr" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcReadEndFtraceEvent'lenOrErr
           (\ x__ y__ -> x__ {_TrustyIpcReadEndFtraceEvent'lenOrErr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrustyIpcReadEndFtraceEvent "shmCnt" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcReadEndFtraceEvent'shmCnt
           (\ x__ y__ -> x__ {_TrustyIpcReadEndFtraceEvent'shmCnt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyIpcReadEndFtraceEvent "maybe'shmCnt" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcReadEndFtraceEvent'shmCnt
           (\ x__ y__ -> x__ {_TrustyIpcReadEndFtraceEvent'shmCnt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrustyIpcReadEndFtraceEvent "srvName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcReadEndFtraceEvent'srvName
           (\ x__ y__ -> x__ {_TrustyIpcReadEndFtraceEvent'srvName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyIpcReadEndFtraceEvent "maybe'srvName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcReadEndFtraceEvent'srvName
           (\ x__ y__ -> x__ {_TrustyIpcReadEndFtraceEvent'srvName = y__}))
        Prelude.id
instance Data.ProtoLens.Message TrustyIpcReadEndFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.TrustyIpcReadEndFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ESCTrustyIpcReadEndFtraceEvent\DC2\NAK\n\
      \\ACKbuf_id\CAN\SOH \SOH(\EOTR\ENQbufId\DC2\DC2\n\
      \\EOTchan\CAN\STX \SOH(\rR\EOTchan\DC2\FS\n\
      \\n\
      \len_or_err\CAN\ETX \SOH(\ENQR\blenOrErr\DC2\ETB\n\
      \\ashm_cnt\CAN\EOT \SOH(\EOTR\ACKshmCnt\DC2\EM\n\
      \\bsrv_name\CAN\ENQ \SOH(\tR\asrvName"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        bufId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "buf_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bufId")) ::
              Data.ProtoLens.FieldDescriptor TrustyIpcReadEndFtraceEvent
        chan__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "chan"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'chan")) ::
              Data.ProtoLens.FieldDescriptor TrustyIpcReadEndFtraceEvent
        lenOrErr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "len_or_err"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lenOrErr")) ::
              Data.ProtoLens.FieldDescriptor TrustyIpcReadEndFtraceEvent
        shmCnt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "shm_cnt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'shmCnt")) ::
              Data.ProtoLens.FieldDescriptor TrustyIpcReadEndFtraceEvent
        srvName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "srv_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'srvName")) ::
              Data.ProtoLens.FieldDescriptor TrustyIpcReadEndFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, bufId__field_descriptor),
           (Data.ProtoLens.Tag 2, chan__field_descriptor),
           (Data.ProtoLens.Tag 3, lenOrErr__field_descriptor),
           (Data.ProtoLens.Tag 4, shmCnt__field_descriptor),
           (Data.ProtoLens.Tag 5, srvName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TrustyIpcReadEndFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_TrustyIpcReadEndFtraceEvent'_unknownFields = y__})
  defMessage
    = TrustyIpcReadEndFtraceEvent'_constructor
        {_TrustyIpcReadEndFtraceEvent'bufId = Prelude.Nothing,
         _TrustyIpcReadEndFtraceEvent'chan = Prelude.Nothing,
         _TrustyIpcReadEndFtraceEvent'lenOrErr = Prelude.Nothing,
         _TrustyIpcReadEndFtraceEvent'shmCnt = Prelude.Nothing,
         _TrustyIpcReadEndFtraceEvent'srvName = Prelude.Nothing,
         _TrustyIpcReadEndFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TrustyIpcReadEndFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser TrustyIpcReadEndFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "buf_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"bufId") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "chan"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"chan") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "len_or_err"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lenOrErr") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "shm_cnt"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"shmCnt") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "srv_name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"srvName") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TrustyIpcReadEndFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'bufId") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'chan") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'lenOrErr") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'shmCnt") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'srvName") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.Text.Encoding.encodeUtf8 _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData TrustyIpcReadEndFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TrustyIpcReadEndFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TrustyIpcReadEndFtraceEvent'bufId x__)
                (Control.DeepSeq.deepseq
                   (_TrustyIpcReadEndFtraceEvent'chan x__)
                   (Control.DeepSeq.deepseq
                      (_TrustyIpcReadEndFtraceEvent'lenOrErr x__)
                      (Control.DeepSeq.deepseq
                         (_TrustyIpcReadEndFtraceEvent'shmCnt x__)
                         (Control.DeepSeq.deepseq
                            (_TrustyIpcReadEndFtraceEvent'srvName x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.chan' @:: Lens' TrustyIpcReadFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'chan' @:: Lens' TrustyIpcReadFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.srvName' @:: Lens' TrustyIpcReadFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'srvName' @:: Lens' TrustyIpcReadFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data TrustyIpcReadFtraceEvent
  = TrustyIpcReadFtraceEvent'_constructor {_TrustyIpcReadFtraceEvent'chan :: !(Prelude.Maybe Data.Word.Word32),
                                           _TrustyIpcReadFtraceEvent'srvName :: !(Prelude.Maybe Data.Text.Text),
                                           _TrustyIpcReadFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TrustyIpcReadFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TrustyIpcReadFtraceEvent "chan" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcReadFtraceEvent'chan
           (\ x__ y__ -> x__ {_TrustyIpcReadFtraceEvent'chan = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyIpcReadFtraceEvent "maybe'chan" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcReadFtraceEvent'chan
           (\ x__ y__ -> x__ {_TrustyIpcReadFtraceEvent'chan = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrustyIpcReadFtraceEvent "srvName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcReadFtraceEvent'srvName
           (\ x__ y__ -> x__ {_TrustyIpcReadFtraceEvent'srvName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyIpcReadFtraceEvent "maybe'srvName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcReadFtraceEvent'srvName
           (\ x__ y__ -> x__ {_TrustyIpcReadFtraceEvent'srvName = y__}))
        Prelude.id
instance Data.ProtoLens.Message TrustyIpcReadFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.TrustyIpcReadFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\CANTrustyIpcReadFtraceEvent\DC2\DC2\n\
      \\EOTchan\CAN\SOH \SOH(\rR\EOTchan\DC2\EM\n\
      \\bsrv_name\CAN\STX \SOH(\tR\asrvName"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        chan__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "chan"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'chan")) ::
              Data.ProtoLens.FieldDescriptor TrustyIpcReadFtraceEvent
        srvName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "srv_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'srvName")) ::
              Data.ProtoLens.FieldDescriptor TrustyIpcReadFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, chan__field_descriptor),
           (Data.ProtoLens.Tag 2, srvName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TrustyIpcReadFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_TrustyIpcReadFtraceEvent'_unknownFields = y__})
  defMessage
    = TrustyIpcReadFtraceEvent'_constructor
        {_TrustyIpcReadFtraceEvent'chan = Prelude.Nothing,
         _TrustyIpcReadFtraceEvent'srvName = Prelude.Nothing,
         _TrustyIpcReadFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TrustyIpcReadFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser TrustyIpcReadFtraceEvent
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
                                       "chan"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"chan") y x)
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
                                       "srv_name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"srvName") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TrustyIpcReadFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'chan") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'srvName") _x
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData TrustyIpcReadFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TrustyIpcReadFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TrustyIpcReadFtraceEvent'chan x__)
                (Control.DeepSeq.deepseq
                   (_TrustyIpcReadFtraceEvent'srvName x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.bufId' @:: Lens' TrustyIpcRxFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'bufId' @:: Lens' TrustyIpcRxFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.chan' @:: Lens' TrustyIpcRxFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'chan' @:: Lens' TrustyIpcRxFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.srvName' @:: Lens' TrustyIpcRxFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'srvName' @:: Lens' TrustyIpcRxFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data TrustyIpcRxFtraceEvent
  = TrustyIpcRxFtraceEvent'_constructor {_TrustyIpcRxFtraceEvent'bufId :: !(Prelude.Maybe Data.Word.Word64),
                                         _TrustyIpcRxFtraceEvent'chan :: !(Prelude.Maybe Data.Word.Word32),
                                         _TrustyIpcRxFtraceEvent'srvName :: !(Prelude.Maybe Data.Text.Text),
                                         _TrustyIpcRxFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TrustyIpcRxFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TrustyIpcRxFtraceEvent "bufId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcRxFtraceEvent'bufId
           (\ x__ y__ -> x__ {_TrustyIpcRxFtraceEvent'bufId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyIpcRxFtraceEvent "maybe'bufId" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcRxFtraceEvent'bufId
           (\ x__ y__ -> x__ {_TrustyIpcRxFtraceEvent'bufId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrustyIpcRxFtraceEvent "chan" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcRxFtraceEvent'chan
           (\ x__ y__ -> x__ {_TrustyIpcRxFtraceEvent'chan = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyIpcRxFtraceEvent "maybe'chan" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcRxFtraceEvent'chan
           (\ x__ y__ -> x__ {_TrustyIpcRxFtraceEvent'chan = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrustyIpcRxFtraceEvent "srvName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcRxFtraceEvent'srvName
           (\ x__ y__ -> x__ {_TrustyIpcRxFtraceEvent'srvName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyIpcRxFtraceEvent "maybe'srvName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcRxFtraceEvent'srvName
           (\ x__ y__ -> x__ {_TrustyIpcRxFtraceEvent'srvName = y__}))
        Prelude.id
instance Data.ProtoLens.Message TrustyIpcRxFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.TrustyIpcRxFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SYNTrustyIpcRxFtraceEvent\DC2\NAK\n\
      \\ACKbuf_id\CAN\SOH \SOH(\EOTR\ENQbufId\DC2\DC2\n\
      \\EOTchan\CAN\STX \SOH(\rR\EOTchan\DC2\EM\n\
      \\bsrv_name\CAN\ETX \SOH(\tR\asrvName"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        bufId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "buf_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bufId")) ::
              Data.ProtoLens.FieldDescriptor TrustyIpcRxFtraceEvent
        chan__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "chan"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'chan")) ::
              Data.ProtoLens.FieldDescriptor TrustyIpcRxFtraceEvent
        srvName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "srv_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'srvName")) ::
              Data.ProtoLens.FieldDescriptor TrustyIpcRxFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, bufId__field_descriptor),
           (Data.ProtoLens.Tag 2, chan__field_descriptor),
           (Data.ProtoLens.Tag 3, srvName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TrustyIpcRxFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_TrustyIpcRxFtraceEvent'_unknownFields = y__})
  defMessage
    = TrustyIpcRxFtraceEvent'_constructor
        {_TrustyIpcRxFtraceEvent'bufId = Prelude.Nothing,
         _TrustyIpcRxFtraceEvent'chan = Prelude.Nothing,
         _TrustyIpcRxFtraceEvent'srvName = Prelude.Nothing,
         _TrustyIpcRxFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TrustyIpcRxFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser TrustyIpcRxFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "buf_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"bufId") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "chan"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"chan") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "srv_name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"srvName") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TrustyIpcRxFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'bufId") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'chan") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'srvName") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.Text.Encoding.encodeUtf8 _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData TrustyIpcRxFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TrustyIpcRxFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TrustyIpcRxFtraceEvent'bufId x__)
                (Control.DeepSeq.deepseq
                   (_TrustyIpcRxFtraceEvent'chan x__)
                   (Control.DeepSeq.deepseq
                      (_TrustyIpcRxFtraceEvent'srvName x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.bufId' @:: Lens' TrustyIpcWriteFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'bufId' @:: Lens' TrustyIpcWriteFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.chan' @:: Lens' TrustyIpcWriteFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'chan' @:: Lens' TrustyIpcWriteFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.kindShm' @:: Lens' TrustyIpcWriteFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'kindShm' @:: Lens' TrustyIpcWriteFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.lenOrErr' @:: Lens' TrustyIpcWriteFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'lenOrErr' @:: Lens' TrustyIpcWriteFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.shmCnt' @:: Lens' TrustyIpcWriteFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'shmCnt' @:: Lens' TrustyIpcWriteFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.srvName' @:: Lens' TrustyIpcWriteFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'srvName' @:: Lens' TrustyIpcWriteFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data TrustyIpcWriteFtraceEvent
  = TrustyIpcWriteFtraceEvent'_constructor {_TrustyIpcWriteFtraceEvent'bufId :: !(Prelude.Maybe Data.Word.Word64),
                                            _TrustyIpcWriteFtraceEvent'chan :: !(Prelude.Maybe Data.Word.Word32),
                                            _TrustyIpcWriteFtraceEvent'kindShm :: !(Prelude.Maybe Data.Int.Int32),
                                            _TrustyIpcWriteFtraceEvent'lenOrErr :: !(Prelude.Maybe Data.Int.Int32),
                                            _TrustyIpcWriteFtraceEvent'shmCnt :: !(Prelude.Maybe Data.Word.Word64),
                                            _TrustyIpcWriteFtraceEvent'srvName :: !(Prelude.Maybe Data.Text.Text),
                                            _TrustyIpcWriteFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TrustyIpcWriteFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TrustyIpcWriteFtraceEvent "bufId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcWriteFtraceEvent'bufId
           (\ x__ y__ -> x__ {_TrustyIpcWriteFtraceEvent'bufId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyIpcWriteFtraceEvent "maybe'bufId" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcWriteFtraceEvent'bufId
           (\ x__ y__ -> x__ {_TrustyIpcWriteFtraceEvent'bufId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrustyIpcWriteFtraceEvent "chan" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcWriteFtraceEvent'chan
           (\ x__ y__ -> x__ {_TrustyIpcWriteFtraceEvent'chan = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyIpcWriteFtraceEvent "maybe'chan" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcWriteFtraceEvent'chan
           (\ x__ y__ -> x__ {_TrustyIpcWriteFtraceEvent'chan = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrustyIpcWriteFtraceEvent "kindShm" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcWriteFtraceEvent'kindShm
           (\ x__ y__ -> x__ {_TrustyIpcWriteFtraceEvent'kindShm = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyIpcWriteFtraceEvent "maybe'kindShm" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcWriteFtraceEvent'kindShm
           (\ x__ y__ -> x__ {_TrustyIpcWriteFtraceEvent'kindShm = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrustyIpcWriteFtraceEvent "lenOrErr" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcWriteFtraceEvent'lenOrErr
           (\ x__ y__ -> x__ {_TrustyIpcWriteFtraceEvent'lenOrErr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyIpcWriteFtraceEvent "maybe'lenOrErr" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcWriteFtraceEvent'lenOrErr
           (\ x__ y__ -> x__ {_TrustyIpcWriteFtraceEvent'lenOrErr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrustyIpcWriteFtraceEvent "shmCnt" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcWriteFtraceEvent'shmCnt
           (\ x__ y__ -> x__ {_TrustyIpcWriteFtraceEvent'shmCnt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyIpcWriteFtraceEvent "maybe'shmCnt" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcWriteFtraceEvent'shmCnt
           (\ x__ y__ -> x__ {_TrustyIpcWriteFtraceEvent'shmCnt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrustyIpcWriteFtraceEvent "srvName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcWriteFtraceEvent'srvName
           (\ x__ y__ -> x__ {_TrustyIpcWriteFtraceEvent'srvName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyIpcWriteFtraceEvent "maybe'srvName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIpcWriteFtraceEvent'srvName
           (\ x__ y__ -> x__ {_TrustyIpcWriteFtraceEvent'srvName = y__}))
        Prelude.id
instance Data.ProtoLens.Message TrustyIpcWriteFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.TrustyIpcWriteFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\EMTrustyIpcWriteFtraceEvent\DC2\NAK\n\
      \\ACKbuf_id\CAN\SOH \SOH(\EOTR\ENQbufId\DC2\DC2\n\
      \\EOTchan\CAN\STX \SOH(\rR\EOTchan\DC2\EM\n\
      \\bkind_shm\CAN\ETX \SOH(\ENQR\akindShm\DC2\FS\n\
      \\n\
      \len_or_err\CAN\EOT \SOH(\ENQR\blenOrErr\DC2\ETB\n\
      \\ashm_cnt\CAN\ENQ \SOH(\EOTR\ACKshmCnt\DC2\EM\n\
      \\bsrv_name\CAN\ACK \SOH(\tR\asrvName"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        bufId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "buf_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bufId")) ::
              Data.ProtoLens.FieldDescriptor TrustyIpcWriteFtraceEvent
        chan__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "chan"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'chan")) ::
              Data.ProtoLens.FieldDescriptor TrustyIpcWriteFtraceEvent
        kindShm__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "kind_shm"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'kindShm")) ::
              Data.ProtoLens.FieldDescriptor TrustyIpcWriteFtraceEvent
        lenOrErr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "len_or_err"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lenOrErr")) ::
              Data.ProtoLens.FieldDescriptor TrustyIpcWriteFtraceEvent
        shmCnt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "shm_cnt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'shmCnt")) ::
              Data.ProtoLens.FieldDescriptor TrustyIpcWriteFtraceEvent
        srvName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "srv_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'srvName")) ::
              Data.ProtoLens.FieldDescriptor TrustyIpcWriteFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, bufId__field_descriptor),
           (Data.ProtoLens.Tag 2, chan__field_descriptor),
           (Data.ProtoLens.Tag 3, kindShm__field_descriptor),
           (Data.ProtoLens.Tag 4, lenOrErr__field_descriptor),
           (Data.ProtoLens.Tag 5, shmCnt__field_descriptor),
           (Data.ProtoLens.Tag 6, srvName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TrustyIpcWriteFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_TrustyIpcWriteFtraceEvent'_unknownFields = y__})
  defMessage
    = TrustyIpcWriteFtraceEvent'_constructor
        {_TrustyIpcWriteFtraceEvent'bufId = Prelude.Nothing,
         _TrustyIpcWriteFtraceEvent'chan = Prelude.Nothing,
         _TrustyIpcWriteFtraceEvent'kindShm = Prelude.Nothing,
         _TrustyIpcWriteFtraceEvent'lenOrErr = Prelude.Nothing,
         _TrustyIpcWriteFtraceEvent'shmCnt = Prelude.Nothing,
         _TrustyIpcWriteFtraceEvent'srvName = Prelude.Nothing,
         _TrustyIpcWriteFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TrustyIpcWriteFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser TrustyIpcWriteFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "buf_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"bufId") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "chan"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"chan") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "kind_shm"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"kindShm") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "len_or_err"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lenOrErr") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "shm_cnt"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"shmCnt") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "srv_name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"srvName") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TrustyIpcWriteFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'bufId") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'chan") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'kindShm") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'lenOrErr") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'shmCnt") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'srvName") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.Text.Encoding.encodeUtf8 _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData TrustyIpcWriteFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TrustyIpcWriteFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TrustyIpcWriteFtraceEvent'bufId x__)
                (Control.DeepSeq.deepseq
                   (_TrustyIpcWriteFtraceEvent'chan x__)
                   (Control.DeepSeq.deepseq
                      (_TrustyIpcWriteFtraceEvent'kindShm x__)
                      (Control.DeepSeq.deepseq
                         (_TrustyIpcWriteFtraceEvent'lenOrErr x__)
                         (Control.DeepSeq.deepseq
                            (_TrustyIpcWriteFtraceEvent'shmCnt x__)
                            (Control.DeepSeq.deepseq
                               (_TrustyIpcWriteFtraceEvent'srvName x__) ()))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.irq' @:: Lens' TrustyIrqFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'irq' @:: Lens' TrustyIrqFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data TrustyIrqFtraceEvent
  = TrustyIrqFtraceEvent'_constructor {_TrustyIrqFtraceEvent'irq :: !(Prelude.Maybe Data.Int.Int32),
                                       _TrustyIrqFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TrustyIrqFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TrustyIrqFtraceEvent "irq" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIrqFtraceEvent'irq
           (\ x__ y__ -> x__ {_TrustyIrqFtraceEvent'irq = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyIrqFtraceEvent "maybe'irq" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyIrqFtraceEvent'irq
           (\ x__ y__ -> x__ {_TrustyIrqFtraceEvent'irq = y__}))
        Prelude.id
instance Data.ProtoLens.Message TrustyIrqFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.TrustyIrqFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\DC4TrustyIrqFtraceEvent\DC2\DLE\n\
      \\ETXirq\CAN\SOH \SOH(\ENQR\ETXirq"
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
              Data.ProtoLens.FieldDescriptor TrustyIrqFtraceEvent
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, irq__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TrustyIrqFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_TrustyIrqFtraceEvent'_unknownFields = y__})
  defMessage
    = TrustyIrqFtraceEvent'_constructor
        {_TrustyIrqFtraceEvent'irq = Prelude.Nothing,
         _TrustyIrqFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TrustyIrqFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser TrustyIrqFtraceEvent
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TrustyIrqFtraceEvent"
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData TrustyIrqFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TrustyIrqFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq (_TrustyIrqFtraceEvent'irq x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.id' @:: Lens' TrustyReclaimMemoryDoneFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'id' @:: Lens' TrustyReclaimMemoryDoneFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.ret' @:: Lens' TrustyReclaimMemoryDoneFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'ret' @:: Lens' TrustyReclaimMemoryDoneFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data TrustyReclaimMemoryDoneFtraceEvent
  = TrustyReclaimMemoryDoneFtraceEvent'_constructor {_TrustyReclaimMemoryDoneFtraceEvent'id :: !(Prelude.Maybe Data.Word.Word64),
                                                     _TrustyReclaimMemoryDoneFtraceEvent'ret :: !(Prelude.Maybe Data.Int.Int32),
                                                     _TrustyReclaimMemoryDoneFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TrustyReclaimMemoryDoneFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TrustyReclaimMemoryDoneFtraceEvent "id" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyReclaimMemoryDoneFtraceEvent'id
           (\ x__ y__ -> x__ {_TrustyReclaimMemoryDoneFtraceEvent'id = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyReclaimMemoryDoneFtraceEvent "maybe'id" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyReclaimMemoryDoneFtraceEvent'id
           (\ x__ y__ -> x__ {_TrustyReclaimMemoryDoneFtraceEvent'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrustyReclaimMemoryDoneFtraceEvent "ret" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyReclaimMemoryDoneFtraceEvent'ret
           (\ x__ y__ -> x__ {_TrustyReclaimMemoryDoneFtraceEvent'ret = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyReclaimMemoryDoneFtraceEvent "maybe'ret" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyReclaimMemoryDoneFtraceEvent'ret
           (\ x__ y__ -> x__ {_TrustyReclaimMemoryDoneFtraceEvent'ret = y__}))
        Prelude.id
instance Data.ProtoLens.Message TrustyReclaimMemoryDoneFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.TrustyReclaimMemoryDoneFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\"TrustyReclaimMemoryDoneFtraceEvent\DC2\SO\n\
      \\STXid\CAN\SOH \SOH(\EOTR\STXid\DC2\DLE\n\
      \\ETXret\CAN\STX \SOH(\ENQR\ETXret"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'id")) ::
              Data.ProtoLens.FieldDescriptor TrustyReclaimMemoryDoneFtraceEvent
        ret__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ret"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ret")) ::
              Data.ProtoLens.FieldDescriptor TrustyReclaimMemoryDoneFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, id__field_descriptor),
           (Data.ProtoLens.Tag 2, ret__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TrustyReclaimMemoryDoneFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_TrustyReclaimMemoryDoneFtraceEvent'_unknownFields = y__})
  defMessage
    = TrustyReclaimMemoryDoneFtraceEvent'_constructor
        {_TrustyReclaimMemoryDoneFtraceEvent'id = Prelude.Nothing,
         _TrustyReclaimMemoryDoneFtraceEvent'ret = Prelude.Nothing,
         _TrustyReclaimMemoryDoneFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TrustyReclaimMemoryDoneFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser TrustyReclaimMemoryDoneFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
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
          (do loop Data.ProtoLens.defMessage)
          "TrustyReclaimMemoryDoneFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'id") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
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
instance Control.DeepSeq.NFData TrustyReclaimMemoryDoneFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TrustyReclaimMemoryDoneFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TrustyReclaimMemoryDoneFtraceEvent'id x__)
                (Control.DeepSeq.deepseq
                   (_TrustyReclaimMemoryDoneFtraceEvent'ret x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.id' @:: Lens' TrustyReclaimMemoryFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'id' @:: Lens' TrustyReclaimMemoryFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data TrustyReclaimMemoryFtraceEvent
  = TrustyReclaimMemoryFtraceEvent'_constructor {_TrustyReclaimMemoryFtraceEvent'id :: !(Prelude.Maybe Data.Word.Word64),
                                                 _TrustyReclaimMemoryFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TrustyReclaimMemoryFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TrustyReclaimMemoryFtraceEvent "id" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyReclaimMemoryFtraceEvent'id
           (\ x__ y__ -> x__ {_TrustyReclaimMemoryFtraceEvent'id = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyReclaimMemoryFtraceEvent "maybe'id" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyReclaimMemoryFtraceEvent'id
           (\ x__ y__ -> x__ {_TrustyReclaimMemoryFtraceEvent'id = y__}))
        Prelude.id
instance Data.ProtoLens.Message TrustyReclaimMemoryFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.TrustyReclaimMemoryFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\RSTrustyReclaimMemoryFtraceEvent\DC2\SO\n\
      \\STXid\CAN\SOH \SOH(\EOTR\STXid"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'id")) ::
              Data.ProtoLens.FieldDescriptor TrustyReclaimMemoryFtraceEvent
      in Data.Map.fromList [(Data.ProtoLens.Tag 1, id__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TrustyReclaimMemoryFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_TrustyReclaimMemoryFtraceEvent'_unknownFields = y__})
  defMessage
    = TrustyReclaimMemoryFtraceEvent'_constructor
        {_TrustyReclaimMemoryFtraceEvent'id = Prelude.Nothing,
         _TrustyReclaimMemoryFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TrustyReclaimMemoryFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser TrustyReclaimMemoryFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "TrustyReclaimMemoryFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'id") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData TrustyReclaimMemoryFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TrustyReclaimMemoryFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TrustyReclaimMemoryFtraceEvent'id x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.handle' @:: Lens' TrustyShareMemoryDoneFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'handle' @:: Lens' TrustyShareMemoryDoneFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.len' @:: Lens' TrustyShareMemoryDoneFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'len' @:: Lens' TrustyShareMemoryDoneFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.lend' @:: Lens' TrustyShareMemoryDoneFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'lend' @:: Lens' TrustyShareMemoryDoneFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.nents' @:: Lens' TrustyShareMemoryDoneFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'nents' @:: Lens' TrustyShareMemoryDoneFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.ret' @:: Lens' TrustyShareMemoryDoneFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'ret' @:: Lens' TrustyShareMemoryDoneFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data TrustyShareMemoryDoneFtraceEvent
  = TrustyShareMemoryDoneFtraceEvent'_constructor {_TrustyShareMemoryDoneFtraceEvent'handle :: !(Prelude.Maybe Data.Word.Word64),
                                                   _TrustyShareMemoryDoneFtraceEvent'len :: !(Prelude.Maybe Data.Word.Word64),
                                                   _TrustyShareMemoryDoneFtraceEvent'lend :: !(Prelude.Maybe Data.Word.Word32),
                                                   _TrustyShareMemoryDoneFtraceEvent'nents :: !(Prelude.Maybe Data.Word.Word32),
                                                   _TrustyShareMemoryDoneFtraceEvent'ret :: !(Prelude.Maybe Data.Int.Int32),
                                                   _TrustyShareMemoryDoneFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TrustyShareMemoryDoneFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TrustyShareMemoryDoneFtraceEvent "handle" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyShareMemoryDoneFtraceEvent'handle
           (\ x__ y__
              -> x__ {_TrustyShareMemoryDoneFtraceEvent'handle = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyShareMemoryDoneFtraceEvent "maybe'handle" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyShareMemoryDoneFtraceEvent'handle
           (\ x__ y__
              -> x__ {_TrustyShareMemoryDoneFtraceEvent'handle = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrustyShareMemoryDoneFtraceEvent "len" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyShareMemoryDoneFtraceEvent'len
           (\ x__ y__ -> x__ {_TrustyShareMemoryDoneFtraceEvent'len = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyShareMemoryDoneFtraceEvent "maybe'len" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyShareMemoryDoneFtraceEvent'len
           (\ x__ y__ -> x__ {_TrustyShareMemoryDoneFtraceEvent'len = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrustyShareMemoryDoneFtraceEvent "lend" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyShareMemoryDoneFtraceEvent'lend
           (\ x__ y__ -> x__ {_TrustyShareMemoryDoneFtraceEvent'lend = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyShareMemoryDoneFtraceEvent "maybe'lend" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyShareMemoryDoneFtraceEvent'lend
           (\ x__ y__ -> x__ {_TrustyShareMemoryDoneFtraceEvent'lend = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrustyShareMemoryDoneFtraceEvent "nents" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyShareMemoryDoneFtraceEvent'nents
           (\ x__ y__ -> x__ {_TrustyShareMemoryDoneFtraceEvent'nents = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyShareMemoryDoneFtraceEvent "maybe'nents" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyShareMemoryDoneFtraceEvent'nents
           (\ x__ y__ -> x__ {_TrustyShareMemoryDoneFtraceEvent'nents = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrustyShareMemoryDoneFtraceEvent "ret" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyShareMemoryDoneFtraceEvent'ret
           (\ x__ y__ -> x__ {_TrustyShareMemoryDoneFtraceEvent'ret = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyShareMemoryDoneFtraceEvent "maybe'ret" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyShareMemoryDoneFtraceEvent'ret
           (\ x__ y__ -> x__ {_TrustyShareMemoryDoneFtraceEvent'ret = y__}))
        Prelude.id
instance Data.ProtoLens.Message TrustyShareMemoryDoneFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.TrustyShareMemoryDoneFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \ TrustyShareMemoryDoneFtraceEvent\DC2\SYN\n\
      \\ACKhandle\CAN\SOH \SOH(\EOTR\ACKhandle\DC2\DLE\n\
      \\ETXlen\CAN\STX \SOH(\EOTR\ETXlen\DC2\DC2\n\
      \\EOTlend\CAN\ETX \SOH(\rR\EOTlend\DC2\DC4\n\
      \\ENQnents\CAN\EOT \SOH(\rR\ENQnents\DC2\DLE\n\
      \\ETXret\CAN\ENQ \SOH(\ENQR\ETXret"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        handle__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "handle"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'handle")) ::
              Data.ProtoLens.FieldDescriptor TrustyShareMemoryDoneFtraceEvent
        len__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "len"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'len")) ::
              Data.ProtoLens.FieldDescriptor TrustyShareMemoryDoneFtraceEvent
        lend__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lend"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lend")) ::
              Data.ProtoLens.FieldDescriptor TrustyShareMemoryDoneFtraceEvent
        nents__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nents"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nents")) ::
              Data.ProtoLens.FieldDescriptor TrustyShareMemoryDoneFtraceEvent
        ret__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ret"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ret")) ::
              Data.ProtoLens.FieldDescriptor TrustyShareMemoryDoneFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, handle__field_descriptor),
           (Data.ProtoLens.Tag 2, len__field_descriptor),
           (Data.ProtoLens.Tag 3, lend__field_descriptor),
           (Data.ProtoLens.Tag 4, nents__field_descriptor),
           (Data.ProtoLens.Tag 5, ret__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TrustyShareMemoryDoneFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_TrustyShareMemoryDoneFtraceEvent'_unknownFields = y__})
  defMessage
    = TrustyShareMemoryDoneFtraceEvent'_constructor
        {_TrustyShareMemoryDoneFtraceEvent'handle = Prelude.Nothing,
         _TrustyShareMemoryDoneFtraceEvent'len = Prelude.Nothing,
         _TrustyShareMemoryDoneFtraceEvent'lend = Prelude.Nothing,
         _TrustyShareMemoryDoneFtraceEvent'nents = Prelude.Nothing,
         _TrustyShareMemoryDoneFtraceEvent'ret = Prelude.Nothing,
         _TrustyShareMemoryDoneFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TrustyShareMemoryDoneFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser TrustyShareMemoryDoneFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "handle"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"handle") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "len"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"len") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "lend"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"lend") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "nents"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nents") y x)
                        40
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
          (do loop Data.ProtoLens.defMessage)
          "TrustyShareMemoryDoneFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'handle") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'len") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'lend") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nents") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ret") _x
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
instance Control.DeepSeq.NFData TrustyShareMemoryDoneFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TrustyShareMemoryDoneFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TrustyShareMemoryDoneFtraceEvent'handle x__)
                (Control.DeepSeq.deepseq
                   (_TrustyShareMemoryDoneFtraceEvent'len x__)
                   (Control.DeepSeq.deepseq
                      (_TrustyShareMemoryDoneFtraceEvent'lend x__)
                      (Control.DeepSeq.deepseq
                         (_TrustyShareMemoryDoneFtraceEvent'nents x__)
                         (Control.DeepSeq.deepseq
                            (_TrustyShareMemoryDoneFtraceEvent'ret x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.len' @:: Lens' TrustyShareMemoryFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'len' @:: Lens' TrustyShareMemoryFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.lend' @:: Lens' TrustyShareMemoryFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'lend' @:: Lens' TrustyShareMemoryFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.nents' @:: Lens' TrustyShareMemoryFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'nents' @:: Lens' TrustyShareMemoryFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data TrustyShareMemoryFtraceEvent
  = TrustyShareMemoryFtraceEvent'_constructor {_TrustyShareMemoryFtraceEvent'len :: !(Prelude.Maybe Data.Word.Word64),
                                               _TrustyShareMemoryFtraceEvent'lend :: !(Prelude.Maybe Data.Word.Word32),
                                               _TrustyShareMemoryFtraceEvent'nents :: !(Prelude.Maybe Data.Word.Word32),
                                               _TrustyShareMemoryFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TrustyShareMemoryFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TrustyShareMemoryFtraceEvent "len" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyShareMemoryFtraceEvent'len
           (\ x__ y__ -> x__ {_TrustyShareMemoryFtraceEvent'len = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyShareMemoryFtraceEvent "maybe'len" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyShareMemoryFtraceEvent'len
           (\ x__ y__ -> x__ {_TrustyShareMemoryFtraceEvent'len = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrustyShareMemoryFtraceEvent "lend" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyShareMemoryFtraceEvent'lend
           (\ x__ y__ -> x__ {_TrustyShareMemoryFtraceEvent'lend = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyShareMemoryFtraceEvent "maybe'lend" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyShareMemoryFtraceEvent'lend
           (\ x__ y__ -> x__ {_TrustyShareMemoryFtraceEvent'lend = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrustyShareMemoryFtraceEvent "nents" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyShareMemoryFtraceEvent'nents
           (\ x__ y__ -> x__ {_TrustyShareMemoryFtraceEvent'nents = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyShareMemoryFtraceEvent "maybe'nents" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyShareMemoryFtraceEvent'nents
           (\ x__ y__ -> x__ {_TrustyShareMemoryFtraceEvent'nents = y__}))
        Prelude.id
instance Data.ProtoLens.Message TrustyShareMemoryFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.TrustyShareMemoryFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\FSTrustyShareMemoryFtraceEvent\DC2\DLE\n\
      \\ETXlen\CAN\SOH \SOH(\EOTR\ETXlen\DC2\DC2\n\
      \\EOTlend\CAN\STX \SOH(\rR\EOTlend\DC2\DC4\n\
      \\ENQnents\CAN\ETX \SOH(\rR\ENQnents"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        len__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "len"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'len")) ::
              Data.ProtoLens.FieldDescriptor TrustyShareMemoryFtraceEvent
        lend__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lend"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lend")) ::
              Data.ProtoLens.FieldDescriptor TrustyShareMemoryFtraceEvent
        nents__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nents"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nents")) ::
              Data.ProtoLens.FieldDescriptor TrustyShareMemoryFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, len__field_descriptor),
           (Data.ProtoLens.Tag 2, lend__field_descriptor),
           (Data.ProtoLens.Tag 3, nents__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TrustyShareMemoryFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_TrustyShareMemoryFtraceEvent'_unknownFields = y__})
  defMessage
    = TrustyShareMemoryFtraceEvent'_constructor
        {_TrustyShareMemoryFtraceEvent'len = Prelude.Nothing,
         _TrustyShareMemoryFtraceEvent'lend = Prelude.Nothing,
         _TrustyShareMemoryFtraceEvent'nents = Prelude.Nothing,
         _TrustyShareMemoryFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TrustyShareMemoryFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser TrustyShareMemoryFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "len"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"len") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "lend"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"lend") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "nents"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nents") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TrustyShareMemoryFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'len") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'lend") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nents") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData TrustyShareMemoryFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TrustyShareMemoryFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TrustyShareMemoryFtraceEvent'len x__)
                (Control.DeepSeq.deepseq
                   (_TrustyShareMemoryFtraceEvent'lend x__)
                   (Control.DeepSeq.deepseq
                      (_TrustyShareMemoryFtraceEvent'nents x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.ret' @:: Lens' TrustySmcDoneFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'ret' @:: Lens' TrustySmcDoneFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data TrustySmcDoneFtraceEvent
  = TrustySmcDoneFtraceEvent'_constructor {_TrustySmcDoneFtraceEvent'ret :: !(Prelude.Maybe Data.Word.Word64),
                                           _TrustySmcDoneFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TrustySmcDoneFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TrustySmcDoneFtraceEvent "ret" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustySmcDoneFtraceEvent'ret
           (\ x__ y__ -> x__ {_TrustySmcDoneFtraceEvent'ret = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustySmcDoneFtraceEvent "maybe'ret" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustySmcDoneFtraceEvent'ret
           (\ x__ y__ -> x__ {_TrustySmcDoneFtraceEvent'ret = y__}))
        Prelude.id
instance Data.ProtoLens.Message TrustySmcDoneFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.TrustySmcDoneFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\CANTrustySmcDoneFtraceEvent\DC2\DLE\n\
      \\ETXret\CAN\SOH \SOH(\EOTR\ETXret"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        ret__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ret"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ret")) ::
              Data.ProtoLens.FieldDescriptor TrustySmcDoneFtraceEvent
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, ret__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TrustySmcDoneFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_TrustySmcDoneFtraceEvent'_unknownFields = y__})
  defMessage
    = TrustySmcDoneFtraceEvent'_constructor
        {_TrustySmcDoneFtraceEvent'ret = Prelude.Nothing,
         _TrustySmcDoneFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TrustySmcDoneFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser TrustySmcDoneFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ret"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ret") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TrustySmcDoneFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ret") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData TrustySmcDoneFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TrustySmcDoneFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq (_TrustySmcDoneFtraceEvent'ret x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.r0' @:: Lens' TrustySmcFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'r0' @:: Lens' TrustySmcFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.r1' @:: Lens' TrustySmcFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'r1' @:: Lens' TrustySmcFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.r2' @:: Lens' TrustySmcFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'r2' @:: Lens' TrustySmcFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.r3' @:: Lens' TrustySmcFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'r3' @:: Lens' TrustySmcFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data TrustySmcFtraceEvent
  = TrustySmcFtraceEvent'_constructor {_TrustySmcFtraceEvent'r0 :: !(Prelude.Maybe Data.Word.Word64),
                                       _TrustySmcFtraceEvent'r1 :: !(Prelude.Maybe Data.Word.Word64),
                                       _TrustySmcFtraceEvent'r2 :: !(Prelude.Maybe Data.Word.Word64),
                                       _TrustySmcFtraceEvent'r3 :: !(Prelude.Maybe Data.Word.Word64),
                                       _TrustySmcFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TrustySmcFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TrustySmcFtraceEvent "r0" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustySmcFtraceEvent'r0
           (\ x__ y__ -> x__ {_TrustySmcFtraceEvent'r0 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustySmcFtraceEvent "maybe'r0" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustySmcFtraceEvent'r0
           (\ x__ y__ -> x__ {_TrustySmcFtraceEvent'r0 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrustySmcFtraceEvent "r1" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustySmcFtraceEvent'r1
           (\ x__ y__ -> x__ {_TrustySmcFtraceEvent'r1 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustySmcFtraceEvent "maybe'r1" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustySmcFtraceEvent'r1
           (\ x__ y__ -> x__ {_TrustySmcFtraceEvent'r1 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrustySmcFtraceEvent "r2" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustySmcFtraceEvent'r2
           (\ x__ y__ -> x__ {_TrustySmcFtraceEvent'r2 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustySmcFtraceEvent "maybe'r2" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustySmcFtraceEvent'r2
           (\ x__ y__ -> x__ {_TrustySmcFtraceEvent'r2 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrustySmcFtraceEvent "r3" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustySmcFtraceEvent'r3
           (\ x__ y__ -> x__ {_TrustySmcFtraceEvent'r3 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustySmcFtraceEvent "maybe'r3" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustySmcFtraceEvent'r3
           (\ x__ y__ -> x__ {_TrustySmcFtraceEvent'r3 = y__}))
        Prelude.id
instance Data.ProtoLens.Message TrustySmcFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.TrustySmcFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\DC4TrustySmcFtraceEvent\DC2\SO\n\
      \\STXr0\CAN\SOH \SOH(\EOTR\STXr0\DC2\SO\n\
      \\STXr1\CAN\STX \SOH(\EOTR\STXr1\DC2\SO\n\
      \\STXr2\CAN\ETX \SOH(\EOTR\STXr2\DC2\SO\n\
      \\STXr3\CAN\EOT \SOH(\EOTR\STXr3"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        r0__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "r0"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'r0")) ::
              Data.ProtoLens.FieldDescriptor TrustySmcFtraceEvent
        r1__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "r1"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'r1")) ::
              Data.ProtoLens.FieldDescriptor TrustySmcFtraceEvent
        r2__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "r2"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'r2")) ::
              Data.ProtoLens.FieldDescriptor TrustySmcFtraceEvent
        r3__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "r3"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'r3")) ::
              Data.ProtoLens.FieldDescriptor TrustySmcFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, r0__field_descriptor),
           (Data.ProtoLens.Tag 2, r1__field_descriptor),
           (Data.ProtoLens.Tag 3, r2__field_descriptor),
           (Data.ProtoLens.Tag 4, r3__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TrustySmcFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_TrustySmcFtraceEvent'_unknownFields = y__})
  defMessage
    = TrustySmcFtraceEvent'_constructor
        {_TrustySmcFtraceEvent'r0 = Prelude.Nothing,
         _TrustySmcFtraceEvent'r1 = Prelude.Nothing,
         _TrustySmcFtraceEvent'r2 = Prelude.Nothing,
         _TrustySmcFtraceEvent'r3 = Prelude.Nothing,
         _TrustySmcFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TrustySmcFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser TrustySmcFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "r0"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"r0") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "r1"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"r1") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "r2"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"r2") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "r3"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"r3") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TrustySmcFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'r0") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'r1") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'r2") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'r3") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData TrustySmcFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TrustySmcFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TrustySmcFtraceEvent'r0 x__)
                (Control.DeepSeq.deepseq
                   (_TrustySmcFtraceEvent'r1 x__)
                   (Control.DeepSeq.deepseq
                      (_TrustySmcFtraceEvent'r2 x__)
                      (Control.DeepSeq.deepseq (_TrustySmcFtraceEvent'r3 x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.ret' @:: Lens' TrustyStdCall32DoneFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'ret' @:: Lens' TrustyStdCall32DoneFtraceEvent (Prelude.Maybe Data.Int.Int64)@ -}
data TrustyStdCall32DoneFtraceEvent
  = TrustyStdCall32DoneFtraceEvent'_constructor {_TrustyStdCall32DoneFtraceEvent'ret :: !(Prelude.Maybe Data.Int.Int64),
                                                 _TrustyStdCall32DoneFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TrustyStdCall32DoneFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TrustyStdCall32DoneFtraceEvent "ret" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyStdCall32DoneFtraceEvent'ret
           (\ x__ y__ -> x__ {_TrustyStdCall32DoneFtraceEvent'ret = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyStdCall32DoneFtraceEvent "maybe'ret" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyStdCall32DoneFtraceEvent'ret
           (\ x__ y__ -> x__ {_TrustyStdCall32DoneFtraceEvent'ret = y__}))
        Prelude.id
instance Data.ProtoLens.Message TrustyStdCall32DoneFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.TrustyStdCall32DoneFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\RSTrustyStdCall32DoneFtraceEvent\DC2\DLE\n\
      \\ETXret\CAN\SOH \SOH(\ETXR\ETXret"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        ret__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ret"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ret")) ::
              Data.ProtoLens.FieldDescriptor TrustyStdCall32DoneFtraceEvent
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, ret__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TrustyStdCall32DoneFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_TrustyStdCall32DoneFtraceEvent'_unknownFields = y__})
  defMessage
    = TrustyStdCall32DoneFtraceEvent'_constructor
        {_TrustyStdCall32DoneFtraceEvent'ret = Prelude.Nothing,
         _TrustyStdCall32DoneFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TrustyStdCall32DoneFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser TrustyStdCall32DoneFtraceEvent
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
          (do loop Data.ProtoLens.defMessage)
          "TrustyStdCall32DoneFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ret") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData TrustyStdCall32DoneFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TrustyStdCall32DoneFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TrustyStdCall32DoneFtraceEvent'ret x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.r0' @:: Lens' TrustyStdCall32FtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'r0' @:: Lens' TrustyStdCall32FtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.r1' @:: Lens' TrustyStdCall32FtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'r1' @:: Lens' TrustyStdCall32FtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.r2' @:: Lens' TrustyStdCall32FtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'r2' @:: Lens' TrustyStdCall32FtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.r3' @:: Lens' TrustyStdCall32FtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields.maybe'r3' @:: Lens' TrustyStdCall32FtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data TrustyStdCall32FtraceEvent
  = TrustyStdCall32FtraceEvent'_constructor {_TrustyStdCall32FtraceEvent'r0 :: !(Prelude.Maybe Data.Word.Word64),
                                             _TrustyStdCall32FtraceEvent'r1 :: !(Prelude.Maybe Data.Word.Word64),
                                             _TrustyStdCall32FtraceEvent'r2 :: !(Prelude.Maybe Data.Word.Word64),
                                             _TrustyStdCall32FtraceEvent'r3 :: !(Prelude.Maybe Data.Word.Word64),
                                             _TrustyStdCall32FtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TrustyStdCall32FtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TrustyStdCall32FtraceEvent "r0" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyStdCall32FtraceEvent'r0
           (\ x__ y__ -> x__ {_TrustyStdCall32FtraceEvent'r0 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyStdCall32FtraceEvent "maybe'r0" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyStdCall32FtraceEvent'r0
           (\ x__ y__ -> x__ {_TrustyStdCall32FtraceEvent'r0 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrustyStdCall32FtraceEvent "r1" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyStdCall32FtraceEvent'r1
           (\ x__ y__ -> x__ {_TrustyStdCall32FtraceEvent'r1 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyStdCall32FtraceEvent "maybe'r1" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyStdCall32FtraceEvent'r1
           (\ x__ y__ -> x__ {_TrustyStdCall32FtraceEvent'r1 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrustyStdCall32FtraceEvent "r2" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyStdCall32FtraceEvent'r2
           (\ x__ y__ -> x__ {_TrustyStdCall32FtraceEvent'r2 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyStdCall32FtraceEvent "maybe'r2" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyStdCall32FtraceEvent'r2
           (\ x__ y__ -> x__ {_TrustyStdCall32FtraceEvent'r2 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrustyStdCall32FtraceEvent "r3" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyStdCall32FtraceEvent'r3
           (\ x__ y__ -> x__ {_TrustyStdCall32FtraceEvent'r3 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrustyStdCall32FtraceEvent "maybe'r3" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrustyStdCall32FtraceEvent'r3
           (\ x__ y__ -> x__ {_TrustyStdCall32FtraceEvent'r3 = y__}))
        Prelude.id
instance Data.ProtoLens.Message TrustyStdCall32FtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.TrustyStdCall32FtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SUBTrustyStdCall32FtraceEvent\DC2\SO\n\
      \\STXr0\CAN\SOH \SOH(\EOTR\STXr0\DC2\SO\n\
      \\STXr1\CAN\STX \SOH(\EOTR\STXr1\DC2\SO\n\
      \\STXr2\CAN\ETX \SOH(\EOTR\STXr2\DC2\SO\n\
      \\STXr3\CAN\EOT \SOH(\EOTR\STXr3"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        r0__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "r0"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'r0")) ::
              Data.ProtoLens.FieldDescriptor TrustyStdCall32FtraceEvent
        r1__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "r1"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'r1")) ::
              Data.ProtoLens.FieldDescriptor TrustyStdCall32FtraceEvent
        r2__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "r2"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'r2")) ::
              Data.ProtoLens.FieldDescriptor TrustyStdCall32FtraceEvent
        r3__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "r3"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'r3")) ::
              Data.ProtoLens.FieldDescriptor TrustyStdCall32FtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, r0__field_descriptor),
           (Data.ProtoLens.Tag 2, r1__field_descriptor),
           (Data.ProtoLens.Tag 3, r2__field_descriptor),
           (Data.ProtoLens.Tag 4, r3__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TrustyStdCall32FtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_TrustyStdCall32FtraceEvent'_unknownFields = y__})
  defMessage
    = TrustyStdCall32FtraceEvent'_constructor
        {_TrustyStdCall32FtraceEvent'r0 = Prelude.Nothing,
         _TrustyStdCall32FtraceEvent'r1 = Prelude.Nothing,
         _TrustyStdCall32FtraceEvent'r2 = Prelude.Nothing,
         _TrustyStdCall32FtraceEvent'r3 = Prelude.Nothing,
         _TrustyStdCall32FtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TrustyStdCall32FtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser TrustyStdCall32FtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "r0"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"r0") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "r1"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"r1") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "r2"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"r2") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "r3"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"r3") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TrustyStdCall32FtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'r0") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'r1") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'r2") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'r3") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData TrustyStdCall32FtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TrustyStdCall32FtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TrustyStdCall32FtraceEvent'r0 x__)
                (Control.DeepSeq.deepseq
                   (_TrustyStdCall32FtraceEvent'r1 x__)
                   (Control.DeepSeq.deepseq
                      (_TrustyStdCall32FtraceEvent'r2 x__)
                      (Control.DeepSeq.deepseq
                         (_TrustyStdCall32FtraceEvent'r3 x__) ()))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \)protos/perfetto/trace/ftrace/trusty.proto\DC2\SIperfetto.protos\"V\n\
    \\DC4TrustySmcFtraceEvent\DC2\SO\n\
    \\STXr0\CAN\SOH \SOH(\EOTR\STXr0\DC2\SO\n\
    \\STXr1\CAN\STX \SOH(\EOTR\STXr1\DC2\SO\n\
    \\STXr2\CAN\ETX \SOH(\EOTR\STXr2\DC2\SO\n\
    \\STXr3\CAN\EOT \SOH(\EOTR\STXr3\",\n\
    \\CANTrustySmcDoneFtraceEvent\DC2\DLE\n\
    \\ETXret\CAN\SOH \SOH(\EOTR\ETXret\"\\\n\
    \\SUBTrustyStdCall32FtraceEvent\DC2\SO\n\
    \\STXr0\CAN\SOH \SOH(\EOTR\STXr0\DC2\SO\n\
    \\STXr1\CAN\STX \SOH(\EOTR\STXr1\DC2\SO\n\
    \\STXr2\CAN\ETX \SOH(\EOTR\STXr2\DC2\SO\n\
    \\STXr3\CAN\EOT \SOH(\EOTR\STXr3\"2\n\
    \\RSTrustyStdCall32DoneFtraceEvent\DC2\DLE\n\
    \\ETXret\CAN\SOH \SOH(\ETXR\ETXret\"Z\n\
    \\FSTrustyShareMemoryFtraceEvent\DC2\DLE\n\
    \\ETXlen\CAN\SOH \SOH(\EOTR\ETXlen\DC2\DC2\n\
    \\EOTlend\CAN\STX \SOH(\rR\EOTlend\DC2\DC4\n\
    \\ENQnents\CAN\ETX \SOH(\rR\ENQnents\"\136\SOH\n\
    \ TrustyShareMemoryDoneFtraceEvent\DC2\SYN\n\
    \\ACKhandle\CAN\SOH \SOH(\EOTR\ACKhandle\DC2\DLE\n\
    \\ETXlen\CAN\STX \SOH(\EOTR\ETXlen\DC2\DC2\n\
    \\EOTlend\CAN\ETX \SOH(\rR\EOTlend\DC2\DC4\n\
    \\ENQnents\CAN\EOT \SOH(\rR\ENQnents\DC2\DLE\n\
    \\ETXret\CAN\ENQ \SOH(\ENQR\ETXret\"0\n\
    \\RSTrustyReclaimMemoryFtraceEvent\DC2\SO\n\
    \\STXid\CAN\SOH \SOH(\EOTR\STXid\"F\n\
    \\"TrustyReclaimMemoryDoneFtraceEvent\DC2\SO\n\
    \\STXid\CAN\SOH \SOH(\EOTR\STXid\DC2\DLE\n\
    \\ETXret\CAN\STX \SOH(\ENQR\ETXret\"(\n\
    \\DC4TrustyIrqFtraceEvent\DC2\DLE\n\
    \\ETXirq\CAN\SOH \SOH(\ENQR\ETXirq\"k\n\
    \\USTrustyIpcHandleEventFtraceEvent\DC2\DC2\n\
    \\EOTchan\CAN\SOH \SOH(\rR\EOTchan\DC2\EM\n\
    \\bevent_id\CAN\STX \SOH(\rR\aeventId\DC2\EM\n\
    \\bsrv_name\CAN\ETX \SOH(\tR\asrvName\"[\n\
    \\ESCTrustyIpcConnectFtraceEvent\DC2\DC2\n\
    \\EOTchan\CAN\SOH \SOH(\rR\EOTchan\DC2\DC2\n\
    \\EOTport\CAN\STX \SOH(\tR\EOTport\DC2\DC4\n\
    \\ENQstate\CAN\ETX \SOH(\ENQR\ENQstate\"\\\n\
    \\RSTrustyIpcConnectEndFtraceEvent\DC2\DC2\n\
    \\EOTchan\CAN\SOH \SOH(\rR\EOTchan\DC2\DLE\n\
    \\ETXerr\CAN\STX \SOH(\ENQR\ETXerr\DC2\DC4\n\
    \\ENQstate\CAN\ETX \SOH(\ENQR\ENQstate\"\179\SOH\n\
    \\EMTrustyIpcWriteFtraceEvent\DC2\NAK\n\
    \\ACKbuf_id\CAN\SOH \SOH(\EOTR\ENQbufId\DC2\DC2\n\
    \\EOTchan\CAN\STX \SOH(\rR\EOTchan\DC2\EM\n\
    \\bkind_shm\CAN\ETX \SOH(\ENQR\akindShm\DC2\FS\n\
    \\n\
    \len_or_err\CAN\EOT \SOH(\ENQR\blenOrErr\DC2\ETB\n\
    \\ashm_cnt\CAN\ENQ \SOH(\EOTR\ACKshmCnt\DC2\EM\n\
    \\bsrv_name\CAN\ACK \SOH(\tR\asrvName\"f\n\
    \\CANTrustyIpcPollFtraceEvent\DC2\DC2\n\
    \\EOTchan\CAN\SOH \SOH(\rR\EOTchan\DC2\ESC\n\
    \\tpoll_mask\CAN\STX \SOH(\rR\bpollMask\DC2\EM\n\
    \\bsrv_name\CAN\ETX \SOH(\tR\asrvName\"I\n\
    \\CANTrustyIpcReadFtraceEvent\DC2\DC2\n\
    \\EOTchan\CAN\SOH \SOH(\rR\EOTchan\DC2\EM\n\
    \\bsrv_name\CAN\STX \SOH(\tR\asrvName\"\154\SOH\n\
    \\ESCTrustyIpcReadEndFtraceEvent\DC2\NAK\n\
    \\ACKbuf_id\CAN\SOH \SOH(\EOTR\ENQbufId\DC2\DC2\n\
    \\EOTchan\CAN\STX \SOH(\rR\EOTchan\DC2\FS\n\
    \\n\
    \len_or_err\CAN\ETX \SOH(\ENQR\blenOrErr\DC2\ETB\n\
    \\ashm_cnt\CAN\EOT \SOH(\EOTR\ACKshmCnt\DC2\EM\n\
    \\bsrv_name\CAN\ENQ \SOH(\tR\asrvName\"^\n\
    \\SYNTrustyIpcRxFtraceEvent\DC2\NAK\n\
    \\ACKbuf_id\CAN\SOH \SOH(\EOTR\ENQbufId\DC2\DC2\n\
    \\EOTchan\CAN\STX \SOH(\rR\EOTchan\DC2\EM\n\
    \\bsrv_name\CAN\ETX \SOH(\tR\asrvName\"Y\n\
    \\ESCTrustyEnqueueNopFtraceEvent\DC2\DC2\n\
    \\EOTarg1\CAN\SOH \SOH(\rR\EOTarg1\DC2\DC2\n\
    \\EOTarg2\CAN\STX \SOH(\rR\EOTarg2\DC2\DC2\n\
    \\EOTarg3\CAN\ETX \SOH(\rR\EOTarg3J\238 \n\
    \\ACK\DC2\EOT\EOT\NUL_\SOH\n\
    \a\n\
    \\SOH\f\DC2\ETX\EOT\NUL\DC22W Autogenerated by:\n\
    \ ../../src/tools/ftrace_proto_gen/ftrace_proto_gen.cc\n\
    \ Do not edit.\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\ENQ\NUL\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\a\NUL\f\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b\FS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\b\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\b\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\b\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\b\DC2\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\b\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\t\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\t\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\t\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\t\DC2\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\t\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\n\
    \\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\n\
    \\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\n\
    \\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\n\
    \\DC2\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\n\
    \\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\v\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX\v\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\v\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\v\DC2\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\v\ETB\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\r\NUL\SI\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\r\b \n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\SO\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\SO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\SO\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\SO\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\SO\CAN\EM\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT\DLE\NUL\NAK\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\DLE\b\"\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\DC1\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETX\DC1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX\DC1\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\DC1\DC2\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\DC1\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX\DC2\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETX\DC2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX\DC2\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX\DC2\DC2\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX\DC2\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX\DC3\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\EOT\DC2\ETX\DC3\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETX\DC3\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX\DC3\DC2\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX\DC3\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETX\DC4\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\EOT\DC2\ETX\DC4\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ENQ\DC2\ETX\DC4\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETX\DC4\DC2\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETX\DC4\ETB\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOT\SYN\NUL\CAN\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX\SYN\b&\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX\ETB\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETX\ETB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX\ETB\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX\ETB\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX\ETB\ETB\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOT\EM\NUL\GS\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX\EM\b$\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX\SUB\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\EOT\DC2\ETX\SUB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX\SUB\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX\SUB\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX\SUB\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETX\ESC\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\EOT\DC2\ETX\ESC\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETX\ESC\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETX\ESC\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETX\ESC\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETX\FS\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\EOT\DC2\ETX\FS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ENQ\DC2\ETX\FS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETX\FS\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETX\FS\SUB\ESC\n\
    \\n\
    \\n\
    \\STX\EOT\ENQ\DC2\EOT\RS\NUL$\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX\RS\b(\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETX\US\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\ETX\US\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETX\US\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX\US\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX\US\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ETX \STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\EOT\DC2\ETX \STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\ETX \v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETX \DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETX \CAN\EM\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\ETX!\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\EOT\DC2\ETX!\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ENQ\DC2\ETX!\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\ETX!\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\ETX!\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\ETX\DC2\ETX\"\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\EOT\DC2\ETX\"\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\ENQ\DC2\ETX\"\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\SOH\DC2\ETX\"\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\ETX\DC2\ETX\"\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\EOT\DC2\ETX#\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\EOT\DC2\ETX#\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\ENQ\DC2\ETX#\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\SOH\DC2\ETX#\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\ETX\DC2\ETX#\ETB\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\ACK\DC2\EOT%\NUL'\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETX%\b&\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETX&\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\EOT\DC2\ETX&\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETX&\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETX&\DC2\DC4\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETX&\ETB\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\a\DC2\EOT(\NUL+\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETX(\b*\n\
    \\v\n\
    \\EOT\EOT\a\STX\NUL\DC2\ETX)\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\EOT\DC2\ETX)\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ENQ\DC2\ETX)\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\ETX)\DC2\DC4\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\ETX)\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\a\STX\SOH\DC2\ETX*\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\EOT\DC2\ETX*\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ENQ\DC2\ETX*\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\ETX*\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\ETX*\ETB\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\b\DC2\EOT,\NUL.\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\b\SOH\DC2\ETX,\b\FS\n\
    \\v\n\
    \\EOT\EOT\b\STX\NUL\DC2\ETX-\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\EOT\DC2\ETX-\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\ETX-\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\ETX-\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\ETX-\ETB\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\t\DC2\EOT/\NUL3\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\t\SOH\DC2\ETX/\b'\n\
    \\v\n\
    \\EOT\EOT\t\STX\NUL\DC2\ETX0\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\EOT\DC2\ETX0\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ENQ\DC2\ETX0\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\ETX0\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\ETX0\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\t\STX\SOH\DC2\ETX1\STX\US\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\EOT\DC2\ETX1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\ENQ\DC2\ETX1\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\SOH\DC2\ETX1\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\ETX\DC2\ETX1\GS\RS\n\
    \\v\n\
    \\EOT\EOT\t\STX\STX\DC2\ETX2\STX\US\n\
    \\f\n\
    \\ENQ\EOT\t\STX\STX\EOT\DC2\ETX2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\STX\ENQ\DC2\ETX2\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\t\STX\STX\SOH\DC2\ETX2\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\t\STX\STX\ETX\DC2\ETX2\GS\RS\n\
    \\n\
    \\n\
    \\STX\EOT\n\
    \\DC2\EOT4\NUL8\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\n\
    \\SOH\DC2\ETX4\b#\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\ETX5\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\EOT\DC2\ETX5\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ENQ\DC2\ETX5\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\ETX5\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\ETX5\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\SOH\DC2\ETX6\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\EOT\DC2\ETX6\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ENQ\DC2\ETX6\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\SOH\DC2\ETX6\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ETX\DC2\ETX6\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\STX\DC2\ETX7\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\STX\EOT\DC2\ETX7\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\STX\ENQ\DC2\ETX7\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\STX\SOH\DC2\ETX7\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\STX\ETX\DC2\ETX7\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\v\DC2\EOT9\NUL=\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\v\SOH\DC2\ETX9\b&\n\
    \\v\n\
    \\EOT\EOT\v\STX\NUL\DC2\ETX:\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\EOT\DC2\ETX:\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\ENQ\DC2\ETX:\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\ETX:\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\ETX:\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\v\STX\SOH\DC2\ETX;\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\EOT\DC2\ETX;\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\ENQ\DC2\ETX;\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\SOH\DC2\ETX;\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\ETX\DC2\ETX;\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\v\STX\STX\DC2\ETX<\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\v\STX\STX\EOT\DC2\ETX<\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\STX\ENQ\DC2\ETX<\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\v\STX\STX\SOH\DC2\ETX<\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\v\STX\STX\ETX\DC2\ETX<\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\f\DC2\EOT>\NULE\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\f\SOH\DC2\ETX>\b!\n\
    \\v\n\
    \\EOT\EOT\f\STX\NUL\DC2\ETX?\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\EOT\DC2\ETX?\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\ENQ\DC2\ETX?\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\ETX?\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\ETX?\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\f\STX\SOH\DC2\ETX@\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\f\STX\SOH\EOT\DC2\ETX@\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\SOH\ENQ\DC2\ETX@\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\f\STX\SOH\SOH\DC2\ETX@\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\f\STX\SOH\ETX\DC2\ETX@\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\f\STX\STX\DC2\ETXA\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\f\STX\STX\EOT\DC2\ETXA\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\STX\ENQ\DC2\ETXA\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\f\STX\STX\SOH\DC2\ETXA\DC1\EM\n\
    \\f\n\
    \\ENQ\EOT\f\STX\STX\ETX\DC2\ETXA\FS\GS\n\
    \\v\n\
    \\EOT\EOT\f\STX\ETX\DC2\ETXB\STX \n\
    \\f\n\
    \\ENQ\EOT\f\STX\ETX\EOT\DC2\ETXB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ETX\ENQ\DC2\ETXB\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ETX\SOH\DC2\ETXB\DC1\ESC\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ETX\ETX\DC2\ETXB\RS\US\n\
    \\v\n\
    \\EOT\EOT\f\STX\EOT\DC2\ETXC\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\f\STX\EOT\EOT\DC2\ETXC\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\EOT\ENQ\DC2\ETXC\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\f\STX\EOT\SOH\DC2\ETXC\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\f\STX\EOT\ETX\DC2\ETXC\FS\GS\n\
    \\v\n\
    \\EOT\EOT\f\STX\ENQ\DC2\ETXD\STX\US\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ENQ\EOT\DC2\ETXD\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ENQ\ENQ\DC2\ETXD\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ENQ\SOH\DC2\ETXD\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ENQ\ETX\DC2\ETXD\GS\RS\n\
    \\n\
    \\n\
    \\STX\EOT\r\DC2\EOTF\NULJ\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\r\SOH\DC2\ETXF\b \n\
    \\v\n\
    \\EOT\EOT\r\STX\NUL\DC2\ETXG\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\EOT\DC2\ETXG\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\ENQ\DC2\ETXG\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\SOH\DC2\ETXG\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\ETX\DC2\ETXG\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\r\STX\SOH\DC2\ETXH\STX \n\
    \\f\n\
    \\ENQ\EOT\r\STX\SOH\EOT\DC2\ETXH\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\SOH\ENQ\DC2\ETXH\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\r\STX\SOH\SOH\DC2\ETXH\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\r\STX\SOH\ETX\DC2\ETXH\RS\US\n\
    \\v\n\
    \\EOT\EOT\r\STX\STX\DC2\ETXI\STX\US\n\
    \\f\n\
    \\ENQ\EOT\r\STX\STX\EOT\DC2\ETXI\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\STX\ENQ\DC2\ETXI\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\r\STX\STX\SOH\DC2\ETXI\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\r\STX\STX\ETX\DC2\ETXI\GS\RS\n\
    \\n\
    \\n\
    \\STX\EOT\SO\DC2\EOTK\NULN\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SO\SOH\DC2\ETXK\b \n\
    \\v\n\
    \\EOT\EOT\SO\STX\NUL\DC2\ETXL\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\NUL\EOT\DC2\ETXL\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\NUL\ENQ\DC2\ETXL\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\NUL\SOH\DC2\ETXL\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\NUL\ETX\DC2\ETXL\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\SO\STX\SOH\DC2\ETXM\STX\US\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\SOH\EOT\DC2\ETXM\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\SOH\ENQ\DC2\ETXM\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\SOH\SOH\DC2\ETXM\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\SOH\ETX\DC2\ETXM\GS\RS\n\
    \\n\
    \\n\
    \\STX\EOT\SI\DC2\EOTO\NULU\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SI\SOH\DC2\ETXO\b#\n\
    \\v\n\
    \\EOT\EOT\SI\STX\NUL\DC2\ETXP\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\NUL\EOT\DC2\ETXP\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\NUL\ENQ\DC2\ETXP\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\NUL\SOH\DC2\ETXP\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\NUL\ETX\DC2\ETXP\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\SI\STX\SOH\DC2\ETXQ\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\SOH\EOT\DC2\ETXQ\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\SOH\ENQ\DC2\ETXQ\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\SOH\SOH\DC2\ETXQ\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\SOH\ETX\DC2\ETXQ\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\SI\STX\STX\DC2\ETXR\STX \n\
    \\f\n\
    \\ENQ\EOT\SI\STX\STX\EOT\DC2\ETXR\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\STX\ENQ\DC2\ETXR\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\STX\SOH\DC2\ETXR\DC1\ESC\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\STX\ETX\DC2\ETXR\RS\US\n\
    \\v\n\
    \\EOT\EOT\SI\STX\ETX\DC2\ETXS\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\ETX\EOT\DC2\ETXS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\ETX\ENQ\DC2\ETXS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\ETX\SOH\DC2\ETXS\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\ETX\ETX\DC2\ETXS\FS\GS\n\
    \\v\n\
    \\EOT\EOT\SI\STX\EOT\DC2\ETXT\STX\US\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\EOT\EOT\DC2\ETXT\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\EOT\ENQ\DC2\ETXT\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\EOT\SOH\DC2\ETXT\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\EOT\ETX\DC2\ETXT\GS\RS\n\
    \\n\
    \\n\
    \\STX\EOT\DLE\DC2\EOTV\NULZ\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\DLE\SOH\DC2\ETXV\b\RS\n\
    \\v\n\
    \\EOT\EOT\DLE\STX\NUL\DC2\ETXW\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\NUL\EOT\DC2\ETXW\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\NUL\ENQ\DC2\ETXW\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\NUL\SOH\DC2\ETXW\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\NUL\ETX\DC2\ETXW\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\DLE\STX\SOH\DC2\ETXX\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\SOH\EOT\DC2\ETXX\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\SOH\ENQ\DC2\ETXX\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\SOH\SOH\DC2\ETXX\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\SOH\ETX\DC2\ETXX\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\DLE\STX\STX\DC2\ETXY\STX\US\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\STX\EOT\DC2\ETXY\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\STX\ENQ\DC2\ETXY\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\STX\SOH\DC2\ETXY\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\STX\ETX\DC2\ETXY\GS\RS\n\
    \\n\
    \\n\
    \\STX\EOT\DC1\DC2\EOT[\NUL_\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\DC1\SOH\DC2\ETX[\b#\n\
    \\v\n\
    \\EOT\EOT\DC1\STX\NUL\DC2\ETX\\\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\DC1\STX\NUL\EOT\DC2\ETX\\\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\DC1\STX\NUL\ENQ\DC2\ETX\\\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\DC1\STX\NUL\SOH\DC2\ETX\\\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\DC1\STX\NUL\ETX\DC2\ETX\\\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\DC1\STX\SOH\DC2\ETX]\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\DC1\STX\SOH\EOT\DC2\ETX]\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\DC1\STX\SOH\ENQ\DC2\ETX]\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\DC1\STX\SOH\SOH\DC2\ETX]\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\DC1\STX\SOH\ETX\DC2\ETX]\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\DC1\STX\STX\DC2\ETX^\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\DC1\STX\STX\EOT\DC2\ETX^\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\DC1\STX\STX\ENQ\DC2\ETX^\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\DC1\STX\STX\SOH\DC2\ETX^\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\DC1\STX\STX\ETX\DC2\ETX^\EM\SUB"