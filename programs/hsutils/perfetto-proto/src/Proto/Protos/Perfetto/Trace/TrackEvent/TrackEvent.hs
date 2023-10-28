{- This file was auto-generated from protos/perfetto/trace/track_event/track_event.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent (
        EventCategory(), EventName(), TrackEvent(),
        TrackEvent'NameField(..), TrackEvent'CounterValueField(..),
        TrackEvent'SourceLocationField(..), TrackEvent'Timestamp(..),
        TrackEvent'ThreadTime(..), TrackEvent'ThreadInstructionCount(..),
        _TrackEvent'NameIid, _TrackEvent'Name, _TrackEvent'CounterValue,
        _TrackEvent'DoubleCounterValue, _TrackEvent'SourceLocationIid,
        _TrackEvent'TimestampDeltaUs, _TrackEvent'TimestampAbsoluteUs,
        _TrackEvent'ThreadTimeDeltaUs, _TrackEvent'ThreadTimeAbsoluteUs,
        _TrackEvent'ThreadInstructionCountDelta,
        _TrackEvent'ThreadInstructionCountAbsolute,
        TrackEvent'LegacyEvent(), TrackEvent'LegacyEvent'Id(..),
        _TrackEvent'LegacyEvent'UnscopedId,
        _TrackEvent'LegacyEvent'LocalId, _TrackEvent'LegacyEvent'GlobalId,
        TrackEvent'LegacyEvent'FlowDirection(..),
        TrackEvent'LegacyEvent'FlowDirection(),
        TrackEvent'LegacyEvent'InstantEventScope(..),
        TrackEvent'LegacyEvent'InstantEventScope(), TrackEvent'Type(..),
        TrackEvent'Type(), TrackEventDefaults()
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
import qualified Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation
import qualified Proto.Protos.Perfetto.Trace.TrackEvent.LogMessage
import qualified Proto.Protos.Perfetto.Trace.TrackEvent.TaskExecution
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.iid' @:: Lens' EventCategory Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.maybe'iid' @:: Lens' EventCategory (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.name' @:: Lens' EventCategory Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.maybe'name' @:: Lens' EventCategory (Prelude.Maybe Data.Text.Text)@ -}
data EventCategory
  = EventCategory'_constructor {_EventCategory'iid :: !(Prelude.Maybe Data.Word.Word64),
                                _EventCategory'name :: !(Prelude.Maybe Data.Text.Text),
                                _EventCategory'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventCategory where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventCategory "iid" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCategory'iid (\ x__ y__ -> x__ {_EventCategory'iid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField EventCategory "maybe'iid" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCategory'iid (\ x__ y__ -> x__ {_EventCategory'iid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventCategory "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCategory'name (\ x__ y__ -> x__ {_EventCategory'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField EventCategory "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCategory'name (\ x__ y__ -> x__ {_EventCategory'name = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventCategory where
  messageName _ = Data.Text.pack "perfetto.protos.EventCategory"
  packedMessageDescriptor _
    = "\n\
      \\rEventCategory\DC2\DLE\n\
      \\ETXiid\CAN\SOH \SOH(\EOTR\ETXiid\DC2\DC2\n\
      \\EOTname\CAN\STX \SOH(\tR\EOTname"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        iid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "iid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'iid")) ::
              Data.ProtoLens.FieldDescriptor EventCategory
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'name")) ::
              Data.ProtoLens.FieldDescriptor EventCategory
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, iid__field_descriptor),
           (Data.ProtoLens.Tag 2, name__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventCategory'_unknownFields
        (\ x__ y__ -> x__ {_EventCategory'_unknownFields = y__})
  defMessage
    = EventCategory'_constructor
        {_EventCategory'iid = Prelude.Nothing,
         _EventCategory'name = Prelude.Nothing,
         _EventCategory'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventCategory -> Data.ProtoLens.Encoding.Bytes.Parser EventCategory
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "iid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"iid") y x)
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventCategory"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'iid") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData EventCategory where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventCategory'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventCategory'iid x__)
                (Control.DeepSeq.deepseq (_EventCategory'name x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.iid' @:: Lens' EventName Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.maybe'iid' @:: Lens' EventName (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.name' @:: Lens' EventName Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.maybe'name' @:: Lens' EventName (Prelude.Maybe Data.Text.Text)@ -}
data EventName
  = EventName'_constructor {_EventName'iid :: !(Prelude.Maybe Data.Word.Word64),
                            _EventName'name :: !(Prelude.Maybe Data.Text.Text),
                            _EventName'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventName where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventName "iid" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventName'iid (\ x__ y__ -> x__ {_EventName'iid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField EventName "maybe'iid" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventName'iid (\ x__ y__ -> x__ {_EventName'iid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventName "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventName'name (\ x__ y__ -> x__ {_EventName'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField EventName "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventName'name (\ x__ y__ -> x__ {_EventName'name = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventName where
  messageName _ = Data.Text.pack "perfetto.protos.EventName"
  packedMessageDescriptor _
    = "\n\
      \\tEventName\DC2\DLE\n\
      \\ETXiid\CAN\SOH \SOH(\EOTR\ETXiid\DC2\DC2\n\
      \\EOTname\CAN\STX \SOH(\tR\EOTname"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        iid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "iid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'iid")) ::
              Data.ProtoLens.FieldDescriptor EventName
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'name")) ::
              Data.ProtoLens.FieldDescriptor EventName
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, iid__field_descriptor),
           (Data.ProtoLens.Tag 2, name__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventName'_unknownFields
        (\ x__ y__ -> x__ {_EventName'_unknownFields = y__})
  defMessage
    = EventName'_constructor
        {_EventName'iid = Prelude.Nothing,
         _EventName'name = Prelude.Nothing, _EventName'_unknownFields = []}
  parseMessage
    = let
        loop :: EventName -> Data.ProtoLens.Encoding.Bytes.Parser EventName
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "iid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"iid") y x)
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventName"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'iid") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData EventName where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventName'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventName'iid x__)
                (Control.DeepSeq.deepseq (_EventName'name x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.categoryIids' @:: Lens' TrackEvent [Data.Word.Word64]@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.vec'categoryIids' @:: Lens' TrackEvent (Data.Vector.Unboxed.Vector Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.categories' @:: Lens' TrackEvent [Data.Text.Text]@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.vec'categories' @:: Lens' TrackEvent (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.type'' @:: Lens' TrackEvent TrackEvent'Type@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.maybe'type'' @:: Lens' TrackEvent (Prelude.Maybe TrackEvent'Type)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.trackUuid' @:: Lens' TrackEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.maybe'trackUuid' @:: Lens' TrackEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.extraCounterTrackUuids' @:: Lens' TrackEvent [Data.Word.Word64]@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.vec'extraCounterTrackUuids' @:: Lens' TrackEvent (Data.Vector.Unboxed.Vector Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.extraCounterValues' @:: Lens' TrackEvent [Data.Int.Int64]@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.vec'extraCounterValues' @:: Lens' TrackEvent (Data.Vector.Unboxed.Vector Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.extraDoubleCounterTrackUuids' @:: Lens' TrackEvent [Data.Word.Word64]@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.vec'extraDoubleCounterTrackUuids' @:: Lens' TrackEvent (Data.Vector.Unboxed.Vector Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.extraDoubleCounterValues' @:: Lens' TrackEvent [Prelude.Double]@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.vec'extraDoubleCounterValues' @:: Lens' TrackEvent (Data.Vector.Unboxed.Vector Prelude.Double)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.flowIdsOld' @:: Lens' TrackEvent [Data.Word.Word64]@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.vec'flowIdsOld' @:: Lens' TrackEvent (Data.Vector.Unboxed.Vector Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.flowIds' @:: Lens' TrackEvent [Data.Word.Word64]@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.vec'flowIds' @:: Lens' TrackEvent (Data.Vector.Unboxed.Vector Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.terminatingFlowIdsOld' @:: Lens' TrackEvent [Data.Word.Word64]@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.vec'terminatingFlowIdsOld' @:: Lens' TrackEvent (Data.Vector.Unboxed.Vector Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.terminatingFlowIds' @:: Lens' TrackEvent [Data.Word.Word64]@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.vec'terminatingFlowIds' @:: Lens' TrackEvent (Data.Vector.Unboxed.Vector Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.debugAnnotations' @:: Lens' TrackEvent [Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation.DebugAnnotation]@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.vec'debugAnnotations' @:: Lens' TrackEvent (Data.Vector.Vector Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation.DebugAnnotation)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.taskExecution' @:: Lens' TrackEvent Proto.Protos.Perfetto.Trace.TrackEvent.TaskExecution.TaskExecution@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.maybe'taskExecution' @:: Lens' TrackEvent (Prelude.Maybe Proto.Protos.Perfetto.Trace.TrackEvent.TaskExecution.TaskExecution)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.logMessage' @:: Lens' TrackEvent Proto.Protos.Perfetto.Trace.TrackEvent.LogMessage.LogMessage@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.maybe'logMessage' @:: Lens' TrackEvent (Prelude.Maybe Proto.Protos.Perfetto.Trace.TrackEvent.LogMessage.LogMessage)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.legacyEvent' @:: Lens' TrackEvent TrackEvent'LegacyEvent@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.maybe'legacyEvent' @:: Lens' TrackEvent (Prelude.Maybe TrackEvent'LegacyEvent)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.maybe'nameField' @:: Lens' TrackEvent (Prelude.Maybe TrackEvent'NameField)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.maybe'nameIid' @:: Lens' TrackEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.nameIid' @:: Lens' TrackEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.maybe'name' @:: Lens' TrackEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.name' @:: Lens' TrackEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.maybe'counterValueField' @:: Lens' TrackEvent (Prelude.Maybe TrackEvent'CounterValueField)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.maybe'counterValue' @:: Lens' TrackEvent (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.counterValue' @:: Lens' TrackEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.maybe'doubleCounterValue' @:: Lens' TrackEvent (Prelude.Maybe Prelude.Double)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.doubleCounterValue' @:: Lens' TrackEvent Prelude.Double@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.maybe'sourceLocationField' @:: Lens' TrackEvent (Prelude.Maybe TrackEvent'SourceLocationField)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.maybe'sourceLocationIid' @:: Lens' TrackEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.sourceLocationIid' @:: Lens' TrackEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.maybe'timestamp' @:: Lens' TrackEvent (Prelude.Maybe TrackEvent'Timestamp)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.maybe'timestampDeltaUs' @:: Lens' TrackEvent (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.timestampDeltaUs' @:: Lens' TrackEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.maybe'timestampAbsoluteUs' @:: Lens' TrackEvent (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.timestampAbsoluteUs' @:: Lens' TrackEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.maybe'threadTime' @:: Lens' TrackEvent (Prelude.Maybe TrackEvent'ThreadTime)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.maybe'threadTimeDeltaUs' @:: Lens' TrackEvent (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.threadTimeDeltaUs' @:: Lens' TrackEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.maybe'threadTimeAbsoluteUs' @:: Lens' TrackEvent (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.threadTimeAbsoluteUs' @:: Lens' TrackEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.maybe'threadInstructionCount' @:: Lens' TrackEvent (Prelude.Maybe TrackEvent'ThreadInstructionCount)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.maybe'threadInstructionCountDelta' @:: Lens' TrackEvent (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.threadInstructionCountDelta' @:: Lens' TrackEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.maybe'threadInstructionCountAbsolute' @:: Lens' TrackEvent (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.threadInstructionCountAbsolute' @:: Lens' TrackEvent Data.Int.Int64@ -}
data TrackEvent
  = TrackEvent'_constructor {_TrackEvent'categoryIids :: !(Data.Vector.Unboxed.Vector Data.Word.Word64),
                             _TrackEvent'categories :: !(Data.Vector.Vector Data.Text.Text),
                             _TrackEvent'type' :: !(Prelude.Maybe TrackEvent'Type),
                             _TrackEvent'trackUuid :: !(Prelude.Maybe Data.Word.Word64),
                             _TrackEvent'extraCounterTrackUuids :: !(Data.Vector.Unboxed.Vector Data.Word.Word64),
                             _TrackEvent'extraCounterValues :: !(Data.Vector.Unboxed.Vector Data.Int.Int64),
                             _TrackEvent'extraDoubleCounterTrackUuids :: !(Data.Vector.Unboxed.Vector Data.Word.Word64),
                             _TrackEvent'extraDoubleCounterValues :: !(Data.Vector.Unboxed.Vector Prelude.Double),
                             _TrackEvent'flowIdsOld :: !(Data.Vector.Unboxed.Vector Data.Word.Word64),
                             _TrackEvent'flowIds :: !(Data.Vector.Unboxed.Vector Data.Word.Word64),
                             _TrackEvent'terminatingFlowIdsOld :: !(Data.Vector.Unboxed.Vector Data.Word.Word64),
                             _TrackEvent'terminatingFlowIds :: !(Data.Vector.Unboxed.Vector Data.Word.Word64),
                             _TrackEvent'debugAnnotations :: !(Data.Vector.Vector Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation.DebugAnnotation),
                             _TrackEvent'taskExecution :: !(Prelude.Maybe Proto.Protos.Perfetto.Trace.TrackEvent.TaskExecution.TaskExecution),
                             _TrackEvent'logMessage :: !(Prelude.Maybe Proto.Protos.Perfetto.Trace.TrackEvent.LogMessage.LogMessage),
                             _TrackEvent'legacyEvent :: !(Prelude.Maybe TrackEvent'LegacyEvent),
                             _TrackEvent'nameField :: !(Prelude.Maybe TrackEvent'NameField),
                             _TrackEvent'counterValueField :: !(Prelude.Maybe TrackEvent'CounterValueField),
                             _TrackEvent'sourceLocationField :: !(Prelude.Maybe TrackEvent'SourceLocationField),
                             _TrackEvent'timestamp :: !(Prelude.Maybe TrackEvent'Timestamp),
                             _TrackEvent'threadTime :: !(Prelude.Maybe TrackEvent'ThreadTime),
                             _TrackEvent'threadInstructionCount :: !(Prelude.Maybe TrackEvent'ThreadInstructionCount),
                             _TrackEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TrackEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data TrackEvent'NameField
  = TrackEvent'NameIid !Data.Word.Word64 |
    TrackEvent'Name !Data.Text.Text
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
data TrackEvent'CounterValueField
  = TrackEvent'CounterValue !Data.Int.Int64 |
    TrackEvent'DoubleCounterValue !Prelude.Double
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
data TrackEvent'SourceLocationField
  = TrackEvent'SourceLocationIid !Data.Word.Word64
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
data TrackEvent'Timestamp
  = TrackEvent'TimestampDeltaUs !Data.Int.Int64 |
    TrackEvent'TimestampAbsoluteUs !Data.Int.Int64
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
data TrackEvent'ThreadTime
  = TrackEvent'ThreadTimeDeltaUs !Data.Int.Int64 |
    TrackEvent'ThreadTimeAbsoluteUs !Data.Int.Int64
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
data TrackEvent'ThreadInstructionCount
  = TrackEvent'ThreadInstructionCountDelta !Data.Int.Int64 |
    TrackEvent'ThreadInstructionCountAbsolute !Data.Int.Int64
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField TrackEvent "categoryIids" [Data.Word.Word64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'categoryIids
           (\ x__ y__ -> x__ {_TrackEvent'categoryIids = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TrackEvent "vec'categoryIids" (Data.Vector.Unboxed.Vector Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'categoryIids
           (\ x__ y__ -> x__ {_TrackEvent'categoryIids = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackEvent "categories" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'categories
           (\ x__ y__ -> x__ {_TrackEvent'categories = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TrackEvent "vec'categories" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'categories
           (\ x__ y__ -> x__ {_TrackEvent'categories = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackEvent "type'" TrackEvent'Type where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'type' (\ x__ y__ -> x__ {_TrackEvent'type' = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrackEvent "maybe'type'" (Prelude.Maybe TrackEvent'Type) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'type' (\ x__ y__ -> x__ {_TrackEvent'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackEvent "trackUuid" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'trackUuid
           (\ x__ y__ -> x__ {_TrackEvent'trackUuid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrackEvent "maybe'trackUuid" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'trackUuid
           (\ x__ y__ -> x__ {_TrackEvent'trackUuid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackEvent "extraCounterTrackUuids" [Data.Word.Word64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'extraCounterTrackUuids
           (\ x__ y__ -> x__ {_TrackEvent'extraCounterTrackUuids = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TrackEvent "vec'extraCounterTrackUuids" (Data.Vector.Unboxed.Vector Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'extraCounterTrackUuids
           (\ x__ y__ -> x__ {_TrackEvent'extraCounterTrackUuids = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackEvent "extraCounterValues" [Data.Int.Int64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'extraCounterValues
           (\ x__ y__ -> x__ {_TrackEvent'extraCounterValues = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TrackEvent "vec'extraCounterValues" (Data.Vector.Unboxed.Vector Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'extraCounterValues
           (\ x__ y__ -> x__ {_TrackEvent'extraCounterValues = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackEvent "extraDoubleCounterTrackUuids" [Data.Word.Word64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'extraDoubleCounterTrackUuids
           (\ x__ y__
              -> x__ {_TrackEvent'extraDoubleCounterTrackUuids = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TrackEvent "vec'extraDoubleCounterTrackUuids" (Data.Vector.Unboxed.Vector Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'extraDoubleCounterTrackUuids
           (\ x__ y__
              -> x__ {_TrackEvent'extraDoubleCounterTrackUuids = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackEvent "extraDoubleCounterValues" [Prelude.Double] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'extraDoubleCounterValues
           (\ x__ y__ -> x__ {_TrackEvent'extraDoubleCounterValues = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TrackEvent "vec'extraDoubleCounterValues" (Data.Vector.Unboxed.Vector Prelude.Double) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'extraDoubleCounterValues
           (\ x__ y__ -> x__ {_TrackEvent'extraDoubleCounterValues = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackEvent "flowIdsOld" [Data.Word.Word64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'flowIdsOld
           (\ x__ y__ -> x__ {_TrackEvent'flowIdsOld = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TrackEvent "vec'flowIdsOld" (Data.Vector.Unboxed.Vector Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'flowIdsOld
           (\ x__ y__ -> x__ {_TrackEvent'flowIdsOld = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackEvent "flowIds" [Data.Word.Word64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'flowIds (\ x__ y__ -> x__ {_TrackEvent'flowIds = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TrackEvent "vec'flowIds" (Data.Vector.Unboxed.Vector Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'flowIds (\ x__ y__ -> x__ {_TrackEvent'flowIds = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackEvent "terminatingFlowIdsOld" [Data.Word.Word64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'terminatingFlowIdsOld
           (\ x__ y__ -> x__ {_TrackEvent'terminatingFlowIdsOld = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TrackEvent "vec'terminatingFlowIdsOld" (Data.Vector.Unboxed.Vector Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'terminatingFlowIdsOld
           (\ x__ y__ -> x__ {_TrackEvent'terminatingFlowIdsOld = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackEvent "terminatingFlowIds" [Data.Word.Word64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'terminatingFlowIds
           (\ x__ y__ -> x__ {_TrackEvent'terminatingFlowIds = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TrackEvent "vec'terminatingFlowIds" (Data.Vector.Unboxed.Vector Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'terminatingFlowIds
           (\ x__ y__ -> x__ {_TrackEvent'terminatingFlowIds = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackEvent "debugAnnotations" [Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation.DebugAnnotation] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'debugAnnotations
           (\ x__ y__ -> x__ {_TrackEvent'debugAnnotations = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TrackEvent "vec'debugAnnotations" (Data.Vector.Vector Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation.DebugAnnotation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'debugAnnotations
           (\ x__ y__ -> x__ {_TrackEvent'debugAnnotations = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackEvent "taskExecution" Proto.Protos.Perfetto.Trace.TrackEvent.TaskExecution.TaskExecution where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'taskExecution
           (\ x__ y__ -> x__ {_TrackEvent'taskExecution = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TrackEvent "maybe'taskExecution" (Prelude.Maybe Proto.Protos.Perfetto.Trace.TrackEvent.TaskExecution.TaskExecution) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'taskExecution
           (\ x__ y__ -> x__ {_TrackEvent'taskExecution = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackEvent "logMessage" Proto.Protos.Perfetto.Trace.TrackEvent.LogMessage.LogMessage where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'logMessage
           (\ x__ y__ -> x__ {_TrackEvent'logMessage = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TrackEvent "maybe'logMessage" (Prelude.Maybe Proto.Protos.Perfetto.Trace.TrackEvent.LogMessage.LogMessage) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'logMessage
           (\ x__ y__ -> x__ {_TrackEvent'logMessage = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackEvent "legacyEvent" TrackEvent'LegacyEvent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'legacyEvent
           (\ x__ y__ -> x__ {_TrackEvent'legacyEvent = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TrackEvent "maybe'legacyEvent" (Prelude.Maybe TrackEvent'LegacyEvent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'legacyEvent
           (\ x__ y__ -> x__ {_TrackEvent'legacyEvent = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackEvent "maybe'nameField" (Prelude.Maybe TrackEvent'NameField) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'nameField
           (\ x__ y__ -> x__ {_TrackEvent'nameField = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackEvent "maybe'nameIid" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'nameField
           (\ x__ y__ -> x__ {_TrackEvent'nameField = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TrackEvent'NameIid x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TrackEvent'NameIid y__))
instance Data.ProtoLens.Field.HasField TrackEvent "nameIid" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'nameField
           (\ x__ y__ -> x__ {_TrackEvent'nameField = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TrackEvent'NameIid x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TrackEvent'NameIid y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField TrackEvent "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'nameField
           (\ x__ y__ -> x__ {_TrackEvent'nameField = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TrackEvent'Name x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TrackEvent'Name y__))
instance Data.ProtoLens.Field.HasField TrackEvent "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'nameField
           (\ x__ y__ -> x__ {_TrackEvent'nameField = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TrackEvent'Name x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TrackEvent'Name y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField TrackEvent "maybe'counterValueField" (Prelude.Maybe TrackEvent'CounterValueField) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'counterValueField
           (\ x__ y__ -> x__ {_TrackEvent'counterValueField = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackEvent "maybe'counterValue" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'counterValueField
           (\ x__ y__ -> x__ {_TrackEvent'counterValueField = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TrackEvent'CounterValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TrackEvent'CounterValue y__))
instance Data.ProtoLens.Field.HasField TrackEvent "counterValue" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'counterValueField
           (\ x__ y__ -> x__ {_TrackEvent'counterValueField = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TrackEvent'CounterValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TrackEvent'CounterValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField TrackEvent "maybe'doubleCounterValue" (Prelude.Maybe Prelude.Double) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'counterValueField
           (\ x__ y__ -> x__ {_TrackEvent'counterValueField = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TrackEvent'DoubleCounterValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TrackEvent'DoubleCounterValue y__))
instance Data.ProtoLens.Field.HasField TrackEvent "doubleCounterValue" Prelude.Double where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'counterValueField
           (\ x__ y__ -> x__ {_TrackEvent'counterValueField = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TrackEvent'DoubleCounterValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TrackEvent'DoubleCounterValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField TrackEvent "maybe'sourceLocationField" (Prelude.Maybe TrackEvent'SourceLocationField) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'sourceLocationField
           (\ x__ y__ -> x__ {_TrackEvent'sourceLocationField = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackEvent "maybe'sourceLocationIid" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'sourceLocationField
           (\ x__ y__ -> x__ {_TrackEvent'sourceLocationField = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TrackEvent'SourceLocationIid x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TrackEvent'SourceLocationIid y__))
instance Data.ProtoLens.Field.HasField TrackEvent "sourceLocationIid" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'sourceLocationField
           (\ x__ y__ -> x__ {_TrackEvent'sourceLocationField = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TrackEvent'SourceLocationIid x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TrackEvent'SourceLocationIid y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField TrackEvent "maybe'timestamp" (Prelude.Maybe TrackEvent'Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'timestamp
           (\ x__ y__ -> x__ {_TrackEvent'timestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackEvent "maybe'timestampDeltaUs" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'timestamp
           (\ x__ y__ -> x__ {_TrackEvent'timestamp = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TrackEvent'TimestampDeltaUs x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TrackEvent'TimestampDeltaUs y__))
instance Data.ProtoLens.Field.HasField TrackEvent "timestampDeltaUs" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'timestamp
           (\ x__ y__ -> x__ {_TrackEvent'timestamp = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TrackEvent'TimestampDeltaUs x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TrackEvent'TimestampDeltaUs y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField TrackEvent "maybe'timestampAbsoluteUs" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'timestamp
           (\ x__ y__ -> x__ {_TrackEvent'timestamp = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TrackEvent'TimestampAbsoluteUs x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TrackEvent'TimestampAbsoluteUs y__))
instance Data.ProtoLens.Field.HasField TrackEvent "timestampAbsoluteUs" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'timestamp
           (\ x__ y__ -> x__ {_TrackEvent'timestamp = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TrackEvent'TimestampAbsoluteUs x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TrackEvent'TimestampAbsoluteUs y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField TrackEvent "maybe'threadTime" (Prelude.Maybe TrackEvent'ThreadTime) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'threadTime
           (\ x__ y__ -> x__ {_TrackEvent'threadTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackEvent "maybe'threadTimeDeltaUs" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'threadTime
           (\ x__ y__ -> x__ {_TrackEvent'threadTime = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TrackEvent'ThreadTimeDeltaUs x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TrackEvent'ThreadTimeDeltaUs y__))
instance Data.ProtoLens.Field.HasField TrackEvent "threadTimeDeltaUs" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'threadTime
           (\ x__ y__ -> x__ {_TrackEvent'threadTime = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TrackEvent'ThreadTimeDeltaUs x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TrackEvent'ThreadTimeDeltaUs y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField TrackEvent "maybe'threadTimeAbsoluteUs" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'threadTime
           (\ x__ y__ -> x__ {_TrackEvent'threadTime = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TrackEvent'ThreadTimeAbsoluteUs x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TrackEvent'ThreadTimeAbsoluteUs y__))
instance Data.ProtoLens.Field.HasField TrackEvent "threadTimeAbsoluteUs" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'threadTime
           (\ x__ y__ -> x__ {_TrackEvent'threadTime = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TrackEvent'ThreadTimeAbsoluteUs x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TrackEvent'ThreadTimeAbsoluteUs y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField TrackEvent "maybe'threadInstructionCount" (Prelude.Maybe TrackEvent'ThreadInstructionCount) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'threadInstructionCount
           (\ x__ y__ -> x__ {_TrackEvent'threadInstructionCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackEvent "maybe'threadInstructionCountDelta" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'threadInstructionCount
           (\ x__ y__ -> x__ {_TrackEvent'threadInstructionCount = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TrackEvent'ThreadInstructionCountDelta x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap TrackEvent'ThreadInstructionCountDelta y__))
instance Data.ProtoLens.Field.HasField TrackEvent "threadInstructionCountDelta" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'threadInstructionCount
           (\ x__ y__ -> x__ {_TrackEvent'threadInstructionCount = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TrackEvent'ThreadInstructionCountDelta x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap TrackEvent'ThreadInstructionCountDelta y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField TrackEvent "maybe'threadInstructionCountAbsolute" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'threadInstructionCount
           (\ x__ y__ -> x__ {_TrackEvent'threadInstructionCount = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TrackEvent'ThreadInstructionCountAbsolute x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap TrackEvent'ThreadInstructionCountAbsolute y__))
instance Data.ProtoLens.Field.HasField TrackEvent "threadInstructionCountAbsolute" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'threadInstructionCount
           (\ x__ y__ -> x__ {_TrackEvent'threadInstructionCount = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TrackEvent'ThreadInstructionCountAbsolute x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap TrackEvent'ThreadInstructionCountAbsolute y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message TrackEvent where
  messageName _ = Data.Text.pack "perfetto.protos.TrackEvent"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \TrackEvent\DC2#\n\
      \\rcategory_iids\CAN\ETX \ETX(\EOTR\fcategoryIids\DC2\RS\n\
      \\n\
      \categories\CAN\SYN \ETX(\tR\n\
      \categories\DC2\ESC\n\
      \\bname_iid\CAN\n\
      \ \SOH(\EOTH\NULR\anameIid\DC2\DC4\n\
      \\EOTname\CAN\ETB \SOH(\tH\NULR\EOTname\DC24\n\
      \\EOTtype\CAN\t \SOH(\SO2 .perfetto.protos.TrackEvent.TypeR\EOTtype\DC2\GS\n\
      \\n\
      \track_uuid\CAN\v \SOH(\EOTR\ttrackUuid\DC2%\n\
      \\rcounter_value\CAN\RS \SOH(\ETXH\SOHR\fcounterValue\DC22\n\
      \\DC4double_counter_value\CAN, \SOH(\SOHH\SOHR\DC2doubleCounterValue\DC29\n\
      \\EMextra_counter_track_uuids\CAN\US \ETX(\EOTR\SYNextraCounterTrackUuids\DC20\n\
      \\DC4extra_counter_values\CAN\f \ETX(\ETXR\DC2extraCounterValues\DC2F\n\
      \ extra_double_counter_track_uuids\CAN- \ETX(\EOTR\FSextraDoubleCounterTrackUuids\DC2=\n\
      \\ESCextra_double_counter_values\CAN. \ETX(\SOHR\CANextraDoubleCounterValues\DC2$\n\
      \\fflow_ids_old\CAN$ \ETX(\EOTR\n\
      \flowIdsOldB\STX\CAN\SOH\DC2\EM\n\
      \\bflow_ids\CAN/ \ETX(\ACKR\aflowIds\DC2;\n\
      \\CANterminating_flow_ids_old\CAN* \ETX(\EOTR\NAKterminatingFlowIdsOldB\STX\CAN\SOH\DC20\n\
      \\DC4terminating_flow_ids\CAN0 \ETX(\ACKR\DC2terminatingFlowIds\DC2M\n\
      \\DC1debug_annotations\CAN\EOT \ETX(\v2 .perfetto.protos.DebugAnnotationR\DLEdebugAnnotations\DC2E\n\
      \\SOtask_execution\CAN\ENQ \SOH(\v2\RS.perfetto.protos.TaskExecutionR\rtaskExecution\DC2<\n\
      \\vlog_message\CAN\NAK \SOH(\v2\ESC.perfetto.protos.LogMessageR\n\
      \logMessage\DC20\n\
      \\DC3source_location_iid\CAN\" \SOH(\EOTH\STXR\DC1sourceLocationIid\DC2.\n\
      \\DC2timestamp_delta_us\CAN\SOH \SOH(\ETXH\ETXR\DLEtimestampDeltaUs\DC24\n\
      \\NAKtimestamp_absolute_us\CAN\DLE \SOH(\ETXH\ETXR\DC3timestampAbsoluteUs\DC21\n\
      \\DC4thread_time_delta_us\CAN\STX \SOH(\ETXH\EOTR\DC1threadTimeDeltaUs\DC27\n\
      \\ETBthread_time_absolute_us\CAN\DC1 \SOH(\ETXH\EOTR\DC4threadTimeAbsoluteUs\DC2E\n\
      \\RSthread_instruction_count_delta\CAN\b \SOH(\ETXH\ENQR\ESCthreadInstructionCountDelta\DC2K\n\
      \!thread_instruction_count_absolute\CAN\DC4 \SOH(\ETXH\ENQR\RSthreadInstructionCountAbsolute\DC2J\n\
      \\flegacy_event\CAN\ACK \SOH(\v2'.perfetto.protos.TrackEvent.LegacyEventR\vlegacyEvent\SUB\250\ACK\n\
      \\vLegacyEvent\DC2\EM\n\
      \\bname_iid\CAN\SOH \SOH(\EOTR\anameIid\DC2\DC4\n\
      \\ENQphase\CAN\STX \SOH(\ENQR\ENQphase\DC2\US\n\
      \\vduration_us\CAN\ETX \SOH(\ETXR\n\
      \durationUs\DC2,\n\
      \\DC2thread_duration_us\CAN\EOT \SOH(\ETXR\DLEthreadDurationUs\DC28\n\
      \\CANthread_instruction_delta\CAN\SI \SOH(\ETXR\SYNthreadInstructionDelta\DC2!\n\
      \\vunscoped_id\CAN\ACK \SOH(\EOTH\NULR\n\
      \unscopedId\DC2\ESC\n\
      \\blocal_id\CAN\n\
      \ \SOH(\EOTH\NULR\alocalId\DC2\GS\n\
      \\tglobal_id\CAN\v \SOH(\EOTH\NULR\bglobalId\DC2\EM\n\
      \\bid_scope\CAN\a \SOH(\tR\aidScope\DC2\"\n\
      \\ruse_async_tts\CAN\t \SOH(\bR\vuseAsyncTts\DC2\ETB\n\
      \\abind_id\CAN\b \SOH(\EOTR\ACKbindId\DC2*\n\
      \\DC1bind_to_enclosing\CAN\f \SOH(\bR\SIbindToEnclosing\DC2\\\n\
      \\SOflow_direction\CAN\r \SOH(\SO25.perfetto.protos.TrackEvent.LegacyEvent.FlowDirectionR\rflowDirection\DC2i\n\
      \\DC3instant_event_scope\CAN\SO \SOH(\SO29.perfetto.protos.TrackEvent.LegacyEvent.InstantEventScopeR\DC1instantEventScope\DC2!\n\
      \\fpid_override\CAN\DC2 \SOH(\ENQR\vpidOverride\DC2!\n\
      \\ftid_override\CAN\DC3 \SOH(\ENQR\vtidOverride\"P\n\
      \\rFlowDirection\DC2\DC4\n\
      \\DLEFLOW_UNSPECIFIED\DLE\NUL\DC2\v\n\
      \\aFLOW_IN\DLE\SOH\DC2\f\n\
      \\bFLOW_OUT\DLE\STX\DC2\SO\n\
      \\n\
      \FLOW_INOUT\DLE\ETX\"a\n\
      \\DC1InstantEventScope\DC2\NAK\n\
      \\DC1SCOPE_UNSPECIFIED\DLE\NUL\DC2\DLE\n\
      \\fSCOPE_GLOBAL\DLE\SOH\DC2\DC1\n\
      \\rSCOPE_PROCESS\DLE\STX\DC2\DLE\n\
      \\fSCOPE_THREAD\DLE\ETXB\EOT\n\
      \\STXidJ\EOT\b\ENQ\DLE\ACK\"j\n\
      \\EOTType\DC2\DC4\n\
      \\DLETYPE_UNSPECIFIED\DLE\NUL\DC2\DC4\n\
      \\DLETYPE_SLICE_BEGIN\DLE\SOH\DC2\DC2\n\
      \\SOTYPE_SLICE_END\DLE\STX\DC2\DLE\n\
      \\fTYPE_INSTANT\DLE\ETX\DC2\DLE\n\
      \\fTYPE_COUNTER\DLE\EOT*\ACK\b\232\a\DLE\208\SI*\ACK\b\208\SI\DLE\209\SI*\ACK\b\209\SI\DLE\172M*\ACK\b\172M\DLE\145NB\f\n\
      \\n\
      \name_fieldB\NAK\n\
      \\DC3counter_value_fieldB\ETB\n\
      \\NAKsource_location_fieldB\v\n\
      \\ttimestampB\r\n\
      \\vthread_timeB\SUB\n\
      \\CANthread_instruction_count"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        categoryIids__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "category_iids"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"categoryIids")) ::
              Data.ProtoLens.FieldDescriptor TrackEvent
        categories__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "categories"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"categories")) ::
              Data.ProtoLens.FieldDescriptor TrackEvent
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor TrackEvent'Type)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'type'")) ::
              Data.ProtoLens.FieldDescriptor TrackEvent
        trackUuid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "track_uuid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'trackUuid")) ::
              Data.ProtoLens.FieldDescriptor TrackEvent
        extraCounterTrackUuids__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "extra_counter_track_uuids"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"extraCounterTrackUuids")) ::
              Data.ProtoLens.FieldDescriptor TrackEvent
        extraCounterValues__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "extra_counter_values"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"extraCounterValues")) ::
              Data.ProtoLens.FieldDescriptor TrackEvent
        extraDoubleCounterTrackUuids__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "extra_double_counter_track_uuids"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"extraDoubleCounterTrackUuids")) ::
              Data.ProtoLens.FieldDescriptor TrackEvent
        extraDoubleCounterValues__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "extra_double_counter_values"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"extraDoubleCounterValues")) ::
              Data.ProtoLens.FieldDescriptor TrackEvent
        flowIdsOld__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "flow_ids_old"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"flowIdsOld")) ::
              Data.ProtoLens.FieldDescriptor TrackEvent
        flowIds__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "flow_ids"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Fixed64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"flowIds")) ::
              Data.ProtoLens.FieldDescriptor TrackEvent
        terminatingFlowIdsOld__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "terminating_flow_ids_old"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"terminatingFlowIdsOld")) ::
              Data.ProtoLens.FieldDescriptor TrackEvent
        terminatingFlowIds__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "terminating_flow_ids"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Fixed64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"terminatingFlowIds")) ::
              Data.ProtoLens.FieldDescriptor TrackEvent
        debugAnnotations__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "debug_annotations"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation.DebugAnnotation)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"debugAnnotations")) ::
              Data.ProtoLens.FieldDescriptor TrackEvent
        taskExecution__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "task_execution"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.TrackEvent.TaskExecution.TaskExecution)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'taskExecution")) ::
              Data.ProtoLens.FieldDescriptor TrackEvent
        logMessage__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "log_message"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.TrackEvent.LogMessage.LogMessage)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'logMessage")) ::
              Data.ProtoLens.FieldDescriptor TrackEvent
        legacyEvent__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "legacy_event"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TrackEvent'LegacyEvent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'legacyEvent")) ::
              Data.ProtoLens.FieldDescriptor TrackEvent
        nameIid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name_iid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nameIid")) ::
              Data.ProtoLens.FieldDescriptor TrackEvent
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'name")) ::
              Data.ProtoLens.FieldDescriptor TrackEvent
        counterValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "counter_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'counterValue")) ::
              Data.ProtoLens.FieldDescriptor TrackEvent
        doubleCounterValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "double_counter_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'doubleCounterValue")) ::
              Data.ProtoLens.FieldDescriptor TrackEvent
        sourceLocationIid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "source_location_iid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sourceLocationIid")) ::
              Data.ProtoLens.FieldDescriptor TrackEvent
        timestampDeltaUs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timestamp_delta_us"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timestampDeltaUs")) ::
              Data.ProtoLens.FieldDescriptor TrackEvent
        timestampAbsoluteUs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timestamp_absolute_us"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timestampAbsoluteUs")) ::
              Data.ProtoLens.FieldDescriptor TrackEvent
        threadTimeDeltaUs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "thread_time_delta_us"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'threadTimeDeltaUs")) ::
              Data.ProtoLens.FieldDescriptor TrackEvent
        threadTimeAbsoluteUs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "thread_time_absolute_us"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'threadTimeAbsoluteUs")) ::
              Data.ProtoLens.FieldDescriptor TrackEvent
        threadInstructionCountDelta__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "thread_instruction_count_delta"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'threadInstructionCountDelta")) ::
              Data.ProtoLens.FieldDescriptor TrackEvent
        threadInstructionCountAbsolute__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "thread_instruction_count_absolute"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'threadInstructionCountAbsolute")) ::
              Data.ProtoLens.FieldDescriptor TrackEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 3, categoryIids__field_descriptor),
           (Data.ProtoLens.Tag 22, categories__field_descriptor),
           (Data.ProtoLens.Tag 9, type'__field_descriptor),
           (Data.ProtoLens.Tag 11, trackUuid__field_descriptor),
           (Data.ProtoLens.Tag 31, extraCounterTrackUuids__field_descriptor),
           (Data.ProtoLens.Tag 12, extraCounterValues__field_descriptor),
           (Data.ProtoLens.Tag 45, 
            extraDoubleCounterTrackUuids__field_descriptor),
           (Data.ProtoLens.Tag 46, 
            extraDoubleCounterValues__field_descriptor),
           (Data.ProtoLens.Tag 36, flowIdsOld__field_descriptor),
           (Data.ProtoLens.Tag 47, flowIds__field_descriptor),
           (Data.ProtoLens.Tag 42, terminatingFlowIdsOld__field_descriptor),
           (Data.ProtoLens.Tag 48, terminatingFlowIds__field_descriptor),
           (Data.ProtoLens.Tag 4, debugAnnotations__field_descriptor),
           (Data.ProtoLens.Tag 5, taskExecution__field_descriptor),
           (Data.ProtoLens.Tag 21, logMessage__field_descriptor),
           (Data.ProtoLens.Tag 6, legacyEvent__field_descriptor),
           (Data.ProtoLens.Tag 10, nameIid__field_descriptor),
           (Data.ProtoLens.Tag 23, name__field_descriptor),
           (Data.ProtoLens.Tag 30, counterValue__field_descriptor),
           (Data.ProtoLens.Tag 44, doubleCounterValue__field_descriptor),
           (Data.ProtoLens.Tag 34, sourceLocationIid__field_descriptor),
           (Data.ProtoLens.Tag 1, timestampDeltaUs__field_descriptor),
           (Data.ProtoLens.Tag 16, timestampAbsoluteUs__field_descriptor),
           (Data.ProtoLens.Tag 2, threadTimeDeltaUs__field_descriptor),
           (Data.ProtoLens.Tag 17, threadTimeAbsoluteUs__field_descriptor),
           (Data.ProtoLens.Tag 8, 
            threadInstructionCountDelta__field_descriptor),
           (Data.ProtoLens.Tag 20, 
            threadInstructionCountAbsolute__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TrackEvent'_unknownFields
        (\ x__ y__ -> x__ {_TrackEvent'_unknownFields = y__})
  defMessage
    = TrackEvent'_constructor
        {_TrackEvent'categoryIids = Data.Vector.Generic.empty,
         _TrackEvent'categories = Data.Vector.Generic.empty,
         _TrackEvent'type' = Prelude.Nothing,
         _TrackEvent'trackUuid = Prelude.Nothing,
         _TrackEvent'extraCounterTrackUuids = Data.Vector.Generic.empty,
         _TrackEvent'extraCounterValues = Data.Vector.Generic.empty,
         _TrackEvent'extraDoubleCounterTrackUuids = Data.Vector.Generic.empty,
         _TrackEvent'extraDoubleCounterValues = Data.Vector.Generic.empty,
         _TrackEvent'flowIdsOld = Data.Vector.Generic.empty,
         _TrackEvent'flowIds = Data.Vector.Generic.empty,
         _TrackEvent'terminatingFlowIdsOld = Data.Vector.Generic.empty,
         _TrackEvent'terminatingFlowIds = Data.Vector.Generic.empty,
         _TrackEvent'debugAnnotations = Data.Vector.Generic.empty,
         _TrackEvent'taskExecution = Prelude.Nothing,
         _TrackEvent'logMessage = Prelude.Nothing,
         _TrackEvent'legacyEvent = Prelude.Nothing,
         _TrackEvent'nameField = Prelude.Nothing,
         _TrackEvent'counterValueField = Prelude.Nothing,
         _TrackEvent'sourceLocationField = Prelude.Nothing,
         _TrackEvent'timestamp = Prelude.Nothing,
         _TrackEvent'threadTime = Prelude.Nothing,
         _TrackEvent'threadInstructionCount = Prelude.Nothing,
         _TrackEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TrackEvent
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word64
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation.DebugAnnotation
                   -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word64
                      -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Int.Int64
                         -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word64
                            -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Prelude.Double
                               -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word64
                                  -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word64
                                     -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word64
                                        -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word64
                                           -> Data.ProtoLens.Encoding.Bytes.Parser TrackEvent
        loop
          x
          mutable'categories
          mutable'categoryIids
          mutable'debugAnnotations
          mutable'extraCounterTrackUuids
          mutable'extraCounterValues
          mutable'extraDoubleCounterTrackUuids
          mutable'extraDoubleCounterValues
          mutable'flowIds
          mutable'flowIdsOld
          mutable'terminatingFlowIds
          mutable'terminatingFlowIdsOld
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'categories <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'categories)
                      frozen'categoryIids <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'categoryIids)
                      frozen'debugAnnotations <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                   (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                      mutable'debugAnnotations)
                      frozen'extraCounterTrackUuids <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                            mutable'extraCounterTrackUuids)
                      frozen'extraCounterValues <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                     (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                        mutable'extraCounterValues)
                      frozen'extraDoubleCounterTrackUuids <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                                  mutable'extraDoubleCounterTrackUuids)
                      frozen'extraDoubleCounterValues <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                              mutable'extraDoubleCounterValues)
                      frozen'flowIds <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'flowIds)
                      frozen'flowIdsOld <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'flowIdsOld)
                      frozen'terminatingFlowIds <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                     (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                        mutable'terminatingFlowIds)
                      frozen'terminatingFlowIdsOld <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                           mutable'terminatingFlowIdsOld)
                      (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'categories") frozen'categories
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'categoryIids")
                                 frozen'categoryIids
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'debugAnnotations")
                                    frozen'debugAnnotations
                                    (Lens.Family2.set
                                       (Data.ProtoLens.Field.field @"vec'extraCounterTrackUuids")
                                       frozen'extraCounterTrackUuids
                                       (Lens.Family2.set
                                          (Data.ProtoLens.Field.field @"vec'extraCounterValues")
                                          frozen'extraCounterValues
                                          (Lens.Family2.set
                                             (Data.ProtoLens.Field.field
                                                @"vec'extraDoubleCounterTrackUuids")
                                             frozen'extraDoubleCounterTrackUuids
                                             (Lens.Family2.set
                                                (Data.ProtoLens.Field.field
                                                   @"vec'extraDoubleCounterValues")
                                                frozen'extraDoubleCounterValues
                                                (Lens.Family2.set
                                                   (Data.ProtoLens.Field.field @"vec'flowIds")
                                                   frozen'flowIds
                                                   (Lens.Family2.set
                                                      (Data.ProtoLens.Field.field @"vec'flowIdsOld")
                                                      frozen'flowIdsOld
                                                      (Lens.Family2.set
                                                         (Data.ProtoLens.Field.field
                                                            @"vec'terminatingFlowIds")
                                                         frozen'terminatingFlowIds
                                                         (Lens.Family2.set
                                                            (Data.ProtoLens.Field.field
                                                               @"vec'terminatingFlowIdsOld")
                                                            frozen'terminatingFlowIdsOld
                                                            x))))))))))))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        24
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        Data.ProtoLens.Encoding.Bytes.getVarInt "category_iids"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'categoryIids y)
                                loop
                                  x mutable'categories v mutable'debugAnnotations
                                  mutable'extraCounterTrackUuids mutable'extraCounterValues
                                  mutable'extraDoubleCounterTrackUuids
                                  mutable'extraDoubleCounterValues mutable'flowIds
                                  mutable'flowIdsOld mutable'terminatingFlowIds
                                  mutable'terminatingFlowIdsOld
                        26
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                    "category_iids"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'categoryIids)
                                loop
                                  x mutable'categories y mutable'debugAnnotations
                                  mutable'extraCounterTrackUuids mutable'extraCounterValues
                                  mutable'extraDoubleCounterTrackUuids
                                  mutable'extraDoubleCounterValues mutable'flowIds
                                  mutable'flowIdsOld mutable'terminatingFlowIds
                                  mutable'terminatingFlowIdsOld
                        178
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "categories"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'categories y)
                                loop
                                  x v mutable'categoryIids mutable'debugAnnotations
                                  mutable'extraCounterTrackUuids mutable'extraCounterValues
                                  mutable'extraDoubleCounterTrackUuids
                                  mutable'extraDoubleCounterValues mutable'flowIds
                                  mutable'flowIdsOld mutable'terminatingFlowIds
                                  mutable'terminatingFlowIdsOld
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                                  mutable'categories mutable'categoryIids mutable'debugAnnotations
                                  mutable'extraCounterTrackUuids mutable'extraCounterValues
                                  mutable'extraDoubleCounterTrackUuids
                                  mutable'extraDoubleCounterValues mutable'flowIds
                                  mutable'flowIdsOld mutable'terminatingFlowIds
                                  mutable'terminatingFlowIdsOld
                        88
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "track_uuid"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"trackUuid") y x)
                                  mutable'categories mutable'categoryIids mutable'debugAnnotations
                                  mutable'extraCounterTrackUuids mutable'extraCounterValues
                                  mutable'extraDoubleCounterTrackUuids
                                  mutable'extraDoubleCounterValues mutable'flowIds
                                  mutable'flowIdsOld mutable'terminatingFlowIds
                                  mutable'terminatingFlowIdsOld
                        248
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        Data.ProtoLens.Encoding.Bytes.getVarInt
                                        "extra_counter_track_uuids"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'extraCounterTrackUuids y)
                                loop
                                  x mutable'categories mutable'categoryIids mutable'debugAnnotations
                                  v mutable'extraCounterValues mutable'extraDoubleCounterTrackUuids
                                  mutable'extraDoubleCounterValues mutable'flowIds
                                  mutable'flowIdsOld mutable'terminatingFlowIds
                                  mutable'terminatingFlowIdsOld
                        250
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                    "extra_counter_track_uuids"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'extraCounterTrackUuids)
                                loop
                                  x mutable'categories mutable'categoryIids mutable'debugAnnotations
                                  y mutable'extraCounterValues mutable'extraDoubleCounterTrackUuids
                                  mutable'extraDoubleCounterValues mutable'flowIds
                                  mutable'flowIdsOld mutable'terminatingFlowIds
                                  mutable'terminatingFlowIdsOld
                        96
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "extra_counter_values"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'extraCounterValues y)
                                loop
                                  x mutable'categories mutable'categoryIids mutable'debugAnnotations
                                  mutable'extraCounterTrackUuids v
                                  mutable'extraDoubleCounterTrackUuids
                                  mutable'extraDoubleCounterValues mutable'flowIds
                                  mutable'flowIdsOld mutable'terminatingFlowIds
                                  mutable'terminatingFlowIdsOld
                        98
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Prelude.fromIntegral
                                                                       Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                                    "extra_counter_values"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'extraCounterValues)
                                loop
                                  x mutable'categories mutable'categoryIids mutable'debugAnnotations
                                  mutable'extraCounterTrackUuids y
                                  mutable'extraDoubleCounterTrackUuids
                                  mutable'extraDoubleCounterValues mutable'flowIds
                                  mutable'flowIdsOld mutable'terminatingFlowIds
                                  mutable'terminatingFlowIdsOld
                        360
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        Data.ProtoLens.Encoding.Bytes.getVarInt
                                        "extra_double_counter_track_uuids"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'extraDoubleCounterTrackUuids y)
                                loop
                                  x mutable'categories mutable'categoryIids mutable'debugAnnotations
                                  mutable'extraCounterTrackUuids mutable'extraCounterValues v
                                  mutable'extraDoubleCounterValues mutable'flowIds
                                  mutable'flowIdsOld mutable'terminatingFlowIds
                                  mutable'terminatingFlowIdsOld
                        362
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                    "extra_double_counter_track_uuids"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'extraDoubleCounterTrackUuids)
                                loop
                                  x mutable'categories mutable'categoryIids mutable'debugAnnotations
                                  mutable'extraCounterTrackUuids mutable'extraCounterValues y
                                  mutable'extraDoubleCounterValues mutable'flowIds
                                  mutable'flowIdsOld mutable'terminatingFlowIds
                                  mutable'terminatingFlowIdsOld
                        369
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Data.ProtoLens.Encoding.Bytes.wordToDouble
                                           Data.ProtoLens.Encoding.Bytes.getFixed64)
                                        "extra_double_counter_values"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'extraDoubleCounterValues y)
                                loop
                                  x mutable'categories mutable'categoryIids mutable'debugAnnotations
                                  mutable'extraCounterTrackUuids mutable'extraCounterValues
                                  mutable'extraDoubleCounterTrackUuids v mutable'flowIds
                                  mutable'flowIdsOld mutable'terminatingFlowIds
                                  mutable'terminatingFlowIdsOld
                        370
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Data.ProtoLens.Encoding.Bytes.wordToDouble
                                                                       Data.ProtoLens.Encoding.Bytes.getFixed64)
                                                                    "extra_double_counter_values"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'extraDoubleCounterValues)
                                loop
                                  x mutable'categories mutable'categoryIids mutable'debugAnnotations
                                  mutable'extraCounterTrackUuids mutable'extraCounterValues
                                  mutable'extraDoubleCounterTrackUuids y mutable'flowIds
                                  mutable'flowIdsOld mutable'terminatingFlowIds
                                  mutable'terminatingFlowIdsOld
                        288
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        Data.ProtoLens.Encoding.Bytes.getVarInt "flow_ids_old"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'flowIdsOld y)
                                loop
                                  x mutable'categories mutable'categoryIids mutable'debugAnnotations
                                  mutable'extraCounterTrackUuids mutable'extraCounterValues
                                  mutable'extraDoubleCounterTrackUuids
                                  mutable'extraDoubleCounterValues mutable'flowIds v
                                  mutable'terminatingFlowIds mutable'terminatingFlowIdsOld
                        290
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                    "flow_ids_old"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'flowIdsOld)
                                loop
                                  x mutable'categories mutable'categoryIids mutable'debugAnnotations
                                  mutable'extraCounterTrackUuids mutable'extraCounterValues
                                  mutable'extraDoubleCounterTrackUuids
                                  mutable'extraDoubleCounterValues mutable'flowIds y
                                  mutable'terminatingFlowIds mutable'terminatingFlowIdsOld
                        377
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        Data.ProtoLens.Encoding.Bytes.getFixed64 "flow_ids"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'flowIds y)
                                loop
                                  x mutable'categories mutable'categoryIids mutable'debugAnnotations
                                  mutable'extraCounterTrackUuids mutable'extraCounterValues
                                  mutable'extraDoubleCounterTrackUuids
                                  mutable'extraDoubleCounterValues v mutable'flowIdsOld
                                  mutable'terminatingFlowIds mutable'terminatingFlowIdsOld
                        378
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    Data.ProtoLens.Encoding.Bytes.getFixed64
                                                                    "flow_ids"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'flowIds)
                                loop
                                  x mutable'categories mutable'categoryIids mutable'debugAnnotations
                                  mutable'extraCounterTrackUuids mutable'extraCounterValues
                                  mutable'extraDoubleCounterTrackUuids
                                  mutable'extraDoubleCounterValues y mutable'flowIdsOld
                                  mutable'terminatingFlowIds mutable'terminatingFlowIdsOld
                        336
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        Data.ProtoLens.Encoding.Bytes.getVarInt
                                        "terminating_flow_ids_old"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'terminatingFlowIdsOld y)
                                loop
                                  x mutable'categories mutable'categoryIids mutable'debugAnnotations
                                  mutable'extraCounterTrackUuids mutable'extraCounterValues
                                  mutable'extraDoubleCounterTrackUuids
                                  mutable'extraDoubleCounterValues mutable'flowIds
                                  mutable'flowIdsOld mutable'terminatingFlowIds v
                        338
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                    "terminating_flow_ids_old"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'terminatingFlowIdsOld)
                                loop
                                  x mutable'categories mutable'categoryIids mutable'debugAnnotations
                                  mutable'extraCounterTrackUuids mutable'extraCounterValues
                                  mutable'extraDoubleCounterTrackUuids
                                  mutable'extraDoubleCounterValues mutable'flowIds
                                  mutable'flowIdsOld mutable'terminatingFlowIds y
                        385
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        Data.ProtoLens.Encoding.Bytes.getFixed64
                                        "terminating_flow_ids"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'terminatingFlowIds y)
                                loop
                                  x mutable'categories mutable'categoryIids mutable'debugAnnotations
                                  mutable'extraCounterTrackUuids mutable'extraCounterValues
                                  mutable'extraDoubleCounterTrackUuids
                                  mutable'extraDoubleCounterValues mutable'flowIds
                                  mutable'flowIdsOld v mutable'terminatingFlowIdsOld
                        386
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    Data.ProtoLens.Encoding.Bytes.getFixed64
                                                                    "terminating_flow_ids"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'terminatingFlowIds)
                                loop
                                  x mutable'categories mutable'categoryIids mutable'debugAnnotations
                                  mutable'extraCounterTrackUuids mutable'extraCounterValues
                                  mutable'extraDoubleCounterTrackUuids
                                  mutable'extraDoubleCounterValues mutable'flowIds
                                  mutable'flowIdsOld y mutable'terminatingFlowIdsOld
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "debug_annotations"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'debugAnnotations y)
                                loop
                                  x mutable'categories mutable'categoryIids v
                                  mutable'extraCounterTrackUuids mutable'extraCounterValues
                                  mutable'extraDoubleCounterTrackUuids
                                  mutable'extraDoubleCounterValues mutable'flowIds
                                  mutable'flowIdsOld mutable'terminatingFlowIds
                                  mutable'terminatingFlowIdsOld
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "task_execution"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"taskExecution") y x)
                                  mutable'categories mutable'categoryIids mutable'debugAnnotations
                                  mutable'extraCounterTrackUuids mutable'extraCounterValues
                                  mutable'extraDoubleCounterTrackUuids
                                  mutable'extraDoubleCounterValues mutable'flowIds
                                  mutable'flowIdsOld mutable'terminatingFlowIds
                                  mutable'terminatingFlowIdsOld
                        170
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "log_message"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"logMessage") y x)
                                  mutable'categories mutable'categoryIids mutable'debugAnnotations
                                  mutable'extraCounterTrackUuids mutable'extraCounterValues
                                  mutable'extraDoubleCounterTrackUuids
                                  mutable'extraDoubleCounterValues mutable'flowIds
                                  mutable'flowIdsOld mutable'terminatingFlowIds
                                  mutable'terminatingFlowIdsOld
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "legacy_event"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"legacyEvent") y x)
                                  mutable'categories mutable'categoryIids mutable'debugAnnotations
                                  mutable'extraCounterTrackUuids mutable'extraCounterValues
                                  mutable'extraDoubleCounterTrackUuids
                                  mutable'extraDoubleCounterValues mutable'flowIds
                                  mutable'flowIdsOld mutable'terminatingFlowIds
                                  mutable'terminatingFlowIdsOld
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "name_iid"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nameIid") y x)
                                  mutable'categories mutable'categoryIids mutable'debugAnnotations
                                  mutable'extraCounterTrackUuids mutable'extraCounterValues
                                  mutable'extraDoubleCounterTrackUuids
                                  mutable'extraDoubleCounterValues mutable'flowIds
                                  mutable'flowIdsOld mutable'terminatingFlowIds
                                  mutable'terminatingFlowIdsOld
                        186
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
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                                  mutable'categories mutable'categoryIids mutable'debugAnnotations
                                  mutable'extraCounterTrackUuids mutable'extraCounterValues
                                  mutable'extraDoubleCounterTrackUuids
                                  mutable'extraDoubleCounterValues mutable'flowIds
                                  mutable'flowIdsOld mutable'terminatingFlowIds
                                  mutable'terminatingFlowIdsOld
                        240
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "counter_value"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"counterValue") y x)
                                  mutable'categories mutable'categoryIids mutable'debugAnnotations
                                  mutable'extraCounterTrackUuids mutable'extraCounterValues
                                  mutable'extraDoubleCounterTrackUuids
                                  mutable'extraDoubleCounterValues mutable'flowIds
                                  mutable'flowIdsOld mutable'terminatingFlowIds
                                  mutable'terminatingFlowIdsOld
                        353
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToDouble
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "double_counter_value"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"doubleCounterValue") y x)
                                  mutable'categories mutable'categoryIids mutable'debugAnnotations
                                  mutable'extraCounterTrackUuids mutable'extraCounterValues
                                  mutable'extraDoubleCounterTrackUuids
                                  mutable'extraDoubleCounterValues mutable'flowIds
                                  mutable'flowIdsOld mutable'terminatingFlowIds
                                  mutable'terminatingFlowIdsOld
                        272
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "source_location_iid"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"sourceLocationIid") y x)
                                  mutable'categories mutable'categoryIids mutable'debugAnnotations
                                  mutable'extraCounterTrackUuids mutable'extraCounterValues
                                  mutable'extraDoubleCounterTrackUuids
                                  mutable'extraDoubleCounterValues mutable'flowIds
                                  mutable'flowIdsOld mutable'terminatingFlowIds
                                  mutable'terminatingFlowIdsOld
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timestamp_delta_us"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timestampDeltaUs") y x)
                                  mutable'categories mutable'categoryIids mutable'debugAnnotations
                                  mutable'extraCounterTrackUuids mutable'extraCounterValues
                                  mutable'extraDoubleCounterTrackUuids
                                  mutable'extraDoubleCounterValues mutable'flowIds
                                  mutable'flowIdsOld mutable'terminatingFlowIds
                                  mutable'terminatingFlowIdsOld
                        128
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timestamp_absolute_us"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timestampAbsoluteUs") y x)
                                  mutable'categories mutable'categoryIids mutable'debugAnnotations
                                  mutable'extraCounterTrackUuids mutable'extraCounterValues
                                  mutable'extraDoubleCounterTrackUuids
                                  mutable'extraDoubleCounterValues mutable'flowIds
                                  mutable'flowIdsOld mutable'terminatingFlowIds
                                  mutable'terminatingFlowIdsOld
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "thread_time_delta_us"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"threadTimeDeltaUs") y x)
                                  mutable'categories mutable'categoryIids mutable'debugAnnotations
                                  mutable'extraCounterTrackUuids mutable'extraCounterValues
                                  mutable'extraDoubleCounterTrackUuids
                                  mutable'extraDoubleCounterValues mutable'flowIds
                                  mutable'flowIdsOld mutable'terminatingFlowIds
                                  mutable'terminatingFlowIdsOld
                        136
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "thread_time_absolute_us"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"threadTimeAbsoluteUs") y x)
                                  mutable'categories mutable'categoryIids mutable'debugAnnotations
                                  mutable'extraCounterTrackUuids mutable'extraCounterValues
                                  mutable'extraDoubleCounterTrackUuids
                                  mutable'extraDoubleCounterValues mutable'flowIds
                                  mutable'flowIdsOld mutable'terminatingFlowIds
                                  mutable'terminatingFlowIdsOld
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "thread_instruction_count_delta"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"threadInstructionCountDelta") y
                                     x)
                                  mutable'categories mutable'categoryIids mutable'debugAnnotations
                                  mutable'extraCounterTrackUuids mutable'extraCounterValues
                                  mutable'extraDoubleCounterTrackUuids
                                  mutable'extraDoubleCounterValues mutable'flowIds
                                  mutable'flowIdsOld mutable'terminatingFlowIds
                                  mutable'terminatingFlowIdsOld
                        160
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "thread_instruction_count_absolute"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"threadInstructionCountAbsolute")
                                     y x)
                                  mutable'categories mutable'categoryIids mutable'debugAnnotations
                                  mutable'extraCounterTrackUuids mutable'extraCounterValues
                                  mutable'extraDoubleCounterTrackUuids
                                  mutable'extraDoubleCounterValues mutable'flowIds
                                  mutable'flowIdsOld mutable'terminatingFlowIds
                                  mutable'terminatingFlowIdsOld
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'categories mutable'categoryIids mutable'debugAnnotations
                                  mutable'extraCounterTrackUuids mutable'extraCounterValues
                                  mutable'extraDoubleCounterTrackUuids
                                  mutable'extraDoubleCounterValues mutable'flowIds
                                  mutable'flowIdsOld mutable'terminatingFlowIds
                                  mutable'terminatingFlowIdsOld
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'categories <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              mutable'categoryIids <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              mutable'debugAnnotations <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            Data.ProtoLens.Encoding.Growing.new
              mutable'extraCounterTrackUuids <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  Data.ProtoLens.Encoding.Growing.new
              mutable'extraCounterValues <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              Data.ProtoLens.Encoding.Growing.new
              mutable'extraDoubleCounterTrackUuids <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                        Data.ProtoLens.Encoding.Growing.new
              mutable'extraDoubleCounterValues <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                    Data.ProtoLens.Encoding.Growing.new
              mutable'flowIds <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              mutable'flowIdsOld <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              mutable'terminatingFlowIds <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              Data.ProtoLens.Encoding.Growing.new
              mutable'terminatingFlowIdsOld <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'categories mutable'categoryIids
                mutable'debugAnnotations mutable'extraCounterTrackUuids
                mutable'extraCounterValues mutable'extraDoubleCounterTrackUuids
                mutable'extraDoubleCounterValues mutable'flowIds mutable'flowIdsOld
                mutable'terminatingFlowIds mutable'terminatingFlowIdsOld)
          "TrackEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'categoryIids") _x))
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 178)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.Text.Encoding.encodeUtf8 _v))
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'categories") _x))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'type'") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                             ((Prelude..)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                                Prelude.fromEnum _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'trackUuid") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 88)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                            (\ _v
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 248)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                            (Lens.Family2.view
                               (Data.ProtoLens.Field.field @"vec'extraCounterTrackUuids") _x))
                         ((Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                               (\ _v
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 96)
                                       ((Prelude..)
                                          Data.ProtoLens.Encoding.Bytes.putVarInt
                                          Prelude.fromIntegral _v))
                               (Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"vec'extraCounterValues") _x))
                            ((Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                  (\ _v
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt 360)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                  (Lens.Family2.view
                                     (Data.ProtoLens.Field.field
                                        @"vec'extraDoubleCounterTrackUuids")
                                     _x))
                               ((Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                     (\ _v
                                        -> (Data.Monoid.<>)
                                             (Data.ProtoLens.Encoding.Bytes.putVarInt 369)
                                             ((Prelude..)
                                                Data.ProtoLens.Encoding.Bytes.putFixed64
                                                Data.ProtoLens.Encoding.Bytes.doubleToWord _v))
                                     (Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"vec'extraDoubleCounterValues")
                                        _x))
                                  ((Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                        (\ _v
                                           -> (Data.Monoid.<>)
                                                (Data.ProtoLens.Encoding.Bytes.putVarInt 288)
                                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                        (Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"vec'flowIdsOld") _x))
                                     ((Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                           (\ _v
                                              -> (Data.Monoid.<>)
                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 377)
                                                   (Data.ProtoLens.Encoding.Bytes.putFixed64 _v))
                                           (Lens.Family2.view
                                              (Data.ProtoLens.Field.field @"vec'flowIds") _x))
                                        ((Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                              (\ _v
                                                 -> (Data.Monoid.<>)
                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 336)
                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                              (Lens.Family2.view
                                                 (Data.ProtoLens.Field.field
                                                    @"vec'terminatingFlowIdsOld")
                                                 _x))
                                           ((Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                 (\ _v
                                                    -> (Data.Monoid.<>)
                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                            385)
                                                         (Data.ProtoLens.Encoding.Bytes.putFixed64
                                                            _v))
                                                 (Lens.Family2.view
                                                    (Data.ProtoLens.Field.field
                                                       @"vec'terminatingFlowIds")
                                                    _x))
                                              ((Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                    (\ _v
                                                       -> (Data.Monoid.<>)
                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                               34)
                                                            ((Prelude..)
                                                               (\ bs
                                                                  -> (Data.Monoid.<>)
                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          (Prelude.fromIntegral
                                                                             (Data.ByteString.length
                                                                                bs)))
                                                                       (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                          bs))
                                                               Data.ProtoLens.encodeMessage _v))
                                                    (Lens.Family2.view
                                                       (Data.ProtoLens.Field.field
                                                          @"vec'debugAnnotations")
                                                       _x))
                                                 ((Data.Monoid.<>)
                                                    (case
                                                         Lens.Family2.view
                                                           (Data.ProtoLens.Field.field
                                                              @"maybe'taskExecution")
                                                           _x
                                                     of
                                                       Prelude.Nothing -> Data.Monoid.mempty
                                                       (Prelude.Just _v)
                                                         -> (Data.Monoid.<>)
                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 42)
                                                              ((Prelude..)
                                                                 (\ bs
                                                                    -> (Data.Monoid.<>)
                                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                            (Prelude.fromIntegral
                                                                               (Data.ByteString.length
                                                                                  bs)))
                                                                         (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                            bs))
                                                                 Data.ProtoLens.encodeMessage _v))
                                                    ((Data.Monoid.<>)
                                                       (case
                                                            Lens.Family2.view
                                                              (Data.ProtoLens.Field.field
                                                                 @"maybe'logMessage")
                                                              _x
                                                        of
                                                          Prelude.Nothing -> Data.Monoid.mempty
                                                          (Prelude.Just _v)
                                                            -> (Data.Monoid.<>)
                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    170)
                                                                 ((Prelude..)
                                                                    (\ bs
                                                                       -> (Data.Monoid.<>)
                                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                               (Prelude.fromIntegral
                                                                                  (Data.ByteString.length
                                                                                     bs)))
                                                                            (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                               bs))
                                                                    Data.ProtoLens.encodeMessage
                                                                    _v))
                                                       ((Data.Monoid.<>)
                                                          (case
                                                               Lens.Family2.view
                                                                 (Data.ProtoLens.Field.field
                                                                    @"maybe'legacyEvent")
                                                                 _x
                                                           of
                                                             Prelude.Nothing -> Data.Monoid.mempty
                                                             (Prelude.Just _v)
                                                               -> (Data.Monoid.<>)
                                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                       50)
                                                                    ((Prelude..)
                                                                       (\ bs
                                                                          -> (Data.Monoid.<>)
                                                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                  (Prelude.fromIntegral
                                                                                     (Data.ByteString.length
                                                                                        bs)))
                                                                               (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                  bs))
                                                                       Data.ProtoLens.encodeMessage
                                                                       _v))
                                                          ((Data.Monoid.<>)
                                                             (case
                                                                  Lens.Family2.view
                                                                    (Data.ProtoLens.Field.field
                                                                       @"maybe'nameField")
                                                                    _x
                                                              of
                                                                Prelude.Nothing
                                                                  -> Data.Monoid.mempty
                                                                (Prelude.Just (TrackEvent'NameIid v))
                                                                  -> (Data.Monoid.<>)
                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          80)
                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          v)
                                                                (Prelude.Just (TrackEvent'Name v))
                                                                  -> (Data.Monoid.<>)
                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          186)
                                                                       ((Prelude..)
                                                                          (\ bs
                                                                             -> (Data.Monoid.<>)
                                                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                     (Prelude.fromIntegral
                                                                                        (Data.ByteString.length
                                                                                           bs)))
                                                                                  (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                     bs))
                                                                          Data.Text.Encoding.encodeUtf8
                                                                          v))
                                                             ((Data.Monoid.<>)
                                                                (case
                                                                     Lens.Family2.view
                                                                       (Data.ProtoLens.Field.field
                                                                          @"maybe'counterValueField")
                                                                       _x
                                                                 of
                                                                   Prelude.Nothing
                                                                     -> Data.Monoid.mempty
                                                                   (Prelude.Just (TrackEvent'CounterValue v))
                                                                     -> (Data.Monoid.<>)
                                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                             240)
                                                                          ((Prelude..)
                                                                             Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                             Prelude.fromIntegral v)
                                                                   (Prelude.Just (TrackEvent'DoubleCounterValue v))
                                                                     -> (Data.Monoid.<>)
                                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                             353)
                                                                          ((Prelude..)
                                                                             Data.ProtoLens.Encoding.Bytes.putFixed64
                                                                             Data.ProtoLens.Encoding.Bytes.doubleToWord
                                                                             v))
                                                                ((Data.Monoid.<>)
                                                                   (case
                                                                        Lens.Family2.view
                                                                          (Data.ProtoLens.Field.field
                                                                             @"maybe'sourceLocationField")
                                                                          _x
                                                                    of
                                                                      Prelude.Nothing
                                                                        -> Data.Monoid.mempty
                                                                      (Prelude.Just (TrackEvent'SourceLocationIid v))
                                                                        -> (Data.Monoid.<>)
                                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                272)
                                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                v))
                                                                   ((Data.Monoid.<>)
                                                                      (case
                                                                           Lens.Family2.view
                                                                             (Data.ProtoLens.Field.field
                                                                                @"maybe'timestamp")
                                                                             _x
                                                                       of
                                                                         Prelude.Nothing
                                                                           -> Data.Monoid.mempty
                                                                         (Prelude.Just (TrackEvent'TimestampDeltaUs v))
                                                                           -> (Data.Monoid.<>)
                                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                   8)
                                                                                ((Prelude..)
                                                                                   Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                   Prelude.fromIntegral
                                                                                   v)
                                                                         (Prelude.Just (TrackEvent'TimestampAbsoluteUs v))
                                                                           -> (Data.Monoid.<>)
                                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                   128)
                                                                                ((Prelude..)
                                                                                   Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                   Prelude.fromIntegral
                                                                                   v))
                                                                      ((Data.Monoid.<>)
                                                                         (case
                                                                              Lens.Family2.view
                                                                                (Data.ProtoLens.Field.field
                                                                                   @"maybe'threadTime")
                                                                                _x
                                                                          of
                                                                            Prelude.Nothing
                                                                              -> Data.Monoid.mempty
                                                                            (Prelude.Just (TrackEvent'ThreadTimeDeltaUs v))
                                                                              -> (Data.Monoid.<>)
                                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                      16)
                                                                                   ((Prelude..)
                                                                                      Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                      Prelude.fromIntegral
                                                                                      v)
                                                                            (Prelude.Just (TrackEvent'ThreadTimeAbsoluteUs v))
                                                                              -> (Data.Monoid.<>)
                                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                      136)
                                                                                   ((Prelude..)
                                                                                      Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                      Prelude.fromIntegral
                                                                                      v))
                                                                         ((Data.Monoid.<>)
                                                                            (case
                                                                                 Lens.Family2.view
                                                                                   (Data.ProtoLens.Field.field
                                                                                      @"maybe'threadInstructionCount")
                                                                                   _x
                                                                             of
                                                                               Prelude.Nothing
                                                                                 -> Data.Monoid.mempty
                                                                               (Prelude.Just (TrackEvent'ThreadInstructionCountDelta v))
                                                                                 -> (Data.Monoid.<>)
                                                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                         64)
                                                                                      ((Prelude..)
                                                                                         Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                         Prelude.fromIntegral
                                                                                         v)
                                                                               (Prelude.Just (TrackEvent'ThreadInstructionCountAbsolute v))
                                                                                 -> (Data.Monoid.<>)
                                                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                         160)
                                                                                      ((Prelude..)
                                                                                         Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                         Prelude.fromIntegral
                                                                                         v))
                                                                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                                               (Lens.Family2.view
                                                                                  Data.ProtoLens.unknownFields
                                                                                  _x)))))))))))))))))))))))
instance Control.DeepSeq.NFData TrackEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TrackEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TrackEvent'categoryIids x__)
                (Control.DeepSeq.deepseq
                   (_TrackEvent'categories x__)
                   (Control.DeepSeq.deepseq
                      (_TrackEvent'type' x__)
                      (Control.DeepSeq.deepseq
                         (_TrackEvent'trackUuid x__)
                         (Control.DeepSeq.deepseq
                            (_TrackEvent'extraCounterTrackUuids x__)
                            (Control.DeepSeq.deepseq
                               (_TrackEvent'extraCounterValues x__)
                               (Control.DeepSeq.deepseq
                                  (_TrackEvent'extraDoubleCounterTrackUuids x__)
                                  (Control.DeepSeq.deepseq
                                     (_TrackEvent'extraDoubleCounterValues x__)
                                     (Control.DeepSeq.deepseq
                                        (_TrackEvent'flowIdsOld x__)
                                        (Control.DeepSeq.deepseq
                                           (_TrackEvent'flowIds x__)
                                           (Control.DeepSeq.deepseq
                                              (_TrackEvent'terminatingFlowIdsOld x__)
                                              (Control.DeepSeq.deepseq
                                                 (_TrackEvent'terminatingFlowIds x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_TrackEvent'debugAnnotations x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_TrackEvent'taskExecution x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_TrackEvent'logMessage x__)
                                                          (Control.DeepSeq.deepseq
                                                             (_TrackEvent'legacyEvent x__)
                                                             (Control.DeepSeq.deepseq
                                                                (_TrackEvent'nameField x__)
                                                                (Control.DeepSeq.deepseq
                                                                   (_TrackEvent'counterValueField
                                                                      x__)
                                                                   (Control.DeepSeq.deepseq
                                                                      (_TrackEvent'sourceLocationField
                                                                         x__)
                                                                      (Control.DeepSeq.deepseq
                                                                         (_TrackEvent'timestamp x__)
                                                                         (Control.DeepSeq.deepseq
                                                                            (_TrackEvent'threadTime
                                                                               x__)
                                                                            (Control.DeepSeq.deepseq
                                                                               (_TrackEvent'threadInstructionCount
                                                                                  x__)
                                                                               ()))))))))))))))))))))))
instance Control.DeepSeq.NFData TrackEvent'NameField where
  rnf (TrackEvent'NameIid x__) = Control.DeepSeq.rnf x__
  rnf (TrackEvent'Name x__) = Control.DeepSeq.rnf x__
instance Control.DeepSeq.NFData TrackEvent'CounterValueField where
  rnf (TrackEvent'CounterValue x__) = Control.DeepSeq.rnf x__
  rnf (TrackEvent'DoubleCounterValue x__) = Control.DeepSeq.rnf x__
instance Control.DeepSeq.NFData TrackEvent'SourceLocationField where
  rnf (TrackEvent'SourceLocationIid x__) = Control.DeepSeq.rnf x__
instance Control.DeepSeq.NFData TrackEvent'Timestamp where
  rnf (TrackEvent'TimestampDeltaUs x__) = Control.DeepSeq.rnf x__
  rnf (TrackEvent'TimestampAbsoluteUs x__) = Control.DeepSeq.rnf x__
instance Control.DeepSeq.NFData TrackEvent'ThreadTime where
  rnf (TrackEvent'ThreadTimeDeltaUs x__) = Control.DeepSeq.rnf x__
  rnf (TrackEvent'ThreadTimeAbsoluteUs x__) = Control.DeepSeq.rnf x__
instance Control.DeepSeq.NFData TrackEvent'ThreadInstructionCount where
  rnf (TrackEvent'ThreadInstructionCountDelta x__)
    = Control.DeepSeq.rnf x__
  rnf (TrackEvent'ThreadInstructionCountAbsolute x__)
    = Control.DeepSeq.rnf x__
_TrackEvent'NameIid ::
  Data.ProtoLens.Prism.Prism' TrackEvent'NameField Data.Word.Word64
_TrackEvent'NameIid
  = Data.ProtoLens.Prism.prism'
      TrackEvent'NameIid
      (\ p__
         -> case p__ of
              (TrackEvent'NameIid p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_TrackEvent'Name ::
  Data.ProtoLens.Prism.Prism' TrackEvent'NameField Data.Text.Text
_TrackEvent'Name
  = Data.ProtoLens.Prism.prism'
      TrackEvent'Name
      (\ p__
         -> case p__ of
              (TrackEvent'Name p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_TrackEvent'CounterValue ::
  Data.ProtoLens.Prism.Prism' TrackEvent'CounterValueField Data.Int.Int64
_TrackEvent'CounterValue
  = Data.ProtoLens.Prism.prism'
      TrackEvent'CounterValue
      (\ p__
         -> case p__ of
              (TrackEvent'CounterValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_TrackEvent'DoubleCounterValue ::
  Data.ProtoLens.Prism.Prism' TrackEvent'CounterValueField Prelude.Double
_TrackEvent'DoubleCounterValue
  = Data.ProtoLens.Prism.prism'
      TrackEvent'DoubleCounterValue
      (\ p__
         -> case p__ of
              (TrackEvent'DoubleCounterValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_TrackEvent'SourceLocationIid ::
  Data.ProtoLens.Prism.Prism' TrackEvent'SourceLocationField Data.Word.Word64
_TrackEvent'SourceLocationIid
  = Data.ProtoLens.Prism.prism'
      TrackEvent'SourceLocationIid
      (\ p__
         -> case p__ of
              (TrackEvent'SourceLocationIid p__val) -> Prelude.Just p__val)
_TrackEvent'TimestampDeltaUs ::
  Data.ProtoLens.Prism.Prism' TrackEvent'Timestamp Data.Int.Int64
_TrackEvent'TimestampDeltaUs
  = Data.ProtoLens.Prism.prism'
      TrackEvent'TimestampDeltaUs
      (\ p__
         -> case p__ of
              (TrackEvent'TimestampDeltaUs p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_TrackEvent'TimestampAbsoluteUs ::
  Data.ProtoLens.Prism.Prism' TrackEvent'Timestamp Data.Int.Int64
_TrackEvent'TimestampAbsoluteUs
  = Data.ProtoLens.Prism.prism'
      TrackEvent'TimestampAbsoluteUs
      (\ p__
         -> case p__ of
              (TrackEvent'TimestampAbsoluteUs p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_TrackEvent'ThreadTimeDeltaUs ::
  Data.ProtoLens.Prism.Prism' TrackEvent'ThreadTime Data.Int.Int64
_TrackEvent'ThreadTimeDeltaUs
  = Data.ProtoLens.Prism.prism'
      TrackEvent'ThreadTimeDeltaUs
      (\ p__
         -> case p__ of
              (TrackEvent'ThreadTimeDeltaUs p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_TrackEvent'ThreadTimeAbsoluteUs ::
  Data.ProtoLens.Prism.Prism' TrackEvent'ThreadTime Data.Int.Int64
_TrackEvent'ThreadTimeAbsoluteUs
  = Data.ProtoLens.Prism.prism'
      TrackEvent'ThreadTimeAbsoluteUs
      (\ p__
         -> case p__ of
              (TrackEvent'ThreadTimeAbsoluteUs p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_TrackEvent'ThreadInstructionCountDelta ::
  Data.ProtoLens.Prism.Prism' TrackEvent'ThreadInstructionCount Data.Int.Int64
_TrackEvent'ThreadInstructionCountDelta
  = Data.ProtoLens.Prism.prism'
      TrackEvent'ThreadInstructionCountDelta
      (\ p__
         -> case p__ of
              (TrackEvent'ThreadInstructionCountDelta p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_TrackEvent'ThreadInstructionCountAbsolute ::
  Data.ProtoLens.Prism.Prism' TrackEvent'ThreadInstructionCount Data.Int.Int64
_TrackEvent'ThreadInstructionCountAbsolute
  = Data.ProtoLens.Prism.prism'
      TrackEvent'ThreadInstructionCountAbsolute
      (\ p__
         -> case p__ of
              (TrackEvent'ThreadInstructionCountAbsolute p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.nameIid' @:: Lens' TrackEvent'LegacyEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.maybe'nameIid' @:: Lens' TrackEvent'LegacyEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.phase' @:: Lens' TrackEvent'LegacyEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.maybe'phase' @:: Lens' TrackEvent'LegacyEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.durationUs' @:: Lens' TrackEvent'LegacyEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.maybe'durationUs' @:: Lens' TrackEvent'LegacyEvent (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.threadDurationUs' @:: Lens' TrackEvent'LegacyEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.maybe'threadDurationUs' @:: Lens' TrackEvent'LegacyEvent (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.threadInstructionDelta' @:: Lens' TrackEvent'LegacyEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.maybe'threadInstructionDelta' @:: Lens' TrackEvent'LegacyEvent (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.idScope' @:: Lens' TrackEvent'LegacyEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.maybe'idScope' @:: Lens' TrackEvent'LegacyEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.useAsyncTts' @:: Lens' TrackEvent'LegacyEvent Prelude.Bool@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.maybe'useAsyncTts' @:: Lens' TrackEvent'LegacyEvent (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.bindId' @:: Lens' TrackEvent'LegacyEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.maybe'bindId' @:: Lens' TrackEvent'LegacyEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.bindToEnclosing' @:: Lens' TrackEvent'LegacyEvent Prelude.Bool@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.maybe'bindToEnclosing' @:: Lens' TrackEvent'LegacyEvent (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.flowDirection' @:: Lens' TrackEvent'LegacyEvent TrackEvent'LegacyEvent'FlowDirection@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.maybe'flowDirection' @:: Lens' TrackEvent'LegacyEvent (Prelude.Maybe TrackEvent'LegacyEvent'FlowDirection)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.instantEventScope' @:: Lens' TrackEvent'LegacyEvent TrackEvent'LegacyEvent'InstantEventScope@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.maybe'instantEventScope' @:: Lens' TrackEvent'LegacyEvent (Prelude.Maybe TrackEvent'LegacyEvent'InstantEventScope)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.pidOverride' @:: Lens' TrackEvent'LegacyEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.maybe'pidOverride' @:: Lens' TrackEvent'LegacyEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.tidOverride' @:: Lens' TrackEvent'LegacyEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.maybe'tidOverride' @:: Lens' TrackEvent'LegacyEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.maybe'id' @:: Lens' TrackEvent'LegacyEvent (Prelude.Maybe TrackEvent'LegacyEvent'Id)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.maybe'unscopedId' @:: Lens' TrackEvent'LegacyEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.unscopedId' @:: Lens' TrackEvent'LegacyEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.maybe'localId' @:: Lens' TrackEvent'LegacyEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.localId' @:: Lens' TrackEvent'LegacyEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.maybe'globalId' @:: Lens' TrackEvent'LegacyEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.globalId' @:: Lens' TrackEvent'LegacyEvent Data.Word.Word64@ -}
data TrackEvent'LegacyEvent
  = TrackEvent'LegacyEvent'_constructor {_TrackEvent'LegacyEvent'nameIid :: !(Prelude.Maybe Data.Word.Word64),
                                         _TrackEvent'LegacyEvent'phase :: !(Prelude.Maybe Data.Int.Int32),
                                         _TrackEvent'LegacyEvent'durationUs :: !(Prelude.Maybe Data.Int.Int64),
                                         _TrackEvent'LegacyEvent'threadDurationUs :: !(Prelude.Maybe Data.Int.Int64),
                                         _TrackEvent'LegacyEvent'threadInstructionDelta :: !(Prelude.Maybe Data.Int.Int64),
                                         _TrackEvent'LegacyEvent'idScope :: !(Prelude.Maybe Data.Text.Text),
                                         _TrackEvent'LegacyEvent'useAsyncTts :: !(Prelude.Maybe Prelude.Bool),
                                         _TrackEvent'LegacyEvent'bindId :: !(Prelude.Maybe Data.Word.Word64),
                                         _TrackEvent'LegacyEvent'bindToEnclosing :: !(Prelude.Maybe Prelude.Bool),
                                         _TrackEvent'LegacyEvent'flowDirection :: !(Prelude.Maybe TrackEvent'LegacyEvent'FlowDirection),
                                         _TrackEvent'LegacyEvent'instantEventScope :: !(Prelude.Maybe TrackEvent'LegacyEvent'InstantEventScope),
                                         _TrackEvent'LegacyEvent'pidOverride :: !(Prelude.Maybe Data.Int.Int32),
                                         _TrackEvent'LegacyEvent'tidOverride :: !(Prelude.Maybe Data.Int.Int32),
                                         _TrackEvent'LegacyEvent'id :: !(Prelude.Maybe TrackEvent'LegacyEvent'Id),
                                         _TrackEvent'LegacyEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TrackEvent'LegacyEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data TrackEvent'LegacyEvent'Id
  = TrackEvent'LegacyEvent'UnscopedId !Data.Word.Word64 |
    TrackEvent'LegacyEvent'LocalId !Data.Word.Word64 |
    TrackEvent'LegacyEvent'GlobalId !Data.Word.Word64
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField TrackEvent'LegacyEvent "nameIid" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'LegacyEvent'nameIid
           (\ x__ y__ -> x__ {_TrackEvent'LegacyEvent'nameIid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrackEvent'LegacyEvent "maybe'nameIid" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'LegacyEvent'nameIid
           (\ x__ y__ -> x__ {_TrackEvent'LegacyEvent'nameIid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackEvent'LegacyEvent "phase" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'LegacyEvent'phase
           (\ x__ y__ -> x__ {_TrackEvent'LegacyEvent'phase = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrackEvent'LegacyEvent "maybe'phase" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'LegacyEvent'phase
           (\ x__ y__ -> x__ {_TrackEvent'LegacyEvent'phase = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackEvent'LegacyEvent "durationUs" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'LegacyEvent'durationUs
           (\ x__ y__ -> x__ {_TrackEvent'LegacyEvent'durationUs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrackEvent'LegacyEvent "maybe'durationUs" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'LegacyEvent'durationUs
           (\ x__ y__ -> x__ {_TrackEvent'LegacyEvent'durationUs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackEvent'LegacyEvent "threadDurationUs" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'LegacyEvent'threadDurationUs
           (\ x__ y__
              -> x__ {_TrackEvent'LegacyEvent'threadDurationUs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrackEvent'LegacyEvent "maybe'threadDurationUs" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'LegacyEvent'threadDurationUs
           (\ x__ y__
              -> x__ {_TrackEvent'LegacyEvent'threadDurationUs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackEvent'LegacyEvent "threadInstructionDelta" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'LegacyEvent'threadInstructionDelta
           (\ x__ y__
              -> x__ {_TrackEvent'LegacyEvent'threadInstructionDelta = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrackEvent'LegacyEvent "maybe'threadInstructionDelta" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'LegacyEvent'threadInstructionDelta
           (\ x__ y__
              -> x__ {_TrackEvent'LegacyEvent'threadInstructionDelta = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackEvent'LegacyEvent "idScope" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'LegacyEvent'idScope
           (\ x__ y__ -> x__ {_TrackEvent'LegacyEvent'idScope = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrackEvent'LegacyEvent "maybe'idScope" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'LegacyEvent'idScope
           (\ x__ y__ -> x__ {_TrackEvent'LegacyEvent'idScope = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackEvent'LegacyEvent "useAsyncTts" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'LegacyEvent'useAsyncTts
           (\ x__ y__ -> x__ {_TrackEvent'LegacyEvent'useAsyncTts = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrackEvent'LegacyEvent "maybe'useAsyncTts" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'LegacyEvent'useAsyncTts
           (\ x__ y__ -> x__ {_TrackEvent'LegacyEvent'useAsyncTts = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackEvent'LegacyEvent "bindId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'LegacyEvent'bindId
           (\ x__ y__ -> x__ {_TrackEvent'LegacyEvent'bindId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrackEvent'LegacyEvent "maybe'bindId" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'LegacyEvent'bindId
           (\ x__ y__ -> x__ {_TrackEvent'LegacyEvent'bindId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackEvent'LegacyEvent "bindToEnclosing" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'LegacyEvent'bindToEnclosing
           (\ x__ y__ -> x__ {_TrackEvent'LegacyEvent'bindToEnclosing = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrackEvent'LegacyEvent "maybe'bindToEnclosing" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'LegacyEvent'bindToEnclosing
           (\ x__ y__ -> x__ {_TrackEvent'LegacyEvent'bindToEnclosing = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackEvent'LegacyEvent "flowDirection" TrackEvent'LegacyEvent'FlowDirection where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'LegacyEvent'flowDirection
           (\ x__ y__ -> x__ {_TrackEvent'LegacyEvent'flowDirection = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrackEvent'LegacyEvent "maybe'flowDirection" (Prelude.Maybe TrackEvent'LegacyEvent'FlowDirection) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'LegacyEvent'flowDirection
           (\ x__ y__ -> x__ {_TrackEvent'LegacyEvent'flowDirection = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackEvent'LegacyEvent "instantEventScope" TrackEvent'LegacyEvent'InstantEventScope where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'LegacyEvent'instantEventScope
           (\ x__ y__
              -> x__ {_TrackEvent'LegacyEvent'instantEventScope = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrackEvent'LegacyEvent "maybe'instantEventScope" (Prelude.Maybe TrackEvent'LegacyEvent'InstantEventScope) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'LegacyEvent'instantEventScope
           (\ x__ y__
              -> x__ {_TrackEvent'LegacyEvent'instantEventScope = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackEvent'LegacyEvent "pidOverride" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'LegacyEvent'pidOverride
           (\ x__ y__ -> x__ {_TrackEvent'LegacyEvent'pidOverride = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrackEvent'LegacyEvent "maybe'pidOverride" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'LegacyEvent'pidOverride
           (\ x__ y__ -> x__ {_TrackEvent'LegacyEvent'pidOverride = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackEvent'LegacyEvent "tidOverride" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'LegacyEvent'tidOverride
           (\ x__ y__ -> x__ {_TrackEvent'LegacyEvent'tidOverride = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrackEvent'LegacyEvent "maybe'tidOverride" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'LegacyEvent'tidOverride
           (\ x__ y__ -> x__ {_TrackEvent'LegacyEvent'tidOverride = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackEvent'LegacyEvent "maybe'id" (Prelude.Maybe TrackEvent'LegacyEvent'Id) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'LegacyEvent'id
           (\ x__ y__ -> x__ {_TrackEvent'LegacyEvent'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackEvent'LegacyEvent "maybe'unscopedId" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'LegacyEvent'id
           (\ x__ y__ -> x__ {_TrackEvent'LegacyEvent'id = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TrackEvent'LegacyEvent'UnscopedId x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TrackEvent'LegacyEvent'UnscopedId y__))
instance Data.ProtoLens.Field.HasField TrackEvent'LegacyEvent "unscopedId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'LegacyEvent'id
           (\ x__ y__ -> x__ {_TrackEvent'LegacyEvent'id = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TrackEvent'LegacyEvent'UnscopedId x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TrackEvent'LegacyEvent'UnscopedId y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField TrackEvent'LegacyEvent "maybe'localId" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'LegacyEvent'id
           (\ x__ y__ -> x__ {_TrackEvent'LegacyEvent'id = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TrackEvent'LegacyEvent'LocalId x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TrackEvent'LegacyEvent'LocalId y__))
instance Data.ProtoLens.Field.HasField TrackEvent'LegacyEvent "localId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'LegacyEvent'id
           (\ x__ y__ -> x__ {_TrackEvent'LegacyEvent'id = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TrackEvent'LegacyEvent'LocalId x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TrackEvent'LegacyEvent'LocalId y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField TrackEvent'LegacyEvent "maybe'globalId" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'LegacyEvent'id
           (\ x__ y__ -> x__ {_TrackEvent'LegacyEvent'id = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TrackEvent'LegacyEvent'GlobalId x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TrackEvent'LegacyEvent'GlobalId y__))
instance Data.ProtoLens.Field.HasField TrackEvent'LegacyEvent "globalId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEvent'LegacyEvent'id
           (\ x__ y__ -> x__ {_TrackEvent'LegacyEvent'id = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TrackEvent'LegacyEvent'GlobalId x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TrackEvent'LegacyEvent'GlobalId y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message TrackEvent'LegacyEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.TrackEvent.LegacyEvent"
  packedMessageDescriptor _
    = "\n\
      \\vLegacyEvent\DC2\EM\n\
      \\bname_iid\CAN\SOH \SOH(\EOTR\anameIid\DC2\DC4\n\
      \\ENQphase\CAN\STX \SOH(\ENQR\ENQphase\DC2\US\n\
      \\vduration_us\CAN\ETX \SOH(\ETXR\n\
      \durationUs\DC2,\n\
      \\DC2thread_duration_us\CAN\EOT \SOH(\ETXR\DLEthreadDurationUs\DC28\n\
      \\CANthread_instruction_delta\CAN\SI \SOH(\ETXR\SYNthreadInstructionDelta\DC2!\n\
      \\vunscoped_id\CAN\ACK \SOH(\EOTH\NULR\n\
      \unscopedId\DC2\ESC\n\
      \\blocal_id\CAN\n\
      \ \SOH(\EOTH\NULR\alocalId\DC2\GS\n\
      \\tglobal_id\CAN\v \SOH(\EOTH\NULR\bglobalId\DC2\EM\n\
      \\bid_scope\CAN\a \SOH(\tR\aidScope\DC2\"\n\
      \\ruse_async_tts\CAN\t \SOH(\bR\vuseAsyncTts\DC2\ETB\n\
      \\abind_id\CAN\b \SOH(\EOTR\ACKbindId\DC2*\n\
      \\DC1bind_to_enclosing\CAN\f \SOH(\bR\SIbindToEnclosing\DC2\\\n\
      \\SOflow_direction\CAN\r \SOH(\SO25.perfetto.protos.TrackEvent.LegacyEvent.FlowDirectionR\rflowDirection\DC2i\n\
      \\DC3instant_event_scope\CAN\SO \SOH(\SO29.perfetto.protos.TrackEvent.LegacyEvent.InstantEventScopeR\DC1instantEventScope\DC2!\n\
      \\fpid_override\CAN\DC2 \SOH(\ENQR\vpidOverride\DC2!\n\
      \\ftid_override\CAN\DC3 \SOH(\ENQR\vtidOverride\"P\n\
      \\rFlowDirection\DC2\DC4\n\
      \\DLEFLOW_UNSPECIFIED\DLE\NUL\DC2\v\n\
      \\aFLOW_IN\DLE\SOH\DC2\f\n\
      \\bFLOW_OUT\DLE\STX\DC2\SO\n\
      \\n\
      \FLOW_INOUT\DLE\ETX\"a\n\
      \\DC1InstantEventScope\DC2\NAK\n\
      \\DC1SCOPE_UNSPECIFIED\DLE\NUL\DC2\DLE\n\
      \\fSCOPE_GLOBAL\DLE\SOH\DC2\DC1\n\
      \\rSCOPE_PROCESS\DLE\STX\DC2\DLE\n\
      \\fSCOPE_THREAD\DLE\ETXB\EOT\n\
      \\STXidJ\EOT\b\ENQ\DLE\ACK"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        nameIid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name_iid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nameIid")) ::
              Data.ProtoLens.FieldDescriptor TrackEvent'LegacyEvent
        phase__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "phase"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'phase")) ::
              Data.ProtoLens.FieldDescriptor TrackEvent'LegacyEvent
        durationUs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "duration_us"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'durationUs")) ::
              Data.ProtoLens.FieldDescriptor TrackEvent'LegacyEvent
        threadDurationUs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "thread_duration_us"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'threadDurationUs")) ::
              Data.ProtoLens.FieldDescriptor TrackEvent'LegacyEvent
        threadInstructionDelta__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "thread_instruction_delta"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'threadInstructionDelta")) ::
              Data.ProtoLens.FieldDescriptor TrackEvent'LegacyEvent
        idScope__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id_scope"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'idScope")) ::
              Data.ProtoLens.FieldDescriptor TrackEvent'LegacyEvent
        useAsyncTts__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "use_async_tts"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'useAsyncTts")) ::
              Data.ProtoLens.FieldDescriptor TrackEvent'LegacyEvent
        bindId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bind_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bindId")) ::
              Data.ProtoLens.FieldDescriptor TrackEvent'LegacyEvent
        bindToEnclosing__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bind_to_enclosing"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bindToEnclosing")) ::
              Data.ProtoLens.FieldDescriptor TrackEvent'LegacyEvent
        flowDirection__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "flow_direction"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor TrackEvent'LegacyEvent'FlowDirection)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'flowDirection")) ::
              Data.ProtoLens.FieldDescriptor TrackEvent'LegacyEvent
        instantEventScope__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "instant_event_scope"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor TrackEvent'LegacyEvent'InstantEventScope)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'instantEventScope")) ::
              Data.ProtoLens.FieldDescriptor TrackEvent'LegacyEvent
        pidOverride__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pid_override"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pidOverride")) ::
              Data.ProtoLens.FieldDescriptor TrackEvent'LegacyEvent
        tidOverride__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tid_override"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tidOverride")) ::
              Data.ProtoLens.FieldDescriptor TrackEvent'LegacyEvent
        unscopedId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "unscoped_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'unscopedId")) ::
              Data.ProtoLens.FieldDescriptor TrackEvent'LegacyEvent
        localId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "local_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'localId")) ::
              Data.ProtoLens.FieldDescriptor TrackEvent'LegacyEvent
        globalId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "global_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'globalId")) ::
              Data.ProtoLens.FieldDescriptor TrackEvent'LegacyEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, nameIid__field_descriptor),
           (Data.ProtoLens.Tag 2, phase__field_descriptor),
           (Data.ProtoLens.Tag 3, durationUs__field_descriptor),
           (Data.ProtoLens.Tag 4, threadDurationUs__field_descriptor),
           (Data.ProtoLens.Tag 15, threadInstructionDelta__field_descriptor),
           (Data.ProtoLens.Tag 7, idScope__field_descriptor),
           (Data.ProtoLens.Tag 9, useAsyncTts__field_descriptor),
           (Data.ProtoLens.Tag 8, bindId__field_descriptor),
           (Data.ProtoLens.Tag 12, bindToEnclosing__field_descriptor),
           (Data.ProtoLens.Tag 13, flowDirection__field_descriptor),
           (Data.ProtoLens.Tag 14, instantEventScope__field_descriptor),
           (Data.ProtoLens.Tag 18, pidOverride__field_descriptor),
           (Data.ProtoLens.Tag 19, tidOverride__field_descriptor),
           (Data.ProtoLens.Tag 6, unscopedId__field_descriptor),
           (Data.ProtoLens.Tag 10, localId__field_descriptor),
           (Data.ProtoLens.Tag 11, globalId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TrackEvent'LegacyEvent'_unknownFields
        (\ x__ y__ -> x__ {_TrackEvent'LegacyEvent'_unknownFields = y__})
  defMessage
    = TrackEvent'LegacyEvent'_constructor
        {_TrackEvent'LegacyEvent'nameIid = Prelude.Nothing,
         _TrackEvent'LegacyEvent'phase = Prelude.Nothing,
         _TrackEvent'LegacyEvent'durationUs = Prelude.Nothing,
         _TrackEvent'LegacyEvent'threadDurationUs = Prelude.Nothing,
         _TrackEvent'LegacyEvent'threadInstructionDelta = Prelude.Nothing,
         _TrackEvent'LegacyEvent'idScope = Prelude.Nothing,
         _TrackEvent'LegacyEvent'useAsyncTts = Prelude.Nothing,
         _TrackEvent'LegacyEvent'bindId = Prelude.Nothing,
         _TrackEvent'LegacyEvent'bindToEnclosing = Prelude.Nothing,
         _TrackEvent'LegacyEvent'flowDirection = Prelude.Nothing,
         _TrackEvent'LegacyEvent'instantEventScope = Prelude.Nothing,
         _TrackEvent'LegacyEvent'pidOverride = Prelude.Nothing,
         _TrackEvent'LegacyEvent'tidOverride = Prelude.Nothing,
         _TrackEvent'LegacyEvent'id = Prelude.Nothing,
         _TrackEvent'LegacyEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TrackEvent'LegacyEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser TrackEvent'LegacyEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "name_iid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nameIid") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "phase"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"phase") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "duration_us"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"durationUs") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "thread_duration_us"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"threadDurationUs") y x)
                        120
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "thread_instruction_delta"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"threadInstructionDelta") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "id_scope"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"idScope") y x)
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "use_async_tts"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"useAsyncTts") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "bind_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"bindId") y x)
                        96
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "bind_to_enclosing"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"bindToEnclosing") y x)
                        104
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "flow_direction"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"flowDirection") y x)
                        112
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "instant_event_scope"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"instantEventScope") y x)
                        144
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "pid_override"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pidOverride") y x)
                        152
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "tid_override"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"tidOverride") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "unscoped_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"unscopedId") y x)
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "local_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"localId") y x)
                        88
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "global_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"globalId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "LegacyEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nameIid") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'phase") _x
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
                          (Data.ProtoLens.Field.field @"maybe'durationUs") _x
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
                             (Data.ProtoLens.Field.field @"maybe'threadDurationUs") _x
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
                                (Data.ProtoLens.Field.field @"maybe'threadInstructionDelta") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 120)
                                   ((Prelude..)
                                      Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                      _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'idScope") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.Text.Encoding.encodeUtf8 _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'useAsyncTts") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                         ((Prelude..)
                                            Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (\ b -> if b then 1 else 0) _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'bindId") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"maybe'bindToEnclosing") _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 96)
                                               ((Prelude..)
                                                  Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  (\ b -> if b then 1 else 0) _v))
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field @"maybe'flowDirection")
                                               _x
                                         of
                                           Prelude.Nothing -> Data.Monoid.mempty
                                           (Prelude.Just _v)
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 104)
                                                  ((Prelude..)
                                                     ((Prelude..)
                                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                                        Prelude.fromIntegral)
                                                     Prelude.fromEnum _v))
                                        ((Data.Monoid.<>)
                                           (case
                                                Lens.Family2.view
                                                  (Data.ProtoLens.Field.field
                                                     @"maybe'instantEventScope")
                                                  _x
                                            of
                                              Prelude.Nothing -> Data.Monoid.mempty
                                              (Prelude.Just _v)
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 112)
                                                     ((Prelude..)
                                                        ((Prelude..)
                                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           Prelude.fromIntegral)
                                                        Prelude.fromEnum _v))
                                           ((Data.Monoid.<>)
                                              (case
                                                   Lens.Family2.view
                                                     (Data.ProtoLens.Field.field
                                                        @"maybe'pidOverride")
                                                     _x
                                               of
                                                 Prelude.Nothing -> Data.Monoid.mempty
                                                 (Prelude.Just _v)
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           144)
                                                        ((Prelude..)
                                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           Prelude.fromIntegral _v))
                                              ((Data.Monoid.<>)
                                                 (case
                                                      Lens.Family2.view
                                                        (Data.ProtoLens.Field.field
                                                           @"maybe'tidOverride")
                                                        _x
                                                  of
                                                    Prelude.Nothing -> Data.Monoid.mempty
                                                    (Prelude.Just _v)
                                                      -> (Data.Monoid.<>)
                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              152)
                                                           ((Prelude..)
                                                              Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              Prelude.fromIntegral _v))
                                                 ((Data.Monoid.<>)
                                                    (case
                                                         Lens.Family2.view
                                                           (Data.ProtoLens.Field.field @"maybe'id")
                                                           _x
                                                     of
                                                       Prelude.Nothing -> Data.Monoid.mempty
                                                       (Prelude.Just (TrackEvent'LegacyEvent'UnscopedId v))
                                                         -> (Data.Monoid.<>)
                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 48)
                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 v)
                                                       (Prelude.Just (TrackEvent'LegacyEvent'LocalId v))
                                                         -> (Data.Monoid.<>)
                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 80)
                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 v)
                                                       (Prelude.Just (TrackEvent'LegacyEvent'GlobalId v))
                                                         -> (Data.Monoid.<>)
                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 88)
                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 v))
                                                    (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                       (Lens.Family2.view
                                                          Data.ProtoLens.unknownFields
                                                          _x)))))))))))))))
instance Control.DeepSeq.NFData TrackEvent'LegacyEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TrackEvent'LegacyEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TrackEvent'LegacyEvent'nameIid x__)
                (Control.DeepSeq.deepseq
                   (_TrackEvent'LegacyEvent'phase x__)
                   (Control.DeepSeq.deepseq
                      (_TrackEvent'LegacyEvent'durationUs x__)
                      (Control.DeepSeq.deepseq
                         (_TrackEvent'LegacyEvent'threadDurationUs x__)
                         (Control.DeepSeq.deepseq
                            (_TrackEvent'LegacyEvent'threadInstructionDelta x__)
                            (Control.DeepSeq.deepseq
                               (_TrackEvent'LegacyEvent'idScope x__)
                               (Control.DeepSeq.deepseq
                                  (_TrackEvent'LegacyEvent'useAsyncTts x__)
                                  (Control.DeepSeq.deepseq
                                     (_TrackEvent'LegacyEvent'bindId x__)
                                     (Control.DeepSeq.deepseq
                                        (_TrackEvent'LegacyEvent'bindToEnclosing x__)
                                        (Control.DeepSeq.deepseq
                                           (_TrackEvent'LegacyEvent'flowDirection x__)
                                           (Control.DeepSeq.deepseq
                                              (_TrackEvent'LegacyEvent'instantEventScope x__)
                                              (Control.DeepSeq.deepseq
                                                 (_TrackEvent'LegacyEvent'pidOverride x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_TrackEvent'LegacyEvent'tidOverride x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_TrackEvent'LegacyEvent'id x__)
                                                       ()))))))))))))))
instance Control.DeepSeq.NFData TrackEvent'LegacyEvent'Id where
  rnf (TrackEvent'LegacyEvent'UnscopedId x__)
    = Control.DeepSeq.rnf x__
  rnf (TrackEvent'LegacyEvent'LocalId x__) = Control.DeepSeq.rnf x__
  rnf (TrackEvent'LegacyEvent'GlobalId x__) = Control.DeepSeq.rnf x__
_TrackEvent'LegacyEvent'UnscopedId ::
  Data.ProtoLens.Prism.Prism' TrackEvent'LegacyEvent'Id Data.Word.Word64
_TrackEvent'LegacyEvent'UnscopedId
  = Data.ProtoLens.Prism.prism'
      TrackEvent'LegacyEvent'UnscopedId
      (\ p__
         -> case p__ of
              (TrackEvent'LegacyEvent'UnscopedId p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_TrackEvent'LegacyEvent'LocalId ::
  Data.ProtoLens.Prism.Prism' TrackEvent'LegacyEvent'Id Data.Word.Word64
_TrackEvent'LegacyEvent'LocalId
  = Data.ProtoLens.Prism.prism'
      TrackEvent'LegacyEvent'LocalId
      (\ p__
         -> case p__ of
              (TrackEvent'LegacyEvent'LocalId p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_TrackEvent'LegacyEvent'GlobalId ::
  Data.ProtoLens.Prism.Prism' TrackEvent'LegacyEvent'Id Data.Word.Word64
_TrackEvent'LegacyEvent'GlobalId
  = Data.ProtoLens.Prism.prism'
      TrackEvent'LegacyEvent'GlobalId
      (\ p__
         -> case p__ of
              (TrackEvent'LegacyEvent'GlobalId p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
data TrackEvent'LegacyEvent'FlowDirection
  = TrackEvent'LegacyEvent'FLOW_UNSPECIFIED |
    TrackEvent'LegacyEvent'FLOW_IN |
    TrackEvent'LegacyEvent'FLOW_OUT |
    TrackEvent'LegacyEvent'FLOW_INOUT
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum TrackEvent'LegacyEvent'FlowDirection where
  maybeToEnum 0
    = Prelude.Just TrackEvent'LegacyEvent'FLOW_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just TrackEvent'LegacyEvent'FLOW_IN
  maybeToEnum 2 = Prelude.Just TrackEvent'LegacyEvent'FLOW_OUT
  maybeToEnum 3 = Prelude.Just TrackEvent'LegacyEvent'FLOW_INOUT
  maybeToEnum _ = Prelude.Nothing
  showEnum TrackEvent'LegacyEvent'FLOW_UNSPECIFIED
    = "FLOW_UNSPECIFIED"
  showEnum TrackEvent'LegacyEvent'FLOW_IN = "FLOW_IN"
  showEnum TrackEvent'LegacyEvent'FLOW_OUT = "FLOW_OUT"
  showEnum TrackEvent'LegacyEvent'FLOW_INOUT = "FLOW_INOUT"
  readEnum k
    | (Prelude.==) k "FLOW_UNSPECIFIED"
    = Prelude.Just TrackEvent'LegacyEvent'FLOW_UNSPECIFIED
    | (Prelude.==) k "FLOW_IN"
    = Prelude.Just TrackEvent'LegacyEvent'FLOW_IN
    | (Prelude.==) k "FLOW_OUT"
    = Prelude.Just TrackEvent'LegacyEvent'FLOW_OUT
    | (Prelude.==) k "FLOW_INOUT"
    = Prelude.Just TrackEvent'LegacyEvent'FLOW_INOUT
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded TrackEvent'LegacyEvent'FlowDirection where
  minBound = TrackEvent'LegacyEvent'FLOW_UNSPECIFIED
  maxBound = TrackEvent'LegacyEvent'FLOW_INOUT
instance Prelude.Enum TrackEvent'LegacyEvent'FlowDirection where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum FlowDirection: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum TrackEvent'LegacyEvent'FLOW_UNSPECIFIED = 0
  fromEnum TrackEvent'LegacyEvent'FLOW_IN = 1
  fromEnum TrackEvent'LegacyEvent'FLOW_OUT = 2
  fromEnum TrackEvent'LegacyEvent'FLOW_INOUT = 3
  succ TrackEvent'LegacyEvent'FLOW_INOUT
    = Prelude.error
        "TrackEvent'LegacyEvent'FlowDirection.succ: bad argument TrackEvent'LegacyEvent'FLOW_INOUT. This value would be out of bounds."
  succ TrackEvent'LegacyEvent'FLOW_UNSPECIFIED
    = TrackEvent'LegacyEvent'FLOW_IN
  succ TrackEvent'LegacyEvent'FLOW_IN
    = TrackEvent'LegacyEvent'FLOW_OUT
  succ TrackEvent'LegacyEvent'FLOW_OUT
    = TrackEvent'LegacyEvent'FLOW_INOUT
  pred TrackEvent'LegacyEvent'FLOW_UNSPECIFIED
    = Prelude.error
        "TrackEvent'LegacyEvent'FlowDirection.pred: bad argument TrackEvent'LegacyEvent'FLOW_UNSPECIFIED. This value would be out of bounds."
  pred TrackEvent'LegacyEvent'FLOW_IN
    = TrackEvent'LegacyEvent'FLOW_UNSPECIFIED
  pred TrackEvent'LegacyEvent'FLOW_OUT
    = TrackEvent'LegacyEvent'FLOW_IN
  pred TrackEvent'LegacyEvent'FLOW_INOUT
    = TrackEvent'LegacyEvent'FLOW_OUT
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault TrackEvent'LegacyEvent'FlowDirection where
  fieldDefault = TrackEvent'LegacyEvent'FLOW_UNSPECIFIED
instance Control.DeepSeq.NFData TrackEvent'LegacyEvent'FlowDirection where
  rnf x__ = Prelude.seq x__ ()
data TrackEvent'LegacyEvent'InstantEventScope
  = TrackEvent'LegacyEvent'SCOPE_UNSPECIFIED |
    TrackEvent'LegacyEvent'SCOPE_GLOBAL |
    TrackEvent'LegacyEvent'SCOPE_PROCESS |
    TrackEvent'LegacyEvent'SCOPE_THREAD
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum TrackEvent'LegacyEvent'InstantEventScope where
  maybeToEnum 0
    = Prelude.Just TrackEvent'LegacyEvent'SCOPE_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just TrackEvent'LegacyEvent'SCOPE_GLOBAL
  maybeToEnum 2 = Prelude.Just TrackEvent'LegacyEvent'SCOPE_PROCESS
  maybeToEnum 3 = Prelude.Just TrackEvent'LegacyEvent'SCOPE_THREAD
  maybeToEnum _ = Prelude.Nothing
  showEnum TrackEvent'LegacyEvent'SCOPE_UNSPECIFIED
    = "SCOPE_UNSPECIFIED"
  showEnum TrackEvent'LegacyEvent'SCOPE_GLOBAL = "SCOPE_GLOBAL"
  showEnum TrackEvent'LegacyEvent'SCOPE_PROCESS = "SCOPE_PROCESS"
  showEnum TrackEvent'LegacyEvent'SCOPE_THREAD = "SCOPE_THREAD"
  readEnum k
    | (Prelude.==) k "SCOPE_UNSPECIFIED"
    = Prelude.Just TrackEvent'LegacyEvent'SCOPE_UNSPECIFIED
    | (Prelude.==) k "SCOPE_GLOBAL"
    = Prelude.Just TrackEvent'LegacyEvent'SCOPE_GLOBAL
    | (Prelude.==) k "SCOPE_PROCESS"
    = Prelude.Just TrackEvent'LegacyEvent'SCOPE_PROCESS
    | (Prelude.==) k "SCOPE_THREAD"
    = Prelude.Just TrackEvent'LegacyEvent'SCOPE_THREAD
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded TrackEvent'LegacyEvent'InstantEventScope where
  minBound = TrackEvent'LegacyEvent'SCOPE_UNSPECIFIED
  maxBound = TrackEvent'LegacyEvent'SCOPE_THREAD
instance Prelude.Enum TrackEvent'LegacyEvent'InstantEventScope where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum InstantEventScope: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum TrackEvent'LegacyEvent'SCOPE_UNSPECIFIED = 0
  fromEnum TrackEvent'LegacyEvent'SCOPE_GLOBAL = 1
  fromEnum TrackEvent'LegacyEvent'SCOPE_PROCESS = 2
  fromEnum TrackEvent'LegacyEvent'SCOPE_THREAD = 3
  succ TrackEvent'LegacyEvent'SCOPE_THREAD
    = Prelude.error
        "TrackEvent'LegacyEvent'InstantEventScope.succ: bad argument TrackEvent'LegacyEvent'SCOPE_THREAD. This value would be out of bounds."
  succ TrackEvent'LegacyEvent'SCOPE_UNSPECIFIED
    = TrackEvent'LegacyEvent'SCOPE_GLOBAL
  succ TrackEvent'LegacyEvent'SCOPE_GLOBAL
    = TrackEvent'LegacyEvent'SCOPE_PROCESS
  succ TrackEvent'LegacyEvent'SCOPE_PROCESS
    = TrackEvent'LegacyEvent'SCOPE_THREAD
  pred TrackEvent'LegacyEvent'SCOPE_UNSPECIFIED
    = Prelude.error
        "TrackEvent'LegacyEvent'InstantEventScope.pred: bad argument TrackEvent'LegacyEvent'SCOPE_UNSPECIFIED. This value would be out of bounds."
  pred TrackEvent'LegacyEvent'SCOPE_GLOBAL
    = TrackEvent'LegacyEvent'SCOPE_UNSPECIFIED
  pred TrackEvent'LegacyEvent'SCOPE_PROCESS
    = TrackEvent'LegacyEvent'SCOPE_GLOBAL
  pred TrackEvent'LegacyEvent'SCOPE_THREAD
    = TrackEvent'LegacyEvent'SCOPE_PROCESS
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault TrackEvent'LegacyEvent'InstantEventScope where
  fieldDefault = TrackEvent'LegacyEvent'SCOPE_UNSPECIFIED
instance Control.DeepSeq.NFData TrackEvent'LegacyEvent'InstantEventScope where
  rnf x__ = Prelude.seq x__ ()
data TrackEvent'Type
  = TrackEvent'TYPE_UNSPECIFIED |
    TrackEvent'TYPE_SLICE_BEGIN |
    TrackEvent'TYPE_SLICE_END |
    TrackEvent'TYPE_INSTANT |
    TrackEvent'TYPE_COUNTER
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum TrackEvent'Type where
  maybeToEnum 0 = Prelude.Just TrackEvent'TYPE_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just TrackEvent'TYPE_SLICE_BEGIN
  maybeToEnum 2 = Prelude.Just TrackEvent'TYPE_SLICE_END
  maybeToEnum 3 = Prelude.Just TrackEvent'TYPE_INSTANT
  maybeToEnum 4 = Prelude.Just TrackEvent'TYPE_COUNTER
  maybeToEnum _ = Prelude.Nothing
  showEnum TrackEvent'TYPE_UNSPECIFIED = "TYPE_UNSPECIFIED"
  showEnum TrackEvent'TYPE_SLICE_BEGIN = "TYPE_SLICE_BEGIN"
  showEnum TrackEvent'TYPE_SLICE_END = "TYPE_SLICE_END"
  showEnum TrackEvent'TYPE_INSTANT = "TYPE_INSTANT"
  showEnum TrackEvent'TYPE_COUNTER = "TYPE_COUNTER"
  readEnum k
    | (Prelude.==) k "TYPE_UNSPECIFIED"
    = Prelude.Just TrackEvent'TYPE_UNSPECIFIED
    | (Prelude.==) k "TYPE_SLICE_BEGIN"
    = Prelude.Just TrackEvent'TYPE_SLICE_BEGIN
    | (Prelude.==) k "TYPE_SLICE_END"
    = Prelude.Just TrackEvent'TYPE_SLICE_END
    | (Prelude.==) k "TYPE_INSTANT"
    = Prelude.Just TrackEvent'TYPE_INSTANT
    | (Prelude.==) k "TYPE_COUNTER"
    = Prelude.Just TrackEvent'TYPE_COUNTER
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded TrackEvent'Type where
  minBound = TrackEvent'TYPE_UNSPECIFIED
  maxBound = TrackEvent'TYPE_COUNTER
instance Prelude.Enum TrackEvent'Type where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum Type: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum TrackEvent'TYPE_UNSPECIFIED = 0
  fromEnum TrackEvent'TYPE_SLICE_BEGIN = 1
  fromEnum TrackEvent'TYPE_SLICE_END = 2
  fromEnum TrackEvent'TYPE_INSTANT = 3
  fromEnum TrackEvent'TYPE_COUNTER = 4
  succ TrackEvent'TYPE_COUNTER
    = Prelude.error
        "TrackEvent'Type.succ: bad argument TrackEvent'TYPE_COUNTER. This value would be out of bounds."
  succ TrackEvent'TYPE_UNSPECIFIED = TrackEvent'TYPE_SLICE_BEGIN
  succ TrackEvent'TYPE_SLICE_BEGIN = TrackEvent'TYPE_SLICE_END
  succ TrackEvent'TYPE_SLICE_END = TrackEvent'TYPE_INSTANT
  succ TrackEvent'TYPE_INSTANT = TrackEvent'TYPE_COUNTER
  pred TrackEvent'TYPE_UNSPECIFIED
    = Prelude.error
        "TrackEvent'Type.pred: bad argument TrackEvent'TYPE_UNSPECIFIED. This value would be out of bounds."
  pred TrackEvent'TYPE_SLICE_BEGIN = TrackEvent'TYPE_UNSPECIFIED
  pred TrackEvent'TYPE_SLICE_END = TrackEvent'TYPE_SLICE_BEGIN
  pred TrackEvent'TYPE_INSTANT = TrackEvent'TYPE_SLICE_END
  pred TrackEvent'TYPE_COUNTER = TrackEvent'TYPE_INSTANT
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault TrackEvent'Type where
  fieldDefault = TrackEvent'TYPE_UNSPECIFIED
instance Control.DeepSeq.NFData TrackEvent'Type where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.trackUuid' @:: Lens' TrackEventDefaults Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.maybe'trackUuid' @:: Lens' TrackEventDefaults (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.extraCounterTrackUuids' @:: Lens' TrackEventDefaults [Data.Word.Word64]@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.vec'extraCounterTrackUuids' @:: Lens' TrackEventDefaults (Data.Vector.Unboxed.Vector Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.extraDoubleCounterTrackUuids' @:: Lens' TrackEventDefaults [Data.Word.Word64]@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields.vec'extraDoubleCounterTrackUuids' @:: Lens' TrackEventDefaults (Data.Vector.Unboxed.Vector Data.Word.Word64)@ -}
data TrackEventDefaults
  = TrackEventDefaults'_constructor {_TrackEventDefaults'trackUuid :: !(Prelude.Maybe Data.Word.Word64),
                                     _TrackEventDefaults'extraCounterTrackUuids :: !(Data.Vector.Unboxed.Vector Data.Word.Word64),
                                     _TrackEventDefaults'extraDoubleCounterTrackUuids :: !(Data.Vector.Unboxed.Vector Data.Word.Word64),
                                     _TrackEventDefaults'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TrackEventDefaults where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TrackEventDefaults "trackUuid" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEventDefaults'trackUuid
           (\ x__ y__ -> x__ {_TrackEventDefaults'trackUuid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrackEventDefaults "maybe'trackUuid" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEventDefaults'trackUuid
           (\ x__ y__ -> x__ {_TrackEventDefaults'trackUuid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackEventDefaults "extraCounterTrackUuids" [Data.Word.Word64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEventDefaults'extraCounterTrackUuids
           (\ x__ y__
              -> x__ {_TrackEventDefaults'extraCounterTrackUuids = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TrackEventDefaults "vec'extraCounterTrackUuids" (Data.Vector.Unboxed.Vector Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEventDefaults'extraCounterTrackUuids
           (\ x__ y__
              -> x__ {_TrackEventDefaults'extraCounterTrackUuids = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackEventDefaults "extraDoubleCounterTrackUuids" [Data.Word.Word64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEventDefaults'extraDoubleCounterTrackUuids
           (\ x__ y__
              -> x__ {_TrackEventDefaults'extraDoubleCounterTrackUuids = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TrackEventDefaults "vec'extraDoubleCounterTrackUuids" (Data.Vector.Unboxed.Vector Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackEventDefaults'extraDoubleCounterTrackUuids
           (\ x__ y__
              -> x__ {_TrackEventDefaults'extraDoubleCounterTrackUuids = y__}))
        Prelude.id
instance Data.ProtoLens.Message TrackEventDefaults where
  messageName _ = Data.Text.pack "perfetto.protos.TrackEventDefaults"
  packedMessageDescriptor _
    = "\n\
      \\DC2TrackEventDefaults\DC2\GS\n\
      \\n\
      \track_uuid\CAN\v \SOH(\EOTR\ttrackUuid\DC29\n\
      \\EMextra_counter_track_uuids\CAN\US \ETX(\EOTR\SYNextraCounterTrackUuids\DC2F\n\
      \ extra_double_counter_track_uuids\CAN- \ETX(\EOTR\FSextraDoubleCounterTrackUuids"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        trackUuid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "track_uuid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'trackUuid")) ::
              Data.ProtoLens.FieldDescriptor TrackEventDefaults
        extraCounterTrackUuids__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "extra_counter_track_uuids"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"extraCounterTrackUuids")) ::
              Data.ProtoLens.FieldDescriptor TrackEventDefaults
        extraDoubleCounterTrackUuids__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "extra_double_counter_track_uuids"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"extraDoubleCounterTrackUuids")) ::
              Data.ProtoLens.FieldDescriptor TrackEventDefaults
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 11, trackUuid__field_descriptor),
           (Data.ProtoLens.Tag 31, extraCounterTrackUuids__field_descriptor),
           (Data.ProtoLens.Tag 45, 
            extraDoubleCounterTrackUuids__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TrackEventDefaults'_unknownFields
        (\ x__ y__ -> x__ {_TrackEventDefaults'_unknownFields = y__})
  defMessage
    = TrackEventDefaults'_constructor
        {_TrackEventDefaults'trackUuid = Prelude.Nothing,
         _TrackEventDefaults'extraCounterTrackUuids = Data.Vector.Generic.empty,
         _TrackEventDefaults'extraDoubleCounterTrackUuids = Data.Vector.Generic.empty,
         _TrackEventDefaults'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TrackEventDefaults
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word64
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word64
                -> Data.ProtoLens.Encoding.Bytes.Parser TrackEventDefaults
        loop
          x
          mutable'extraCounterTrackUuids
          mutable'extraDoubleCounterTrackUuids
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'extraCounterTrackUuids <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                            mutable'extraCounterTrackUuids)
                      frozen'extraDoubleCounterTrackUuids <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                                  mutable'extraDoubleCounterTrackUuids)
                      (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'extraCounterTrackUuids")
                              frozen'extraCounterTrackUuids
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'extraDoubleCounterTrackUuids")
                                 frozen'extraDoubleCounterTrackUuids x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        88
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "track_uuid"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"trackUuid") y x)
                                  mutable'extraCounterTrackUuids
                                  mutable'extraDoubleCounterTrackUuids
                        248
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        Data.ProtoLens.Encoding.Bytes.getVarInt
                                        "extra_counter_track_uuids"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'extraCounterTrackUuids y)
                                loop x v mutable'extraDoubleCounterTrackUuids
                        250
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                    "extra_counter_track_uuids"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'extraCounterTrackUuids)
                                loop x y mutable'extraDoubleCounterTrackUuids
                        360
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        Data.ProtoLens.Encoding.Bytes.getVarInt
                                        "extra_double_counter_track_uuids"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'extraDoubleCounterTrackUuids y)
                                loop x mutable'extraCounterTrackUuids v
                        362
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                    "extra_double_counter_track_uuids"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'extraDoubleCounterTrackUuids)
                                loop x mutable'extraCounterTrackUuids y
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'extraCounterTrackUuids
                                  mutable'extraDoubleCounterTrackUuids
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'extraCounterTrackUuids <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  Data.ProtoLens.Encoding.Growing.new
              mutable'extraDoubleCounterTrackUuids <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                        Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'extraCounterTrackUuids
                mutable'extraDoubleCounterTrackUuids)
          "TrackEventDefaults"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'trackUuid") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 88)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 248)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'extraCounterTrackUuids") _x))
                ((Data.Monoid.<>)
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 360)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'extraDoubleCounterTrackUuids")
                         _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData TrackEventDefaults where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TrackEventDefaults'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TrackEventDefaults'trackUuid x__)
                (Control.DeepSeq.deepseq
                   (_TrackEventDefaults'extraCounterTrackUuids x__)
                   (Control.DeepSeq.deepseq
                      (_TrackEventDefaults'extraDoubleCounterTrackUuids x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \3protos/perfetto/trace/track_event/track_event.proto\DC2\SIperfetto.protos\SUB8protos/perfetto/trace/track_event/debug_annotation.proto\SUB3protos/perfetto/trace/track_event/log_message.proto\SUB6protos/perfetto/trace/track_event/task_execution.proto\"\143\DC4\n\
    \\n\
    \TrackEvent\DC2#\n\
    \\rcategory_iids\CAN\ETX \ETX(\EOTR\fcategoryIids\DC2\RS\n\
    \\n\
    \categories\CAN\SYN \ETX(\tR\n\
    \categories\DC2\ESC\n\
    \\bname_iid\CAN\n\
    \ \SOH(\EOTH\NULR\anameIid\DC2\DC4\n\
    \\EOTname\CAN\ETB \SOH(\tH\NULR\EOTname\DC24\n\
    \\EOTtype\CAN\t \SOH(\SO2 .perfetto.protos.TrackEvent.TypeR\EOTtype\DC2\GS\n\
    \\n\
    \track_uuid\CAN\v \SOH(\EOTR\ttrackUuid\DC2%\n\
    \\rcounter_value\CAN\RS \SOH(\ETXH\SOHR\fcounterValue\DC22\n\
    \\DC4double_counter_value\CAN, \SOH(\SOHH\SOHR\DC2doubleCounterValue\DC29\n\
    \\EMextra_counter_track_uuids\CAN\US \ETX(\EOTR\SYNextraCounterTrackUuids\DC20\n\
    \\DC4extra_counter_values\CAN\f \ETX(\ETXR\DC2extraCounterValues\DC2F\n\
    \ extra_double_counter_track_uuids\CAN- \ETX(\EOTR\FSextraDoubleCounterTrackUuids\DC2=\n\
    \\ESCextra_double_counter_values\CAN. \ETX(\SOHR\CANextraDoubleCounterValues\DC2$\n\
    \\fflow_ids_old\CAN$ \ETX(\EOTR\n\
    \flowIdsOldB\STX\CAN\SOH\DC2\EM\n\
    \\bflow_ids\CAN/ \ETX(\ACKR\aflowIds\DC2;\n\
    \\CANterminating_flow_ids_old\CAN* \ETX(\EOTR\NAKterminatingFlowIdsOldB\STX\CAN\SOH\DC20\n\
    \\DC4terminating_flow_ids\CAN0 \ETX(\ACKR\DC2terminatingFlowIds\DC2M\n\
    \\DC1debug_annotations\CAN\EOT \ETX(\v2 .perfetto.protos.DebugAnnotationR\DLEdebugAnnotations\DC2E\n\
    \\SOtask_execution\CAN\ENQ \SOH(\v2\RS.perfetto.protos.TaskExecutionR\rtaskExecution\DC2<\n\
    \\vlog_message\CAN\NAK \SOH(\v2\ESC.perfetto.protos.LogMessageR\n\
    \logMessage\DC20\n\
    \\DC3source_location_iid\CAN\" \SOH(\EOTH\STXR\DC1sourceLocationIid\DC2.\n\
    \\DC2timestamp_delta_us\CAN\SOH \SOH(\ETXH\ETXR\DLEtimestampDeltaUs\DC24\n\
    \\NAKtimestamp_absolute_us\CAN\DLE \SOH(\ETXH\ETXR\DC3timestampAbsoluteUs\DC21\n\
    \\DC4thread_time_delta_us\CAN\STX \SOH(\ETXH\EOTR\DC1threadTimeDeltaUs\DC27\n\
    \\ETBthread_time_absolute_us\CAN\DC1 \SOH(\ETXH\EOTR\DC4threadTimeAbsoluteUs\DC2E\n\
    \\RSthread_instruction_count_delta\CAN\b \SOH(\ETXH\ENQR\ESCthreadInstructionCountDelta\DC2K\n\
    \!thread_instruction_count_absolute\CAN\DC4 \SOH(\ETXH\ENQR\RSthreadInstructionCountAbsolute\DC2J\n\
    \\flegacy_event\CAN\ACK \SOH(\v2'.perfetto.protos.TrackEvent.LegacyEventR\vlegacyEvent\SUB\250\ACK\n\
    \\vLegacyEvent\DC2\EM\n\
    \\bname_iid\CAN\SOH \SOH(\EOTR\anameIid\DC2\DC4\n\
    \\ENQphase\CAN\STX \SOH(\ENQR\ENQphase\DC2\US\n\
    \\vduration_us\CAN\ETX \SOH(\ETXR\n\
    \durationUs\DC2,\n\
    \\DC2thread_duration_us\CAN\EOT \SOH(\ETXR\DLEthreadDurationUs\DC28\n\
    \\CANthread_instruction_delta\CAN\SI \SOH(\ETXR\SYNthreadInstructionDelta\DC2!\n\
    \\vunscoped_id\CAN\ACK \SOH(\EOTH\NULR\n\
    \unscopedId\DC2\ESC\n\
    \\blocal_id\CAN\n\
    \ \SOH(\EOTH\NULR\alocalId\DC2\GS\n\
    \\tglobal_id\CAN\v \SOH(\EOTH\NULR\bglobalId\DC2\EM\n\
    \\bid_scope\CAN\a \SOH(\tR\aidScope\DC2\"\n\
    \\ruse_async_tts\CAN\t \SOH(\bR\vuseAsyncTts\DC2\ETB\n\
    \\abind_id\CAN\b \SOH(\EOTR\ACKbindId\DC2*\n\
    \\DC1bind_to_enclosing\CAN\f \SOH(\bR\SIbindToEnclosing\DC2\\\n\
    \\SOflow_direction\CAN\r \SOH(\SO25.perfetto.protos.TrackEvent.LegacyEvent.FlowDirectionR\rflowDirection\DC2i\n\
    \\DC3instant_event_scope\CAN\SO \SOH(\SO29.perfetto.protos.TrackEvent.LegacyEvent.InstantEventScopeR\DC1instantEventScope\DC2!\n\
    \\fpid_override\CAN\DC2 \SOH(\ENQR\vpidOverride\DC2!\n\
    \\ftid_override\CAN\DC3 \SOH(\ENQR\vtidOverride\"P\n\
    \\rFlowDirection\DC2\DC4\n\
    \\DLEFLOW_UNSPECIFIED\DLE\NUL\DC2\v\n\
    \\aFLOW_IN\DLE\SOH\DC2\f\n\
    \\bFLOW_OUT\DLE\STX\DC2\SO\n\
    \\n\
    \FLOW_INOUT\DLE\ETX\"a\n\
    \\DC1InstantEventScope\DC2\NAK\n\
    \\DC1SCOPE_UNSPECIFIED\DLE\NUL\DC2\DLE\n\
    \\fSCOPE_GLOBAL\DLE\SOH\DC2\DC1\n\
    \\rSCOPE_PROCESS\DLE\STX\DC2\DLE\n\
    \\fSCOPE_THREAD\DLE\ETXB\EOT\n\
    \\STXidJ\EOT\b\ENQ\DLE\ACK\"j\n\
    \\EOTType\DC2\DC4\n\
    \\DLETYPE_UNSPECIFIED\DLE\NUL\DC2\DC4\n\
    \\DLETYPE_SLICE_BEGIN\DLE\SOH\DC2\DC2\n\
    \\SOTYPE_SLICE_END\DLE\STX\DC2\DLE\n\
    \\fTYPE_INSTANT\DLE\ETX\DC2\DLE\n\
    \\fTYPE_COUNTER\DLE\EOT*\ACK\b\232\a\DLE\208\SI*\ACK\b\208\SI\DLE\209\SI*\ACK\b\209\SI\DLE\172M*\ACK\b\172M\DLE\145NB\f\n\
    \\n\
    \name_fieldB\NAK\n\
    \\DC3counter_value_fieldB\ETB\n\
    \\NAKsource_location_fieldB\v\n\
    \\ttimestampB\r\n\
    \\vthread_timeB\SUB\n\
    \\CANthread_instruction_count\"\182\SOH\n\
    \\DC2TrackEventDefaults\DC2\GS\n\
    \\n\
    \track_uuid\CAN\v \SOH(\EOTR\ttrackUuid\DC29\n\
    \\EMextra_counter_track_uuids\CAN\US \ETX(\EOTR\SYNextraCounterTrackUuids\DC2F\n\
    \ extra_double_counter_track_uuids\CAN- \ETX(\EOTR\FSextraDoubleCounterTrackUuids\"5\n\
    \\rEventCategory\DC2\DLE\n\
    \\ETXiid\CAN\SOH \SOH(\EOTR\ETXiid\DC2\DC2\n\
    \\EOTname\CAN\STX \SOH(\tR\EOTname\"1\n\
    \\tEventName\DC2\DLE\n\
    \\ETXiid\CAN\SOH \SOH(\EOTR\ETXiid\DC2\DC2\n\
    \\EOTname\CAN\STX \SOH(\tR\EOTnameJ\147\149\SOH\n\
    \\a\DC2\ENQ\DLE\NUL\176\ETX\SOH\n\
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
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\DC2\NULB\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\DC3\NUL=\n\
    \\184\t\n\
    \\STX\ETX\STX\DC2\ETX\DC4\NUL@\"\172\t import \"protos/perfetto/trace/track_event/chrome_active_processes.proto\";\n\
    \ import \"protos/perfetto/trace/track_event/chrome_application_state_info.proto\";\n\
    \ import \"protos/perfetto/trace/track_event/chrome_compositor_scheduler_state.proto\";\n\
    \ import \"protos/perfetto/trace/track_event/chrome_content_settings_event_info.proto\";\n\
    \ import \"protos/perfetto/trace/track_event/chrome_frame_reporter.proto\";\n\
    \ import \"protos/perfetto/trace/track_event/chrome_histogram_sample.proto\";\n\
    \ import \"protos/perfetto/trace/track_event/chrome_keyed_service.proto\";\n\
    \ import \"protos/perfetto/trace/track_event/chrome_latency_info.proto\";\n\
    \ import \"protos/perfetto/trace/track_event/chrome_legacy_ipc.proto\";\n\
    \ import \"protos/perfetto/trace/track_event/chrome_message_pump.proto\";\n\
    \ import \"protos/perfetto/trace/track_event/chrome_mojo_event_info.proto\";\n\
    \ import \"protos/perfetto/trace/track_event/chrome_renderer_scheduler_state.proto\";\n\
    \ import \"protos/perfetto/trace/track_event/chrome_user_event.proto\";\n\
    \ import \"protos/perfetto/trace/track_event/chrome_window_handle_event_info.proto\";\n\
    \ import \"protos/perfetto/trace/track_event/screenshot.proto\";\n\
    \ import \"protos/perfetto/trace/track_event/source_location.proto\";\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX&\NUL\CAN\n\
    \\144\SI\n\
    \\STX\EOT\NUL\DC2\ENQj\NUL\150\ETX\SOH\SUB\225\r Trace events emitted by client instrumentation library (TRACE_EVENT macros),\n\
    \ which describe activity on a track, such as a thread or asynchronous event\n\
    \ track. The track is specified using separate TrackDescriptor messages and\n\
    \ referred to via the track's UUID.\n\
    \\n\
    \ A simple TrackEvent packet specifies a timestamp, category, name and type:\n\
    \ ```protobuf\n\
    \   trace_packet {\n\
    \     timestamp: 1000\n\
    \     track_event {\n\
    \       categories: [\"my_cat\"]\n\
    \       name: \"my_event\"\n\
    \       type: TYPE_INSTANT\n\
    \      }\n\
    \    }\n\
    \ ```\n\
    \\n\
    \ To associate an event with a custom track (e.g. a thread), the track is\n\
    \ defined in a separate packet and referred to from the TrackEvent by its UUID:\n\
    \ ```protobuf\n\
    \   trace_packet {\n\
    \     track_descriptor {\n\
    \       track_uuid: 1234\n\
    \       name: \"my_track\"\n\
    \\n\
    \       // Optionally, associate the track with a thread.\n\
    \       thread_descriptor {\n\
    \         pid: 10\n\
    \         tid: 10\n\
    \         ..\n\
    \       }\n\
    \     }\n\
    \   }\n\
    \ ```\n\
    \\n\
    \ A pair of TYPE_SLICE_BEGIN and _END events form a slice on the track:\n\
    \\n\
    \ ```protobuf\n\
    \   trace_packet {\n\
    \     timestamp: 1200\n\
    \     track_event {\n\
    \       track_uuid: 1234\n\
    \       categories: [\"my_cat\"]\n\
    \       name: \"my_slice\"\n\
    \       type: TYPE_SLICE_BEGIN\n\
    \     }\n\
    \   }\n\
    \   trace_packet {\n\
    \     timestamp: 1400\n\
    \     track_event {\n\
    \       track_uuid: 1234\n\
    \       type: TYPE_SLICE_END\n\
    \     }\n\
    \   }\n\
    \ ```\n\
    \ TrackEvents also support optimizations to reduce data repetition and encoded\n\
    \ data size, e.g. through data interning (names, categories, ...) and delta\n\
    \ encoding of timestamps/counters. For details, see the InternedData message.\n\
    \ Further, default values for attributes of events on the same sequence (e.g.\n\
    \ their default track association) can be emitted as part of a\n\
    \ TrackEventDefaults message.\n\
    \\n\
    \ Next reserved id: 13 (up to 15). Next id: 51.\n\
    \2\158\SOH NOTE: Full TrackEvent support in the client lib and chrome is WIP, thus these\n\
    \ protos are still subject to change. Don't depend on them staying as they are.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETXj\b\DC2\n\
    \\170\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETXn\STX$\SUB\156\SOH Names of categories of the event. In the client library, categories are a\n\
    \ way to turn groups of individual events on or off.\n\
    \ interned EventCategoryName.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETXn\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETXn\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETXn\DC2\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETXn\"#\n\
    \$\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETXp\STX\"\SUB\ETB non-interned variant.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETXp\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETXp\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETXp\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETXp\US!\n\
    \\179\STX\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOTx\STX}\ETX\SUB\164\STX Optional name of the event for its display in trace viewer. May be left\n\
    \ unspecified for events with typed arguments.\n\
    \\n\
    \ Note that metrics should not rely on event names, as they are prone to\n\
    \ changing. Instead, they should use typed arguments to identify the events\n\
    \ they are interested in.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETXx\b\DC2\n\
    \\"\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETXz\EOT\EM\SUB\NAK interned EventName.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETXz\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETXz\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETXz\SYN\CAN\n\
    \$\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX|\EOT\NAK\SUB\ETB non-interned variant.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX|\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX|\v\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX|\DC2\DC4\n\
    \\163\SOH\n\
    \\EOT\EOT\NUL\EOT\NUL\DC2\ACK\130\SOH\STX\161\SOH\ETX\SUBI Type of the TrackEvent (required if |phase| in LegacyEvent is not set).\n\
    \2H TODO(eseckler): Support using binary symbols for category/event names.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\EOT\NUL\SOH\DC2\EOT\130\SOH\a\v\n\
    \\SO\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\NUL\DC2\EOT\131\SOH\EOT\EM\n\
    \\SI\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\SOH\DC2\EOT\131\SOH\EOT\DC4\n\
    \\SI\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\STX\DC2\EOT\131\SOH\ETB\CAN\n\
    \\173\a\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\SOH\DC2\EOT\149\SOH\EOT\EM\SUB\156\a Slice events are events that have a begin and end timestamp, i.e. a\n\
    \ duration. They can be nested similar to a callstack: If, on the same\n\
    \ track, event B begins after event A, but before A ends, B is a child\n\
    \ event of A and will be drawn as a nested event underneath A in the UI.\n\
    \ Note that child events should always end before their parents (e.g. B\n\
    \ before A).\n\
    \\n\
    \ Each slice event is formed by a pair of BEGIN + END events. The END event\n\
    \ does not need to repeat any TrackEvent fields it has in common with its\n\
    \ corresponding BEGIN event. Arguments and debug annotations of the BEGIN +\n\
    \ END pair will be merged during trace import.\n\
    \\n\
    \ Note that we deliberately chose not to support COMPLETE events (which\n\
    \ would specify a duration directly) since clients would need to delay\n\
    \ writing them until the slice is completed, which can result in reordered\n\
    \ events in the trace and loss of unfinished events at the end of a trace.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\SOH\DC2\EOT\149\SOH\EOT\DC4\n\
    \\SI\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\STX\DC2\EOT\149\SOH\ETB\CAN\n\
    \\SO\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\STX\DC2\EOT\150\SOH\EOT\ETB\n\
    \\SI\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\SOH\DC2\EOT\150\SOH\EOT\DC2\n\
    \\SI\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\STX\DC2\EOT\150\SOH\NAK\SYN\n\
    \\DEL\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\ETX\DC2\EOT\154\SOH\EOT\NAK\SUBo Instant events are nestable events without duration. They can be children\n\
    \ of slice events on the same track.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\EOT\NUL\STX\ETX\SOH\DC2\EOT\154\SOH\EOT\DLE\n\
    \\SI\n\
    \\a\EOT\NUL\EOT\NUL\STX\ETX\STX\DC2\EOT\154\SOH\DC3\DC4\n\
    \\167\STX\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\EOT\DC2\EOT\160\SOH\EOT\NAK\SUB\150\STX Event that provides a value for a counter track. |track_uuid| should\n\
    \ refer to a counter track and |counter_value| set to the new value. Note\n\
    \ that most other TrackEvent fields (e.g. categories, name, ..) are not\n\
    \ supported for TYPE_COUNTER events. See also CounterDescriptor.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\EOT\NUL\STX\EOT\SOH\DC2\EOT\160\SOH\EOT\DLE\n\
    \\SI\n\
    \\a\EOT\NUL\EOT\NUL\STX\EOT\STX\DC2\EOT\160\SOH\DC3\DC4\n\
    \\f\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\EOT\162\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EOT\EOT\DC2\EOT\162\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\EOT\162\SOH\v\SI\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\EOT\162\SOH\DLE\DC4\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\EOT\162\SOH\ETB\CAN\n\
    \\248\STX\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\EOT\169\SOH\STX\"\SUB\233\STX Identifies the track of the event. The default value may be overridden\n\
    \ using TrackEventDefaults, e.g., to specify the track of the TraceWriter's\n\
    \ sequence (in most cases sequence = one thread). If no value is specified\n\
    \ here or in TrackEventDefaults, the TrackEvent will be associated with an\n\
    \ implicit trace-global track (uuid 0). See TrackDescriptor::uuid.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ENQ\EOT\DC2\EOT\169\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\EOT\169\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\EOT\169\SOH\DC2\FS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\EOT\169\SOH\US!\n\
    \\193\ETX\n\
    \\EOT\EOT\NUL\b\SOH\DC2\ACK\177\SOH\STX\180\SOH\ETX\SUB\176\ETX A new value for a counter track. |track_uuid| should refer to a track with\n\
    \ a CounterDescriptor, and |type| should be TYPE_COUNTER. For a more\n\
    \ efficient encoding of counter values that are sampled at the beginning/end\n\
    \ of a slice, see |extra_counter_values| and |extra_counter_track_uuids|.\n\
    \ Counter values can optionally be encoded in as delta values (positive or\n\
    \ negative) on each packet sequence (see CounterIncrementalBase).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\b\SOH\SOH\DC2\EOT\177\SOH\b\ESC\n\
    \\f\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\EOT\178\SOH\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ACK\ENQ\DC2\EOT\178\SOH\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\EOT\178\SOH\n\
    \\ETB\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\EOT\178\SOH\SUB\FS\n\
    \\f\n\
    \\EOT\EOT\NUL\STX\a\DC2\EOT\179\SOH\EOT%\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\a\ENQ\DC2\EOT\179\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\EOT\179\SOH\v\US\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\EOT\179\SOH\"$\n\
    \\131\ACK\n\
    \\EOT\EOT\NUL\STX\b\DC2\EOT\196\SOH\STX1\SUB\244\ENQ To encode counter values more efficiently, we support attaching additional\n\
    \ counter values to a TrackEvent of any type. All values will share the same\n\
    \ timestamp specified in the TracePacket. The value at\n\
    \ extra_counter_values[N] is for the counter track referenced by\n\
    \ extra_counter_track_uuids[N].\n\
    \\n\
    \ |extra_counter_track_uuids| may also be set via TrackEventDefaults. There\n\
    \ should always be equal or more uuids than values. It is valid to set more\n\
    \ uuids (e.g. via defaults) than values. If uuids are specified in\n\
    \ TrackEventDefaults and a TrackEvent, the TrackEvent uuids override the\n\
    \ default uuid list.\n\
    \\n\
    \ For example, this allows snapshotting the thread time clock at each\n\
    \ thread-track BEGIN and END event to capture the cpu time delta of a slice.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\b\EOT\DC2\EOT\196\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\b\ENQ\DC2\EOT\196\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\b\SOH\DC2\EOT\196\SOH\DC2+\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\b\ETX\DC2\EOT\196\SOH.0\n\
    \\f\n\
    \\EOT\EOT\NUL\STX\t\DC2\EOT\197\SOH\STX+\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\t\EOT\DC2\EOT\197\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\t\ENQ\DC2\EOT\197\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\t\SOH\DC2\EOT\197\SOH\DC1%\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\t\ETX\DC2\EOT\197\SOH(*\n\
    \Q\n\
    \\EOT\EOT\NUL\STX\n\
    \\DC2\EOT\200\SOH\STX8\SUBC Counter snapshots using floating point instead of integer values.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\n\
    \\EOT\DC2\EOT\200\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ENQ\DC2\EOT\200\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\n\
    \\SOH\DC2\EOT\200\SOH\DC22\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ETX\DC2\EOT\200\SOH57\n\
    \\f\n\
    \\EOT\EOT\NUL\STX\v\DC2\EOT\201\SOH\STX3\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\v\EOT\DC2\EOT\201\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\v\ENQ\DC2\EOT\201\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\v\SOH\DC2\EOT\201\SOH\DC2-\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\v\ETX\DC2\EOT\201\SOH02\n\
    \\179\ACK\n\
    \\EOT\EOT\NUL\STX\f\DC2\EOT\218\SOH\STX8\SUB\164\ACK IDs of flows originating, passing through, or ending at this event.\n\
    \ Flow IDs are global within a trace.\n\
    \\n\
    \ A flow connects a sequence of TrackEvents within or across tracks, e.g.\n\
    \ an input event may be handled on one thread but cause another event on\n\
    \ a different thread - a flow between the two events can associate them.\n\
    \\n\
    \ The direction of the flows between events is inferred from the events'\n\
    \ timestamps. The earliest event with the same flow ID becomes the source\n\
    \ of the flow. Any events thereafter are intermediate steps of the flow,\n\
    \ until the flow terminates at the last event with the flow ID.\n\
    \\n\
    \ Flows can also be explicitly terminated (see |terminating_flow_ids|), so\n\
    \ that the same ID can later be reused for another flow.\n\
    \ DEPRECATED. Only kept for backwards compatibility. Use |flow_ids|.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\f\EOT\DC2\EOT\218\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\f\ENQ\DC2\EOT\218\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\f\SOH\DC2\EOT\218\SOH\DC2\RS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\f\ETX\DC2\EOT\218\SOH!#\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\f\b\DC2\EOT\218\SOH$7\n\
    \\SO\n\
    \\ACK\EOT\NUL\STX\f\b\ETX\DC2\EOT\218\SOH%6\n\
    \h\n\
    \\EOT\EOT\NUL\STX\r\DC2\EOT\221\SOH\STX!\SUBZ TODO(b/204341740): replace \"flow_ids_old\" with \"flow_ids\" to reduce memory\n\
    \ consumption.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\r\EOT\DC2\EOT\221\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\r\ENQ\DC2\EOT\221\SOH\v\DC2\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\r\SOH\DC2\EOT\221\SOH\DC3\ESC\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\r\ETX\DC2\EOT\221\SOH\RS \n\
    \\157\STX\n\
    \\EOT\EOT\NUL\STX\SO\DC2\EOT\229\SOH\STXD\SUB\142\STX List of flow ids which should terminate on this event, otherwise same as\n\
    \ |flow_ids|.\n\
    \ Any one flow ID should be either listed as part of |flow_ids| OR\n\
    \ |terminating_flow_ids|, not both.\n\
    \ DEPRECATED. Only kept for backwards compatibility.  Use\n\
    \ |terminating_flow_ids|.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SO\EOT\DC2\EOT\229\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SO\ENQ\DC2\EOT\229\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SO\SOH\DC2\EOT\229\SOH\DC2*\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SO\ETX\DC2\EOT\229\SOH-/\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SO\b\DC2\EOT\229\SOH0C\n\
    \\SO\n\
    \\ACK\EOT\NUL\STX\SO\b\ETX\DC2\EOT\229\SOH1B\n\
    \\128\SOH\n\
    \\EOT\EOT\NUL\STX\SI\DC2\EOT\232\SOH\STX-\SUBr TODO(b/204341740): replace \"terminating_flow_ids_old\" with\n\
    \ \"terminating_flow_ids\" to reduce memory consumption.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SI\EOT\DC2\EOT\232\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SI\ENQ\DC2\EOT\232\SOH\v\DC2\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SI\SOH\DC2\EOT\232\SOH\DC3'\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SI\ETX\DC2\EOT\232\SOH*,\n\
    \\159\STX\n\
    \\EOT\EOT\NUL\STX\DLE\DC2\EOT\240\SOH\STX1\SUB] Unstable key/value annotations shown in the trace viewer but not intended\n\
    \ for metrics use.\n\
    \2\177\SOH ---------------------------------------------------------------------------\n\
    \ TrackEvent arguments:\n\
    \ ---------------------------------------------------------------------------\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DLE\EOT\DC2\EOT\240\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DLE\ACK\DC2\EOT\240\SOH\v\SUB\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DLE\SOH\DC2\EOT\240\SOH\ESC,\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DLE\ETX\DC2\EOT\240\SOH/0\n\
    \&\n\
    \\EOT\EOT\NUL\STX\DC1\DC2\EOT\243\SOH\STX,\SUB\CAN Typed event arguments:\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC1\EOT\DC2\EOT\243\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC1\ACK\DC2\EOT\243\SOH\v\CAN\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC1\SOH\DC2\EOT\243\SOH\EM'\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC1\ETX\DC2\EOT\243\SOH*+\n\
    \\184\ACK\n\
    \\EOT\EOT\NUL\STX\DC2\DC2\EOT\244\SOH\STX'\"\169\ACK optional ChromeCompositorSchedulerState cc_scheduler_state = 24;\n\
    \ optional ChromeUserEvent chrome_user_event = 25;\n\
    \ optional ChromeKeyedService chrome_keyed_service = 26;\n\
    \ optional ChromeLegacyIpc chrome_legacy_ipc = 27;\n\
    \ optional ChromeHistogramSample chrome_histogram_sample = 28;\n\
    \ optional ChromeLatencyInfo chrome_latency_info = 29;\n\
    \ optional ChromeFrameReporter chrome_frame_reporter = 32;\n\
    \ optional ChromeApplicationStateInfo chrome_application_state_info = 39;\n\
    \ optional ChromeRendererSchedulerState chrome_renderer_scheduler_state = 40;\n\
    \ optional ChromeWindowHandleEventInfo chrome_window_handle_event_info = 41;\n\
    \ optional ChromeContentSettingsEventInfo chrome_content_settings_event_info =\n\
    \     43;\n\
    \ optional ChromeActiveProcesses chrome_active_processes = 49;\n\
    \ optional Screenshot screenshot = 50;\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC2\EOT\DC2\EOT\244\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC2\ACK\DC2\EOT\244\SOH\v\NAK\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC2\SOH\DC2\EOT\244\SOH\SYN!\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC2\ETX\DC2\EOT\244\SOH$&\n\
    \z\n\
    \\EOT\EOT\NUL\b\STX\DC2\ACK\134\STX\STX\139\STX\ETX\SUBj This field is used only if the source location represents the function that\n\
    \ executes during this event.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\b\STX\SOH\DC2\EOT\134\STX\b\GS\n\
    \Z\n\
    \\EOT\EOT\NUL\STX\DC3\DC2\EOT\138\STX\EOT$\SUBL Non-interned field.\n\
    \ SourceLocation source_location = 33;\n\
    \ Interned field.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC3\ENQ\DC2\EOT\138\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC3\SOH\DC2\EOT\138\STX\v\RS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC3\ETX\DC2\EOT\138\STX!#\n\
    \\175\ENQ\n\
    \\ETX\EOT\NUL\ENQ\DC2\EOT\158\STX\STX\SUB\SUB\143\SOH Extension range reserved for chromium:\n\
    \ https://source.chromium.org/chromium/chromium/src/+/main:base/tracing/protos/chrome_track_event.proto\n\
    \2q optional ChromeMessagePump chrome_message_pump = 35;\n\
    \ optional ChromeMojoEventInfo chrome_mojo_event_info = 38;\n\
    \2\US New argument types go here :)\n\
    \2\251\STX Extension range for typed events defined externally.\n\
    \ See docs/design-docs/extensions.md for more details.\n\
    \\n\
    \ Extension support is work-in-progress, in the future the way to reserve a\n\
    \ subrange for a particular project will be described here and in the design\n\
    \ document linked above.\n\
    \\n\
    \ Contact perfetto-dev@googlegroups.com if you are interested in a subrange\n\
    \ for your project.\n\
    \\n\
    \\f\n\
    \\EOT\EOT\NUL\ENQ\NUL\DC2\EOT\158\STX\r\EM\n\
    \\r\n\
    \\ENQ\EOT\NUL\ENQ\NUL\SOH\DC2\EOT\158\STX\r\DC1\n\
    \\r\n\
    \\ENQ\EOT\NUL\ENQ\NUL\STX\DC2\EOT\158\STX\NAK\EM\n\
    \W\n\
    \\ETX\EOT\NUL\ENQ\DC2\EOT\160\STX\STX\SUB\SUBJ Extension range reserved for https://b.corp.google.com/issues/301227627.\n\
    \\n\
    \\f\n\
    \\EOT\EOT\NUL\ENQ\SOH\DC2\EOT\160\STX\r\EM\n\
    \\r\n\
    \\ENQ\EOT\NUL\ENQ\SOH\SOH\DC2\EOT\160\STX\r\DC1\n\
    \\r\n\
    \\ENQ\EOT\NUL\ENQ\SOH\STX\DC2\EOT\160\STX\NAK\EM\n\
    \.\n\
    \\ETX\EOT\NUL\ENQ\DC2\EOT\162\STX\STX\SUB\SUB! Extension range for future use.\n\
    \\n\
    \\f\n\
    \\EOT\EOT\NUL\ENQ\STX\DC2\EOT\162\STX\r\EM\n\
    \\r\n\
    \\ENQ\EOT\NUL\ENQ\STX\SOH\DC2\EOT\162\STX\r\DC1\n\
    \\r\n\
    \\ENQ\EOT\NUL\ENQ\STX\STX\DC2\EOT\162\STX\NAK\EM\n\
    \@\n\
    \\ETX\EOT\NUL\ENQ\DC2\EOT\164\STX\STX\ESC\SUB3 Reserved for Perfetto unit and integration tests.\n\
    \\n\
    \\f\n\
    \\EOT\EOT\NUL\ENQ\ETX\DC2\EOT\164\STX\r\SUB\n\
    \\r\n\
    \\ENQ\EOT\NUL\ENQ\ETX\SOH\DC2\EOT\164\STX\r\DC1\n\
    \\r\n\
    \\ENQ\EOT\NUL\ENQ\ETX\STX\DC2\EOT\164\STX\NAK\SUB\n\
    \\135\ETX\n\
    \\EOT\EOT\NUL\b\ETX\DC2\ACK\174\STX\STX\185\STX\ETX\SUB\145\SOH Deprecated. Use the |timestamp| and |timestamp_clock_id| fields in\n\
    \ TracePacket instead.\n\
    \\n\
    \ Timestamp in microseconds (usually CLOCK_MONOTONIC).\n\
    \2\226\SOH ---------------------------------------------------------------------------\n\
    \ Deprecated / legacy event fields, which will be removed in the future:\n\
    \ ---------------------------------------------------------------------------\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\b\ETX\SOH\DC2\EOT\174\STX\b\DC1\n\
    \\193\STX\n\
    \\EOT\EOT\NUL\STX\DC4\DC2\EOT\180\STX\EOT!\SUB\178\STX Delta timestamp value since the last TrackEvent or ThreadDescriptor. To\n\
    \ calculate the absolute timestamp value, sum up all delta values of the\n\
    \ preceding TrackEvents since the last ThreadDescriptor and add the sum to\n\
    \ the |reference_timestamp| in ThreadDescriptor. This value should always\n\
    \ be positive.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC4\ENQ\DC2\EOT\180\STX\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC4\SOH\DC2\EOT\180\STX\n\
    \\FS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC4\ETX\DC2\EOT\180\STX\US \n\
    \\185\SOH\n\
    \\EOT\EOT\NUL\STX\NAK\DC2\EOT\184\STX\EOT%\SUB\170\SOH Absolute value (e.g. a manually specified timestamp in the macro).\n\
    \ This is a one-off value that does not affect delta timestamp computation\n\
    \ in subsequent TrackEvents.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NAK\ENQ\DC2\EOT\184\STX\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NAK\SOH\DC2\EOT\184\STX\n\
    \\US\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NAK\ETX\DC2\EOT\184\STX\"$\n\
    \\205\SOH\n\
    \\EOT\EOT\NUL\b\EOT\DC2\ACK\192\STX\STX\202\STX\ETX\SUB\188\SOH Deprecated. Use |extra_counter_values| and |extra_counter_track_uuids| to\n\
    \ encode thread time instead.\n\
    \\n\
    \ CPU time for the current thread (e.g., CLOCK_THREAD_CPUTIME_ID) in\n\
    \ microseconds.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\b\EOT\SOH\DC2\EOT\192\STX\b\DC3\n\
    \\193\STX\n\
    \\EOT\EOT\NUL\STX\SYN\DC2\EOT\198\STX\EOT#\SUB\178\STX Delta timestamp value since the last TrackEvent or ThreadDescriptor. To\n\
    \ calculate the absolute timestamp value, sum up all delta values of the\n\
    \ preceding TrackEvents since the last ThreadDescriptor and add the sum to\n\
    \ the |reference_timestamp| in ThreadDescriptor. This value should always\n\
    \ be positive.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SYN\ENQ\DC2\EOT\198\STX\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SYN\SOH\DC2\EOT\198\STX\n\
    \\RS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SYN\ETX\DC2\EOT\198\STX!\"\n\
    \}\n\
    \\EOT\EOT\NUL\STX\ETB\DC2\EOT\201\STX\EOT'\SUBo This is a one-off absolute value that does not affect delta timestamp\n\
    \ computation in subsequent TrackEvents.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETB\ENQ\DC2\EOT\201\STX\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETB\SOH\DC2\EOT\201\STX\n\
    \!\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETB\ETX\DC2\EOT\201\STX$&\n\
    \\193\SOH\n\
    \\EOT\EOT\NUL\b\ENQ\DC2\ACK\208\STX\STX\212\STX\ETX\SUB\176\SOH Deprecated. Use |extra_counter_values| and |extra_counter_track_uuids| to\n\
    \ encode thread instruction count instead.\n\
    \\n\
    \ Value of the instruction counter for the current thread.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\b\ENQ\SOH\DC2\EOT\208\STX\b \n\
    \;\n\
    \\EOT\EOT\NUL\STX\CAN\DC2\EOT\210\STX\EOT-\SUB- Same encoding as |thread_time| field above.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\CAN\ENQ\DC2\EOT\210\STX\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\CAN\SOH\DC2\EOT\210\STX\n\
    \(\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\CAN\ETX\DC2\EOT\210\STX+,\n\
    \\f\n\
    \\EOT\EOT\NUL\STX\EM\DC2\EOT\211\STX\EOT1\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EM\ENQ\DC2\EOT\211\STX\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EM\SOH\DC2\EOT\211\STX\n\
    \+\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EM\ETX\DC2\EOT\211\STX.0\n\
    \\154\ETX\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\ACK\222\STX\STX\147\ETX\ETX\SUB\137\ETX Apart from {category, time, thread time, tid, pid}, other legacy trace\n\
    \ event attributes are initially simply proxied for conversion to a JSON\n\
    \ trace. We intend to gradually transition these attributes to similar native\n\
    \ features in TrackEvent (e.g. async + flow events), or deprecate them\n\
    \ without replacement where transition is unsuitable.\n\
    \\n\
    \ Next reserved id: 16 (up to 16).\n\
    \ Next id: 20.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\EOT\222\STX\n\
    \\NAK\n\
    \V\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\EOT\225\STX\EOT!\SUBF Deprecated, use TrackEvent::name(_iid) instead.\n\
    \ interned EventName.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\EOT\DC2\EOT\225\STX\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ENQ\DC2\EOT\225\STX\r\DC3\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\EOT\225\STX\DC4\FS\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\EOT\225\STX\US \n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\EOT\226\STX\EOT\GS\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\EOT\DC2\EOT\226\STX\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ENQ\DC2\EOT\226\STX\r\DC2\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\EOT\226\STX\DC3\CAN\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\EOT\226\STX\ESC\FS\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\STX\DC2\EOT\227\STX\EOT#\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\EOT\DC2\EOT\227\STX\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ENQ\DC2\EOT\227\STX\r\DC2\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\SOH\DC2\EOT\227\STX\DC3\RS\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ETX\DC2\EOT\227\STX!\"\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\ETX\DC2\EOT\228\STX\EOT*\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\EOT\DC2\EOT\228\STX\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\ENQ\DC2\EOT\228\STX\r\DC2\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\SOH\DC2\EOT\228\STX\DC3%\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\ETX\DC2\EOT\228\STX()\n\
    \E\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\EOT\DC2\EOT\231\STX\EOT1\SUB5 Elapsed retired instruction count during the event.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\EOT\DC2\EOT\231\STX\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\ENQ\DC2\EOT\231\STX\r\DC2\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\SOH\DC2\EOT\231\STX\DC3+\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\ETX\DC2\EOT\231\STX.0\n\
    \$\n\
    \\ENQ\EOT\NUL\ETX\NUL\t\DC2\EOT\234\STX\EOT\SI\SUB\NAK used to be |flags|.\n\
    \\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\NUL\t\NUL\DC2\EOT\234\STX\r\SO\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\t\NUL\SOH\DC2\EOT\234\STX\r\SO\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\t\NUL\STX\DC2\EOT\234\STX\r\SO\n\
    \\DLE\n\
    \\ACK\EOT\NUL\ETX\NUL\b\NUL\DC2\ACK\236\STX\EOT\240\STX\ENQ\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\b\NUL\SOH\DC2\EOT\236\STX\n\
    \\f\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\ENQ\DC2\EOT\237\STX\ACK\GS\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\ENQ\DC2\EOT\237\STX\ACK\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\SOH\DC2\EOT\237\STX\r\CAN\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\ETX\DC2\EOT\237\STX\ESC\FS\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\ACK\DC2\EOT\238\STX\ACK\ESC\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\ACK\ENQ\DC2\EOT\238\STX\ACK\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\ACK\SOH\DC2\EOT\238\STX\r\NAK\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\ACK\ETX\DC2\EOT\238\STX\CAN\SUB\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\a\DC2\EOT\239\STX\ACK\FS\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\a\ENQ\DC2\EOT\239\STX\ACK\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\a\SOH\DC2\EOT\239\STX\r\SYN\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\a\ETX\DC2\EOT\239\STX\EM\ESC\n\
    \5\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\b\DC2\EOT\242\STX\EOT!\SUB% Additional optional scope for |id|.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\b\EOT\DC2\EOT\242\STX\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\b\ENQ\DC2\EOT\242\STX\r\DC3\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\b\SOH\DC2\EOT\242\STX\DC4\FS\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\b\ETX\DC2\EOT\242\STX\US \n\
    \Z\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\t\DC2\EOT\245\STX\EOT$\SUBJ Consider the thread timestamps for async BEGIN/END event pairs as valid.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\t\EOT\DC2\EOT\245\STX\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\t\ENQ\DC2\EOT\245\STX\r\DC1\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\t\SOH\DC2\EOT\245\STX\DC2\US\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\t\ETX\DC2\EOT\245\STX\"#\n\
    \U\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\n\
    \\DC2\EOT\248\STX\EOT \SUBE Idenfifies a flow. Flow events with the same bind_id are connected.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\n\
    \\EOT\DC2\EOT\248\STX\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\n\
    \\ENQ\DC2\EOT\248\STX\r\DC3\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\n\
    \\SOH\DC2\EOT\248\STX\DC4\ESC\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\n\
    \\ETX\DC2\EOT\248\STX\RS\US\n\
    \\168\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\v\DC2\EOT\252\STX\EOT)\SUB\151\SOH Use the enclosing slice as binding point for a flow end event instead of\n\
    \ the next slice. Flow start/step events always bind to the enclosing\n\
    \ slice.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\v\EOT\DC2\EOT\252\STX\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\v\ENQ\DC2\EOT\252\STX\r\DC1\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\v\SOH\DC2\EOT\252\STX\DC2#\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\v\ETX\DC2\EOT\252\STX&(\n\
    \\DLE\n\
    \\ACK\EOT\NUL\ETX\NUL\EOT\NUL\DC2\ACK\254\STX\EOT\131\ETX\ENQ\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\EOT\NUL\SOH\DC2\EOT\254\STX\t\SYN\n\
    \\DLE\n\
    \\b\EOT\NUL\ETX\NUL\EOT\NUL\STX\NUL\DC2\EOT\255\STX\ACK\ESC\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\NUL\SOH\DC2\EOT\255\STX\ACK\SYN\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\NUL\STX\DC2\EOT\255\STX\EM\SUB\n\
    \\DLE\n\
    \\b\EOT\NUL\ETX\NUL\EOT\NUL\STX\SOH\DC2\EOT\128\ETX\ACK\DC2\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\SOH\SOH\DC2\EOT\128\ETX\ACK\r\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\SOH\STX\DC2\EOT\128\ETX\DLE\DC1\n\
    \\DLE\n\
    \\b\EOT\NUL\ETX\NUL\EOT\NUL\STX\STX\DC2\EOT\129\ETX\ACK\DC3\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\STX\SOH\DC2\EOT\129\ETX\ACK\SO\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\STX\STX\DC2\EOT\129\ETX\DC1\DC2\n\
    \\DLE\n\
    \\b\EOT\NUL\ETX\NUL\EOT\NUL\STX\ETX\DC2\EOT\130\ETX\ACK\NAK\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\ETX\SOH\DC2\EOT\130\ETX\ACK\DLE\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\ETX\STX\DC2\EOT\130\ETX\DC3\DC4\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\f\DC2\EOT\132\ETX\EOT/\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\f\EOT\DC2\EOT\132\ETX\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\f\ACK\DC2\EOT\132\ETX\r\SUB\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\f\SOH\DC2\EOT\132\ETX\ESC)\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\f\ETX\DC2\EOT\132\ETX,.\n\
    \\DLE\n\
    \\ACK\EOT\NUL\ETX\NUL\EOT\SOH\DC2\ACK\134\ETX\EOT\139\ETX\ENQ\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\EOT\SOH\SOH\DC2\EOT\134\ETX\t\SUB\n\
    \\DLE\n\
    \\b\EOT\NUL\ETX\NUL\EOT\SOH\STX\NUL\DC2\EOT\135\ETX\ACK\FS\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\NUL\EOT\SOH\STX\NUL\SOH\DC2\EOT\135\ETX\ACK\ETB\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\NUL\EOT\SOH\STX\NUL\STX\DC2\EOT\135\ETX\SUB\ESC\n\
    \\DLE\n\
    \\b\EOT\NUL\ETX\NUL\EOT\SOH\STX\SOH\DC2\EOT\136\ETX\ACK\ETB\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\NUL\EOT\SOH\STX\SOH\SOH\DC2\EOT\136\ETX\ACK\DC2\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\NUL\EOT\SOH\STX\SOH\STX\DC2\EOT\136\ETX\NAK\SYN\n\
    \\DLE\n\
    \\b\EOT\NUL\ETX\NUL\EOT\SOH\STX\STX\DC2\EOT\137\ETX\ACK\CAN\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\NUL\EOT\SOH\STX\STX\SOH\DC2\EOT\137\ETX\ACK\DC3\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\NUL\EOT\SOH\STX\STX\STX\DC2\EOT\137\ETX\SYN\ETB\n\
    \\DLE\n\
    \\b\EOT\NUL\ETX\NUL\EOT\SOH\STX\ETX\DC2\EOT\138\ETX\ACK\ETB\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\NUL\EOT\SOH\STX\ETX\SOH\DC2\EOT\138\ETX\ACK\DC2\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\NUL\EOT\SOH\STX\ETX\STX\DC2\EOT\138\ETX\NAK\SYN\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\r\DC2\EOT\140\ETX\EOT8\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\r\EOT\DC2\EOT\140\ETX\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\r\ACK\DC2\EOT\140\ETX\r\RS\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\r\SOH\DC2\EOT\140\ETX\US2\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\r\ETX\DC2\EOT\140\ETX57\n\
    \\196\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SO\DC2\EOT\145\ETX\EOT%\SUB\179\SOH Override the pid/tid if the writer needs to emit events on behalf of\n\
    \ another process/thread. This should be the exception. Normally, the\n\
    \ pid+tid from ThreadDescriptor is used.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\SO\EOT\DC2\EOT\145\ETX\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\SO\ENQ\DC2\EOT\145\ETX\r\DC2\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\SO\SOH\DC2\EOT\145\ETX\DC3\US\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\SO\ETX\DC2\EOT\145\ETX\"$\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SI\DC2\EOT\146\ETX\EOT%\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\SI\EOT\DC2\EOT\146\ETX\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\SI\ENQ\DC2\EOT\146\ETX\r\DC2\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\SI\SOH\DC2\EOT\146\ETX\DC3\US\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\SI\ETX\DC2\EOT\146\ETX\"$\n\
    \\f\n\
    \\EOT\EOT\NUL\STX\SUB\DC2\EOT\149\ETX\STX(\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SUB\EOT\DC2\EOT\149\ETX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SUB\ACK\DC2\EOT\149\ETX\v\SYN\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SUB\SOH\DC2\EOT\149\ETX\ETB#\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SUB\ETX\DC2\EOT\149\ETX&'\n\
    \\151\STX\n\
    \\STX\EOT\SOH\DC2\ACK\156\ETX\NUL\162\ETX\SOH\SUB\136\STX Default values for fields of all TrackEvents on the same packet sequence.\n\
    \ Should be emitted as part of TracePacketDefaults whenever incremental state\n\
    \ is cleared. It's defined here because field IDs should match those of the\n\
    \ corresponding fields in TrackEvent.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SOH\SOH\DC2\EOT\156\ETX\b\SUB\n\
    \\f\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\EOT\157\ETX\STX\"\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\EOT\157\ETX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\EOT\157\ETX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\EOT\157\ETX\DC2\FS\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\EOT\157\ETX\US!\n\
    \\f\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\EOT\158\ETX\STX1\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\EOT\158\ETX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\EOT\158\ETX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\EOT\158\ETX\DC2+\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\EOT\158\ETX.0\n\
    \\f\n\
    \\EOT\EOT\SOH\STX\STX\DC2\EOT\159\ETX\STX8\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\EOT\DC2\EOT\159\ETX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\EOT\159\ETX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\EOT\159\ETX\DC22\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\EOT\159\ETX57\n\
    \P\n\
    \\STX\EOT\STX\DC2\ACK\168\ETX\NUL\171\ETX\SOH2B --------------------\n\
    \ Interned data types:\n\
    \ --------------------\n\
    \\n\
    \\v\n\
    \\ETX\EOT\STX\SOH\DC2\EOT\168\ETX\b\NAK\n\
    \\f\n\
    \\EOT\EOT\STX\STX\NUL\DC2\EOT\169\ETX\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\EOT\169\ETX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\EOT\169\ETX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\EOT\169\ETX\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\EOT\169\ETX\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\STX\STX\SOH\DC2\EOT\170\ETX\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\EOT\170\ETX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\EOT\170\ETX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\EOT\170\ETX\DC2\SYN\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\EOT\170\ETX\EM\SUB\n\
    \\f\n\
    \\STX\EOT\ETX\DC2\ACK\173\ETX\NUL\176\ETX\SOH\n\
    \\v\n\
    \\ETX\EOT\ETX\SOH\DC2\EOT\173\ETX\b\DC1\n\
    \\f\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\EOT\174\ETX\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\EOT\174\ETX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\EOT\174\ETX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\EOT\174\ETX\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\EOT\174\ETX\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\EOT\175\ETX\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\EOT\DC2\EOT\175\ETX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\EOT\175\ETX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\EOT\175\ETX\DC2\SYN\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\EOT\175\ETX\EM\SUB"