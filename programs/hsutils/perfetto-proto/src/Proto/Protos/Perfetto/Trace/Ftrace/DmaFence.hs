{- This file was auto-generated from protos/perfetto/trace/ftrace/dma_fence.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.DmaFence (
        DmaFenceEmitFtraceEvent(), DmaFenceInitFtraceEvent(),
        DmaFenceSignaledFtraceEvent(), DmaFenceWaitEndFtraceEvent(),
        DmaFenceWaitStartFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmaFence_Fields.context' @:: Lens' DmaFenceEmitFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmaFence_Fields.maybe'context' @:: Lens' DmaFenceEmitFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmaFence_Fields.driver' @:: Lens' DmaFenceEmitFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmaFence_Fields.maybe'driver' @:: Lens' DmaFenceEmitFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmaFence_Fields.seqno' @:: Lens' DmaFenceEmitFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmaFence_Fields.maybe'seqno' @:: Lens' DmaFenceEmitFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmaFence_Fields.timeline' @:: Lens' DmaFenceEmitFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmaFence_Fields.maybe'timeline' @:: Lens' DmaFenceEmitFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data DmaFenceEmitFtraceEvent
  = DmaFenceEmitFtraceEvent'_constructor {_DmaFenceEmitFtraceEvent'context :: !(Prelude.Maybe Data.Word.Word32),
                                          _DmaFenceEmitFtraceEvent'driver :: !(Prelude.Maybe Data.Text.Text),
                                          _DmaFenceEmitFtraceEvent'seqno :: !(Prelude.Maybe Data.Word.Word32),
                                          _DmaFenceEmitFtraceEvent'timeline :: !(Prelude.Maybe Data.Text.Text),
                                          _DmaFenceEmitFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DmaFenceEmitFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DmaFenceEmitFtraceEvent "context" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaFenceEmitFtraceEvent'context
           (\ x__ y__ -> x__ {_DmaFenceEmitFtraceEvent'context = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DmaFenceEmitFtraceEvent "maybe'context" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaFenceEmitFtraceEvent'context
           (\ x__ y__ -> x__ {_DmaFenceEmitFtraceEvent'context = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DmaFenceEmitFtraceEvent "driver" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaFenceEmitFtraceEvent'driver
           (\ x__ y__ -> x__ {_DmaFenceEmitFtraceEvent'driver = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DmaFenceEmitFtraceEvent "maybe'driver" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaFenceEmitFtraceEvent'driver
           (\ x__ y__ -> x__ {_DmaFenceEmitFtraceEvent'driver = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DmaFenceEmitFtraceEvent "seqno" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaFenceEmitFtraceEvent'seqno
           (\ x__ y__ -> x__ {_DmaFenceEmitFtraceEvent'seqno = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DmaFenceEmitFtraceEvent "maybe'seqno" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaFenceEmitFtraceEvent'seqno
           (\ x__ y__ -> x__ {_DmaFenceEmitFtraceEvent'seqno = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DmaFenceEmitFtraceEvent "timeline" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaFenceEmitFtraceEvent'timeline
           (\ x__ y__ -> x__ {_DmaFenceEmitFtraceEvent'timeline = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DmaFenceEmitFtraceEvent "maybe'timeline" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaFenceEmitFtraceEvent'timeline
           (\ x__ y__ -> x__ {_DmaFenceEmitFtraceEvent'timeline = y__}))
        Prelude.id
instance Data.ProtoLens.Message DmaFenceEmitFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.DmaFenceEmitFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ETBDmaFenceEmitFtraceEvent\DC2\CAN\n\
      \\acontext\CAN\SOH \SOH(\rR\acontext\DC2\SYN\n\
      \\ACKdriver\CAN\STX \SOH(\tR\ACKdriver\DC2\DC4\n\
      \\ENQseqno\CAN\ETX \SOH(\rR\ENQseqno\DC2\SUB\n\
      \\btimeline\CAN\EOT \SOH(\tR\btimeline"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        context__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "context"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'context")) ::
              Data.ProtoLens.FieldDescriptor DmaFenceEmitFtraceEvent
        driver__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "driver"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'driver")) ::
              Data.ProtoLens.FieldDescriptor DmaFenceEmitFtraceEvent
        seqno__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "seqno"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'seqno")) ::
              Data.ProtoLens.FieldDescriptor DmaFenceEmitFtraceEvent
        timeline__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timeline"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timeline")) ::
              Data.ProtoLens.FieldDescriptor DmaFenceEmitFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, context__field_descriptor),
           (Data.ProtoLens.Tag 2, driver__field_descriptor),
           (Data.ProtoLens.Tag 3, seqno__field_descriptor),
           (Data.ProtoLens.Tag 4, timeline__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DmaFenceEmitFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_DmaFenceEmitFtraceEvent'_unknownFields = y__})
  defMessage
    = DmaFenceEmitFtraceEvent'_constructor
        {_DmaFenceEmitFtraceEvent'context = Prelude.Nothing,
         _DmaFenceEmitFtraceEvent'driver = Prelude.Nothing,
         _DmaFenceEmitFtraceEvent'seqno = Prelude.Nothing,
         _DmaFenceEmitFtraceEvent'timeline = Prelude.Nothing,
         _DmaFenceEmitFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DmaFenceEmitFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser DmaFenceEmitFtraceEvent
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
                                       "context"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"context") y x)
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
                                       "driver"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"driver") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "seqno"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"seqno") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "timeline"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timeline") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DmaFenceEmitFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'context") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'driver") _x
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'seqno") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'timeline") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.Text.Encoding.encodeUtf8 _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData DmaFenceEmitFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DmaFenceEmitFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DmaFenceEmitFtraceEvent'context x__)
                (Control.DeepSeq.deepseq
                   (_DmaFenceEmitFtraceEvent'driver x__)
                   (Control.DeepSeq.deepseq
                      (_DmaFenceEmitFtraceEvent'seqno x__)
                      (Control.DeepSeq.deepseq
                         (_DmaFenceEmitFtraceEvent'timeline x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmaFence_Fields.context' @:: Lens' DmaFenceInitFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmaFence_Fields.maybe'context' @:: Lens' DmaFenceInitFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmaFence_Fields.driver' @:: Lens' DmaFenceInitFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmaFence_Fields.maybe'driver' @:: Lens' DmaFenceInitFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmaFence_Fields.seqno' @:: Lens' DmaFenceInitFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmaFence_Fields.maybe'seqno' @:: Lens' DmaFenceInitFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmaFence_Fields.timeline' @:: Lens' DmaFenceInitFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmaFence_Fields.maybe'timeline' @:: Lens' DmaFenceInitFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data DmaFenceInitFtraceEvent
  = DmaFenceInitFtraceEvent'_constructor {_DmaFenceInitFtraceEvent'context :: !(Prelude.Maybe Data.Word.Word32),
                                          _DmaFenceInitFtraceEvent'driver :: !(Prelude.Maybe Data.Text.Text),
                                          _DmaFenceInitFtraceEvent'seqno :: !(Prelude.Maybe Data.Word.Word32),
                                          _DmaFenceInitFtraceEvent'timeline :: !(Prelude.Maybe Data.Text.Text),
                                          _DmaFenceInitFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DmaFenceInitFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DmaFenceInitFtraceEvent "context" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaFenceInitFtraceEvent'context
           (\ x__ y__ -> x__ {_DmaFenceInitFtraceEvent'context = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DmaFenceInitFtraceEvent "maybe'context" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaFenceInitFtraceEvent'context
           (\ x__ y__ -> x__ {_DmaFenceInitFtraceEvent'context = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DmaFenceInitFtraceEvent "driver" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaFenceInitFtraceEvent'driver
           (\ x__ y__ -> x__ {_DmaFenceInitFtraceEvent'driver = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DmaFenceInitFtraceEvent "maybe'driver" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaFenceInitFtraceEvent'driver
           (\ x__ y__ -> x__ {_DmaFenceInitFtraceEvent'driver = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DmaFenceInitFtraceEvent "seqno" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaFenceInitFtraceEvent'seqno
           (\ x__ y__ -> x__ {_DmaFenceInitFtraceEvent'seqno = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DmaFenceInitFtraceEvent "maybe'seqno" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaFenceInitFtraceEvent'seqno
           (\ x__ y__ -> x__ {_DmaFenceInitFtraceEvent'seqno = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DmaFenceInitFtraceEvent "timeline" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaFenceInitFtraceEvent'timeline
           (\ x__ y__ -> x__ {_DmaFenceInitFtraceEvent'timeline = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DmaFenceInitFtraceEvent "maybe'timeline" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaFenceInitFtraceEvent'timeline
           (\ x__ y__ -> x__ {_DmaFenceInitFtraceEvent'timeline = y__}))
        Prelude.id
instance Data.ProtoLens.Message DmaFenceInitFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.DmaFenceInitFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ETBDmaFenceInitFtraceEvent\DC2\CAN\n\
      \\acontext\CAN\SOH \SOH(\rR\acontext\DC2\SYN\n\
      \\ACKdriver\CAN\STX \SOH(\tR\ACKdriver\DC2\DC4\n\
      \\ENQseqno\CAN\ETX \SOH(\rR\ENQseqno\DC2\SUB\n\
      \\btimeline\CAN\EOT \SOH(\tR\btimeline"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        context__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "context"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'context")) ::
              Data.ProtoLens.FieldDescriptor DmaFenceInitFtraceEvent
        driver__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "driver"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'driver")) ::
              Data.ProtoLens.FieldDescriptor DmaFenceInitFtraceEvent
        seqno__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "seqno"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'seqno")) ::
              Data.ProtoLens.FieldDescriptor DmaFenceInitFtraceEvent
        timeline__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timeline"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timeline")) ::
              Data.ProtoLens.FieldDescriptor DmaFenceInitFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, context__field_descriptor),
           (Data.ProtoLens.Tag 2, driver__field_descriptor),
           (Data.ProtoLens.Tag 3, seqno__field_descriptor),
           (Data.ProtoLens.Tag 4, timeline__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DmaFenceInitFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_DmaFenceInitFtraceEvent'_unknownFields = y__})
  defMessage
    = DmaFenceInitFtraceEvent'_constructor
        {_DmaFenceInitFtraceEvent'context = Prelude.Nothing,
         _DmaFenceInitFtraceEvent'driver = Prelude.Nothing,
         _DmaFenceInitFtraceEvent'seqno = Prelude.Nothing,
         _DmaFenceInitFtraceEvent'timeline = Prelude.Nothing,
         _DmaFenceInitFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DmaFenceInitFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser DmaFenceInitFtraceEvent
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
                                       "context"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"context") y x)
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
                                       "driver"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"driver") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "seqno"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"seqno") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "timeline"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timeline") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DmaFenceInitFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'context") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'driver") _x
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'seqno") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'timeline") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.Text.Encoding.encodeUtf8 _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData DmaFenceInitFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DmaFenceInitFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DmaFenceInitFtraceEvent'context x__)
                (Control.DeepSeq.deepseq
                   (_DmaFenceInitFtraceEvent'driver x__)
                   (Control.DeepSeq.deepseq
                      (_DmaFenceInitFtraceEvent'seqno x__)
                      (Control.DeepSeq.deepseq
                         (_DmaFenceInitFtraceEvent'timeline x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmaFence_Fields.context' @:: Lens' DmaFenceSignaledFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmaFence_Fields.maybe'context' @:: Lens' DmaFenceSignaledFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmaFence_Fields.driver' @:: Lens' DmaFenceSignaledFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmaFence_Fields.maybe'driver' @:: Lens' DmaFenceSignaledFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmaFence_Fields.seqno' @:: Lens' DmaFenceSignaledFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmaFence_Fields.maybe'seqno' @:: Lens' DmaFenceSignaledFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmaFence_Fields.timeline' @:: Lens' DmaFenceSignaledFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmaFence_Fields.maybe'timeline' @:: Lens' DmaFenceSignaledFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data DmaFenceSignaledFtraceEvent
  = DmaFenceSignaledFtraceEvent'_constructor {_DmaFenceSignaledFtraceEvent'context :: !(Prelude.Maybe Data.Word.Word32),
                                              _DmaFenceSignaledFtraceEvent'driver :: !(Prelude.Maybe Data.Text.Text),
                                              _DmaFenceSignaledFtraceEvent'seqno :: !(Prelude.Maybe Data.Word.Word32),
                                              _DmaFenceSignaledFtraceEvent'timeline :: !(Prelude.Maybe Data.Text.Text),
                                              _DmaFenceSignaledFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DmaFenceSignaledFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DmaFenceSignaledFtraceEvent "context" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaFenceSignaledFtraceEvent'context
           (\ x__ y__ -> x__ {_DmaFenceSignaledFtraceEvent'context = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DmaFenceSignaledFtraceEvent "maybe'context" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaFenceSignaledFtraceEvent'context
           (\ x__ y__ -> x__ {_DmaFenceSignaledFtraceEvent'context = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DmaFenceSignaledFtraceEvent "driver" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaFenceSignaledFtraceEvent'driver
           (\ x__ y__ -> x__ {_DmaFenceSignaledFtraceEvent'driver = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DmaFenceSignaledFtraceEvent "maybe'driver" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaFenceSignaledFtraceEvent'driver
           (\ x__ y__ -> x__ {_DmaFenceSignaledFtraceEvent'driver = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DmaFenceSignaledFtraceEvent "seqno" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaFenceSignaledFtraceEvent'seqno
           (\ x__ y__ -> x__ {_DmaFenceSignaledFtraceEvent'seqno = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DmaFenceSignaledFtraceEvent "maybe'seqno" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaFenceSignaledFtraceEvent'seqno
           (\ x__ y__ -> x__ {_DmaFenceSignaledFtraceEvent'seqno = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DmaFenceSignaledFtraceEvent "timeline" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaFenceSignaledFtraceEvent'timeline
           (\ x__ y__ -> x__ {_DmaFenceSignaledFtraceEvent'timeline = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DmaFenceSignaledFtraceEvent "maybe'timeline" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaFenceSignaledFtraceEvent'timeline
           (\ x__ y__ -> x__ {_DmaFenceSignaledFtraceEvent'timeline = y__}))
        Prelude.id
instance Data.ProtoLens.Message DmaFenceSignaledFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.DmaFenceSignaledFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ESCDmaFenceSignaledFtraceEvent\DC2\CAN\n\
      \\acontext\CAN\SOH \SOH(\rR\acontext\DC2\SYN\n\
      \\ACKdriver\CAN\STX \SOH(\tR\ACKdriver\DC2\DC4\n\
      \\ENQseqno\CAN\ETX \SOH(\rR\ENQseqno\DC2\SUB\n\
      \\btimeline\CAN\EOT \SOH(\tR\btimeline"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        context__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "context"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'context")) ::
              Data.ProtoLens.FieldDescriptor DmaFenceSignaledFtraceEvent
        driver__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "driver"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'driver")) ::
              Data.ProtoLens.FieldDescriptor DmaFenceSignaledFtraceEvent
        seqno__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "seqno"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'seqno")) ::
              Data.ProtoLens.FieldDescriptor DmaFenceSignaledFtraceEvent
        timeline__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timeline"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timeline")) ::
              Data.ProtoLens.FieldDescriptor DmaFenceSignaledFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, context__field_descriptor),
           (Data.ProtoLens.Tag 2, driver__field_descriptor),
           (Data.ProtoLens.Tag 3, seqno__field_descriptor),
           (Data.ProtoLens.Tag 4, timeline__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DmaFenceSignaledFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_DmaFenceSignaledFtraceEvent'_unknownFields = y__})
  defMessage
    = DmaFenceSignaledFtraceEvent'_constructor
        {_DmaFenceSignaledFtraceEvent'context = Prelude.Nothing,
         _DmaFenceSignaledFtraceEvent'driver = Prelude.Nothing,
         _DmaFenceSignaledFtraceEvent'seqno = Prelude.Nothing,
         _DmaFenceSignaledFtraceEvent'timeline = Prelude.Nothing,
         _DmaFenceSignaledFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DmaFenceSignaledFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser DmaFenceSignaledFtraceEvent
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
                                       "context"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"context") y x)
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
                                       "driver"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"driver") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "seqno"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"seqno") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "timeline"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timeline") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DmaFenceSignaledFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'context") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'driver") _x
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'seqno") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'timeline") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.Text.Encoding.encodeUtf8 _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData DmaFenceSignaledFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DmaFenceSignaledFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DmaFenceSignaledFtraceEvent'context x__)
                (Control.DeepSeq.deepseq
                   (_DmaFenceSignaledFtraceEvent'driver x__)
                   (Control.DeepSeq.deepseq
                      (_DmaFenceSignaledFtraceEvent'seqno x__)
                      (Control.DeepSeq.deepseq
                         (_DmaFenceSignaledFtraceEvent'timeline x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmaFence_Fields.context' @:: Lens' DmaFenceWaitEndFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmaFence_Fields.maybe'context' @:: Lens' DmaFenceWaitEndFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmaFence_Fields.driver' @:: Lens' DmaFenceWaitEndFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmaFence_Fields.maybe'driver' @:: Lens' DmaFenceWaitEndFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmaFence_Fields.seqno' @:: Lens' DmaFenceWaitEndFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmaFence_Fields.maybe'seqno' @:: Lens' DmaFenceWaitEndFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmaFence_Fields.timeline' @:: Lens' DmaFenceWaitEndFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmaFence_Fields.maybe'timeline' @:: Lens' DmaFenceWaitEndFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data DmaFenceWaitEndFtraceEvent
  = DmaFenceWaitEndFtraceEvent'_constructor {_DmaFenceWaitEndFtraceEvent'context :: !(Prelude.Maybe Data.Word.Word32),
                                             _DmaFenceWaitEndFtraceEvent'driver :: !(Prelude.Maybe Data.Text.Text),
                                             _DmaFenceWaitEndFtraceEvent'seqno :: !(Prelude.Maybe Data.Word.Word32),
                                             _DmaFenceWaitEndFtraceEvent'timeline :: !(Prelude.Maybe Data.Text.Text),
                                             _DmaFenceWaitEndFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DmaFenceWaitEndFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DmaFenceWaitEndFtraceEvent "context" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaFenceWaitEndFtraceEvent'context
           (\ x__ y__ -> x__ {_DmaFenceWaitEndFtraceEvent'context = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DmaFenceWaitEndFtraceEvent "maybe'context" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaFenceWaitEndFtraceEvent'context
           (\ x__ y__ -> x__ {_DmaFenceWaitEndFtraceEvent'context = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DmaFenceWaitEndFtraceEvent "driver" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaFenceWaitEndFtraceEvent'driver
           (\ x__ y__ -> x__ {_DmaFenceWaitEndFtraceEvent'driver = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DmaFenceWaitEndFtraceEvent "maybe'driver" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaFenceWaitEndFtraceEvent'driver
           (\ x__ y__ -> x__ {_DmaFenceWaitEndFtraceEvent'driver = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DmaFenceWaitEndFtraceEvent "seqno" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaFenceWaitEndFtraceEvent'seqno
           (\ x__ y__ -> x__ {_DmaFenceWaitEndFtraceEvent'seqno = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DmaFenceWaitEndFtraceEvent "maybe'seqno" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaFenceWaitEndFtraceEvent'seqno
           (\ x__ y__ -> x__ {_DmaFenceWaitEndFtraceEvent'seqno = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DmaFenceWaitEndFtraceEvent "timeline" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaFenceWaitEndFtraceEvent'timeline
           (\ x__ y__ -> x__ {_DmaFenceWaitEndFtraceEvent'timeline = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DmaFenceWaitEndFtraceEvent "maybe'timeline" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaFenceWaitEndFtraceEvent'timeline
           (\ x__ y__ -> x__ {_DmaFenceWaitEndFtraceEvent'timeline = y__}))
        Prelude.id
instance Data.ProtoLens.Message DmaFenceWaitEndFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.DmaFenceWaitEndFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SUBDmaFenceWaitEndFtraceEvent\DC2\CAN\n\
      \\acontext\CAN\SOH \SOH(\rR\acontext\DC2\SYN\n\
      \\ACKdriver\CAN\STX \SOH(\tR\ACKdriver\DC2\DC4\n\
      \\ENQseqno\CAN\ETX \SOH(\rR\ENQseqno\DC2\SUB\n\
      \\btimeline\CAN\EOT \SOH(\tR\btimeline"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        context__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "context"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'context")) ::
              Data.ProtoLens.FieldDescriptor DmaFenceWaitEndFtraceEvent
        driver__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "driver"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'driver")) ::
              Data.ProtoLens.FieldDescriptor DmaFenceWaitEndFtraceEvent
        seqno__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "seqno"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'seqno")) ::
              Data.ProtoLens.FieldDescriptor DmaFenceWaitEndFtraceEvent
        timeline__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timeline"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timeline")) ::
              Data.ProtoLens.FieldDescriptor DmaFenceWaitEndFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, context__field_descriptor),
           (Data.ProtoLens.Tag 2, driver__field_descriptor),
           (Data.ProtoLens.Tag 3, seqno__field_descriptor),
           (Data.ProtoLens.Tag 4, timeline__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DmaFenceWaitEndFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_DmaFenceWaitEndFtraceEvent'_unknownFields = y__})
  defMessage
    = DmaFenceWaitEndFtraceEvent'_constructor
        {_DmaFenceWaitEndFtraceEvent'context = Prelude.Nothing,
         _DmaFenceWaitEndFtraceEvent'driver = Prelude.Nothing,
         _DmaFenceWaitEndFtraceEvent'seqno = Prelude.Nothing,
         _DmaFenceWaitEndFtraceEvent'timeline = Prelude.Nothing,
         _DmaFenceWaitEndFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DmaFenceWaitEndFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser DmaFenceWaitEndFtraceEvent
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
                                       "context"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"context") y x)
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
                                       "driver"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"driver") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "seqno"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"seqno") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "timeline"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timeline") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DmaFenceWaitEndFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'context") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'driver") _x
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'seqno") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'timeline") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.Text.Encoding.encodeUtf8 _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData DmaFenceWaitEndFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DmaFenceWaitEndFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DmaFenceWaitEndFtraceEvent'context x__)
                (Control.DeepSeq.deepseq
                   (_DmaFenceWaitEndFtraceEvent'driver x__)
                   (Control.DeepSeq.deepseq
                      (_DmaFenceWaitEndFtraceEvent'seqno x__)
                      (Control.DeepSeq.deepseq
                         (_DmaFenceWaitEndFtraceEvent'timeline x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmaFence_Fields.context' @:: Lens' DmaFenceWaitStartFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmaFence_Fields.maybe'context' @:: Lens' DmaFenceWaitStartFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmaFence_Fields.driver' @:: Lens' DmaFenceWaitStartFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmaFence_Fields.maybe'driver' @:: Lens' DmaFenceWaitStartFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmaFence_Fields.seqno' @:: Lens' DmaFenceWaitStartFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmaFence_Fields.maybe'seqno' @:: Lens' DmaFenceWaitStartFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmaFence_Fields.timeline' @:: Lens' DmaFenceWaitStartFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmaFence_Fields.maybe'timeline' @:: Lens' DmaFenceWaitStartFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data DmaFenceWaitStartFtraceEvent
  = DmaFenceWaitStartFtraceEvent'_constructor {_DmaFenceWaitStartFtraceEvent'context :: !(Prelude.Maybe Data.Word.Word32),
                                               _DmaFenceWaitStartFtraceEvent'driver :: !(Prelude.Maybe Data.Text.Text),
                                               _DmaFenceWaitStartFtraceEvent'seqno :: !(Prelude.Maybe Data.Word.Word32),
                                               _DmaFenceWaitStartFtraceEvent'timeline :: !(Prelude.Maybe Data.Text.Text),
                                               _DmaFenceWaitStartFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DmaFenceWaitStartFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DmaFenceWaitStartFtraceEvent "context" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaFenceWaitStartFtraceEvent'context
           (\ x__ y__ -> x__ {_DmaFenceWaitStartFtraceEvent'context = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DmaFenceWaitStartFtraceEvent "maybe'context" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaFenceWaitStartFtraceEvent'context
           (\ x__ y__ -> x__ {_DmaFenceWaitStartFtraceEvent'context = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DmaFenceWaitStartFtraceEvent "driver" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaFenceWaitStartFtraceEvent'driver
           (\ x__ y__ -> x__ {_DmaFenceWaitStartFtraceEvent'driver = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DmaFenceWaitStartFtraceEvent "maybe'driver" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaFenceWaitStartFtraceEvent'driver
           (\ x__ y__ -> x__ {_DmaFenceWaitStartFtraceEvent'driver = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DmaFenceWaitStartFtraceEvent "seqno" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaFenceWaitStartFtraceEvent'seqno
           (\ x__ y__ -> x__ {_DmaFenceWaitStartFtraceEvent'seqno = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DmaFenceWaitStartFtraceEvent "maybe'seqno" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaFenceWaitStartFtraceEvent'seqno
           (\ x__ y__ -> x__ {_DmaFenceWaitStartFtraceEvent'seqno = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DmaFenceWaitStartFtraceEvent "timeline" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaFenceWaitStartFtraceEvent'timeline
           (\ x__ y__ -> x__ {_DmaFenceWaitStartFtraceEvent'timeline = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DmaFenceWaitStartFtraceEvent "maybe'timeline" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaFenceWaitStartFtraceEvent'timeline
           (\ x__ y__ -> x__ {_DmaFenceWaitStartFtraceEvent'timeline = y__}))
        Prelude.id
instance Data.ProtoLens.Message DmaFenceWaitStartFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.DmaFenceWaitStartFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\FSDmaFenceWaitStartFtraceEvent\DC2\CAN\n\
      \\acontext\CAN\SOH \SOH(\rR\acontext\DC2\SYN\n\
      \\ACKdriver\CAN\STX \SOH(\tR\ACKdriver\DC2\DC4\n\
      \\ENQseqno\CAN\ETX \SOH(\rR\ENQseqno\DC2\SUB\n\
      \\btimeline\CAN\EOT \SOH(\tR\btimeline"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        context__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "context"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'context")) ::
              Data.ProtoLens.FieldDescriptor DmaFenceWaitStartFtraceEvent
        driver__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "driver"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'driver")) ::
              Data.ProtoLens.FieldDescriptor DmaFenceWaitStartFtraceEvent
        seqno__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "seqno"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'seqno")) ::
              Data.ProtoLens.FieldDescriptor DmaFenceWaitStartFtraceEvent
        timeline__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timeline"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timeline")) ::
              Data.ProtoLens.FieldDescriptor DmaFenceWaitStartFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, context__field_descriptor),
           (Data.ProtoLens.Tag 2, driver__field_descriptor),
           (Data.ProtoLens.Tag 3, seqno__field_descriptor),
           (Data.ProtoLens.Tag 4, timeline__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DmaFenceWaitStartFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_DmaFenceWaitStartFtraceEvent'_unknownFields = y__})
  defMessage
    = DmaFenceWaitStartFtraceEvent'_constructor
        {_DmaFenceWaitStartFtraceEvent'context = Prelude.Nothing,
         _DmaFenceWaitStartFtraceEvent'driver = Prelude.Nothing,
         _DmaFenceWaitStartFtraceEvent'seqno = Prelude.Nothing,
         _DmaFenceWaitStartFtraceEvent'timeline = Prelude.Nothing,
         _DmaFenceWaitStartFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DmaFenceWaitStartFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser DmaFenceWaitStartFtraceEvent
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
                                       "context"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"context") y x)
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
                                       "driver"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"driver") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "seqno"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"seqno") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "timeline"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timeline") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DmaFenceWaitStartFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'context") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'driver") _x
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'seqno") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'timeline") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.Text.Encoding.encodeUtf8 _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData DmaFenceWaitStartFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DmaFenceWaitStartFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DmaFenceWaitStartFtraceEvent'context x__)
                (Control.DeepSeq.deepseq
                   (_DmaFenceWaitStartFtraceEvent'driver x__)
                   (Control.DeepSeq.deepseq
                      (_DmaFenceWaitStartFtraceEvent'seqno x__)
                      (Control.DeepSeq.deepseq
                         (_DmaFenceWaitStartFtraceEvent'timeline x__) ()))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \,protos/perfetto/trace/ftrace/dma_fence.proto\DC2\SIperfetto.protos\"}\n\
    \\ETBDmaFenceInitFtraceEvent\DC2\CAN\n\
    \\acontext\CAN\SOH \SOH(\rR\acontext\DC2\SYN\n\
    \\ACKdriver\CAN\STX \SOH(\tR\ACKdriver\DC2\DC4\n\
    \\ENQseqno\CAN\ETX \SOH(\rR\ENQseqno\DC2\SUB\n\
    \\btimeline\CAN\EOT \SOH(\tR\btimeline\"}\n\
    \\ETBDmaFenceEmitFtraceEvent\DC2\CAN\n\
    \\acontext\CAN\SOH \SOH(\rR\acontext\DC2\SYN\n\
    \\ACKdriver\CAN\STX \SOH(\tR\ACKdriver\DC2\DC4\n\
    \\ENQseqno\CAN\ETX \SOH(\rR\ENQseqno\DC2\SUB\n\
    \\btimeline\CAN\EOT \SOH(\tR\btimeline\"\129\SOH\n\
    \\ESCDmaFenceSignaledFtraceEvent\DC2\CAN\n\
    \\acontext\CAN\SOH \SOH(\rR\acontext\DC2\SYN\n\
    \\ACKdriver\CAN\STX \SOH(\tR\ACKdriver\DC2\DC4\n\
    \\ENQseqno\CAN\ETX \SOH(\rR\ENQseqno\DC2\SUB\n\
    \\btimeline\CAN\EOT \SOH(\tR\btimeline\"\130\SOH\n\
    \\FSDmaFenceWaitStartFtraceEvent\DC2\CAN\n\
    \\acontext\CAN\SOH \SOH(\rR\acontext\DC2\SYN\n\
    \\ACKdriver\CAN\STX \SOH(\tR\ACKdriver\DC2\DC4\n\
    \\ENQseqno\CAN\ETX \SOH(\rR\ENQseqno\DC2\SUB\n\
    \\btimeline\CAN\EOT \SOH(\tR\btimeline\"\128\SOH\n\
    \\SUBDmaFenceWaitEndFtraceEvent\DC2\CAN\n\
    \\acontext\CAN\SOH \SOH(\rR\acontext\DC2\SYN\n\
    \\ACKdriver\CAN\STX \SOH(\tR\ACKdriver\DC2\DC4\n\
    \\ENQseqno\CAN\ETX \SOH(\rR\ENQseqno\DC2\SUB\n\
    \\btimeline\CAN\EOT \SOH(\tR\btimelineJ\209\f\n\
    \\ACK\DC2\EOT\EOT\NUL$\SOH\n\
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
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b\US\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\b\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\b\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\b\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\b\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\b\FS\GS\n\
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
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\v\STX\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX\v\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\v\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\v\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\v\GS\RS\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\r\NUL\DC2\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\r\b\US\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\SO\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\SO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\SO\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\SO\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\SO\FS\GS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\SI\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX\SI\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\SI\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\SI\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\SI\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX\DLE\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\EOT\DC2\ETX\DLE\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX\DLE\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX\DLE\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX\DLE\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX\DC1\STX\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\EOT\DC2\ETX\DC1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX\DC1\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX\DC1\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX\DC1\GS\RS\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT\DC3\NUL\CAN\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\DC3\b#\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\DC4\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETX\DC4\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX\DC4\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\DC4\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\DC4\FS\GS\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX\NAK\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETX\NAK\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX\NAK\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX\NAK\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX\NAK\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX\SYN\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\EOT\DC2\ETX\SYN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETX\SYN\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX\SYN\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX\SYN\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETX\ETB\STX\US\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\EOT\DC2\ETX\ETB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ENQ\DC2\ETX\ETB\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETX\ETB\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETX\ETB\GS\RS\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOT\EM\NUL\RS\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX\EM\b$\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX\SUB\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETX\SUB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX\SUB\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX\SUB\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX\SUB\FS\GS\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX\ESC\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\EOT\DC2\ETX\ESC\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETX\ESC\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX\ESC\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX\ESC\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETX\FS\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\EOT\DC2\ETX\FS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\ETX\FS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETX\FS\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETX\FS\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\ETX\GS\STX\US\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\EOT\DC2\ETX\GS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ENQ\DC2\ETX\GS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\ETX\GS\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\ETX\GS\GS\RS\n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOT\US\NUL$\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX\US\b\"\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX \STX\RS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\EOT\DC2\ETX \STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX \v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX \DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX \FS\GS\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETX!\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\EOT\DC2\ETX!\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETX!\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETX!\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETX!\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETX\"\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\EOT\DC2\ETX\"\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ENQ\DC2\ETX\"\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETX\"\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETX\"\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\ETX#\STX\US\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\EOT\DC2\ETX#\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ENQ\DC2\ETX#\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\ETX#\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\ETX#\GS\RS"