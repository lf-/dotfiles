{- This file was auto-generated from protos/perfetto/trace/trace_packet_defaults.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.TracePacketDefaults (
        TracePacketDefaults()
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
import qualified Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket
import qualified Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.TracePacketDefaults_Fields.timestampClockId' @:: Lens' TracePacketDefaults Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.TracePacketDefaults_Fields.maybe'timestampClockId' @:: Lens' TracePacketDefaults (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.TracePacketDefaults_Fields.trackEventDefaults' @:: Lens' TracePacketDefaults Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent.TrackEventDefaults@
         * 'Proto.Protos.Perfetto.Trace.TracePacketDefaults_Fields.maybe'trackEventDefaults' @:: Lens' TracePacketDefaults (Prelude.Maybe Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent.TrackEventDefaults)@
         * 'Proto.Protos.Perfetto.Trace.TracePacketDefaults_Fields.perfSampleDefaults' @:: Lens' TracePacketDefaults Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket.PerfSampleDefaults@
         * 'Proto.Protos.Perfetto.Trace.TracePacketDefaults_Fields.maybe'perfSampleDefaults' @:: Lens' TracePacketDefaults (Prelude.Maybe Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket.PerfSampleDefaults)@ -}
data TracePacketDefaults
  = TracePacketDefaults'_constructor {_TracePacketDefaults'timestampClockId :: !(Prelude.Maybe Data.Word.Word32),
                                      _TracePacketDefaults'trackEventDefaults :: !(Prelude.Maybe Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent.TrackEventDefaults),
                                      _TracePacketDefaults'perfSampleDefaults :: !(Prelude.Maybe Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket.PerfSampleDefaults),
                                      _TracePacketDefaults'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TracePacketDefaults where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TracePacketDefaults "timestampClockId" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacketDefaults'timestampClockId
           (\ x__ y__ -> x__ {_TracePacketDefaults'timestampClockId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TracePacketDefaults "maybe'timestampClockId" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacketDefaults'timestampClockId
           (\ x__ y__ -> x__ {_TracePacketDefaults'timestampClockId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TracePacketDefaults "trackEventDefaults" Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent.TrackEventDefaults where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacketDefaults'trackEventDefaults
           (\ x__ y__ -> x__ {_TracePacketDefaults'trackEventDefaults = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TracePacketDefaults "maybe'trackEventDefaults" (Prelude.Maybe Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent.TrackEventDefaults) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacketDefaults'trackEventDefaults
           (\ x__ y__ -> x__ {_TracePacketDefaults'trackEventDefaults = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TracePacketDefaults "perfSampleDefaults" Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket.PerfSampleDefaults where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacketDefaults'perfSampleDefaults
           (\ x__ y__ -> x__ {_TracePacketDefaults'perfSampleDefaults = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TracePacketDefaults "maybe'perfSampleDefaults" (Prelude.Maybe Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket.PerfSampleDefaults) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacketDefaults'perfSampleDefaults
           (\ x__ y__ -> x__ {_TracePacketDefaults'perfSampleDefaults = y__}))
        Prelude.id
instance Data.ProtoLens.Message TracePacketDefaults where
  messageName _
    = Data.Text.pack "perfetto.protos.TracePacketDefaults"
  packedMessageDescriptor _
    = "\n\
      \\DC3TracePacketDefaults\DC2,\n\
      \\DC2timestamp_clock_id\CAN: \SOH(\rR\DLEtimestampClockId\DC2U\n\
      \\DC4track_event_defaults\CAN\v \SOH(\v2#.perfetto.protos.TrackEventDefaultsR\DC2trackEventDefaults\DC2U\n\
      \\DC4perf_sample_defaults\CAN\f \SOH(\v2#.perfetto.protos.PerfSampleDefaultsR\DC2perfSampleDefaults"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        timestampClockId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timestamp_clock_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timestampClockId")) ::
              Data.ProtoLens.FieldDescriptor TracePacketDefaults
        trackEventDefaults__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "track_event_defaults"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent.TrackEventDefaults)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'trackEventDefaults")) ::
              Data.ProtoLens.FieldDescriptor TracePacketDefaults
        perfSampleDefaults__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "perf_sample_defaults"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket.PerfSampleDefaults)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'perfSampleDefaults")) ::
              Data.ProtoLens.FieldDescriptor TracePacketDefaults
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 58, timestampClockId__field_descriptor),
           (Data.ProtoLens.Tag 11, trackEventDefaults__field_descriptor),
           (Data.ProtoLens.Tag 12, perfSampleDefaults__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TracePacketDefaults'_unknownFields
        (\ x__ y__ -> x__ {_TracePacketDefaults'_unknownFields = y__})
  defMessage
    = TracePacketDefaults'_constructor
        {_TracePacketDefaults'timestampClockId = Prelude.Nothing,
         _TracePacketDefaults'trackEventDefaults = Prelude.Nothing,
         _TracePacketDefaults'perfSampleDefaults = Prelude.Nothing,
         _TracePacketDefaults'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TracePacketDefaults
          -> Data.ProtoLens.Encoding.Bytes.Parser TracePacketDefaults
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
                        464
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timestamp_clock_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timestampClockId") y x)
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "track_event_defaults"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"trackEventDefaults") y x)
                        98
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "perf_sample_defaults"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"perfSampleDefaults") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TracePacketDefaults"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'timestampClockId") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 464)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'trackEventDefaults") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'perfSampleDefaults") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 98)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData TracePacketDefaults where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TracePacketDefaults'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TracePacketDefaults'timestampClockId x__)
                (Control.DeepSeq.deepseq
                   (_TracePacketDefaults'trackEventDefaults x__)
                   (Control.DeepSeq.deepseq
                      (_TracePacketDefaults'perfSampleDefaults x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \1protos/perfetto/trace/trace_packet_defaults.proto\DC2\SIperfetto.protos\SUB4protos/perfetto/trace/profiling/profile_packet.proto\SUB3protos/perfetto/trace/track_event/track_event.proto\"\241\SOH\n\
    \\DC3TracePacketDefaults\DC2,\n\
    \\DC2timestamp_clock_id\CAN: \SOH(\rR\DLEtimestampClockId\DC2U\n\
    \\DC4track_event_defaults\CAN\v \SOH(\v2#.perfetto.protos.TrackEventDefaultsR\DC2trackEventDefaults\DC2U\n\
    \\DC4perf_sample_defaults\CAN\f \SOH(\v2#.perfetto.protos.PerfSampleDefaultsR\DC2perfSampleDefaultsJ\160\v\n\
    \\ACK\DC2\EOT\DLE\NUL&\SOH\n\
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
    \\STX\ETX\NUL\DC2\ETX\DC2\NUL>\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\DC3\NUL=\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\NAK\NUL\CAN\n\
    \\212\ETX\n\
    \\STX\EOT\NUL\DC2\EOT\RS\NUL&\SOH\SUB\199\ETX Default values for TracePacket fields that hold for a particular TraceWriter\n\
    \ packet sequence. This message contains a subset of the TracePacket fields\n\
    \ with matching IDs. When provided, these fields define the default values\n\
    \ that should be applied, at import time, to all TracePacket(s) with the same\n\
    \ |trusted_packet_sequence_id|, unless otherwise specified in each packet.\n\
    \\n\
    \ Should be reemitted whenever incremental state is cleared on the sequence.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\RS\b\ESC\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\US\STX*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\US\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\US\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\US\DC2$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\US')\n\
    \C\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\"\STX8\SUB6 Default values for TrackEvents (e.g. default track).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\"\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\"\v\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\"\RS2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\"57\n\
    \?\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX%\STX8\SUB2 Defaults for perf profiler packets (PerfSample).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX%\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX%\v\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX%\RS2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX%57"