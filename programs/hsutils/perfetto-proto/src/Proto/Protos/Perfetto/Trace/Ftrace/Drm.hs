{- This file was auto-generated from protos/perfetto/trace/ftrace/drm.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Drm (
        DrmVblankEventDeliveredFtraceEvent(), DrmVblankEventFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Drm_Fields.crtc' @:: Lens' DrmVblankEventDeliveredFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Drm_Fields.maybe'crtc' @:: Lens' DrmVblankEventDeliveredFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Drm_Fields.file' @:: Lens' DrmVblankEventDeliveredFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Drm_Fields.maybe'file' @:: Lens' DrmVblankEventDeliveredFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Drm_Fields.seq' @:: Lens' DrmVblankEventDeliveredFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Drm_Fields.maybe'seq' @:: Lens' DrmVblankEventDeliveredFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data DrmVblankEventDeliveredFtraceEvent
  = DrmVblankEventDeliveredFtraceEvent'_constructor {_DrmVblankEventDeliveredFtraceEvent'crtc :: !(Prelude.Maybe Data.Int.Int32),
                                                     _DrmVblankEventDeliveredFtraceEvent'file :: !(Prelude.Maybe Data.Word.Word64),
                                                     _DrmVblankEventDeliveredFtraceEvent'seq :: !(Prelude.Maybe Data.Word.Word32),
                                                     _DrmVblankEventDeliveredFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DrmVblankEventDeliveredFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DrmVblankEventDeliveredFtraceEvent "crtc" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DrmVblankEventDeliveredFtraceEvent'crtc
           (\ x__ y__
              -> x__ {_DrmVblankEventDeliveredFtraceEvent'crtc = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DrmVblankEventDeliveredFtraceEvent "maybe'crtc" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DrmVblankEventDeliveredFtraceEvent'crtc
           (\ x__ y__
              -> x__ {_DrmVblankEventDeliveredFtraceEvent'crtc = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DrmVblankEventDeliveredFtraceEvent "file" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DrmVblankEventDeliveredFtraceEvent'file
           (\ x__ y__
              -> x__ {_DrmVblankEventDeliveredFtraceEvent'file = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DrmVblankEventDeliveredFtraceEvent "maybe'file" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DrmVblankEventDeliveredFtraceEvent'file
           (\ x__ y__
              -> x__ {_DrmVblankEventDeliveredFtraceEvent'file = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DrmVblankEventDeliveredFtraceEvent "seq" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DrmVblankEventDeliveredFtraceEvent'seq
           (\ x__ y__ -> x__ {_DrmVblankEventDeliveredFtraceEvent'seq = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DrmVblankEventDeliveredFtraceEvent "maybe'seq" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DrmVblankEventDeliveredFtraceEvent'seq
           (\ x__ y__ -> x__ {_DrmVblankEventDeliveredFtraceEvent'seq = y__}))
        Prelude.id
instance Data.ProtoLens.Message DrmVblankEventDeliveredFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.DrmVblankEventDeliveredFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\"DrmVblankEventDeliveredFtraceEvent\DC2\DC2\n\
      \\EOTcrtc\CAN\SOH \SOH(\ENQR\EOTcrtc\DC2\DC2\n\
      \\EOTfile\CAN\STX \SOH(\EOTR\EOTfile\DC2\DLE\n\
      \\ETXseq\CAN\ETX \SOH(\rR\ETXseq"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        crtc__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "crtc"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'crtc")) ::
              Data.ProtoLens.FieldDescriptor DrmVblankEventDeliveredFtraceEvent
        file__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "file"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'file")) ::
              Data.ProtoLens.FieldDescriptor DrmVblankEventDeliveredFtraceEvent
        seq__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "seq"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'seq")) ::
              Data.ProtoLens.FieldDescriptor DrmVblankEventDeliveredFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, crtc__field_descriptor),
           (Data.ProtoLens.Tag 2, file__field_descriptor),
           (Data.ProtoLens.Tag 3, seq__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DrmVblankEventDeliveredFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_DrmVblankEventDeliveredFtraceEvent'_unknownFields = y__})
  defMessage
    = DrmVblankEventDeliveredFtraceEvent'_constructor
        {_DrmVblankEventDeliveredFtraceEvent'crtc = Prelude.Nothing,
         _DrmVblankEventDeliveredFtraceEvent'file = Prelude.Nothing,
         _DrmVblankEventDeliveredFtraceEvent'seq = Prelude.Nothing,
         _DrmVblankEventDeliveredFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DrmVblankEventDeliveredFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser DrmVblankEventDeliveredFtraceEvent
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
                                       "crtc"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"crtc") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "file"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"file") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "seq"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"seq") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "DrmVblankEventDeliveredFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'crtc") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'file") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'seq") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData DrmVblankEventDeliveredFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DrmVblankEventDeliveredFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DrmVblankEventDeliveredFtraceEvent'crtc x__)
                (Control.DeepSeq.deepseq
                   (_DrmVblankEventDeliveredFtraceEvent'file x__)
                   (Control.DeepSeq.deepseq
                      (_DrmVblankEventDeliveredFtraceEvent'seq x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Drm_Fields.crtc' @:: Lens' DrmVblankEventFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Drm_Fields.maybe'crtc' @:: Lens' DrmVblankEventFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Drm_Fields.highPrec' @:: Lens' DrmVblankEventFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Drm_Fields.maybe'highPrec' @:: Lens' DrmVblankEventFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Drm_Fields.seq' @:: Lens' DrmVblankEventFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Drm_Fields.maybe'seq' @:: Lens' DrmVblankEventFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Drm_Fields.time' @:: Lens' DrmVblankEventFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Drm_Fields.maybe'time' @:: Lens' DrmVblankEventFtraceEvent (Prelude.Maybe Data.Int.Int64)@ -}
data DrmVblankEventFtraceEvent
  = DrmVblankEventFtraceEvent'_constructor {_DrmVblankEventFtraceEvent'crtc :: !(Prelude.Maybe Data.Int.Int32),
                                            _DrmVblankEventFtraceEvent'highPrec :: !(Prelude.Maybe Data.Word.Word32),
                                            _DrmVblankEventFtraceEvent'seq :: !(Prelude.Maybe Data.Word.Word32),
                                            _DrmVblankEventFtraceEvent'time :: !(Prelude.Maybe Data.Int.Int64),
                                            _DrmVblankEventFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DrmVblankEventFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DrmVblankEventFtraceEvent "crtc" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DrmVblankEventFtraceEvent'crtc
           (\ x__ y__ -> x__ {_DrmVblankEventFtraceEvent'crtc = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DrmVblankEventFtraceEvent "maybe'crtc" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DrmVblankEventFtraceEvent'crtc
           (\ x__ y__ -> x__ {_DrmVblankEventFtraceEvent'crtc = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DrmVblankEventFtraceEvent "highPrec" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DrmVblankEventFtraceEvent'highPrec
           (\ x__ y__ -> x__ {_DrmVblankEventFtraceEvent'highPrec = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DrmVblankEventFtraceEvent "maybe'highPrec" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DrmVblankEventFtraceEvent'highPrec
           (\ x__ y__ -> x__ {_DrmVblankEventFtraceEvent'highPrec = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DrmVblankEventFtraceEvent "seq" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DrmVblankEventFtraceEvent'seq
           (\ x__ y__ -> x__ {_DrmVblankEventFtraceEvent'seq = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DrmVblankEventFtraceEvent "maybe'seq" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DrmVblankEventFtraceEvent'seq
           (\ x__ y__ -> x__ {_DrmVblankEventFtraceEvent'seq = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DrmVblankEventFtraceEvent "time" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DrmVblankEventFtraceEvent'time
           (\ x__ y__ -> x__ {_DrmVblankEventFtraceEvent'time = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DrmVblankEventFtraceEvent "maybe'time" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DrmVblankEventFtraceEvent'time
           (\ x__ y__ -> x__ {_DrmVblankEventFtraceEvent'time = y__}))
        Prelude.id
instance Data.ProtoLens.Message DrmVblankEventFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.DrmVblankEventFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\EMDrmVblankEventFtraceEvent\DC2\DC2\n\
      \\EOTcrtc\CAN\SOH \SOH(\ENQR\EOTcrtc\DC2\ESC\n\
      \\thigh_prec\CAN\STX \SOH(\rR\bhighPrec\DC2\DLE\n\
      \\ETXseq\CAN\ETX \SOH(\rR\ETXseq\DC2\DC2\n\
      \\EOTtime\CAN\EOT \SOH(\ETXR\EOTtime"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        crtc__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "crtc"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'crtc")) ::
              Data.ProtoLens.FieldDescriptor DrmVblankEventFtraceEvent
        highPrec__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "high_prec"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'highPrec")) ::
              Data.ProtoLens.FieldDescriptor DrmVblankEventFtraceEvent
        seq__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "seq"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'seq")) ::
              Data.ProtoLens.FieldDescriptor DrmVblankEventFtraceEvent
        time__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "time"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'time")) ::
              Data.ProtoLens.FieldDescriptor DrmVblankEventFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, crtc__field_descriptor),
           (Data.ProtoLens.Tag 2, highPrec__field_descriptor),
           (Data.ProtoLens.Tag 3, seq__field_descriptor),
           (Data.ProtoLens.Tag 4, time__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DrmVblankEventFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_DrmVblankEventFtraceEvent'_unknownFields = y__})
  defMessage
    = DrmVblankEventFtraceEvent'_constructor
        {_DrmVblankEventFtraceEvent'crtc = Prelude.Nothing,
         _DrmVblankEventFtraceEvent'highPrec = Prelude.Nothing,
         _DrmVblankEventFtraceEvent'seq = Prelude.Nothing,
         _DrmVblankEventFtraceEvent'time = Prelude.Nothing,
         _DrmVblankEventFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DrmVblankEventFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser DrmVblankEventFtraceEvent
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
                                       "crtc"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"crtc") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "high_prec"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"highPrec") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "seq"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"seq") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "time"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"time") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DrmVblankEventFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'crtc") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'highPrec") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'seq") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'time") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData DrmVblankEventFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DrmVblankEventFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DrmVblankEventFtraceEvent'crtc x__)
                (Control.DeepSeq.deepseq
                   (_DrmVblankEventFtraceEvent'highPrec x__)
                   (Control.DeepSeq.deepseq
                      (_DrmVblankEventFtraceEvent'seq x__)
                      (Control.DeepSeq.deepseq
                         (_DrmVblankEventFtraceEvent'time x__) ()))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \&protos/perfetto/trace/ftrace/drm.proto\DC2\SIperfetto.protos\"r\n\
    \\EMDrmVblankEventFtraceEvent\DC2\DC2\n\
    \\EOTcrtc\CAN\SOH \SOH(\ENQR\EOTcrtc\DC2\ESC\n\
    \\thigh_prec\CAN\STX \SOH(\rR\bhighPrec\DC2\DLE\n\
    \\ETXseq\CAN\ETX \SOH(\rR\ETXseq\DC2\DC2\n\
    \\EOTtime\CAN\EOT \SOH(\ETXR\EOTtime\"^\n\
    \\"DrmVblankEventDeliveredFtraceEvent\DC2\DC2\n\
    \\EOTcrtc\CAN\SOH \SOH(\ENQR\EOTcrtc\DC2\DC2\n\
    \\EOTfile\CAN\STX \SOH(\EOTR\EOTfile\DC2\DLE\n\
    \\ETXseq\CAN\ETX \SOH(\rR\ETXseqJ\136\ENQ\n\
    \\ACK\DC2\EOT\EOT\NUL\DC1\SOH\n\
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
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b!\n\
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
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\t\STX \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\t\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\t\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\t\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\t\RS\US\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\n\
    \\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\n\
    \\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\n\
    \\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\n\
    \\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\n\
    \\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\v\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX\v\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\v\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\v\DC1\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\v\CAN\EM\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\r\NUL\DC1\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\r\b*\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\SO\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\SO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\SO\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\SO\DC1\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\SO\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\SI\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX\SI\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\SI\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\SI\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\SI\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX\DLE\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\EOT\DC2\ETX\DLE\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX\DLE\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX\DLE\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX\DLE\CAN\EM"