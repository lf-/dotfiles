{- This file was auto-generated from protos/perfetto/trace/ftrace/fence.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Fence (
        FenceDestroyFtraceEvent(), FenceEnableSignalFtraceEvent(),
        FenceInitFtraceEvent(), FenceSignaledFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Fence_Fields.context' @:: Lens' FenceDestroyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Fence_Fields.maybe'context' @:: Lens' FenceDestroyFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Fence_Fields.driver' @:: Lens' FenceDestroyFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Fence_Fields.maybe'driver' @:: Lens' FenceDestroyFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Fence_Fields.seqno' @:: Lens' FenceDestroyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Fence_Fields.maybe'seqno' @:: Lens' FenceDestroyFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Fence_Fields.timeline' @:: Lens' FenceDestroyFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Fence_Fields.maybe'timeline' @:: Lens' FenceDestroyFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data FenceDestroyFtraceEvent
  = FenceDestroyFtraceEvent'_constructor {_FenceDestroyFtraceEvent'context :: !(Prelude.Maybe Data.Word.Word32),
                                          _FenceDestroyFtraceEvent'driver :: !(Prelude.Maybe Data.Text.Text),
                                          _FenceDestroyFtraceEvent'seqno :: !(Prelude.Maybe Data.Word.Word32),
                                          _FenceDestroyFtraceEvent'timeline :: !(Prelude.Maybe Data.Text.Text),
                                          _FenceDestroyFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FenceDestroyFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FenceDestroyFtraceEvent "context" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FenceDestroyFtraceEvent'context
           (\ x__ y__ -> x__ {_FenceDestroyFtraceEvent'context = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FenceDestroyFtraceEvent "maybe'context" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FenceDestroyFtraceEvent'context
           (\ x__ y__ -> x__ {_FenceDestroyFtraceEvent'context = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FenceDestroyFtraceEvent "driver" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FenceDestroyFtraceEvent'driver
           (\ x__ y__ -> x__ {_FenceDestroyFtraceEvent'driver = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FenceDestroyFtraceEvent "maybe'driver" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FenceDestroyFtraceEvent'driver
           (\ x__ y__ -> x__ {_FenceDestroyFtraceEvent'driver = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FenceDestroyFtraceEvent "seqno" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FenceDestroyFtraceEvent'seqno
           (\ x__ y__ -> x__ {_FenceDestroyFtraceEvent'seqno = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FenceDestroyFtraceEvent "maybe'seqno" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FenceDestroyFtraceEvent'seqno
           (\ x__ y__ -> x__ {_FenceDestroyFtraceEvent'seqno = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FenceDestroyFtraceEvent "timeline" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FenceDestroyFtraceEvent'timeline
           (\ x__ y__ -> x__ {_FenceDestroyFtraceEvent'timeline = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FenceDestroyFtraceEvent "maybe'timeline" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FenceDestroyFtraceEvent'timeline
           (\ x__ y__ -> x__ {_FenceDestroyFtraceEvent'timeline = y__}))
        Prelude.id
instance Data.ProtoLens.Message FenceDestroyFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.FenceDestroyFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ETBFenceDestroyFtraceEvent\DC2\CAN\n\
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
              Data.ProtoLens.FieldDescriptor FenceDestroyFtraceEvent
        driver__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "driver"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'driver")) ::
              Data.ProtoLens.FieldDescriptor FenceDestroyFtraceEvent
        seqno__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "seqno"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'seqno")) ::
              Data.ProtoLens.FieldDescriptor FenceDestroyFtraceEvent
        timeline__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timeline"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timeline")) ::
              Data.ProtoLens.FieldDescriptor FenceDestroyFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, context__field_descriptor),
           (Data.ProtoLens.Tag 2, driver__field_descriptor),
           (Data.ProtoLens.Tag 3, seqno__field_descriptor),
           (Data.ProtoLens.Tag 4, timeline__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FenceDestroyFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_FenceDestroyFtraceEvent'_unknownFields = y__})
  defMessage
    = FenceDestroyFtraceEvent'_constructor
        {_FenceDestroyFtraceEvent'context = Prelude.Nothing,
         _FenceDestroyFtraceEvent'driver = Prelude.Nothing,
         _FenceDestroyFtraceEvent'seqno = Prelude.Nothing,
         _FenceDestroyFtraceEvent'timeline = Prelude.Nothing,
         _FenceDestroyFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FenceDestroyFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser FenceDestroyFtraceEvent
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
          (do loop Data.ProtoLens.defMessage) "FenceDestroyFtraceEvent"
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
instance Control.DeepSeq.NFData FenceDestroyFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FenceDestroyFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FenceDestroyFtraceEvent'context x__)
                (Control.DeepSeq.deepseq
                   (_FenceDestroyFtraceEvent'driver x__)
                   (Control.DeepSeq.deepseq
                      (_FenceDestroyFtraceEvent'seqno x__)
                      (Control.DeepSeq.deepseq
                         (_FenceDestroyFtraceEvent'timeline x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Fence_Fields.context' @:: Lens' FenceEnableSignalFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Fence_Fields.maybe'context' @:: Lens' FenceEnableSignalFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Fence_Fields.driver' @:: Lens' FenceEnableSignalFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Fence_Fields.maybe'driver' @:: Lens' FenceEnableSignalFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Fence_Fields.seqno' @:: Lens' FenceEnableSignalFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Fence_Fields.maybe'seqno' @:: Lens' FenceEnableSignalFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Fence_Fields.timeline' @:: Lens' FenceEnableSignalFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Fence_Fields.maybe'timeline' @:: Lens' FenceEnableSignalFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data FenceEnableSignalFtraceEvent
  = FenceEnableSignalFtraceEvent'_constructor {_FenceEnableSignalFtraceEvent'context :: !(Prelude.Maybe Data.Word.Word32),
                                               _FenceEnableSignalFtraceEvent'driver :: !(Prelude.Maybe Data.Text.Text),
                                               _FenceEnableSignalFtraceEvent'seqno :: !(Prelude.Maybe Data.Word.Word32),
                                               _FenceEnableSignalFtraceEvent'timeline :: !(Prelude.Maybe Data.Text.Text),
                                               _FenceEnableSignalFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FenceEnableSignalFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FenceEnableSignalFtraceEvent "context" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FenceEnableSignalFtraceEvent'context
           (\ x__ y__ -> x__ {_FenceEnableSignalFtraceEvent'context = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FenceEnableSignalFtraceEvent "maybe'context" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FenceEnableSignalFtraceEvent'context
           (\ x__ y__ -> x__ {_FenceEnableSignalFtraceEvent'context = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FenceEnableSignalFtraceEvent "driver" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FenceEnableSignalFtraceEvent'driver
           (\ x__ y__ -> x__ {_FenceEnableSignalFtraceEvent'driver = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FenceEnableSignalFtraceEvent "maybe'driver" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FenceEnableSignalFtraceEvent'driver
           (\ x__ y__ -> x__ {_FenceEnableSignalFtraceEvent'driver = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FenceEnableSignalFtraceEvent "seqno" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FenceEnableSignalFtraceEvent'seqno
           (\ x__ y__ -> x__ {_FenceEnableSignalFtraceEvent'seqno = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FenceEnableSignalFtraceEvent "maybe'seqno" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FenceEnableSignalFtraceEvent'seqno
           (\ x__ y__ -> x__ {_FenceEnableSignalFtraceEvent'seqno = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FenceEnableSignalFtraceEvent "timeline" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FenceEnableSignalFtraceEvent'timeline
           (\ x__ y__ -> x__ {_FenceEnableSignalFtraceEvent'timeline = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FenceEnableSignalFtraceEvent "maybe'timeline" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FenceEnableSignalFtraceEvent'timeline
           (\ x__ y__ -> x__ {_FenceEnableSignalFtraceEvent'timeline = y__}))
        Prelude.id
instance Data.ProtoLens.Message FenceEnableSignalFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.FenceEnableSignalFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\FSFenceEnableSignalFtraceEvent\DC2\CAN\n\
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
              Data.ProtoLens.FieldDescriptor FenceEnableSignalFtraceEvent
        driver__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "driver"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'driver")) ::
              Data.ProtoLens.FieldDescriptor FenceEnableSignalFtraceEvent
        seqno__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "seqno"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'seqno")) ::
              Data.ProtoLens.FieldDescriptor FenceEnableSignalFtraceEvent
        timeline__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timeline"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timeline")) ::
              Data.ProtoLens.FieldDescriptor FenceEnableSignalFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, context__field_descriptor),
           (Data.ProtoLens.Tag 2, driver__field_descriptor),
           (Data.ProtoLens.Tag 3, seqno__field_descriptor),
           (Data.ProtoLens.Tag 4, timeline__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FenceEnableSignalFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_FenceEnableSignalFtraceEvent'_unknownFields = y__})
  defMessage
    = FenceEnableSignalFtraceEvent'_constructor
        {_FenceEnableSignalFtraceEvent'context = Prelude.Nothing,
         _FenceEnableSignalFtraceEvent'driver = Prelude.Nothing,
         _FenceEnableSignalFtraceEvent'seqno = Prelude.Nothing,
         _FenceEnableSignalFtraceEvent'timeline = Prelude.Nothing,
         _FenceEnableSignalFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FenceEnableSignalFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser FenceEnableSignalFtraceEvent
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
          (do loop Data.ProtoLens.defMessage) "FenceEnableSignalFtraceEvent"
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
instance Control.DeepSeq.NFData FenceEnableSignalFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FenceEnableSignalFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FenceEnableSignalFtraceEvent'context x__)
                (Control.DeepSeq.deepseq
                   (_FenceEnableSignalFtraceEvent'driver x__)
                   (Control.DeepSeq.deepseq
                      (_FenceEnableSignalFtraceEvent'seqno x__)
                      (Control.DeepSeq.deepseq
                         (_FenceEnableSignalFtraceEvent'timeline x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Fence_Fields.context' @:: Lens' FenceInitFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Fence_Fields.maybe'context' @:: Lens' FenceInitFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Fence_Fields.driver' @:: Lens' FenceInitFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Fence_Fields.maybe'driver' @:: Lens' FenceInitFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Fence_Fields.seqno' @:: Lens' FenceInitFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Fence_Fields.maybe'seqno' @:: Lens' FenceInitFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Fence_Fields.timeline' @:: Lens' FenceInitFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Fence_Fields.maybe'timeline' @:: Lens' FenceInitFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data FenceInitFtraceEvent
  = FenceInitFtraceEvent'_constructor {_FenceInitFtraceEvent'context :: !(Prelude.Maybe Data.Word.Word32),
                                       _FenceInitFtraceEvent'driver :: !(Prelude.Maybe Data.Text.Text),
                                       _FenceInitFtraceEvent'seqno :: !(Prelude.Maybe Data.Word.Word32),
                                       _FenceInitFtraceEvent'timeline :: !(Prelude.Maybe Data.Text.Text),
                                       _FenceInitFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FenceInitFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FenceInitFtraceEvent "context" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FenceInitFtraceEvent'context
           (\ x__ y__ -> x__ {_FenceInitFtraceEvent'context = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FenceInitFtraceEvent "maybe'context" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FenceInitFtraceEvent'context
           (\ x__ y__ -> x__ {_FenceInitFtraceEvent'context = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FenceInitFtraceEvent "driver" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FenceInitFtraceEvent'driver
           (\ x__ y__ -> x__ {_FenceInitFtraceEvent'driver = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FenceInitFtraceEvent "maybe'driver" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FenceInitFtraceEvent'driver
           (\ x__ y__ -> x__ {_FenceInitFtraceEvent'driver = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FenceInitFtraceEvent "seqno" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FenceInitFtraceEvent'seqno
           (\ x__ y__ -> x__ {_FenceInitFtraceEvent'seqno = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FenceInitFtraceEvent "maybe'seqno" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FenceInitFtraceEvent'seqno
           (\ x__ y__ -> x__ {_FenceInitFtraceEvent'seqno = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FenceInitFtraceEvent "timeline" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FenceInitFtraceEvent'timeline
           (\ x__ y__ -> x__ {_FenceInitFtraceEvent'timeline = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FenceInitFtraceEvent "maybe'timeline" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FenceInitFtraceEvent'timeline
           (\ x__ y__ -> x__ {_FenceInitFtraceEvent'timeline = y__}))
        Prelude.id
instance Data.ProtoLens.Message FenceInitFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.FenceInitFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\DC4FenceInitFtraceEvent\DC2\CAN\n\
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
              Data.ProtoLens.FieldDescriptor FenceInitFtraceEvent
        driver__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "driver"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'driver")) ::
              Data.ProtoLens.FieldDescriptor FenceInitFtraceEvent
        seqno__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "seqno"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'seqno")) ::
              Data.ProtoLens.FieldDescriptor FenceInitFtraceEvent
        timeline__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timeline"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timeline")) ::
              Data.ProtoLens.FieldDescriptor FenceInitFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, context__field_descriptor),
           (Data.ProtoLens.Tag 2, driver__field_descriptor),
           (Data.ProtoLens.Tag 3, seqno__field_descriptor),
           (Data.ProtoLens.Tag 4, timeline__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FenceInitFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_FenceInitFtraceEvent'_unknownFields = y__})
  defMessage
    = FenceInitFtraceEvent'_constructor
        {_FenceInitFtraceEvent'context = Prelude.Nothing,
         _FenceInitFtraceEvent'driver = Prelude.Nothing,
         _FenceInitFtraceEvent'seqno = Prelude.Nothing,
         _FenceInitFtraceEvent'timeline = Prelude.Nothing,
         _FenceInitFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FenceInitFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser FenceInitFtraceEvent
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
          (do loop Data.ProtoLens.defMessage) "FenceInitFtraceEvent"
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
instance Control.DeepSeq.NFData FenceInitFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FenceInitFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FenceInitFtraceEvent'context x__)
                (Control.DeepSeq.deepseq
                   (_FenceInitFtraceEvent'driver x__)
                   (Control.DeepSeq.deepseq
                      (_FenceInitFtraceEvent'seqno x__)
                      (Control.DeepSeq.deepseq
                         (_FenceInitFtraceEvent'timeline x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Fence_Fields.context' @:: Lens' FenceSignaledFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Fence_Fields.maybe'context' @:: Lens' FenceSignaledFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Fence_Fields.driver' @:: Lens' FenceSignaledFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Fence_Fields.maybe'driver' @:: Lens' FenceSignaledFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Fence_Fields.seqno' @:: Lens' FenceSignaledFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Fence_Fields.maybe'seqno' @:: Lens' FenceSignaledFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Fence_Fields.timeline' @:: Lens' FenceSignaledFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Fence_Fields.maybe'timeline' @:: Lens' FenceSignaledFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data FenceSignaledFtraceEvent
  = FenceSignaledFtraceEvent'_constructor {_FenceSignaledFtraceEvent'context :: !(Prelude.Maybe Data.Word.Word32),
                                           _FenceSignaledFtraceEvent'driver :: !(Prelude.Maybe Data.Text.Text),
                                           _FenceSignaledFtraceEvent'seqno :: !(Prelude.Maybe Data.Word.Word32),
                                           _FenceSignaledFtraceEvent'timeline :: !(Prelude.Maybe Data.Text.Text),
                                           _FenceSignaledFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FenceSignaledFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FenceSignaledFtraceEvent "context" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FenceSignaledFtraceEvent'context
           (\ x__ y__ -> x__ {_FenceSignaledFtraceEvent'context = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FenceSignaledFtraceEvent "maybe'context" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FenceSignaledFtraceEvent'context
           (\ x__ y__ -> x__ {_FenceSignaledFtraceEvent'context = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FenceSignaledFtraceEvent "driver" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FenceSignaledFtraceEvent'driver
           (\ x__ y__ -> x__ {_FenceSignaledFtraceEvent'driver = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FenceSignaledFtraceEvent "maybe'driver" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FenceSignaledFtraceEvent'driver
           (\ x__ y__ -> x__ {_FenceSignaledFtraceEvent'driver = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FenceSignaledFtraceEvent "seqno" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FenceSignaledFtraceEvent'seqno
           (\ x__ y__ -> x__ {_FenceSignaledFtraceEvent'seqno = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FenceSignaledFtraceEvent "maybe'seqno" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FenceSignaledFtraceEvent'seqno
           (\ x__ y__ -> x__ {_FenceSignaledFtraceEvent'seqno = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FenceSignaledFtraceEvent "timeline" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FenceSignaledFtraceEvent'timeline
           (\ x__ y__ -> x__ {_FenceSignaledFtraceEvent'timeline = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FenceSignaledFtraceEvent "maybe'timeline" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FenceSignaledFtraceEvent'timeline
           (\ x__ y__ -> x__ {_FenceSignaledFtraceEvent'timeline = y__}))
        Prelude.id
instance Data.ProtoLens.Message FenceSignaledFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.FenceSignaledFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\CANFenceSignaledFtraceEvent\DC2\CAN\n\
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
              Data.ProtoLens.FieldDescriptor FenceSignaledFtraceEvent
        driver__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "driver"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'driver")) ::
              Data.ProtoLens.FieldDescriptor FenceSignaledFtraceEvent
        seqno__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "seqno"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'seqno")) ::
              Data.ProtoLens.FieldDescriptor FenceSignaledFtraceEvent
        timeline__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timeline"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timeline")) ::
              Data.ProtoLens.FieldDescriptor FenceSignaledFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, context__field_descriptor),
           (Data.ProtoLens.Tag 2, driver__field_descriptor),
           (Data.ProtoLens.Tag 3, seqno__field_descriptor),
           (Data.ProtoLens.Tag 4, timeline__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FenceSignaledFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_FenceSignaledFtraceEvent'_unknownFields = y__})
  defMessage
    = FenceSignaledFtraceEvent'_constructor
        {_FenceSignaledFtraceEvent'context = Prelude.Nothing,
         _FenceSignaledFtraceEvent'driver = Prelude.Nothing,
         _FenceSignaledFtraceEvent'seqno = Prelude.Nothing,
         _FenceSignaledFtraceEvent'timeline = Prelude.Nothing,
         _FenceSignaledFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FenceSignaledFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser FenceSignaledFtraceEvent
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
          (do loop Data.ProtoLens.defMessage) "FenceSignaledFtraceEvent"
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
instance Control.DeepSeq.NFData FenceSignaledFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FenceSignaledFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FenceSignaledFtraceEvent'context x__)
                (Control.DeepSeq.deepseq
                   (_FenceSignaledFtraceEvent'driver x__)
                   (Control.DeepSeq.deepseq
                      (_FenceSignaledFtraceEvent'seqno x__)
                      (Control.DeepSeq.deepseq
                         (_FenceSignaledFtraceEvent'timeline x__) ()))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \(protos/perfetto/trace/ftrace/fence.proto\DC2\SIperfetto.protos\"z\n\
    \\DC4FenceInitFtraceEvent\DC2\CAN\n\
    \\acontext\CAN\SOH \SOH(\rR\acontext\DC2\SYN\n\
    \\ACKdriver\CAN\STX \SOH(\tR\ACKdriver\DC2\DC4\n\
    \\ENQseqno\CAN\ETX \SOH(\rR\ENQseqno\DC2\SUB\n\
    \\btimeline\CAN\EOT \SOH(\tR\btimeline\"}\n\
    \\ETBFenceDestroyFtraceEvent\DC2\CAN\n\
    \\acontext\CAN\SOH \SOH(\rR\acontext\DC2\SYN\n\
    \\ACKdriver\CAN\STX \SOH(\tR\ACKdriver\DC2\DC4\n\
    \\ENQseqno\CAN\ETX \SOH(\rR\ENQseqno\DC2\SUB\n\
    \\btimeline\CAN\EOT \SOH(\tR\btimeline\"\130\SOH\n\
    \\FSFenceEnableSignalFtraceEvent\DC2\CAN\n\
    \\acontext\CAN\SOH \SOH(\rR\acontext\DC2\SYN\n\
    \\ACKdriver\CAN\STX \SOH(\tR\ACKdriver\DC2\DC4\n\
    \\ENQseqno\CAN\ETX \SOH(\rR\ENQseqno\DC2\SUB\n\
    \\btimeline\CAN\EOT \SOH(\tR\btimeline\"~\n\
    \\CANFenceSignaledFtraceEvent\DC2\CAN\n\
    \\acontext\CAN\SOH \SOH(\rR\acontext\DC2\SYN\n\
    \\ACKdriver\CAN\STX \SOH(\tR\ACKdriver\DC2\DC4\n\
    \\ENQseqno\CAN\ETX \SOH(\rR\ENQseqno\DC2\SUB\n\
    \\btimeline\CAN\EOT \SOH(\tR\btimelineJ\165\n\
    \\n\
    \\ACK\DC2\EOT\EOT\NUL\RS\SOH\n\
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
    \\ETX\EOT\STX\SOH\DC2\ETX\DC3\b$\n\
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
    \\ETX\EOT\ETX\SOH\DC2\ETX\EM\b \n\
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
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\ETX\GS\GS\RS"