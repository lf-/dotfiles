{- This file was auto-generated from protos/perfetto/trace/ftrace/virtio_video.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.VirtioVideo (
        VirtioVideoCmdDoneFtraceEvent(), VirtioVideoCmdFtraceEvent(),
        VirtioVideoResourceQueueDoneFtraceEvent(),
        VirtioVideoResourceQueueFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioVideo_Fields.streamId' @:: Lens' VirtioVideoCmdDoneFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioVideo_Fields.maybe'streamId' @:: Lens' VirtioVideoCmdDoneFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioVideo_Fields.type'' @:: Lens' VirtioVideoCmdDoneFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioVideo_Fields.maybe'type'' @:: Lens' VirtioVideoCmdDoneFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data VirtioVideoCmdDoneFtraceEvent
  = VirtioVideoCmdDoneFtraceEvent'_constructor {_VirtioVideoCmdDoneFtraceEvent'streamId :: !(Prelude.Maybe Data.Word.Word32),
                                                _VirtioVideoCmdDoneFtraceEvent'type' :: !(Prelude.Maybe Data.Word.Word32),
                                                _VirtioVideoCmdDoneFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show VirtioVideoCmdDoneFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField VirtioVideoCmdDoneFtraceEvent "streamId" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioVideoCmdDoneFtraceEvent'streamId
           (\ x__ y__ -> x__ {_VirtioVideoCmdDoneFtraceEvent'streamId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField VirtioVideoCmdDoneFtraceEvent "maybe'streamId" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioVideoCmdDoneFtraceEvent'streamId
           (\ x__ y__ -> x__ {_VirtioVideoCmdDoneFtraceEvent'streamId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VirtioVideoCmdDoneFtraceEvent "type'" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioVideoCmdDoneFtraceEvent'type'
           (\ x__ y__ -> x__ {_VirtioVideoCmdDoneFtraceEvent'type' = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField VirtioVideoCmdDoneFtraceEvent "maybe'type'" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioVideoCmdDoneFtraceEvent'type'
           (\ x__ y__ -> x__ {_VirtioVideoCmdDoneFtraceEvent'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Message VirtioVideoCmdDoneFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.VirtioVideoCmdDoneFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\GSVirtioVideoCmdDoneFtraceEvent\DC2\ESC\n\
      \\tstream_id\CAN\SOH \SOH(\rR\bstreamId\DC2\DC2\n\
      \\EOTtype\CAN\STX \SOH(\rR\EOTtype"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        streamId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stream_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'streamId")) ::
              Data.ProtoLens.FieldDescriptor VirtioVideoCmdDoneFtraceEvent
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'type'")) ::
              Data.ProtoLens.FieldDescriptor VirtioVideoCmdDoneFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, streamId__field_descriptor),
           (Data.ProtoLens.Tag 2, type'__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _VirtioVideoCmdDoneFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_VirtioVideoCmdDoneFtraceEvent'_unknownFields = y__})
  defMessage
    = VirtioVideoCmdDoneFtraceEvent'_constructor
        {_VirtioVideoCmdDoneFtraceEvent'streamId = Prelude.Nothing,
         _VirtioVideoCmdDoneFtraceEvent'type' = Prelude.Nothing,
         _VirtioVideoCmdDoneFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          VirtioVideoCmdDoneFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser VirtioVideoCmdDoneFtraceEvent
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
                                       "stream_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"streamId") y x)
                        16
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
          (do loop Data.ProtoLens.defMessage) "VirtioVideoCmdDoneFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'streamId") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'type'") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData VirtioVideoCmdDoneFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_VirtioVideoCmdDoneFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_VirtioVideoCmdDoneFtraceEvent'streamId x__)
                (Control.DeepSeq.deepseq
                   (_VirtioVideoCmdDoneFtraceEvent'type' x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioVideo_Fields.streamId' @:: Lens' VirtioVideoCmdFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioVideo_Fields.maybe'streamId' @:: Lens' VirtioVideoCmdFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioVideo_Fields.type'' @:: Lens' VirtioVideoCmdFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioVideo_Fields.maybe'type'' @:: Lens' VirtioVideoCmdFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data VirtioVideoCmdFtraceEvent
  = VirtioVideoCmdFtraceEvent'_constructor {_VirtioVideoCmdFtraceEvent'streamId :: !(Prelude.Maybe Data.Word.Word32),
                                            _VirtioVideoCmdFtraceEvent'type' :: !(Prelude.Maybe Data.Word.Word32),
                                            _VirtioVideoCmdFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show VirtioVideoCmdFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField VirtioVideoCmdFtraceEvent "streamId" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioVideoCmdFtraceEvent'streamId
           (\ x__ y__ -> x__ {_VirtioVideoCmdFtraceEvent'streamId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField VirtioVideoCmdFtraceEvent "maybe'streamId" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioVideoCmdFtraceEvent'streamId
           (\ x__ y__ -> x__ {_VirtioVideoCmdFtraceEvent'streamId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VirtioVideoCmdFtraceEvent "type'" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioVideoCmdFtraceEvent'type'
           (\ x__ y__ -> x__ {_VirtioVideoCmdFtraceEvent'type' = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField VirtioVideoCmdFtraceEvent "maybe'type'" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioVideoCmdFtraceEvent'type'
           (\ x__ y__ -> x__ {_VirtioVideoCmdFtraceEvent'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Message VirtioVideoCmdFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.VirtioVideoCmdFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\EMVirtioVideoCmdFtraceEvent\DC2\ESC\n\
      \\tstream_id\CAN\SOH \SOH(\rR\bstreamId\DC2\DC2\n\
      \\EOTtype\CAN\STX \SOH(\rR\EOTtype"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        streamId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stream_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'streamId")) ::
              Data.ProtoLens.FieldDescriptor VirtioVideoCmdFtraceEvent
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'type'")) ::
              Data.ProtoLens.FieldDescriptor VirtioVideoCmdFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, streamId__field_descriptor),
           (Data.ProtoLens.Tag 2, type'__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _VirtioVideoCmdFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_VirtioVideoCmdFtraceEvent'_unknownFields = y__})
  defMessage
    = VirtioVideoCmdFtraceEvent'_constructor
        {_VirtioVideoCmdFtraceEvent'streamId = Prelude.Nothing,
         _VirtioVideoCmdFtraceEvent'type' = Prelude.Nothing,
         _VirtioVideoCmdFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          VirtioVideoCmdFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser VirtioVideoCmdFtraceEvent
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
                                       "stream_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"streamId") y x)
                        16
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
          (do loop Data.ProtoLens.defMessage) "VirtioVideoCmdFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'streamId") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'type'") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData VirtioVideoCmdFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_VirtioVideoCmdFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_VirtioVideoCmdFtraceEvent'streamId x__)
                (Control.DeepSeq.deepseq
                   (_VirtioVideoCmdFtraceEvent'type' x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioVideo_Fields.dataSize0' @:: Lens' VirtioVideoResourceQueueDoneFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioVideo_Fields.maybe'dataSize0' @:: Lens' VirtioVideoResourceQueueDoneFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioVideo_Fields.dataSize1' @:: Lens' VirtioVideoResourceQueueDoneFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioVideo_Fields.maybe'dataSize1' @:: Lens' VirtioVideoResourceQueueDoneFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioVideo_Fields.dataSize2' @:: Lens' VirtioVideoResourceQueueDoneFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioVideo_Fields.maybe'dataSize2' @:: Lens' VirtioVideoResourceQueueDoneFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioVideo_Fields.dataSize3' @:: Lens' VirtioVideoResourceQueueDoneFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioVideo_Fields.maybe'dataSize3' @:: Lens' VirtioVideoResourceQueueDoneFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioVideo_Fields.queueType' @:: Lens' VirtioVideoResourceQueueDoneFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioVideo_Fields.maybe'queueType' @:: Lens' VirtioVideoResourceQueueDoneFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioVideo_Fields.resourceId' @:: Lens' VirtioVideoResourceQueueDoneFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioVideo_Fields.maybe'resourceId' @:: Lens' VirtioVideoResourceQueueDoneFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioVideo_Fields.streamId' @:: Lens' VirtioVideoResourceQueueDoneFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioVideo_Fields.maybe'streamId' @:: Lens' VirtioVideoResourceQueueDoneFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioVideo_Fields.timestamp' @:: Lens' VirtioVideoResourceQueueDoneFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioVideo_Fields.maybe'timestamp' @:: Lens' VirtioVideoResourceQueueDoneFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data VirtioVideoResourceQueueDoneFtraceEvent
  = VirtioVideoResourceQueueDoneFtraceEvent'_constructor {_VirtioVideoResourceQueueDoneFtraceEvent'dataSize0 :: !(Prelude.Maybe Data.Word.Word32),
                                                          _VirtioVideoResourceQueueDoneFtraceEvent'dataSize1 :: !(Prelude.Maybe Data.Word.Word32),
                                                          _VirtioVideoResourceQueueDoneFtraceEvent'dataSize2 :: !(Prelude.Maybe Data.Word.Word32),
                                                          _VirtioVideoResourceQueueDoneFtraceEvent'dataSize3 :: !(Prelude.Maybe Data.Word.Word32),
                                                          _VirtioVideoResourceQueueDoneFtraceEvent'queueType :: !(Prelude.Maybe Data.Word.Word32),
                                                          _VirtioVideoResourceQueueDoneFtraceEvent'resourceId :: !(Prelude.Maybe Data.Int.Int32),
                                                          _VirtioVideoResourceQueueDoneFtraceEvent'streamId :: !(Prelude.Maybe Data.Int.Int32),
                                                          _VirtioVideoResourceQueueDoneFtraceEvent'timestamp :: !(Prelude.Maybe Data.Word.Word64),
                                                          _VirtioVideoResourceQueueDoneFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show VirtioVideoResourceQueueDoneFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField VirtioVideoResourceQueueDoneFtraceEvent "dataSize0" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioVideoResourceQueueDoneFtraceEvent'dataSize0
           (\ x__ y__
              -> x__ {_VirtioVideoResourceQueueDoneFtraceEvent'dataSize0 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField VirtioVideoResourceQueueDoneFtraceEvent "maybe'dataSize0" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioVideoResourceQueueDoneFtraceEvent'dataSize0
           (\ x__ y__
              -> x__ {_VirtioVideoResourceQueueDoneFtraceEvent'dataSize0 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VirtioVideoResourceQueueDoneFtraceEvent "dataSize1" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioVideoResourceQueueDoneFtraceEvent'dataSize1
           (\ x__ y__
              -> x__ {_VirtioVideoResourceQueueDoneFtraceEvent'dataSize1 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField VirtioVideoResourceQueueDoneFtraceEvent "maybe'dataSize1" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioVideoResourceQueueDoneFtraceEvent'dataSize1
           (\ x__ y__
              -> x__ {_VirtioVideoResourceQueueDoneFtraceEvent'dataSize1 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VirtioVideoResourceQueueDoneFtraceEvent "dataSize2" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioVideoResourceQueueDoneFtraceEvent'dataSize2
           (\ x__ y__
              -> x__ {_VirtioVideoResourceQueueDoneFtraceEvent'dataSize2 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField VirtioVideoResourceQueueDoneFtraceEvent "maybe'dataSize2" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioVideoResourceQueueDoneFtraceEvent'dataSize2
           (\ x__ y__
              -> x__ {_VirtioVideoResourceQueueDoneFtraceEvent'dataSize2 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VirtioVideoResourceQueueDoneFtraceEvent "dataSize3" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioVideoResourceQueueDoneFtraceEvent'dataSize3
           (\ x__ y__
              -> x__ {_VirtioVideoResourceQueueDoneFtraceEvent'dataSize3 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField VirtioVideoResourceQueueDoneFtraceEvent "maybe'dataSize3" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioVideoResourceQueueDoneFtraceEvent'dataSize3
           (\ x__ y__
              -> x__ {_VirtioVideoResourceQueueDoneFtraceEvent'dataSize3 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VirtioVideoResourceQueueDoneFtraceEvent "queueType" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioVideoResourceQueueDoneFtraceEvent'queueType
           (\ x__ y__
              -> x__ {_VirtioVideoResourceQueueDoneFtraceEvent'queueType = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField VirtioVideoResourceQueueDoneFtraceEvent "maybe'queueType" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioVideoResourceQueueDoneFtraceEvent'queueType
           (\ x__ y__
              -> x__ {_VirtioVideoResourceQueueDoneFtraceEvent'queueType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VirtioVideoResourceQueueDoneFtraceEvent "resourceId" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioVideoResourceQueueDoneFtraceEvent'resourceId
           (\ x__ y__
              -> x__
                   {_VirtioVideoResourceQueueDoneFtraceEvent'resourceId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField VirtioVideoResourceQueueDoneFtraceEvent "maybe'resourceId" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioVideoResourceQueueDoneFtraceEvent'resourceId
           (\ x__ y__
              -> x__
                   {_VirtioVideoResourceQueueDoneFtraceEvent'resourceId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VirtioVideoResourceQueueDoneFtraceEvent "streamId" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioVideoResourceQueueDoneFtraceEvent'streamId
           (\ x__ y__
              -> x__ {_VirtioVideoResourceQueueDoneFtraceEvent'streamId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField VirtioVideoResourceQueueDoneFtraceEvent "maybe'streamId" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioVideoResourceQueueDoneFtraceEvent'streamId
           (\ x__ y__
              -> x__ {_VirtioVideoResourceQueueDoneFtraceEvent'streamId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VirtioVideoResourceQueueDoneFtraceEvent "timestamp" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioVideoResourceQueueDoneFtraceEvent'timestamp
           (\ x__ y__
              -> x__ {_VirtioVideoResourceQueueDoneFtraceEvent'timestamp = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField VirtioVideoResourceQueueDoneFtraceEvent "maybe'timestamp" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioVideoResourceQueueDoneFtraceEvent'timestamp
           (\ x__ y__
              -> x__ {_VirtioVideoResourceQueueDoneFtraceEvent'timestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Message VirtioVideoResourceQueueDoneFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.VirtioVideoResourceQueueDoneFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \'VirtioVideoResourceQueueDoneFtraceEvent\DC2\GS\n\
      \\n\
      \data_size0\CAN\SOH \SOH(\rR\tdataSize0\DC2\GS\n\
      \\n\
      \data_size1\CAN\STX \SOH(\rR\tdataSize1\DC2\GS\n\
      \\n\
      \data_size2\CAN\ETX \SOH(\rR\tdataSize2\DC2\GS\n\
      \\n\
      \data_size3\CAN\EOT \SOH(\rR\tdataSize3\DC2\GS\n\
      \\n\
      \queue_type\CAN\ENQ \SOH(\rR\tqueueType\DC2\US\n\
      \\vresource_id\CAN\ACK \SOH(\ENQR\n\
      \resourceId\DC2\ESC\n\
      \\tstream_id\CAN\a \SOH(\ENQR\bstreamId\DC2\FS\n\
      \\ttimestamp\CAN\b \SOH(\EOTR\ttimestamp"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dataSize0__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "data_size0"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dataSize0")) ::
              Data.ProtoLens.FieldDescriptor VirtioVideoResourceQueueDoneFtraceEvent
        dataSize1__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "data_size1"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dataSize1")) ::
              Data.ProtoLens.FieldDescriptor VirtioVideoResourceQueueDoneFtraceEvent
        dataSize2__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "data_size2"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dataSize2")) ::
              Data.ProtoLens.FieldDescriptor VirtioVideoResourceQueueDoneFtraceEvent
        dataSize3__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "data_size3"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dataSize3")) ::
              Data.ProtoLens.FieldDescriptor VirtioVideoResourceQueueDoneFtraceEvent
        queueType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "queue_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'queueType")) ::
              Data.ProtoLens.FieldDescriptor VirtioVideoResourceQueueDoneFtraceEvent
        resourceId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "resource_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'resourceId")) ::
              Data.ProtoLens.FieldDescriptor VirtioVideoResourceQueueDoneFtraceEvent
        streamId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stream_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'streamId")) ::
              Data.ProtoLens.FieldDescriptor VirtioVideoResourceQueueDoneFtraceEvent
        timestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timestamp"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timestamp")) ::
              Data.ProtoLens.FieldDescriptor VirtioVideoResourceQueueDoneFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dataSize0__field_descriptor),
           (Data.ProtoLens.Tag 2, dataSize1__field_descriptor),
           (Data.ProtoLens.Tag 3, dataSize2__field_descriptor),
           (Data.ProtoLens.Tag 4, dataSize3__field_descriptor),
           (Data.ProtoLens.Tag 5, queueType__field_descriptor),
           (Data.ProtoLens.Tag 6, resourceId__field_descriptor),
           (Data.ProtoLens.Tag 7, streamId__field_descriptor),
           (Data.ProtoLens.Tag 8, timestamp__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _VirtioVideoResourceQueueDoneFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__
                {_VirtioVideoResourceQueueDoneFtraceEvent'_unknownFields = y__})
  defMessage
    = VirtioVideoResourceQueueDoneFtraceEvent'_constructor
        {_VirtioVideoResourceQueueDoneFtraceEvent'dataSize0 = Prelude.Nothing,
         _VirtioVideoResourceQueueDoneFtraceEvent'dataSize1 = Prelude.Nothing,
         _VirtioVideoResourceQueueDoneFtraceEvent'dataSize2 = Prelude.Nothing,
         _VirtioVideoResourceQueueDoneFtraceEvent'dataSize3 = Prelude.Nothing,
         _VirtioVideoResourceQueueDoneFtraceEvent'queueType = Prelude.Nothing,
         _VirtioVideoResourceQueueDoneFtraceEvent'resourceId = Prelude.Nothing,
         _VirtioVideoResourceQueueDoneFtraceEvent'streamId = Prelude.Nothing,
         _VirtioVideoResourceQueueDoneFtraceEvent'timestamp = Prelude.Nothing,
         _VirtioVideoResourceQueueDoneFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          VirtioVideoResourceQueueDoneFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser VirtioVideoResourceQueueDoneFtraceEvent
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
                                       "data_size0"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"dataSize0") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "data_size1"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"dataSize1") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "data_size2"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"dataSize2") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "data_size3"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"dataSize3") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "queue_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"queueType") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "resource_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"resourceId") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "stream_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"streamId") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "timestamp"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timestamp") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "VirtioVideoResourceQueueDoneFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'dataSize0") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'dataSize1") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'dataSize2") _x
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
                             (Data.ProtoLens.Field.field @"maybe'dataSize3") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'queueType") _x
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
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'resourceId") _x
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
                                      (Data.ProtoLens.Field.field @"maybe'streamId") _x
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
                                         (Data.ProtoLens.Field.field @"maybe'timestamp") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData VirtioVideoResourceQueueDoneFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_VirtioVideoResourceQueueDoneFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_VirtioVideoResourceQueueDoneFtraceEvent'dataSize0 x__)
                (Control.DeepSeq.deepseq
                   (_VirtioVideoResourceQueueDoneFtraceEvent'dataSize1 x__)
                   (Control.DeepSeq.deepseq
                      (_VirtioVideoResourceQueueDoneFtraceEvent'dataSize2 x__)
                      (Control.DeepSeq.deepseq
                         (_VirtioVideoResourceQueueDoneFtraceEvent'dataSize3 x__)
                         (Control.DeepSeq.deepseq
                            (_VirtioVideoResourceQueueDoneFtraceEvent'queueType x__)
                            (Control.DeepSeq.deepseq
                               (_VirtioVideoResourceQueueDoneFtraceEvent'resourceId x__)
                               (Control.DeepSeq.deepseq
                                  (_VirtioVideoResourceQueueDoneFtraceEvent'streamId x__)
                                  (Control.DeepSeq.deepseq
                                     (_VirtioVideoResourceQueueDoneFtraceEvent'timestamp x__)
                                     ()))))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioVideo_Fields.dataSize0' @:: Lens' VirtioVideoResourceQueueFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioVideo_Fields.maybe'dataSize0' @:: Lens' VirtioVideoResourceQueueFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioVideo_Fields.dataSize1' @:: Lens' VirtioVideoResourceQueueFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioVideo_Fields.maybe'dataSize1' @:: Lens' VirtioVideoResourceQueueFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioVideo_Fields.dataSize2' @:: Lens' VirtioVideoResourceQueueFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioVideo_Fields.maybe'dataSize2' @:: Lens' VirtioVideoResourceQueueFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioVideo_Fields.dataSize3' @:: Lens' VirtioVideoResourceQueueFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioVideo_Fields.maybe'dataSize3' @:: Lens' VirtioVideoResourceQueueFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioVideo_Fields.queueType' @:: Lens' VirtioVideoResourceQueueFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioVideo_Fields.maybe'queueType' @:: Lens' VirtioVideoResourceQueueFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioVideo_Fields.resourceId' @:: Lens' VirtioVideoResourceQueueFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioVideo_Fields.maybe'resourceId' @:: Lens' VirtioVideoResourceQueueFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioVideo_Fields.streamId' @:: Lens' VirtioVideoResourceQueueFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioVideo_Fields.maybe'streamId' @:: Lens' VirtioVideoResourceQueueFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioVideo_Fields.timestamp' @:: Lens' VirtioVideoResourceQueueFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioVideo_Fields.maybe'timestamp' @:: Lens' VirtioVideoResourceQueueFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data VirtioVideoResourceQueueFtraceEvent
  = VirtioVideoResourceQueueFtraceEvent'_constructor {_VirtioVideoResourceQueueFtraceEvent'dataSize0 :: !(Prelude.Maybe Data.Word.Word32),
                                                      _VirtioVideoResourceQueueFtraceEvent'dataSize1 :: !(Prelude.Maybe Data.Word.Word32),
                                                      _VirtioVideoResourceQueueFtraceEvent'dataSize2 :: !(Prelude.Maybe Data.Word.Word32),
                                                      _VirtioVideoResourceQueueFtraceEvent'dataSize3 :: !(Prelude.Maybe Data.Word.Word32),
                                                      _VirtioVideoResourceQueueFtraceEvent'queueType :: !(Prelude.Maybe Data.Word.Word32),
                                                      _VirtioVideoResourceQueueFtraceEvent'resourceId :: !(Prelude.Maybe Data.Int.Int32),
                                                      _VirtioVideoResourceQueueFtraceEvent'streamId :: !(Prelude.Maybe Data.Int.Int32),
                                                      _VirtioVideoResourceQueueFtraceEvent'timestamp :: !(Prelude.Maybe Data.Word.Word64),
                                                      _VirtioVideoResourceQueueFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show VirtioVideoResourceQueueFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField VirtioVideoResourceQueueFtraceEvent "dataSize0" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioVideoResourceQueueFtraceEvent'dataSize0
           (\ x__ y__
              -> x__ {_VirtioVideoResourceQueueFtraceEvent'dataSize0 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField VirtioVideoResourceQueueFtraceEvent "maybe'dataSize0" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioVideoResourceQueueFtraceEvent'dataSize0
           (\ x__ y__
              -> x__ {_VirtioVideoResourceQueueFtraceEvent'dataSize0 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VirtioVideoResourceQueueFtraceEvent "dataSize1" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioVideoResourceQueueFtraceEvent'dataSize1
           (\ x__ y__
              -> x__ {_VirtioVideoResourceQueueFtraceEvent'dataSize1 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField VirtioVideoResourceQueueFtraceEvent "maybe'dataSize1" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioVideoResourceQueueFtraceEvent'dataSize1
           (\ x__ y__
              -> x__ {_VirtioVideoResourceQueueFtraceEvent'dataSize1 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VirtioVideoResourceQueueFtraceEvent "dataSize2" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioVideoResourceQueueFtraceEvent'dataSize2
           (\ x__ y__
              -> x__ {_VirtioVideoResourceQueueFtraceEvent'dataSize2 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField VirtioVideoResourceQueueFtraceEvent "maybe'dataSize2" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioVideoResourceQueueFtraceEvent'dataSize2
           (\ x__ y__
              -> x__ {_VirtioVideoResourceQueueFtraceEvent'dataSize2 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VirtioVideoResourceQueueFtraceEvent "dataSize3" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioVideoResourceQueueFtraceEvent'dataSize3
           (\ x__ y__
              -> x__ {_VirtioVideoResourceQueueFtraceEvent'dataSize3 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField VirtioVideoResourceQueueFtraceEvent "maybe'dataSize3" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioVideoResourceQueueFtraceEvent'dataSize3
           (\ x__ y__
              -> x__ {_VirtioVideoResourceQueueFtraceEvent'dataSize3 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VirtioVideoResourceQueueFtraceEvent "queueType" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioVideoResourceQueueFtraceEvent'queueType
           (\ x__ y__
              -> x__ {_VirtioVideoResourceQueueFtraceEvent'queueType = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField VirtioVideoResourceQueueFtraceEvent "maybe'queueType" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioVideoResourceQueueFtraceEvent'queueType
           (\ x__ y__
              -> x__ {_VirtioVideoResourceQueueFtraceEvent'queueType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VirtioVideoResourceQueueFtraceEvent "resourceId" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioVideoResourceQueueFtraceEvent'resourceId
           (\ x__ y__
              -> x__ {_VirtioVideoResourceQueueFtraceEvent'resourceId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField VirtioVideoResourceQueueFtraceEvent "maybe'resourceId" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioVideoResourceQueueFtraceEvent'resourceId
           (\ x__ y__
              -> x__ {_VirtioVideoResourceQueueFtraceEvent'resourceId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VirtioVideoResourceQueueFtraceEvent "streamId" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioVideoResourceQueueFtraceEvent'streamId
           (\ x__ y__
              -> x__ {_VirtioVideoResourceQueueFtraceEvent'streamId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField VirtioVideoResourceQueueFtraceEvent "maybe'streamId" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioVideoResourceQueueFtraceEvent'streamId
           (\ x__ y__
              -> x__ {_VirtioVideoResourceQueueFtraceEvent'streamId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VirtioVideoResourceQueueFtraceEvent "timestamp" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioVideoResourceQueueFtraceEvent'timestamp
           (\ x__ y__
              -> x__ {_VirtioVideoResourceQueueFtraceEvent'timestamp = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField VirtioVideoResourceQueueFtraceEvent "maybe'timestamp" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioVideoResourceQueueFtraceEvent'timestamp
           (\ x__ y__
              -> x__ {_VirtioVideoResourceQueueFtraceEvent'timestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Message VirtioVideoResourceQueueFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.VirtioVideoResourceQueueFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \#VirtioVideoResourceQueueFtraceEvent\DC2\GS\n\
      \\n\
      \data_size0\CAN\SOH \SOH(\rR\tdataSize0\DC2\GS\n\
      \\n\
      \data_size1\CAN\STX \SOH(\rR\tdataSize1\DC2\GS\n\
      \\n\
      \data_size2\CAN\ETX \SOH(\rR\tdataSize2\DC2\GS\n\
      \\n\
      \data_size3\CAN\EOT \SOH(\rR\tdataSize3\DC2\GS\n\
      \\n\
      \queue_type\CAN\ENQ \SOH(\rR\tqueueType\DC2\US\n\
      \\vresource_id\CAN\ACK \SOH(\ENQR\n\
      \resourceId\DC2\ESC\n\
      \\tstream_id\CAN\a \SOH(\ENQR\bstreamId\DC2\FS\n\
      \\ttimestamp\CAN\b \SOH(\EOTR\ttimestamp"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dataSize0__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "data_size0"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dataSize0")) ::
              Data.ProtoLens.FieldDescriptor VirtioVideoResourceQueueFtraceEvent
        dataSize1__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "data_size1"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dataSize1")) ::
              Data.ProtoLens.FieldDescriptor VirtioVideoResourceQueueFtraceEvent
        dataSize2__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "data_size2"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dataSize2")) ::
              Data.ProtoLens.FieldDescriptor VirtioVideoResourceQueueFtraceEvent
        dataSize3__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "data_size3"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dataSize3")) ::
              Data.ProtoLens.FieldDescriptor VirtioVideoResourceQueueFtraceEvent
        queueType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "queue_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'queueType")) ::
              Data.ProtoLens.FieldDescriptor VirtioVideoResourceQueueFtraceEvent
        resourceId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "resource_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'resourceId")) ::
              Data.ProtoLens.FieldDescriptor VirtioVideoResourceQueueFtraceEvent
        streamId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stream_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'streamId")) ::
              Data.ProtoLens.FieldDescriptor VirtioVideoResourceQueueFtraceEvent
        timestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timestamp"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timestamp")) ::
              Data.ProtoLens.FieldDescriptor VirtioVideoResourceQueueFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dataSize0__field_descriptor),
           (Data.ProtoLens.Tag 2, dataSize1__field_descriptor),
           (Data.ProtoLens.Tag 3, dataSize2__field_descriptor),
           (Data.ProtoLens.Tag 4, dataSize3__field_descriptor),
           (Data.ProtoLens.Tag 5, queueType__field_descriptor),
           (Data.ProtoLens.Tag 6, resourceId__field_descriptor),
           (Data.ProtoLens.Tag 7, streamId__field_descriptor),
           (Data.ProtoLens.Tag 8, timestamp__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _VirtioVideoResourceQueueFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_VirtioVideoResourceQueueFtraceEvent'_unknownFields = y__})
  defMessage
    = VirtioVideoResourceQueueFtraceEvent'_constructor
        {_VirtioVideoResourceQueueFtraceEvent'dataSize0 = Prelude.Nothing,
         _VirtioVideoResourceQueueFtraceEvent'dataSize1 = Prelude.Nothing,
         _VirtioVideoResourceQueueFtraceEvent'dataSize2 = Prelude.Nothing,
         _VirtioVideoResourceQueueFtraceEvent'dataSize3 = Prelude.Nothing,
         _VirtioVideoResourceQueueFtraceEvent'queueType = Prelude.Nothing,
         _VirtioVideoResourceQueueFtraceEvent'resourceId = Prelude.Nothing,
         _VirtioVideoResourceQueueFtraceEvent'streamId = Prelude.Nothing,
         _VirtioVideoResourceQueueFtraceEvent'timestamp = Prelude.Nothing,
         _VirtioVideoResourceQueueFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          VirtioVideoResourceQueueFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser VirtioVideoResourceQueueFtraceEvent
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
                                       "data_size0"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"dataSize0") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "data_size1"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"dataSize1") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "data_size2"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"dataSize2") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "data_size3"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"dataSize3") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "queue_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"queueType") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "resource_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"resourceId") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "stream_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"streamId") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "timestamp"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timestamp") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "VirtioVideoResourceQueueFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'dataSize0") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'dataSize1") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'dataSize2") _x
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
                             (Data.ProtoLens.Field.field @"maybe'dataSize3") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'queueType") _x
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
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'resourceId") _x
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
                                      (Data.ProtoLens.Field.field @"maybe'streamId") _x
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
                                         (Data.ProtoLens.Field.field @"maybe'timestamp") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData VirtioVideoResourceQueueFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_VirtioVideoResourceQueueFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_VirtioVideoResourceQueueFtraceEvent'dataSize0 x__)
                (Control.DeepSeq.deepseq
                   (_VirtioVideoResourceQueueFtraceEvent'dataSize1 x__)
                   (Control.DeepSeq.deepseq
                      (_VirtioVideoResourceQueueFtraceEvent'dataSize2 x__)
                      (Control.DeepSeq.deepseq
                         (_VirtioVideoResourceQueueFtraceEvent'dataSize3 x__)
                         (Control.DeepSeq.deepseq
                            (_VirtioVideoResourceQueueFtraceEvent'queueType x__)
                            (Control.DeepSeq.deepseq
                               (_VirtioVideoResourceQueueFtraceEvent'resourceId x__)
                               (Control.DeepSeq.deepseq
                                  (_VirtioVideoResourceQueueFtraceEvent'streamId x__)
                                  (Control.DeepSeq.deepseq
                                     (_VirtioVideoResourceQueueFtraceEvent'timestamp x__) ()))))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \/protos/perfetto/trace/ftrace/virtio_video.proto\DC2\SIperfetto.protos\"L\n\
    \\EMVirtioVideoCmdFtraceEvent\DC2\ESC\n\
    \\tstream_id\CAN\SOH \SOH(\rR\bstreamId\DC2\DC2\n\
    \\EOTtype\CAN\STX \SOH(\rR\EOTtype\"P\n\
    \\GSVirtioVideoCmdDoneFtraceEvent\DC2\ESC\n\
    \\tstream_id\CAN\SOH \SOH(\rR\bstreamId\DC2\DC2\n\
    \\EOTtype\CAN\STX \SOH(\rR\EOTtype\"\156\STX\n\
    \#VirtioVideoResourceQueueFtraceEvent\DC2\GS\n\
    \\n\
    \data_size0\CAN\SOH \SOH(\rR\tdataSize0\DC2\GS\n\
    \\n\
    \data_size1\CAN\STX \SOH(\rR\tdataSize1\DC2\GS\n\
    \\n\
    \data_size2\CAN\ETX \SOH(\rR\tdataSize2\DC2\GS\n\
    \\n\
    \data_size3\CAN\EOT \SOH(\rR\tdataSize3\DC2\GS\n\
    \\n\
    \queue_type\CAN\ENQ \SOH(\rR\tqueueType\DC2\US\n\
    \\vresource_id\CAN\ACK \SOH(\ENQR\n\
    \resourceId\DC2\ESC\n\
    \\tstream_id\CAN\a \SOH(\ENQR\bstreamId\DC2\FS\n\
    \\ttimestamp\CAN\b \SOH(\EOTR\ttimestamp\"\160\STX\n\
    \'VirtioVideoResourceQueueDoneFtraceEvent\DC2\GS\n\
    \\n\
    \data_size0\CAN\SOH \SOH(\rR\tdataSize0\DC2\GS\n\
    \\n\
    \data_size1\CAN\STX \SOH(\rR\tdataSize1\DC2\GS\n\
    \\n\
    \data_size2\CAN\ETX \SOH(\rR\tdataSize2\DC2\GS\n\
    \\n\
    \data_size3\CAN\EOT \SOH(\rR\tdataSize3\DC2\GS\n\
    \\n\
    \queue_type\CAN\ENQ \SOH(\rR\tqueueType\DC2\US\n\
    \\vresource_id\CAN\ACK \SOH(\ENQR\n\
    \resourceId\DC2\ESC\n\
    \\tstream_id\CAN\a \SOH(\ENQR\bstreamId\DC2\FS\n\
    \\ttimestamp\CAN\b \SOH(\EOTR\ttimestampJ\185\f\n\
    \\ACK\DC2\EOT\EOT\NUL\"\SOH\n\
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
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b!\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\b\STX \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\b\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\b\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\b\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\b\RS\US\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\t\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\t\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\t\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\t\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\t\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\v\NUL\SO\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\v\b%\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\f\STX \n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\f\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\f\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\f\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\f\RS\US\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\r\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX\r\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\r\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\r\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\r\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT\SI\NUL\CAN\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\SI\b+\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\DLE\STX!\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETX\DLE\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX\DLE\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\DLE\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\DLE\US \n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX\DC1\STX!\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETX\DC1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX\DC1\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX\DC1\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX\DC1\US \n\
    \\v\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX\DC2\STX!\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\EOT\DC2\ETX\DC2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETX\DC2\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX\DC2\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX\DC2\US \n\
    \\v\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETX\DC3\STX!\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\EOT\DC2\ETX\DC3\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ENQ\DC2\ETX\DC3\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETX\DC3\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETX\DC3\US \n\
    \\v\n\
    \\EOT\EOT\STX\STX\EOT\DC2\ETX\DC4\STX!\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\EOT\DC2\ETX\DC4\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ENQ\DC2\ETX\DC4\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\ETX\DC4\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\ETX\DC4\US \n\
    \\v\n\
    \\EOT\EOT\STX\STX\ENQ\DC2\ETX\NAK\STX!\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\EOT\DC2\ETX\NAK\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ENQ\DC2\ETX\NAK\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\SOH\DC2\ETX\NAK\DC1\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ETX\DC2\ETX\NAK\US \n\
    \\v\n\
    \\EOT\EOT\STX\STX\ACK\DC2\ETX\SYN\STX\US\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\EOT\DC2\ETX\SYN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\ENQ\DC2\ETX\SYN\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\SOH\DC2\ETX\SYN\DC1\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\ETX\DC2\ETX\SYN\GS\RS\n\
    \\v\n\
    \\EOT\EOT\STX\STX\a\DC2\ETX\ETB\STX \n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\EOT\DC2\ETX\ETB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\ENQ\DC2\ETX\ETB\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\SOH\DC2\ETX\ETB\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\ETX\DC2\ETX\ETB\RS\US\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOT\EM\NUL\"\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX\EM\b/\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX\SUB\STX!\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETX\SUB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX\SUB\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX\SUB\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX\SUB\US \n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX\ESC\STX!\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\EOT\DC2\ETX\ESC\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETX\ESC\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX\ESC\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX\ESC\US \n\
    \\v\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETX\FS\STX!\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\EOT\DC2\ETX\FS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\ETX\FS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETX\FS\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETX\FS\US \n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\ETX\GS\STX!\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\EOT\DC2\ETX\GS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ENQ\DC2\ETX\GS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\ETX\GS\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\ETX\GS\US \n\
    \\v\n\
    \\EOT\EOT\ETX\STX\EOT\DC2\ETX\RS\STX!\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\EOT\DC2\ETX\RS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ENQ\DC2\ETX\RS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\SOH\DC2\ETX\RS\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ETX\DC2\ETX\RS\US \n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ENQ\DC2\ETX\US\STX!\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\EOT\DC2\ETX\US\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\ENQ\DC2\ETX\US\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\SOH\DC2\ETX\US\DC1\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\ETX\DC2\ETX\US\US \n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ACK\DC2\ETX \STX\US\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\EOT\DC2\ETX \STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\ENQ\DC2\ETX \v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\SOH\DC2\ETX \DC1\SUB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\ETX\DC2\ETX \GS\RS\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\a\DC2\ETX!\STX \n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\a\EOT\DC2\ETX!\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\a\ENQ\DC2\ETX!\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\a\SOH\DC2\ETX!\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\a\ETX\DC2\ETX!\RS\US"