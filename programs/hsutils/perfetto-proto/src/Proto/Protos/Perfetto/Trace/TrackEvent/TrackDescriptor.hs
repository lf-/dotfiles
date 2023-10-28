{- This file was auto-generated from protos/perfetto/trace/track_event/track_descriptor.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.TrackEvent.TrackDescriptor (
        TrackDescriptor()
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
import qualified Proto.Protos.Perfetto.Trace.TrackEvent.CounterDescriptor
import qualified Proto.Protos.Perfetto.Trace.TrackEvent.ProcessDescriptor
import qualified Proto.Protos.Perfetto.Trace.TrackEvent.ThreadDescriptor
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackDescriptor_Fields.uuid' @:: Lens' TrackDescriptor Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackDescriptor_Fields.maybe'uuid' @:: Lens' TrackDescriptor (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackDescriptor_Fields.parentUuid' @:: Lens' TrackDescriptor Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackDescriptor_Fields.maybe'parentUuid' @:: Lens' TrackDescriptor (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackDescriptor_Fields.name' @:: Lens' TrackDescriptor Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackDescriptor_Fields.maybe'name' @:: Lens' TrackDescriptor (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackDescriptor_Fields.process' @:: Lens' TrackDescriptor Proto.Protos.Perfetto.Trace.TrackEvent.ProcessDescriptor.ProcessDescriptor@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackDescriptor_Fields.maybe'process' @:: Lens' TrackDescriptor (Prelude.Maybe Proto.Protos.Perfetto.Trace.TrackEvent.ProcessDescriptor.ProcessDescriptor)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackDescriptor_Fields.thread' @:: Lens' TrackDescriptor Proto.Protos.Perfetto.Trace.TrackEvent.ThreadDescriptor.ThreadDescriptor@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackDescriptor_Fields.maybe'thread' @:: Lens' TrackDescriptor (Prelude.Maybe Proto.Protos.Perfetto.Trace.TrackEvent.ThreadDescriptor.ThreadDescriptor)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackDescriptor_Fields.counter' @:: Lens' TrackDescriptor Proto.Protos.Perfetto.Trace.TrackEvent.CounterDescriptor.CounterDescriptor@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackDescriptor_Fields.maybe'counter' @:: Lens' TrackDescriptor (Prelude.Maybe Proto.Protos.Perfetto.Trace.TrackEvent.CounterDescriptor.CounterDescriptor)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackDescriptor_Fields.disallowMergingWithSystemTracks' @:: Lens' TrackDescriptor Prelude.Bool@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackDescriptor_Fields.maybe'disallowMergingWithSystemTracks' @:: Lens' TrackDescriptor (Prelude.Maybe Prelude.Bool)@ -}
data TrackDescriptor
  = TrackDescriptor'_constructor {_TrackDescriptor'uuid :: !(Prelude.Maybe Data.Word.Word64),
                                  _TrackDescriptor'parentUuid :: !(Prelude.Maybe Data.Word.Word64),
                                  _TrackDescriptor'name :: !(Prelude.Maybe Data.Text.Text),
                                  _TrackDescriptor'process :: !(Prelude.Maybe Proto.Protos.Perfetto.Trace.TrackEvent.ProcessDescriptor.ProcessDescriptor),
                                  _TrackDescriptor'thread :: !(Prelude.Maybe Proto.Protos.Perfetto.Trace.TrackEvent.ThreadDescriptor.ThreadDescriptor),
                                  _TrackDescriptor'counter :: !(Prelude.Maybe Proto.Protos.Perfetto.Trace.TrackEvent.CounterDescriptor.CounterDescriptor),
                                  _TrackDescriptor'disallowMergingWithSystemTracks :: !(Prelude.Maybe Prelude.Bool),
                                  _TrackDescriptor'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TrackDescriptor where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TrackDescriptor "uuid" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackDescriptor'uuid
           (\ x__ y__ -> x__ {_TrackDescriptor'uuid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrackDescriptor "maybe'uuid" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackDescriptor'uuid
           (\ x__ y__ -> x__ {_TrackDescriptor'uuid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackDescriptor "parentUuid" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackDescriptor'parentUuid
           (\ x__ y__ -> x__ {_TrackDescriptor'parentUuid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrackDescriptor "maybe'parentUuid" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackDescriptor'parentUuid
           (\ x__ y__ -> x__ {_TrackDescriptor'parentUuid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackDescriptor "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackDescriptor'name
           (\ x__ y__ -> x__ {_TrackDescriptor'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrackDescriptor "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackDescriptor'name
           (\ x__ y__ -> x__ {_TrackDescriptor'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackDescriptor "process" Proto.Protos.Perfetto.Trace.TrackEvent.ProcessDescriptor.ProcessDescriptor where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackDescriptor'process
           (\ x__ y__ -> x__ {_TrackDescriptor'process = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TrackDescriptor "maybe'process" (Prelude.Maybe Proto.Protos.Perfetto.Trace.TrackEvent.ProcessDescriptor.ProcessDescriptor) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackDescriptor'process
           (\ x__ y__ -> x__ {_TrackDescriptor'process = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackDescriptor "thread" Proto.Protos.Perfetto.Trace.TrackEvent.ThreadDescriptor.ThreadDescriptor where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackDescriptor'thread
           (\ x__ y__ -> x__ {_TrackDescriptor'thread = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TrackDescriptor "maybe'thread" (Prelude.Maybe Proto.Protos.Perfetto.Trace.TrackEvent.ThreadDescriptor.ThreadDescriptor) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackDescriptor'thread
           (\ x__ y__ -> x__ {_TrackDescriptor'thread = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackDescriptor "counter" Proto.Protos.Perfetto.Trace.TrackEvent.CounterDescriptor.CounterDescriptor where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackDescriptor'counter
           (\ x__ y__ -> x__ {_TrackDescriptor'counter = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TrackDescriptor "maybe'counter" (Prelude.Maybe Proto.Protos.Perfetto.Trace.TrackEvent.CounterDescriptor.CounterDescriptor) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackDescriptor'counter
           (\ x__ y__ -> x__ {_TrackDescriptor'counter = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackDescriptor "disallowMergingWithSystemTracks" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackDescriptor'disallowMergingWithSystemTracks
           (\ x__ y__
              -> x__ {_TrackDescriptor'disallowMergingWithSystemTracks = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrackDescriptor "maybe'disallowMergingWithSystemTracks" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackDescriptor'disallowMergingWithSystemTracks
           (\ x__ y__
              -> x__ {_TrackDescriptor'disallowMergingWithSystemTracks = y__}))
        Prelude.id
instance Data.ProtoLens.Message TrackDescriptor where
  messageName _ = Data.Text.pack "perfetto.protos.TrackDescriptor"
  packedMessageDescriptor _
    = "\n\
      \\SITrackDescriptor\DC2\DC2\n\
      \\EOTuuid\CAN\SOH \SOH(\EOTR\EOTuuid\DC2\US\n\
      \\vparent_uuid\CAN\ENQ \SOH(\EOTR\n\
      \parentUuid\DC2\DC2\n\
      \\EOTname\CAN\STX \SOH(\tR\EOTname\DC2<\n\
      \\aprocess\CAN\ETX \SOH(\v2\".perfetto.protos.ProcessDescriptorR\aprocess\DC29\n\
      \\ACKthread\CAN\EOT \SOH(\v2!.perfetto.protos.ThreadDescriptorR\ACKthread\DC2<\n\
      \\acounter\CAN\b \SOH(\v2\".perfetto.protos.CounterDescriptorR\acounter\DC2L\n\
      \#disallow_merging_with_system_tracks\CAN\t \SOH(\bR\USdisallowMergingWithSystemTracks"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        uuid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "uuid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'uuid")) ::
              Data.ProtoLens.FieldDescriptor TrackDescriptor
        parentUuid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "parent_uuid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'parentUuid")) ::
              Data.ProtoLens.FieldDescriptor TrackDescriptor
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'name")) ::
              Data.ProtoLens.FieldDescriptor TrackDescriptor
        process__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "process"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.TrackEvent.ProcessDescriptor.ProcessDescriptor)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'process")) ::
              Data.ProtoLens.FieldDescriptor TrackDescriptor
        thread__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "thread"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.TrackEvent.ThreadDescriptor.ThreadDescriptor)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'thread")) ::
              Data.ProtoLens.FieldDescriptor TrackDescriptor
        counter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "counter"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.TrackEvent.CounterDescriptor.CounterDescriptor)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'counter")) ::
              Data.ProtoLens.FieldDescriptor TrackDescriptor
        disallowMergingWithSystemTracks__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "disallow_merging_with_system_tracks"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'disallowMergingWithSystemTracks")) ::
              Data.ProtoLens.FieldDescriptor TrackDescriptor
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, uuid__field_descriptor),
           (Data.ProtoLens.Tag 5, parentUuid__field_descriptor),
           (Data.ProtoLens.Tag 2, name__field_descriptor),
           (Data.ProtoLens.Tag 3, process__field_descriptor),
           (Data.ProtoLens.Tag 4, thread__field_descriptor),
           (Data.ProtoLens.Tag 8, counter__field_descriptor),
           (Data.ProtoLens.Tag 9, 
            disallowMergingWithSystemTracks__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TrackDescriptor'_unknownFields
        (\ x__ y__ -> x__ {_TrackDescriptor'_unknownFields = y__})
  defMessage
    = TrackDescriptor'_constructor
        {_TrackDescriptor'uuid = Prelude.Nothing,
         _TrackDescriptor'parentUuid = Prelude.Nothing,
         _TrackDescriptor'name = Prelude.Nothing,
         _TrackDescriptor'process = Prelude.Nothing,
         _TrackDescriptor'thread = Prelude.Nothing,
         _TrackDescriptor'counter = Prelude.Nothing,
         _TrackDescriptor'disallowMergingWithSystemTracks = Prelude.Nothing,
         _TrackDescriptor'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TrackDescriptor
          -> Data.ProtoLens.Encoding.Bytes.Parser TrackDescriptor
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "uuid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"uuid") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "parent_uuid"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"parentUuid") y x)
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
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "process"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"process") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "thread"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"thread") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "counter"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"counter") y x)
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "disallow_merging_with_system_tracks"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"disallowMergingWithSystemTracks")
                                     y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TrackDescriptor"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'uuid") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'parentUuid") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
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
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'process") _x
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
                                   Data.ProtoLens.encodeMessage _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'thread") _x
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
                                      Data.ProtoLens.encodeMessage _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'counter") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field
                                         @"maybe'disallowMergingWithSystemTracks")
                                      _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                         ((Prelude..)
                                            Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (\ b -> if b then 1 else 0) _v))
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData TrackDescriptor where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TrackDescriptor'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TrackDescriptor'uuid x__)
                (Control.DeepSeq.deepseq
                   (_TrackDescriptor'parentUuid x__)
                   (Control.DeepSeq.deepseq
                      (_TrackDescriptor'name x__)
                      (Control.DeepSeq.deepseq
                         (_TrackDescriptor'process x__)
                         (Control.DeepSeq.deepseq
                            (_TrackDescriptor'thread x__)
                            (Control.DeepSeq.deepseq
                               (_TrackDescriptor'counter x__)
                               (Control.DeepSeq.deepseq
                                  (_TrackDescriptor'disallowMergingWithSystemTracks x__) ())))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \8protos/perfetto/trace/track_event/track_descriptor.proto\DC2\SIperfetto.protos\SUB:protos/perfetto/trace/track_event/process_descriptor.proto\SUB9protos/perfetto/trace/track_event/thread_descriptor.proto\SUB:protos/perfetto/trace/track_event/counter_descriptor.proto\"\223\STX\n\
    \\SITrackDescriptor\DC2\DC2\n\
    \\EOTuuid\CAN\SOH \SOH(\EOTR\EOTuuid\DC2\US\n\
    \\vparent_uuid\CAN\ENQ \SOH(\EOTR\n\
    \parentUuid\DC2\DC2\n\
    \\EOTname\CAN\STX \SOH(\tR\EOTname\DC2<\n\
    \\aprocess\CAN\ETX \SOH(\v2\".perfetto.protos.ProcessDescriptorR\aprocess\DC29\n\
    \\ACKthread\CAN\EOT \SOH(\v2!.perfetto.protos.ThreadDescriptorR\ACKthread\DC2<\n\
    \\acounter\CAN\b \SOH(\v2\".perfetto.protos.CounterDescriptorR\acounter\DC2L\n\
    \#disallow_merging_with_system_tracks\CAN\t \SOH(\bR\USdisallowMergingWithSystemTracksJ\245!\n\
    \\ACK\DC2\EOT\DLE\NUL]\SOH\n\
    \\215\EOT\n\
    \\SOH\f\DC2\ETX\DLE\NUL\DC22\204\EOT\n\
    \ Copyright (C) 2019 The Android Open Source Project\n\
    \\n\
    \ Licensed under the Apache License, Version 2.0 (the \"License\");\n\
    \ you may not use this file except in compliance with the License.\n\
    \ You may obtain a copy of the License at\n\
    \\n\
    \      http://www.apache.org/licenses/LICENSE-2.0\n\
    \\n\
    \ Unless required by applicable law or agreed to in writing, software\n\
    \ distributed under the License is distributed on an \"AS IS\" BASIS,\n\
    \ WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n\
    \ See the License for the specific language governing permissions and\n\
    \ limitations under the License.\n\
    \\n\
    \\165\SOH\n\
    \\STX\ETX\NUL\DC2\ETX\DC4\NULD\SUB\153\SOH import \"protos/perfetto/trace/track_event/chrome_process_descriptor.proto\";\n\
    \ import \"protos/perfetto/trace/track_event/chrome_thread_descriptor.proto\";\n\
    \\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\NAK\NULC\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\SYN\NULD\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\CAN\NUL\CAN\n\
    \\172\ENQ\n\
    \\STX\EOT\NUL\DC2\EOT(\NUL]\SOH\SUB\159\ENQ Defines a track for TrackEvents. Slices and instant events on the same track\n\
    \ will be nested based on their timestamps, see TrackEvent::Type.\n\
    \\n\
    \ A TrackDescriptor only needs to be emitted by one trace writer / producer and\n\
    \ is valid for the entirety of the trace. To ensure the descriptor isn't lost\n\
    \ when the ring buffer wraps, it should be reemitted whenever incremental state\n\
    \ is cleared.\n\
    \\n\
    \ As a fallback, TrackEvents emitted without an explicit track association will\n\
    \ be associated with an implicit trace-global track (uuid = 0), see also\n\
    \ |TrackEvent::track_uuid|. It is possible but not necessary to emit a\n\
    \ TrackDescriptor for this implicit track.\n\
    \\n\
    \ Next id: 10.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX(\b\ETB\n\
    \\243\STX\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX/\STX\ESC\SUB\229\STX Unique ID that identifies this track. This ID is global to the whole trace.\n\
    \ Producers should ensure that it is unlikely to clash with IDs emitted by\n\
    \ other producers. A value of 0 denotes the implicit trace-global track.\n\
    \\n\
    \ For example, legacy TRACE_EVENT macros may use a hash involving the async\n\
    \ event id + id_scope, pid, and/or tid to compute this ID.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX/\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX/\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX/\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX/\EM\SUB\n\
    \\242\STX\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX6\STX\"\SUB\228\STX A parent track reference can be used to describe relationships between\n\
    \ tracks. For example, to define an asynchronous track which is scoped to a\n\
    \ specific process, specify the uuid for that process's process track here.\n\
    \ Similarly, to associate a COUNTER_THREAD_TIME_NS counter track with a\n\
    \ thread, specify the uuid for that thread's thread track here.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX6\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX6\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX6\DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX6 !\n\
    \\208\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX;\STX\ESC\SUB\194\SOH Name of the track. Optional - if unspecified, it may be derived from the\n\
    \ process/thread name (process/thread tracks), the first event's name (async\n\
    \ tracks), or counter name (counter tracks).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX;\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX;\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX;\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX;\EM\SUB\n\
    \\143\EOT\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETXE\STX)\SUB\201\ETX Associate the track with a process, making it the process-global track.\n\
    \ There should only be one such track per process (usually for instant\n\
    \ events; trace processor uses this fact to detect pid reuse). If you need\n\
    \ more (e.g. for asynchronous events), create child tracks using parent_uuid.\n\
    \\n\
    \ Trace processor will merge events on a process track with slice-type events\n\
    \ from other sources (e.g. ftrace) for the same process into a single\n\
    \ timeline view.\n\
    \\"6 optional ChromeProcessDescriptor chrome_process = 6;\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETXE\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETXE\v\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETXE\GS$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETXE'(\n\
    \\198\ETX\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETXO\STX'\SUB\130\ETX Associate the track with a thread, indicating that the track's events\n\
    \ describe synchronous code execution on the thread. There should only be one\n\
    \ such track per thread (trace processor uses this fact to detect tid reuse).\n\
    \\n\
    \ Trace processor will merge events on a thread track with slice-type events\n\
    \ from other sources (e.g. ftrace) for the same thread into a single timeline\n\
    \ view.\n\
    \\"4 optional ChromeThreadDescriptor chrome_thread = 7;\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\EOT\DC2\ETXO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETXO\v\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETXO\FS\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETXO%&\n\
    \\173\SOH\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETXU\STX)\SUB\159\SOH Descriptor for a counter track. If set, the track will only support\n\
    \ TYPE_COUNTER TrackEvents (and values provided via TrackEvent's\n\
    \ |extra_counter_values|).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\EOT\DC2\ETXU\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETXU\v\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETXU\GS$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETXU'(\n\
    \\188\STX\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETX\\\STX8\SUB\174\STX If true, forces Trace Processor to use separate tracks for track events\n\
    \ and system events for the same thread.\n\
    \ Track events timestamps in Chrome have microsecond resolution, while\n\
    \ system events use nanoseconds. It results in broken event nesting when\n\
    \ track events and system events share a track.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\EOT\DC2\ETX\\\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ENQ\DC2\ETX\\\v\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETX\\\DLE3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETX\\67"