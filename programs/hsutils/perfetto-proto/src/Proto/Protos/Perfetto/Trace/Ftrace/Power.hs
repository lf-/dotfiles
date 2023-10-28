{- This file was auto-generated from protos/perfetto/trace/ftrace/power.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Power (
        ClockDisableFtraceEvent(), ClockEnableFtraceEvent(),
        ClockSetRateFtraceEvent(), CpuFrequencyFtraceEvent(),
        CpuFrequencyLimitsFtraceEvent(), CpuIdleFtraceEvent(),
        GpuFrequencyFtraceEvent(), SuspendResumeFtraceEvent(),
        WakeupSourceActivateFtraceEvent(),
        WakeupSourceDeactivateFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.name' @:: Lens' ClockDisableFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.maybe'name' @:: Lens' ClockDisableFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.state' @:: Lens' ClockDisableFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.maybe'state' @:: Lens' ClockDisableFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.cpuId' @:: Lens' ClockDisableFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.maybe'cpuId' @:: Lens' ClockDisableFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data ClockDisableFtraceEvent
  = ClockDisableFtraceEvent'_constructor {_ClockDisableFtraceEvent'name :: !(Prelude.Maybe Data.Text.Text),
                                          _ClockDisableFtraceEvent'state :: !(Prelude.Maybe Data.Word.Word64),
                                          _ClockDisableFtraceEvent'cpuId :: !(Prelude.Maybe Data.Word.Word64),
                                          _ClockDisableFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ClockDisableFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ClockDisableFtraceEvent "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClockDisableFtraceEvent'name
           (\ x__ y__ -> x__ {_ClockDisableFtraceEvent'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ClockDisableFtraceEvent "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClockDisableFtraceEvent'name
           (\ x__ y__ -> x__ {_ClockDisableFtraceEvent'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClockDisableFtraceEvent "state" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClockDisableFtraceEvent'state
           (\ x__ y__ -> x__ {_ClockDisableFtraceEvent'state = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ClockDisableFtraceEvent "maybe'state" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClockDisableFtraceEvent'state
           (\ x__ y__ -> x__ {_ClockDisableFtraceEvent'state = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClockDisableFtraceEvent "cpuId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClockDisableFtraceEvent'cpuId
           (\ x__ y__ -> x__ {_ClockDisableFtraceEvent'cpuId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ClockDisableFtraceEvent "maybe'cpuId" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClockDisableFtraceEvent'cpuId
           (\ x__ y__ -> x__ {_ClockDisableFtraceEvent'cpuId = y__}))
        Prelude.id
instance Data.ProtoLens.Message ClockDisableFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.ClockDisableFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ETBClockDisableFtraceEvent\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\DC4\n\
      \\ENQstate\CAN\STX \SOH(\EOTR\ENQstate\DC2\NAK\n\
      \\ACKcpu_id\CAN\ETX \SOH(\EOTR\ENQcpuId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'name")) ::
              Data.ProtoLens.FieldDescriptor ClockDisableFtraceEvent
        state__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'state")) ::
              Data.ProtoLens.FieldDescriptor ClockDisableFtraceEvent
        cpuId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cpu_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cpuId")) ::
              Data.ProtoLens.FieldDescriptor ClockDisableFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, state__field_descriptor),
           (Data.ProtoLens.Tag 3, cpuId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ClockDisableFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_ClockDisableFtraceEvent'_unknownFields = y__})
  defMessage
    = ClockDisableFtraceEvent'_constructor
        {_ClockDisableFtraceEvent'name = Prelude.Nothing,
         _ClockDisableFtraceEvent'state = Prelude.Nothing,
         _ClockDisableFtraceEvent'cpuId = Prelude.Nothing,
         _ClockDisableFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ClockDisableFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser ClockDisableFtraceEvent
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
                        10
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
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "state"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"state") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "cpu_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cpuId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ClockDisableFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'name") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
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
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cpuId") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData ClockDisableFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ClockDisableFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ClockDisableFtraceEvent'name x__)
                (Control.DeepSeq.deepseq
                   (_ClockDisableFtraceEvent'state x__)
                   (Control.DeepSeq.deepseq (_ClockDisableFtraceEvent'cpuId x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.name' @:: Lens' ClockEnableFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.maybe'name' @:: Lens' ClockEnableFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.state' @:: Lens' ClockEnableFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.maybe'state' @:: Lens' ClockEnableFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.cpuId' @:: Lens' ClockEnableFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.maybe'cpuId' @:: Lens' ClockEnableFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data ClockEnableFtraceEvent
  = ClockEnableFtraceEvent'_constructor {_ClockEnableFtraceEvent'name :: !(Prelude.Maybe Data.Text.Text),
                                         _ClockEnableFtraceEvent'state :: !(Prelude.Maybe Data.Word.Word64),
                                         _ClockEnableFtraceEvent'cpuId :: !(Prelude.Maybe Data.Word.Word64),
                                         _ClockEnableFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ClockEnableFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ClockEnableFtraceEvent "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClockEnableFtraceEvent'name
           (\ x__ y__ -> x__ {_ClockEnableFtraceEvent'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ClockEnableFtraceEvent "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClockEnableFtraceEvent'name
           (\ x__ y__ -> x__ {_ClockEnableFtraceEvent'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClockEnableFtraceEvent "state" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClockEnableFtraceEvent'state
           (\ x__ y__ -> x__ {_ClockEnableFtraceEvent'state = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ClockEnableFtraceEvent "maybe'state" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClockEnableFtraceEvent'state
           (\ x__ y__ -> x__ {_ClockEnableFtraceEvent'state = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClockEnableFtraceEvent "cpuId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClockEnableFtraceEvent'cpuId
           (\ x__ y__ -> x__ {_ClockEnableFtraceEvent'cpuId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ClockEnableFtraceEvent "maybe'cpuId" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClockEnableFtraceEvent'cpuId
           (\ x__ y__ -> x__ {_ClockEnableFtraceEvent'cpuId = y__}))
        Prelude.id
instance Data.ProtoLens.Message ClockEnableFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.ClockEnableFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SYNClockEnableFtraceEvent\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\DC4\n\
      \\ENQstate\CAN\STX \SOH(\EOTR\ENQstate\DC2\NAK\n\
      \\ACKcpu_id\CAN\ETX \SOH(\EOTR\ENQcpuId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'name")) ::
              Data.ProtoLens.FieldDescriptor ClockEnableFtraceEvent
        state__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'state")) ::
              Data.ProtoLens.FieldDescriptor ClockEnableFtraceEvent
        cpuId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cpu_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cpuId")) ::
              Data.ProtoLens.FieldDescriptor ClockEnableFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, state__field_descriptor),
           (Data.ProtoLens.Tag 3, cpuId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ClockEnableFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_ClockEnableFtraceEvent'_unknownFields = y__})
  defMessage
    = ClockEnableFtraceEvent'_constructor
        {_ClockEnableFtraceEvent'name = Prelude.Nothing,
         _ClockEnableFtraceEvent'state = Prelude.Nothing,
         _ClockEnableFtraceEvent'cpuId = Prelude.Nothing,
         _ClockEnableFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ClockEnableFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser ClockEnableFtraceEvent
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
                        10
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
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "state"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"state") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "cpu_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cpuId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ClockEnableFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'name") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
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
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cpuId") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData ClockEnableFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ClockEnableFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ClockEnableFtraceEvent'name x__)
                (Control.DeepSeq.deepseq
                   (_ClockEnableFtraceEvent'state x__)
                   (Control.DeepSeq.deepseq (_ClockEnableFtraceEvent'cpuId x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.name' @:: Lens' ClockSetRateFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.maybe'name' @:: Lens' ClockSetRateFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.state' @:: Lens' ClockSetRateFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.maybe'state' @:: Lens' ClockSetRateFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.cpuId' @:: Lens' ClockSetRateFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.maybe'cpuId' @:: Lens' ClockSetRateFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data ClockSetRateFtraceEvent
  = ClockSetRateFtraceEvent'_constructor {_ClockSetRateFtraceEvent'name :: !(Prelude.Maybe Data.Text.Text),
                                          _ClockSetRateFtraceEvent'state :: !(Prelude.Maybe Data.Word.Word64),
                                          _ClockSetRateFtraceEvent'cpuId :: !(Prelude.Maybe Data.Word.Word64),
                                          _ClockSetRateFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ClockSetRateFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ClockSetRateFtraceEvent "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClockSetRateFtraceEvent'name
           (\ x__ y__ -> x__ {_ClockSetRateFtraceEvent'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ClockSetRateFtraceEvent "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClockSetRateFtraceEvent'name
           (\ x__ y__ -> x__ {_ClockSetRateFtraceEvent'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClockSetRateFtraceEvent "state" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClockSetRateFtraceEvent'state
           (\ x__ y__ -> x__ {_ClockSetRateFtraceEvent'state = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ClockSetRateFtraceEvent "maybe'state" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClockSetRateFtraceEvent'state
           (\ x__ y__ -> x__ {_ClockSetRateFtraceEvent'state = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClockSetRateFtraceEvent "cpuId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClockSetRateFtraceEvent'cpuId
           (\ x__ y__ -> x__ {_ClockSetRateFtraceEvent'cpuId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ClockSetRateFtraceEvent "maybe'cpuId" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClockSetRateFtraceEvent'cpuId
           (\ x__ y__ -> x__ {_ClockSetRateFtraceEvent'cpuId = y__}))
        Prelude.id
instance Data.ProtoLens.Message ClockSetRateFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.ClockSetRateFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ETBClockSetRateFtraceEvent\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\DC4\n\
      \\ENQstate\CAN\STX \SOH(\EOTR\ENQstate\DC2\NAK\n\
      \\ACKcpu_id\CAN\ETX \SOH(\EOTR\ENQcpuId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'name")) ::
              Data.ProtoLens.FieldDescriptor ClockSetRateFtraceEvent
        state__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'state")) ::
              Data.ProtoLens.FieldDescriptor ClockSetRateFtraceEvent
        cpuId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cpu_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cpuId")) ::
              Data.ProtoLens.FieldDescriptor ClockSetRateFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, state__field_descriptor),
           (Data.ProtoLens.Tag 3, cpuId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ClockSetRateFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_ClockSetRateFtraceEvent'_unknownFields = y__})
  defMessage
    = ClockSetRateFtraceEvent'_constructor
        {_ClockSetRateFtraceEvent'name = Prelude.Nothing,
         _ClockSetRateFtraceEvent'state = Prelude.Nothing,
         _ClockSetRateFtraceEvent'cpuId = Prelude.Nothing,
         _ClockSetRateFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ClockSetRateFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser ClockSetRateFtraceEvent
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
                        10
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
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "state"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"state") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "cpu_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cpuId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ClockSetRateFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'name") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
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
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cpuId") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData ClockSetRateFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ClockSetRateFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ClockSetRateFtraceEvent'name x__)
                (Control.DeepSeq.deepseq
                   (_ClockSetRateFtraceEvent'state x__)
                   (Control.DeepSeq.deepseq (_ClockSetRateFtraceEvent'cpuId x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.state' @:: Lens' CpuFrequencyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.maybe'state' @:: Lens' CpuFrequencyFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.cpuId' @:: Lens' CpuFrequencyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.maybe'cpuId' @:: Lens' CpuFrequencyFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data CpuFrequencyFtraceEvent
  = CpuFrequencyFtraceEvent'_constructor {_CpuFrequencyFtraceEvent'state :: !(Prelude.Maybe Data.Word.Word32),
                                          _CpuFrequencyFtraceEvent'cpuId :: !(Prelude.Maybe Data.Word.Word32),
                                          _CpuFrequencyFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CpuFrequencyFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CpuFrequencyFtraceEvent "state" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuFrequencyFtraceEvent'state
           (\ x__ y__ -> x__ {_CpuFrequencyFtraceEvent'state = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CpuFrequencyFtraceEvent "maybe'state" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuFrequencyFtraceEvent'state
           (\ x__ y__ -> x__ {_CpuFrequencyFtraceEvent'state = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CpuFrequencyFtraceEvent "cpuId" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuFrequencyFtraceEvent'cpuId
           (\ x__ y__ -> x__ {_CpuFrequencyFtraceEvent'cpuId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CpuFrequencyFtraceEvent "maybe'cpuId" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuFrequencyFtraceEvent'cpuId
           (\ x__ y__ -> x__ {_CpuFrequencyFtraceEvent'cpuId = y__}))
        Prelude.id
instance Data.ProtoLens.Message CpuFrequencyFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.CpuFrequencyFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ETBCpuFrequencyFtraceEvent\DC2\DC4\n\
      \\ENQstate\CAN\SOH \SOH(\rR\ENQstate\DC2\NAK\n\
      \\ACKcpu_id\CAN\STX \SOH(\rR\ENQcpuId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        state__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'state")) ::
              Data.ProtoLens.FieldDescriptor CpuFrequencyFtraceEvent
        cpuId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cpu_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cpuId")) ::
              Data.ProtoLens.FieldDescriptor CpuFrequencyFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, state__field_descriptor),
           (Data.ProtoLens.Tag 2, cpuId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CpuFrequencyFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_CpuFrequencyFtraceEvent'_unknownFields = y__})
  defMessage
    = CpuFrequencyFtraceEvent'_constructor
        {_CpuFrequencyFtraceEvent'state = Prelude.Nothing,
         _CpuFrequencyFtraceEvent'cpuId = Prelude.Nothing,
         _CpuFrequencyFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CpuFrequencyFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser CpuFrequencyFtraceEvent
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
                                       "state"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"state") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "cpu_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cpuId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CpuFrequencyFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'state") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cpuId") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData CpuFrequencyFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CpuFrequencyFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CpuFrequencyFtraceEvent'state x__)
                (Control.DeepSeq.deepseq (_CpuFrequencyFtraceEvent'cpuId x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.minFreq' @:: Lens' CpuFrequencyLimitsFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.maybe'minFreq' @:: Lens' CpuFrequencyLimitsFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.maxFreq' @:: Lens' CpuFrequencyLimitsFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.maybe'maxFreq' @:: Lens' CpuFrequencyLimitsFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.cpuId' @:: Lens' CpuFrequencyLimitsFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.maybe'cpuId' @:: Lens' CpuFrequencyLimitsFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data CpuFrequencyLimitsFtraceEvent
  = CpuFrequencyLimitsFtraceEvent'_constructor {_CpuFrequencyLimitsFtraceEvent'minFreq :: !(Prelude.Maybe Data.Word.Word32),
                                                _CpuFrequencyLimitsFtraceEvent'maxFreq :: !(Prelude.Maybe Data.Word.Word32),
                                                _CpuFrequencyLimitsFtraceEvent'cpuId :: !(Prelude.Maybe Data.Word.Word32),
                                                _CpuFrequencyLimitsFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CpuFrequencyLimitsFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CpuFrequencyLimitsFtraceEvent "minFreq" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuFrequencyLimitsFtraceEvent'minFreq
           (\ x__ y__ -> x__ {_CpuFrequencyLimitsFtraceEvent'minFreq = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CpuFrequencyLimitsFtraceEvent "maybe'minFreq" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuFrequencyLimitsFtraceEvent'minFreq
           (\ x__ y__ -> x__ {_CpuFrequencyLimitsFtraceEvent'minFreq = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CpuFrequencyLimitsFtraceEvent "maxFreq" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuFrequencyLimitsFtraceEvent'maxFreq
           (\ x__ y__ -> x__ {_CpuFrequencyLimitsFtraceEvent'maxFreq = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CpuFrequencyLimitsFtraceEvent "maybe'maxFreq" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuFrequencyLimitsFtraceEvent'maxFreq
           (\ x__ y__ -> x__ {_CpuFrequencyLimitsFtraceEvent'maxFreq = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CpuFrequencyLimitsFtraceEvent "cpuId" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuFrequencyLimitsFtraceEvent'cpuId
           (\ x__ y__ -> x__ {_CpuFrequencyLimitsFtraceEvent'cpuId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CpuFrequencyLimitsFtraceEvent "maybe'cpuId" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuFrequencyLimitsFtraceEvent'cpuId
           (\ x__ y__ -> x__ {_CpuFrequencyLimitsFtraceEvent'cpuId = y__}))
        Prelude.id
instance Data.ProtoLens.Message CpuFrequencyLimitsFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.CpuFrequencyLimitsFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\GSCpuFrequencyLimitsFtraceEvent\DC2\EM\n\
      \\bmin_freq\CAN\SOH \SOH(\rR\aminFreq\DC2\EM\n\
      \\bmax_freq\CAN\STX \SOH(\rR\amaxFreq\DC2\NAK\n\
      \\ACKcpu_id\CAN\ETX \SOH(\rR\ENQcpuId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        minFreq__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "min_freq"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'minFreq")) ::
              Data.ProtoLens.FieldDescriptor CpuFrequencyLimitsFtraceEvent
        maxFreq__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_freq"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxFreq")) ::
              Data.ProtoLens.FieldDescriptor CpuFrequencyLimitsFtraceEvent
        cpuId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cpu_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cpuId")) ::
              Data.ProtoLens.FieldDescriptor CpuFrequencyLimitsFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, minFreq__field_descriptor),
           (Data.ProtoLens.Tag 2, maxFreq__field_descriptor),
           (Data.ProtoLens.Tag 3, cpuId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CpuFrequencyLimitsFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_CpuFrequencyLimitsFtraceEvent'_unknownFields = y__})
  defMessage
    = CpuFrequencyLimitsFtraceEvent'_constructor
        {_CpuFrequencyLimitsFtraceEvent'minFreq = Prelude.Nothing,
         _CpuFrequencyLimitsFtraceEvent'maxFreq = Prelude.Nothing,
         _CpuFrequencyLimitsFtraceEvent'cpuId = Prelude.Nothing,
         _CpuFrequencyLimitsFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CpuFrequencyLimitsFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser CpuFrequencyLimitsFtraceEvent
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
                                       "min_freq"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"minFreq") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "max_freq"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"maxFreq") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "cpu_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cpuId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CpuFrequencyLimitsFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'minFreq") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'maxFreq") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cpuId") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData CpuFrequencyLimitsFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CpuFrequencyLimitsFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CpuFrequencyLimitsFtraceEvent'minFreq x__)
                (Control.DeepSeq.deepseq
                   (_CpuFrequencyLimitsFtraceEvent'maxFreq x__)
                   (Control.DeepSeq.deepseq
                      (_CpuFrequencyLimitsFtraceEvent'cpuId x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.state' @:: Lens' CpuIdleFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.maybe'state' @:: Lens' CpuIdleFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.cpuId' @:: Lens' CpuIdleFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.maybe'cpuId' @:: Lens' CpuIdleFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data CpuIdleFtraceEvent
  = CpuIdleFtraceEvent'_constructor {_CpuIdleFtraceEvent'state :: !(Prelude.Maybe Data.Word.Word32),
                                     _CpuIdleFtraceEvent'cpuId :: !(Prelude.Maybe Data.Word.Word32),
                                     _CpuIdleFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CpuIdleFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CpuIdleFtraceEvent "state" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuIdleFtraceEvent'state
           (\ x__ y__ -> x__ {_CpuIdleFtraceEvent'state = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CpuIdleFtraceEvent "maybe'state" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuIdleFtraceEvent'state
           (\ x__ y__ -> x__ {_CpuIdleFtraceEvent'state = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CpuIdleFtraceEvent "cpuId" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuIdleFtraceEvent'cpuId
           (\ x__ y__ -> x__ {_CpuIdleFtraceEvent'cpuId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CpuIdleFtraceEvent "maybe'cpuId" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuIdleFtraceEvent'cpuId
           (\ x__ y__ -> x__ {_CpuIdleFtraceEvent'cpuId = y__}))
        Prelude.id
instance Data.ProtoLens.Message CpuIdleFtraceEvent where
  messageName _ = Data.Text.pack "perfetto.protos.CpuIdleFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\DC2CpuIdleFtraceEvent\DC2\DC4\n\
      \\ENQstate\CAN\SOH \SOH(\rR\ENQstate\DC2\NAK\n\
      \\ACKcpu_id\CAN\STX \SOH(\rR\ENQcpuId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        state__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'state")) ::
              Data.ProtoLens.FieldDescriptor CpuIdleFtraceEvent
        cpuId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cpu_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cpuId")) ::
              Data.ProtoLens.FieldDescriptor CpuIdleFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, state__field_descriptor),
           (Data.ProtoLens.Tag 2, cpuId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CpuIdleFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_CpuIdleFtraceEvent'_unknownFields = y__})
  defMessage
    = CpuIdleFtraceEvent'_constructor
        {_CpuIdleFtraceEvent'state = Prelude.Nothing,
         _CpuIdleFtraceEvent'cpuId = Prelude.Nothing,
         _CpuIdleFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CpuIdleFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser CpuIdleFtraceEvent
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
                                       "state"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"state") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "cpu_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cpuId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CpuIdleFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'state") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cpuId") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData CpuIdleFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CpuIdleFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CpuIdleFtraceEvent'state x__)
                (Control.DeepSeq.deepseq (_CpuIdleFtraceEvent'cpuId x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.gpuId' @:: Lens' GpuFrequencyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.maybe'gpuId' @:: Lens' GpuFrequencyFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.state' @:: Lens' GpuFrequencyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.maybe'state' @:: Lens' GpuFrequencyFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data GpuFrequencyFtraceEvent
  = GpuFrequencyFtraceEvent'_constructor {_GpuFrequencyFtraceEvent'gpuId :: !(Prelude.Maybe Data.Word.Word32),
                                          _GpuFrequencyFtraceEvent'state :: !(Prelude.Maybe Data.Word.Word32),
                                          _GpuFrequencyFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GpuFrequencyFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GpuFrequencyFtraceEvent "gpuId" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GpuFrequencyFtraceEvent'gpuId
           (\ x__ y__ -> x__ {_GpuFrequencyFtraceEvent'gpuId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField GpuFrequencyFtraceEvent "maybe'gpuId" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GpuFrequencyFtraceEvent'gpuId
           (\ x__ y__ -> x__ {_GpuFrequencyFtraceEvent'gpuId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GpuFrequencyFtraceEvent "state" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GpuFrequencyFtraceEvent'state
           (\ x__ y__ -> x__ {_GpuFrequencyFtraceEvent'state = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField GpuFrequencyFtraceEvent "maybe'state" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GpuFrequencyFtraceEvent'state
           (\ x__ y__ -> x__ {_GpuFrequencyFtraceEvent'state = y__}))
        Prelude.id
instance Data.ProtoLens.Message GpuFrequencyFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.GpuFrequencyFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ETBGpuFrequencyFtraceEvent\DC2\NAK\n\
      \\ACKgpu_id\CAN\SOH \SOH(\rR\ENQgpuId\DC2\DC4\n\
      \\ENQstate\CAN\STX \SOH(\rR\ENQstate"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        gpuId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gpu_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gpuId")) ::
              Data.ProtoLens.FieldDescriptor GpuFrequencyFtraceEvent
        state__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'state")) ::
              Data.ProtoLens.FieldDescriptor GpuFrequencyFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, gpuId__field_descriptor),
           (Data.ProtoLens.Tag 2, state__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GpuFrequencyFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_GpuFrequencyFtraceEvent'_unknownFields = y__})
  defMessage
    = GpuFrequencyFtraceEvent'_constructor
        {_GpuFrequencyFtraceEvent'gpuId = Prelude.Nothing,
         _GpuFrequencyFtraceEvent'state = Prelude.Nothing,
         _GpuFrequencyFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GpuFrequencyFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser GpuFrequencyFtraceEvent
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
                                       "gpu_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"gpuId") y x)
                        16
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
          (do loop Data.ProtoLens.defMessage) "GpuFrequencyFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gpuId") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'state") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData GpuFrequencyFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GpuFrequencyFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GpuFrequencyFtraceEvent'gpuId x__)
                (Control.DeepSeq.deepseq (_GpuFrequencyFtraceEvent'state x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.action' @:: Lens' SuspendResumeFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.maybe'action' @:: Lens' SuspendResumeFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.val' @:: Lens' SuspendResumeFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.maybe'val' @:: Lens' SuspendResumeFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.start' @:: Lens' SuspendResumeFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.maybe'start' @:: Lens' SuspendResumeFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data SuspendResumeFtraceEvent
  = SuspendResumeFtraceEvent'_constructor {_SuspendResumeFtraceEvent'action :: !(Prelude.Maybe Data.Text.Text),
                                           _SuspendResumeFtraceEvent'val :: !(Prelude.Maybe Data.Int.Int32),
                                           _SuspendResumeFtraceEvent'start :: !(Prelude.Maybe Data.Word.Word32),
                                           _SuspendResumeFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SuspendResumeFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SuspendResumeFtraceEvent "action" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SuspendResumeFtraceEvent'action
           (\ x__ y__ -> x__ {_SuspendResumeFtraceEvent'action = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SuspendResumeFtraceEvent "maybe'action" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SuspendResumeFtraceEvent'action
           (\ x__ y__ -> x__ {_SuspendResumeFtraceEvent'action = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SuspendResumeFtraceEvent "val" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SuspendResumeFtraceEvent'val
           (\ x__ y__ -> x__ {_SuspendResumeFtraceEvent'val = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SuspendResumeFtraceEvent "maybe'val" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SuspendResumeFtraceEvent'val
           (\ x__ y__ -> x__ {_SuspendResumeFtraceEvent'val = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SuspendResumeFtraceEvent "start" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SuspendResumeFtraceEvent'start
           (\ x__ y__ -> x__ {_SuspendResumeFtraceEvent'start = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SuspendResumeFtraceEvent "maybe'start" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SuspendResumeFtraceEvent'start
           (\ x__ y__ -> x__ {_SuspendResumeFtraceEvent'start = y__}))
        Prelude.id
instance Data.ProtoLens.Message SuspendResumeFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.SuspendResumeFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\CANSuspendResumeFtraceEvent\DC2\SYN\n\
      \\ACKaction\CAN\SOH \SOH(\tR\ACKaction\DC2\DLE\n\
      \\ETXval\CAN\STX \SOH(\ENQR\ETXval\DC2\DC4\n\
      \\ENQstart\CAN\ETX \SOH(\rR\ENQstart"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        action__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "action"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'action")) ::
              Data.ProtoLens.FieldDescriptor SuspendResumeFtraceEvent
        val__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "val"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'val")) ::
              Data.ProtoLens.FieldDescriptor SuspendResumeFtraceEvent
        start__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'start")) ::
              Data.ProtoLens.FieldDescriptor SuspendResumeFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, action__field_descriptor),
           (Data.ProtoLens.Tag 2, val__field_descriptor),
           (Data.ProtoLens.Tag 3, start__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SuspendResumeFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_SuspendResumeFtraceEvent'_unknownFields = y__})
  defMessage
    = SuspendResumeFtraceEvent'_constructor
        {_SuspendResumeFtraceEvent'action = Prelude.Nothing,
         _SuspendResumeFtraceEvent'val = Prelude.Nothing,
         _SuspendResumeFtraceEvent'start = Prelude.Nothing,
         _SuspendResumeFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SuspendResumeFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser SuspendResumeFtraceEvent
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
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "action"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"action") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "val"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"val") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "start"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"start") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SuspendResumeFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'action") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'val") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'start") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData SuspendResumeFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SuspendResumeFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SuspendResumeFtraceEvent'action x__)
                (Control.DeepSeq.deepseq
                   (_SuspendResumeFtraceEvent'val x__)
                   (Control.DeepSeq.deepseq
                      (_SuspendResumeFtraceEvent'start x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.name' @:: Lens' WakeupSourceActivateFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.maybe'name' @:: Lens' WakeupSourceActivateFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.state' @:: Lens' WakeupSourceActivateFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.maybe'state' @:: Lens' WakeupSourceActivateFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data WakeupSourceActivateFtraceEvent
  = WakeupSourceActivateFtraceEvent'_constructor {_WakeupSourceActivateFtraceEvent'name :: !(Prelude.Maybe Data.Text.Text),
                                                  _WakeupSourceActivateFtraceEvent'state :: !(Prelude.Maybe Data.Word.Word64),
                                                  _WakeupSourceActivateFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WakeupSourceActivateFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField WakeupSourceActivateFtraceEvent "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WakeupSourceActivateFtraceEvent'name
           (\ x__ y__ -> x__ {_WakeupSourceActivateFtraceEvent'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField WakeupSourceActivateFtraceEvent "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WakeupSourceActivateFtraceEvent'name
           (\ x__ y__ -> x__ {_WakeupSourceActivateFtraceEvent'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WakeupSourceActivateFtraceEvent "state" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WakeupSourceActivateFtraceEvent'state
           (\ x__ y__ -> x__ {_WakeupSourceActivateFtraceEvent'state = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField WakeupSourceActivateFtraceEvent "maybe'state" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WakeupSourceActivateFtraceEvent'state
           (\ x__ y__ -> x__ {_WakeupSourceActivateFtraceEvent'state = y__}))
        Prelude.id
instance Data.ProtoLens.Message WakeupSourceActivateFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.WakeupSourceActivateFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\USWakeupSourceActivateFtraceEvent\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\DC4\n\
      \\ENQstate\CAN\STX \SOH(\EOTR\ENQstate"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'name")) ::
              Data.ProtoLens.FieldDescriptor WakeupSourceActivateFtraceEvent
        state__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'state")) ::
              Data.ProtoLens.FieldDescriptor WakeupSourceActivateFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, state__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WakeupSourceActivateFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_WakeupSourceActivateFtraceEvent'_unknownFields = y__})
  defMessage
    = WakeupSourceActivateFtraceEvent'_constructor
        {_WakeupSourceActivateFtraceEvent'name = Prelude.Nothing,
         _WakeupSourceActivateFtraceEvent'state = Prelude.Nothing,
         _WakeupSourceActivateFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WakeupSourceActivateFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser WakeupSourceActivateFtraceEvent
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
                        10
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
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "state"
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
          "WakeupSourceActivateFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'name") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
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
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData WakeupSourceActivateFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WakeupSourceActivateFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_WakeupSourceActivateFtraceEvent'name x__)
                (Control.DeepSeq.deepseq
                   (_WakeupSourceActivateFtraceEvent'state x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.name' @:: Lens' WakeupSourceDeactivateFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.maybe'name' @:: Lens' WakeupSourceDeactivateFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.state' @:: Lens' WakeupSourceDeactivateFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields.maybe'state' @:: Lens' WakeupSourceDeactivateFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data WakeupSourceDeactivateFtraceEvent
  = WakeupSourceDeactivateFtraceEvent'_constructor {_WakeupSourceDeactivateFtraceEvent'name :: !(Prelude.Maybe Data.Text.Text),
                                                    _WakeupSourceDeactivateFtraceEvent'state :: !(Prelude.Maybe Data.Word.Word64),
                                                    _WakeupSourceDeactivateFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WakeupSourceDeactivateFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField WakeupSourceDeactivateFtraceEvent "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WakeupSourceDeactivateFtraceEvent'name
           (\ x__ y__ -> x__ {_WakeupSourceDeactivateFtraceEvent'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField WakeupSourceDeactivateFtraceEvent "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WakeupSourceDeactivateFtraceEvent'name
           (\ x__ y__ -> x__ {_WakeupSourceDeactivateFtraceEvent'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WakeupSourceDeactivateFtraceEvent "state" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WakeupSourceDeactivateFtraceEvent'state
           (\ x__ y__
              -> x__ {_WakeupSourceDeactivateFtraceEvent'state = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField WakeupSourceDeactivateFtraceEvent "maybe'state" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WakeupSourceDeactivateFtraceEvent'state
           (\ x__ y__
              -> x__ {_WakeupSourceDeactivateFtraceEvent'state = y__}))
        Prelude.id
instance Data.ProtoLens.Message WakeupSourceDeactivateFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.WakeupSourceDeactivateFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \!WakeupSourceDeactivateFtraceEvent\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\DC4\n\
      \\ENQstate\CAN\STX \SOH(\EOTR\ENQstate"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'name")) ::
              Data.ProtoLens.FieldDescriptor WakeupSourceDeactivateFtraceEvent
        state__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'state")) ::
              Data.ProtoLens.FieldDescriptor WakeupSourceDeactivateFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, state__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WakeupSourceDeactivateFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_WakeupSourceDeactivateFtraceEvent'_unknownFields = y__})
  defMessage
    = WakeupSourceDeactivateFtraceEvent'_constructor
        {_WakeupSourceDeactivateFtraceEvent'name = Prelude.Nothing,
         _WakeupSourceDeactivateFtraceEvent'state = Prelude.Nothing,
         _WakeupSourceDeactivateFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WakeupSourceDeactivateFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser WakeupSourceDeactivateFtraceEvent
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
                        10
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
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "state"
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
          "WakeupSourceDeactivateFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'name") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
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
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData WakeupSourceDeactivateFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WakeupSourceDeactivateFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_WakeupSourceDeactivateFtraceEvent'name x__)
                (Control.DeepSeq.deepseq
                   (_WakeupSourceDeactivateFtraceEvent'state x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \(protos/perfetto/trace/ftrace/power.proto\DC2\SIperfetto.protos\"F\n\
    \\ETBCpuFrequencyFtraceEvent\DC2\DC4\n\
    \\ENQstate\CAN\SOH \SOH(\rR\ENQstate\DC2\NAK\n\
    \\ACKcpu_id\CAN\STX \SOH(\rR\ENQcpuId\"l\n\
    \\GSCpuFrequencyLimitsFtraceEvent\DC2\EM\n\
    \\bmin_freq\CAN\SOH \SOH(\rR\aminFreq\DC2\EM\n\
    \\bmax_freq\CAN\STX \SOH(\rR\amaxFreq\DC2\NAK\n\
    \\ACKcpu_id\CAN\ETX \SOH(\rR\ENQcpuId\"A\n\
    \\DC2CpuIdleFtraceEvent\DC2\DC4\n\
    \\ENQstate\CAN\SOH \SOH(\rR\ENQstate\DC2\NAK\n\
    \\ACKcpu_id\CAN\STX \SOH(\rR\ENQcpuId\"Y\n\
    \\SYNClockEnableFtraceEvent\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\DC4\n\
    \\ENQstate\CAN\STX \SOH(\EOTR\ENQstate\DC2\NAK\n\
    \\ACKcpu_id\CAN\ETX \SOH(\EOTR\ENQcpuId\"Z\n\
    \\ETBClockDisableFtraceEvent\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\DC4\n\
    \\ENQstate\CAN\STX \SOH(\EOTR\ENQstate\DC2\NAK\n\
    \\ACKcpu_id\CAN\ETX \SOH(\EOTR\ENQcpuId\"Z\n\
    \\ETBClockSetRateFtraceEvent\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\DC4\n\
    \\ENQstate\CAN\STX \SOH(\EOTR\ENQstate\DC2\NAK\n\
    \\ACKcpu_id\CAN\ETX \SOH(\EOTR\ENQcpuId\"Z\n\
    \\CANSuspendResumeFtraceEvent\DC2\SYN\n\
    \\ACKaction\CAN\SOH \SOH(\tR\ACKaction\DC2\DLE\n\
    \\ETXval\CAN\STX \SOH(\ENQR\ETXval\DC2\DC4\n\
    \\ENQstart\CAN\ETX \SOH(\rR\ENQstart\"F\n\
    \\ETBGpuFrequencyFtraceEvent\DC2\NAK\n\
    \\ACKgpu_id\CAN\SOH \SOH(\rR\ENQgpuId\DC2\DC4\n\
    \\ENQstate\CAN\STX \SOH(\rR\ENQstate\"K\n\
    \\USWakeupSourceActivateFtraceEvent\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\DC4\n\
    \\ENQstate\CAN\STX \SOH(\EOTR\ENQstate\"M\n\
    \!WakeupSourceDeactivateFtraceEvent\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\DC4\n\
    \\ENQstate\CAN\STX \SOH(\EOTR\ENQstateJ\162\DLE\n\
    \\ACK\DC2\EOT\EOT\NUL3\SOH\n\
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
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b\US\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\b\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\b\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\b\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\b\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\b\SUB\ESC\n\
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
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\v\NUL\SI\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\v\b%\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\f\STX\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\f\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\f\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\f\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\f\GS\RS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\r\STX\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX\r\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\r\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\r\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\r\GS\RS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX\SO\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\EOT\DC2\ETX\SO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX\SO\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX\SO\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX\SO\ESC\FS\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT\DLE\NUL\DC3\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\DLE\b\SUB\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\DC1\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETX\DC1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX\DC1\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\DC1\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\DC1\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX\DC2\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETX\DC2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX\DC2\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX\DC2\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX\DC2\ESC\FS\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOT\DC4\NUL\CAN\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX\DC4\b\RS\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX\NAK\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETX\NAK\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX\NAK\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX\NAK\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX\NAK\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX\SYN\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\EOT\DC2\ETX\SYN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETX\SYN\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX\SYN\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX\SYN\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETX\ETB\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\EOT\DC2\ETX\ETB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\ETX\ETB\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETX\ETB\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETX\ETB\ESC\FS\n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOT\EM\NUL\GS\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX\EM\b\US\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX\SUB\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\EOT\DC2\ETX\SUB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX\SUB\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX\SUB\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX\SUB\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETX\ESC\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\EOT\DC2\ETX\ESC\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETX\ESC\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETX\ESC\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETX\ESC\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETX\FS\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\EOT\DC2\ETX\FS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ENQ\DC2\ETX\FS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETX\FS\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETX\FS\ESC\FS\n\
    \\n\
    \\n\
    \\STX\EOT\ENQ\DC2\EOT\RS\NUL\"\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX\RS\b\US\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETX\US\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\ETX\US\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETX\US\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX\US\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX\US\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ETX \STX\FS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\EOT\DC2\ETX \STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\ETX \v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETX \DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETX \SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\ETX!\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\EOT\DC2\ETX!\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ENQ\DC2\ETX!\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\ETX!\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\ETX!\ESC\FS\n\
    \\n\
    \\n\
    \\STX\EOT\ACK\DC2\EOT#\NUL'\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETX#\b \n\
    \\v\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETX$\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\EOT\DC2\ETX$\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETX$\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETX$\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETX$\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\ETX%\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\EOT\DC2\ETX%\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\ETX%\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\ETX%\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\ETX%\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\STX\DC2\ETX&\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\EOT\DC2\ETX&\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ENQ\DC2\ETX&\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\SOH\DC2\ETX&\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ETX\DC2\ETX&\SUB\ESC\n\
    \\n\
    \\n\
    \\STX\EOT\a\DC2\EOT(\NUL+\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETX(\b\US\n\
    \\v\n\
    \\EOT\EOT\a\STX\NUL\DC2\ETX)\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\EOT\DC2\ETX)\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ENQ\DC2\ETX)\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\ETX)\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\ETX)\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\a\STX\SOH\DC2\ETX*\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\EOT\DC2\ETX*\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ENQ\DC2\ETX*\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\ETX*\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\ETX*\SUB\ESC\n\
    \\n\
    \\n\
    \\STX\EOT\b\DC2\EOT,\NUL/\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\b\SOH\DC2\ETX,\b'\n\
    \\v\n\
    \\EOT\EOT\b\STX\NUL\DC2\ETX-\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\EOT\DC2\ETX-\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\ETX-\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\ETX-\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\ETX-\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\b\STX\SOH\DC2\ETX.\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\EOT\DC2\ETX.\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ENQ\DC2\ETX.\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\ETX.\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\ETX.\SUB\ESC\n\
    \\n\
    \\n\
    \\STX\EOT\t\DC2\EOT0\NUL3\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\t\SOH\DC2\ETX0\b)\n\
    \\v\n\
    \\EOT\EOT\t\STX\NUL\DC2\ETX1\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\EOT\DC2\ETX1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ENQ\DC2\ETX1\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\ETX1\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\ETX1\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\t\STX\SOH\DC2\ETX2\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\EOT\DC2\ETX2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\ENQ\DC2\ETX2\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\SOH\DC2\ETX2\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\ETX\DC2\ETX2\SUB\ESC"