{- This file was auto-generated from protos/perfetto/trace/ftrace/kvm.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Kvm (
        KvmAccessFaultFtraceEvent(), KvmAckIrqFtraceEvent(),
        KvmAgeHvaFtraceEvent(), KvmAgePageFtraceEvent(),
        KvmArmClearDebugFtraceEvent(), KvmArmSetDreg32FtraceEvent(),
        KvmArmSetRegsetFtraceEvent(), KvmArmSetupDebugFtraceEvent(),
        KvmEntryFtraceEvent(), KvmExitFtraceEvent(), KvmFpuFtraceEvent(),
        KvmGetTimerMapFtraceEvent(), KvmGuestFaultFtraceEvent(),
        KvmHandleSysRegFtraceEvent(), KvmHvcArm64FtraceEvent(),
        KvmIrqLineFtraceEvent(), KvmMmioEmulateFtraceEvent(),
        KvmMmioFtraceEvent(), KvmSetGuestDebugFtraceEvent(),
        KvmSetIrqFtraceEvent(), KvmSetSpteHvaFtraceEvent(),
        KvmSetWayFlushFtraceEvent(), KvmSysAccessFtraceEvent(),
        KvmTestAgeHvaFtraceEvent(), KvmTimerEmulateFtraceEvent(),
        KvmTimerHrtimerExpireFtraceEvent(),
        KvmTimerRestoreStateFtraceEvent(), KvmTimerSaveStateFtraceEvent(),
        KvmTimerUpdateIrqFtraceEvent(), KvmToggleCacheFtraceEvent(),
        KvmUnmapHvaRangeFtraceEvent(), KvmUserspaceExitFtraceEvent(),
        KvmVcpuWakeupFtraceEvent(), KvmWfxArm64FtraceEvent(),
        TrapRegFtraceEvent(), VgicUpdateIrqPendingFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.ipa' @:: Lens' KvmAccessFaultFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'ipa' @:: Lens' KvmAccessFaultFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data KvmAccessFaultFtraceEvent
  = KvmAccessFaultFtraceEvent'_constructor {_KvmAccessFaultFtraceEvent'ipa :: !(Prelude.Maybe Data.Word.Word64),
                                            _KvmAccessFaultFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KvmAccessFaultFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KvmAccessFaultFtraceEvent "ipa" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmAccessFaultFtraceEvent'ipa
           (\ x__ y__ -> x__ {_KvmAccessFaultFtraceEvent'ipa = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmAccessFaultFtraceEvent "maybe'ipa" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmAccessFaultFtraceEvent'ipa
           (\ x__ y__ -> x__ {_KvmAccessFaultFtraceEvent'ipa = y__}))
        Prelude.id
instance Data.ProtoLens.Message KvmAccessFaultFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.KvmAccessFaultFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\EMKvmAccessFaultFtraceEvent\DC2\DLE\n\
      \\ETXipa\CAN\SOH \SOH(\EOTR\ETXipa"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        ipa__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ipa"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ipa")) ::
              Data.ProtoLens.FieldDescriptor KvmAccessFaultFtraceEvent
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, ipa__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KvmAccessFaultFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_KvmAccessFaultFtraceEvent'_unknownFields = y__})
  defMessage
    = KvmAccessFaultFtraceEvent'_constructor
        {_KvmAccessFaultFtraceEvent'ipa = Prelude.Nothing,
         _KvmAccessFaultFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KvmAccessFaultFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser KvmAccessFaultFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ipa"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ipa") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "KvmAccessFaultFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ipa") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData KvmAccessFaultFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KvmAccessFaultFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq (_KvmAccessFaultFtraceEvent'ipa x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.irqchip' @:: Lens' KvmAckIrqFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'irqchip' @:: Lens' KvmAckIrqFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.pin' @:: Lens' KvmAckIrqFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'pin' @:: Lens' KvmAckIrqFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data KvmAckIrqFtraceEvent
  = KvmAckIrqFtraceEvent'_constructor {_KvmAckIrqFtraceEvent'irqchip :: !(Prelude.Maybe Data.Word.Word32),
                                       _KvmAckIrqFtraceEvent'pin :: !(Prelude.Maybe Data.Word.Word32),
                                       _KvmAckIrqFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KvmAckIrqFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KvmAckIrqFtraceEvent "irqchip" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmAckIrqFtraceEvent'irqchip
           (\ x__ y__ -> x__ {_KvmAckIrqFtraceEvent'irqchip = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmAckIrqFtraceEvent "maybe'irqchip" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmAckIrqFtraceEvent'irqchip
           (\ x__ y__ -> x__ {_KvmAckIrqFtraceEvent'irqchip = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmAckIrqFtraceEvent "pin" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmAckIrqFtraceEvent'pin
           (\ x__ y__ -> x__ {_KvmAckIrqFtraceEvent'pin = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmAckIrqFtraceEvent "maybe'pin" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmAckIrqFtraceEvent'pin
           (\ x__ y__ -> x__ {_KvmAckIrqFtraceEvent'pin = y__}))
        Prelude.id
instance Data.ProtoLens.Message KvmAckIrqFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.KvmAckIrqFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\DC4KvmAckIrqFtraceEvent\DC2\CAN\n\
      \\airqchip\CAN\SOH \SOH(\rR\airqchip\DC2\DLE\n\
      \\ETXpin\CAN\STX \SOH(\rR\ETXpin"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        irqchip__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "irqchip"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'irqchip")) ::
              Data.ProtoLens.FieldDescriptor KvmAckIrqFtraceEvent
        pin__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pin"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pin")) ::
              Data.ProtoLens.FieldDescriptor KvmAckIrqFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, irqchip__field_descriptor),
           (Data.ProtoLens.Tag 2, pin__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KvmAckIrqFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_KvmAckIrqFtraceEvent'_unknownFields = y__})
  defMessage
    = KvmAckIrqFtraceEvent'_constructor
        {_KvmAckIrqFtraceEvent'irqchip = Prelude.Nothing,
         _KvmAckIrqFtraceEvent'pin = Prelude.Nothing,
         _KvmAckIrqFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KvmAckIrqFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser KvmAckIrqFtraceEvent
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
                                       "irqchip"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"irqchip") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "pin"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pin") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "KvmAckIrqFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'irqchip") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pin") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData KvmAckIrqFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KvmAckIrqFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_KvmAckIrqFtraceEvent'irqchip x__)
                (Control.DeepSeq.deepseq (_KvmAckIrqFtraceEvent'pin x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.end' @:: Lens' KvmAgeHvaFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'end' @:: Lens' KvmAgeHvaFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.start' @:: Lens' KvmAgeHvaFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'start' @:: Lens' KvmAgeHvaFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data KvmAgeHvaFtraceEvent
  = KvmAgeHvaFtraceEvent'_constructor {_KvmAgeHvaFtraceEvent'end :: !(Prelude.Maybe Data.Word.Word64),
                                       _KvmAgeHvaFtraceEvent'start :: !(Prelude.Maybe Data.Word.Word64),
                                       _KvmAgeHvaFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KvmAgeHvaFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KvmAgeHvaFtraceEvent "end" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmAgeHvaFtraceEvent'end
           (\ x__ y__ -> x__ {_KvmAgeHvaFtraceEvent'end = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmAgeHvaFtraceEvent "maybe'end" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmAgeHvaFtraceEvent'end
           (\ x__ y__ -> x__ {_KvmAgeHvaFtraceEvent'end = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmAgeHvaFtraceEvent "start" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmAgeHvaFtraceEvent'start
           (\ x__ y__ -> x__ {_KvmAgeHvaFtraceEvent'start = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmAgeHvaFtraceEvent "maybe'start" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmAgeHvaFtraceEvent'start
           (\ x__ y__ -> x__ {_KvmAgeHvaFtraceEvent'start = y__}))
        Prelude.id
instance Data.ProtoLens.Message KvmAgeHvaFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.KvmAgeHvaFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\DC4KvmAgeHvaFtraceEvent\DC2\DLE\n\
      \\ETXend\CAN\SOH \SOH(\EOTR\ETXend\DC2\DC4\n\
      \\ENQstart\CAN\STX \SOH(\EOTR\ENQstart"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        end__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "end"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'end")) ::
              Data.ProtoLens.FieldDescriptor KvmAgeHvaFtraceEvent
        start__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'start")) ::
              Data.ProtoLens.FieldDescriptor KvmAgeHvaFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, end__field_descriptor),
           (Data.ProtoLens.Tag 2, start__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KvmAgeHvaFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_KvmAgeHvaFtraceEvent'_unknownFields = y__})
  defMessage
    = KvmAgeHvaFtraceEvent'_constructor
        {_KvmAgeHvaFtraceEvent'end = Prelude.Nothing,
         _KvmAgeHvaFtraceEvent'start = Prelude.Nothing,
         _KvmAgeHvaFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KvmAgeHvaFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser KvmAgeHvaFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "end"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"end") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "start"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"start") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "KvmAgeHvaFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'end") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'start") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData KvmAgeHvaFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KvmAgeHvaFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_KvmAgeHvaFtraceEvent'end x__)
                (Control.DeepSeq.deepseq (_KvmAgeHvaFtraceEvent'start x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.gfn' @:: Lens' KvmAgePageFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'gfn' @:: Lens' KvmAgePageFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.hva' @:: Lens' KvmAgePageFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'hva' @:: Lens' KvmAgePageFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.level' @:: Lens' KvmAgePageFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'level' @:: Lens' KvmAgePageFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.referenced' @:: Lens' KvmAgePageFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'referenced' @:: Lens' KvmAgePageFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data KvmAgePageFtraceEvent
  = KvmAgePageFtraceEvent'_constructor {_KvmAgePageFtraceEvent'gfn :: !(Prelude.Maybe Data.Word.Word64),
                                        _KvmAgePageFtraceEvent'hva :: !(Prelude.Maybe Data.Word.Word64),
                                        _KvmAgePageFtraceEvent'level :: !(Prelude.Maybe Data.Word.Word32),
                                        _KvmAgePageFtraceEvent'referenced :: !(Prelude.Maybe Data.Word.Word32),
                                        _KvmAgePageFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KvmAgePageFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KvmAgePageFtraceEvent "gfn" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmAgePageFtraceEvent'gfn
           (\ x__ y__ -> x__ {_KvmAgePageFtraceEvent'gfn = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmAgePageFtraceEvent "maybe'gfn" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmAgePageFtraceEvent'gfn
           (\ x__ y__ -> x__ {_KvmAgePageFtraceEvent'gfn = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmAgePageFtraceEvent "hva" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmAgePageFtraceEvent'hva
           (\ x__ y__ -> x__ {_KvmAgePageFtraceEvent'hva = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmAgePageFtraceEvent "maybe'hva" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmAgePageFtraceEvent'hva
           (\ x__ y__ -> x__ {_KvmAgePageFtraceEvent'hva = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmAgePageFtraceEvent "level" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmAgePageFtraceEvent'level
           (\ x__ y__ -> x__ {_KvmAgePageFtraceEvent'level = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmAgePageFtraceEvent "maybe'level" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmAgePageFtraceEvent'level
           (\ x__ y__ -> x__ {_KvmAgePageFtraceEvent'level = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmAgePageFtraceEvent "referenced" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmAgePageFtraceEvent'referenced
           (\ x__ y__ -> x__ {_KvmAgePageFtraceEvent'referenced = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmAgePageFtraceEvent "maybe'referenced" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmAgePageFtraceEvent'referenced
           (\ x__ y__ -> x__ {_KvmAgePageFtraceEvent'referenced = y__}))
        Prelude.id
instance Data.ProtoLens.Message KvmAgePageFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.KvmAgePageFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\NAKKvmAgePageFtraceEvent\DC2\DLE\n\
      \\ETXgfn\CAN\SOH \SOH(\EOTR\ETXgfn\DC2\DLE\n\
      \\ETXhva\CAN\STX \SOH(\EOTR\ETXhva\DC2\DC4\n\
      \\ENQlevel\CAN\ETX \SOH(\rR\ENQlevel\DC2\RS\n\
      \\n\
      \referenced\CAN\EOT \SOH(\rR\n\
      \referenced"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        gfn__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gfn"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gfn")) ::
              Data.ProtoLens.FieldDescriptor KvmAgePageFtraceEvent
        hva__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "hva"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'hva")) ::
              Data.ProtoLens.FieldDescriptor KvmAgePageFtraceEvent
        level__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "level"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'level")) ::
              Data.ProtoLens.FieldDescriptor KvmAgePageFtraceEvent
        referenced__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "referenced"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'referenced")) ::
              Data.ProtoLens.FieldDescriptor KvmAgePageFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, gfn__field_descriptor),
           (Data.ProtoLens.Tag 2, hva__field_descriptor),
           (Data.ProtoLens.Tag 3, level__field_descriptor),
           (Data.ProtoLens.Tag 4, referenced__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KvmAgePageFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_KvmAgePageFtraceEvent'_unknownFields = y__})
  defMessage
    = KvmAgePageFtraceEvent'_constructor
        {_KvmAgePageFtraceEvent'gfn = Prelude.Nothing,
         _KvmAgePageFtraceEvent'hva = Prelude.Nothing,
         _KvmAgePageFtraceEvent'level = Prelude.Nothing,
         _KvmAgePageFtraceEvent'referenced = Prelude.Nothing,
         _KvmAgePageFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KvmAgePageFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser KvmAgePageFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "gfn"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"gfn") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "hva"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"hva") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "level"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"level") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "referenced"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"referenced") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "KvmAgePageFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gfn") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'hva") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'level") _x
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
                             (Data.ProtoLens.Field.field @"maybe'referenced") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData KvmAgePageFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KvmAgePageFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_KvmAgePageFtraceEvent'gfn x__)
                (Control.DeepSeq.deepseq
                   (_KvmAgePageFtraceEvent'hva x__)
                   (Control.DeepSeq.deepseq
                      (_KvmAgePageFtraceEvent'level x__)
                      (Control.DeepSeq.deepseq
                         (_KvmAgePageFtraceEvent'referenced x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.guestDebug' @:: Lens' KvmArmClearDebugFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'guestDebug' @:: Lens' KvmArmClearDebugFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data KvmArmClearDebugFtraceEvent
  = KvmArmClearDebugFtraceEvent'_constructor {_KvmArmClearDebugFtraceEvent'guestDebug :: !(Prelude.Maybe Data.Word.Word32),
                                              _KvmArmClearDebugFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KvmArmClearDebugFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KvmArmClearDebugFtraceEvent "guestDebug" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmArmClearDebugFtraceEvent'guestDebug
           (\ x__ y__ -> x__ {_KvmArmClearDebugFtraceEvent'guestDebug = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmArmClearDebugFtraceEvent "maybe'guestDebug" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmArmClearDebugFtraceEvent'guestDebug
           (\ x__ y__ -> x__ {_KvmArmClearDebugFtraceEvent'guestDebug = y__}))
        Prelude.id
instance Data.ProtoLens.Message KvmArmClearDebugFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.KvmArmClearDebugFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ESCKvmArmClearDebugFtraceEvent\DC2\US\n\
      \\vguest_debug\CAN\SOH \SOH(\rR\n\
      \guestDebug"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        guestDebug__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "guest_debug"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'guestDebug")) ::
              Data.ProtoLens.FieldDescriptor KvmArmClearDebugFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, guestDebug__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KvmArmClearDebugFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_KvmArmClearDebugFtraceEvent'_unknownFields = y__})
  defMessage
    = KvmArmClearDebugFtraceEvent'_constructor
        {_KvmArmClearDebugFtraceEvent'guestDebug = Prelude.Nothing,
         _KvmArmClearDebugFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KvmArmClearDebugFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser KvmArmClearDebugFtraceEvent
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
                                       "guest_debug"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"guestDebug") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "KvmArmClearDebugFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'guestDebug") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData KvmArmClearDebugFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KvmArmClearDebugFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_KvmArmClearDebugFtraceEvent'guestDebug x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.name' @:: Lens' KvmArmSetDreg32FtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'name' @:: Lens' KvmArmSetDreg32FtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.value' @:: Lens' KvmArmSetDreg32FtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'value' @:: Lens' KvmArmSetDreg32FtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data KvmArmSetDreg32FtraceEvent
  = KvmArmSetDreg32FtraceEvent'_constructor {_KvmArmSetDreg32FtraceEvent'name :: !(Prelude.Maybe Data.Text.Text),
                                             _KvmArmSetDreg32FtraceEvent'value :: !(Prelude.Maybe Data.Word.Word32),
                                             _KvmArmSetDreg32FtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KvmArmSetDreg32FtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KvmArmSetDreg32FtraceEvent "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmArmSetDreg32FtraceEvent'name
           (\ x__ y__ -> x__ {_KvmArmSetDreg32FtraceEvent'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmArmSetDreg32FtraceEvent "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmArmSetDreg32FtraceEvent'name
           (\ x__ y__ -> x__ {_KvmArmSetDreg32FtraceEvent'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmArmSetDreg32FtraceEvent "value" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmArmSetDreg32FtraceEvent'value
           (\ x__ y__ -> x__ {_KvmArmSetDreg32FtraceEvent'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmArmSetDreg32FtraceEvent "maybe'value" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmArmSetDreg32FtraceEvent'value
           (\ x__ y__ -> x__ {_KvmArmSetDreg32FtraceEvent'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message KvmArmSetDreg32FtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.KvmArmSetDreg32FtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SUBKvmArmSetDreg32FtraceEvent\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\rR\ENQvalue"
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
              Data.ProtoLens.FieldDescriptor KvmArmSetDreg32FtraceEvent
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor KvmArmSetDreg32FtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KvmArmSetDreg32FtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_KvmArmSetDreg32FtraceEvent'_unknownFields = y__})
  defMessage
    = KvmArmSetDreg32FtraceEvent'_constructor
        {_KvmArmSetDreg32FtraceEvent'name = Prelude.Nothing,
         _KvmArmSetDreg32FtraceEvent'value = Prelude.Nothing,
         _KvmArmSetDreg32FtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KvmArmSetDreg32FtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser KvmArmSetDreg32FtraceEvent
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
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "KvmArmSetDreg32FtraceEvent"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData KvmArmSetDreg32FtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KvmArmSetDreg32FtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_KvmArmSetDreg32FtraceEvent'name x__)
                (Control.DeepSeq.deepseq
                   (_KvmArmSetDreg32FtraceEvent'value x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.len' @:: Lens' KvmArmSetRegsetFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'len' @:: Lens' KvmArmSetRegsetFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.name' @:: Lens' KvmArmSetRegsetFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'name' @:: Lens' KvmArmSetRegsetFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data KvmArmSetRegsetFtraceEvent
  = KvmArmSetRegsetFtraceEvent'_constructor {_KvmArmSetRegsetFtraceEvent'len :: !(Prelude.Maybe Data.Int.Int32),
                                             _KvmArmSetRegsetFtraceEvent'name :: !(Prelude.Maybe Data.Text.Text),
                                             _KvmArmSetRegsetFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KvmArmSetRegsetFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KvmArmSetRegsetFtraceEvent "len" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmArmSetRegsetFtraceEvent'len
           (\ x__ y__ -> x__ {_KvmArmSetRegsetFtraceEvent'len = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmArmSetRegsetFtraceEvent "maybe'len" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmArmSetRegsetFtraceEvent'len
           (\ x__ y__ -> x__ {_KvmArmSetRegsetFtraceEvent'len = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmArmSetRegsetFtraceEvent "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmArmSetRegsetFtraceEvent'name
           (\ x__ y__ -> x__ {_KvmArmSetRegsetFtraceEvent'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmArmSetRegsetFtraceEvent "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmArmSetRegsetFtraceEvent'name
           (\ x__ y__ -> x__ {_KvmArmSetRegsetFtraceEvent'name = y__}))
        Prelude.id
instance Data.ProtoLens.Message KvmArmSetRegsetFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.KvmArmSetRegsetFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SUBKvmArmSetRegsetFtraceEvent\DC2\DLE\n\
      \\ETXlen\CAN\SOH \SOH(\ENQR\ETXlen\DC2\DC2\n\
      \\EOTname\CAN\STX \SOH(\tR\EOTname"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        len__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "len"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'len")) ::
              Data.ProtoLens.FieldDescriptor KvmArmSetRegsetFtraceEvent
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'name")) ::
              Data.ProtoLens.FieldDescriptor KvmArmSetRegsetFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, len__field_descriptor),
           (Data.ProtoLens.Tag 2, name__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KvmArmSetRegsetFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_KvmArmSetRegsetFtraceEvent'_unknownFields = y__})
  defMessage
    = KvmArmSetRegsetFtraceEvent'_constructor
        {_KvmArmSetRegsetFtraceEvent'len = Prelude.Nothing,
         _KvmArmSetRegsetFtraceEvent'name = Prelude.Nothing,
         _KvmArmSetRegsetFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KvmArmSetRegsetFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser KvmArmSetRegsetFtraceEvent
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
                                       "len"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"len") y x)
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
          (do loop Data.ProtoLens.defMessage) "KvmArmSetRegsetFtraceEvent"
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
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
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
instance Control.DeepSeq.NFData KvmArmSetRegsetFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KvmArmSetRegsetFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_KvmArmSetRegsetFtraceEvent'len x__)
                (Control.DeepSeq.deepseq
                   (_KvmArmSetRegsetFtraceEvent'name x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.guestDebug' @:: Lens' KvmArmSetupDebugFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'guestDebug' @:: Lens' KvmArmSetupDebugFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.vcpu' @:: Lens' KvmArmSetupDebugFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'vcpu' @:: Lens' KvmArmSetupDebugFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data KvmArmSetupDebugFtraceEvent
  = KvmArmSetupDebugFtraceEvent'_constructor {_KvmArmSetupDebugFtraceEvent'guestDebug :: !(Prelude.Maybe Data.Word.Word32),
                                              _KvmArmSetupDebugFtraceEvent'vcpu :: !(Prelude.Maybe Data.Word.Word64),
                                              _KvmArmSetupDebugFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KvmArmSetupDebugFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KvmArmSetupDebugFtraceEvent "guestDebug" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmArmSetupDebugFtraceEvent'guestDebug
           (\ x__ y__ -> x__ {_KvmArmSetupDebugFtraceEvent'guestDebug = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmArmSetupDebugFtraceEvent "maybe'guestDebug" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmArmSetupDebugFtraceEvent'guestDebug
           (\ x__ y__ -> x__ {_KvmArmSetupDebugFtraceEvent'guestDebug = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmArmSetupDebugFtraceEvent "vcpu" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmArmSetupDebugFtraceEvent'vcpu
           (\ x__ y__ -> x__ {_KvmArmSetupDebugFtraceEvent'vcpu = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmArmSetupDebugFtraceEvent "maybe'vcpu" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmArmSetupDebugFtraceEvent'vcpu
           (\ x__ y__ -> x__ {_KvmArmSetupDebugFtraceEvent'vcpu = y__}))
        Prelude.id
instance Data.ProtoLens.Message KvmArmSetupDebugFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.KvmArmSetupDebugFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ESCKvmArmSetupDebugFtraceEvent\DC2\US\n\
      \\vguest_debug\CAN\SOH \SOH(\rR\n\
      \guestDebug\DC2\DC2\n\
      \\EOTvcpu\CAN\STX \SOH(\EOTR\EOTvcpu"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        guestDebug__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "guest_debug"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'guestDebug")) ::
              Data.ProtoLens.FieldDescriptor KvmArmSetupDebugFtraceEvent
        vcpu__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vcpu"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'vcpu")) ::
              Data.ProtoLens.FieldDescriptor KvmArmSetupDebugFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, guestDebug__field_descriptor),
           (Data.ProtoLens.Tag 2, vcpu__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KvmArmSetupDebugFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_KvmArmSetupDebugFtraceEvent'_unknownFields = y__})
  defMessage
    = KvmArmSetupDebugFtraceEvent'_constructor
        {_KvmArmSetupDebugFtraceEvent'guestDebug = Prelude.Nothing,
         _KvmArmSetupDebugFtraceEvent'vcpu = Prelude.Nothing,
         _KvmArmSetupDebugFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KvmArmSetupDebugFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser KvmArmSetupDebugFtraceEvent
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
                                       "guest_debug"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"guestDebug") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "vcpu"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"vcpu") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "KvmArmSetupDebugFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'guestDebug") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'vcpu") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData KvmArmSetupDebugFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KvmArmSetupDebugFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_KvmArmSetupDebugFtraceEvent'guestDebug x__)
                (Control.DeepSeq.deepseq
                   (_KvmArmSetupDebugFtraceEvent'vcpu x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.vcpuPc' @:: Lens' KvmEntryFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'vcpuPc' @:: Lens' KvmEntryFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data KvmEntryFtraceEvent
  = KvmEntryFtraceEvent'_constructor {_KvmEntryFtraceEvent'vcpuPc :: !(Prelude.Maybe Data.Word.Word64),
                                      _KvmEntryFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KvmEntryFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KvmEntryFtraceEvent "vcpuPc" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmEntryFtraceEvent'vcpuPc
           (\ x__ y__ -> x__ {_KvmEntryFtraceEvent'vcpuPc = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmEntryFtraceEvent "maybe'vcpuPc" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmEntryFtraceEvent'vcpuPc
           (\ x__ y__ -> x__ {_KvmEntryFtraceEvent'vcpuPc = y__}))
        Prelude.id
instance Data.ProtoLens.Message KvmEntryFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.KvmEntryFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\DC3KvmEntryFtraceEvent\DC2\ETB\n\
      \\avcpu_pc\CAN\SOH \SOH(\EOTR\ACKvcpuPc"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        vcpuPc__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vcpu_pc"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'vcpuPc")) ::
              Data.ProtoLens.FieldDescriptor KvmEntryFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, vcpuPc__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KvmEntryFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_KvmEntryFtraceEvent'_unknownFields = y__})
  defMessage
    = KvmEntryFtraceEvent'_constructor
        {_KvmEntryFtraceEvent'vcpuPc = Prelude.Nothing,
         _KvmEntryFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KvmEntryFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser KvmEntryFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "vcpu_pc"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"vcpuPc") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "KvmEntryFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'vcpuPc") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData KvmEntryFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KvmEntryFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq (_KvmEntryFtraceEvent'vcpuPc x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.esrEc' @:: Lens' KvmExitFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'esrEc' @:: Lens' KvmExitFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.ret' @:: Lens' KvmExitFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'ret' @:: Lens' KvmExitFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.vcpuPc' @:: Lens' KvmExitFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'vcpuPc' @:: Lens' KvmExitFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data KvmExitFtraceEvent
  = KvmExitFtraceEvent'_constructor {_KvmExitFtraceEvent'esrEc :: !(Prelude.Maybe Data.Word.Word32),
                                     _KvmExitFtraceEvent'ret :: !(Prelude.Maybe Data.Int.Int32),
                                     _KvmExitFtraceEvent'vcpuPc :: !(Prelude.Maybe Data.Word.Word64),
                                     _KvmExitFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KvmExitFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KvmExitFtraceEvent "esrEc" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmExitFtraceEvent'esrEc
           (\ x__ y__ -> x__ {_KvmExitFtraceEvent'esrEc = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmExitFtraceEvent "maybe'esrEc" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmExitFtraceEvent'esrEc
           (\ x__ y__ -> x__ {_KvmExitFtraceEvent'esrEc = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmExitFtraceEvent "ret" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmExitFtraceEvent'ret
           (\ x__ y__ -> x__ {_KvmExitFtraceEvent'ret = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmExitFtraceEvent "maybe'ret" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmExitFtraceEvent'ret
           (\ x__ y__ -> x__ {_KvmExitFtraceEvent'ret = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmExitFtraceEvent "vcpuPc" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmExitFtraceEvent'vcpuPc
           (\ x__ y__ -> x__ {_KvmExitFtraceEvent'vcpuPc = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmExitFtraceEvent "maybe'vcpuPc" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmExitFtraceEvent'vcpuPc
           (\ x__ y__ -> x__ {_KvmExitFtraceEvent'vcpuPc = y__}))
        Prelude.id
instance Data.ProtoLens.Message KvmExitFtraceEvent where
  messageName _ = Data.Text.pack "perfetto.protos.KvmExitFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\DC2KvmExitFtraceEvent\DC2\NAK\n\
      \\ACKesr_ec\CAN\SOH \SOH(\rR\ENQesrEc\DC2\DLE\n\
      \\ETXret\CAN\STX \SOH(\ENQR\ETXret\DC2\ETB\n\
      \\avcpu_pc\CAN\ETX \SOH(\EOTR\ACKvcpuPc"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        esrEc__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "esr_ec"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'esrEc")) ::
              Data.ProtoLens.FieldDescriptor KvmExitFtraceEvent
        ret__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ret"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ret")) ::
              Data.ProtoLens.FieldDescriptor KvmExitFtraceEvent
        vcpuPc__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vcpu_pc"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'vcpuPc")) ::
              Data.ProtoLens.FieldDescriptor KvmExitFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, esrEc__field_descriptor),
           (Data.ProtoLens.Tag 2, ret__field_descriptor),
           (Data.ProtoLens.Tag 3, vcpuPc__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KvmExitFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_KvmExitFtraceEvent'_unknownFields = y__})
  defMessage
    = KvmExitFtraceEvent'_constructor
        {_KvmExitFtraceEvent'esrEc = Prelude.Nothing,
         _KvmExitFtraceEvent'ret = Prelude.Nothing,
         _KvmExitFtraceEvent'vcpuPc = Prelude.Nothing,
         _KvmExitFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KvmExitFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser KvmExitFtraceEvent
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
                                       "esr_ec"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"esrEc") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ret"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ret") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "vcpu_pc"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"vcpuPc") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "KvmExitFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'esrEc") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
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
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'vcpuPc") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData KvmExitFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KvmExitFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_KvmExitFtraceEvent'esrEc x__)
                (Control.DeepSeq.deepseq
                   (_KvmExitFtraceEvent'ret x__)
                   (Control.DeepSeq.deepseq (_KvmExitFtraceEvent'vcpuPc x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.load' @:: Lens' KvmFpuFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'load' @:: Lens' KvmFpuFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data KvmFpuFtraceEvent
  = KvmFpuFtraceEvent'_constructor {_KvmFpuFtraceEvent'load :: !(Prelude.Maybe Data.Word.Word32),
                                    _KvmFpuFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KvmFpuFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KvmFpuFtraceEvent "load" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmFpuFtraceEvent'load
           (\ x__ y__ -> x__ {_KvmFpuFtraceEvent'load = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmFpuFtraceEvent "maybe'load" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmFpuFtraceEvent'load
           (\ x__ y__ -> x__ {_KvmFpuFtraceEvent'load = y__}))
        Prelude.id
instance Data.ProtoLens.Message KvmFpuFtraceEvent where
  messageName _ = Data.Text.pack "perfetto.protos.KvmFpuFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\DC1KvmFpuFtraceEvent\DC2\DC2\n\
      \\EOTload\CAN\SOH \SOH(\rR\EOTload"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        load__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "load"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'load")) ::
              Data.ProtoLens.FieldDescriptor KvmFpuFtraceEvent
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, load__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KvmFpuFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_KvmFpuFtraceEvent'_unknownFields = y__})
  defMessage
    = KvmFpuFtraceEvent'_constructor
        {_KvmFpuFtraceEvent'load = Prelude.Nothing,
         _KvmFpuFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KvmFpuFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser KvmFpuFtraceEvent
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
                                       "load"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"load") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "KvmFpuFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'load") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData KvmFpuFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KvmFpuFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq (_KvmFpuFtraceEvent'load x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.directPtimer' @:: Lens' KvmGetTimerMapFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'directPtimer' @:: Lens' KvmGetTimerMapFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.directVtimer' @:: Lens' KvmGetTimerMapFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'directVtimer' @:: Lens' KvmGetTimerMapFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.emulPtimer' @:: Lens' KvmGetTimerMapFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'emulPtimer' @:: Lens' KvmGetTimerMapFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.vcpuId' @:: Lens' KvmGetTimerMapFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'vcpuId' @:: Lens' KvmGetTimerMapFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data KvmGetTimerMapFtraceEvent
  = KvmGetTimerMapFtraceEvent'_constructor {_KvmGetTimerMapFtraceEvent'directPtimer :: !(Prelude.Maybe Data.Int.Int32),
                                            _KvmGetTimerMapFtraceEvent'directVtimer :: !(Prelude.Maybe Data.Int.Int32),
                                            _KvmGetTimerMapFtraceEvent'emulPtimer :: !(Prelude.Maybe Data.Int.Int32),
                                            _KvmGetTimerMapFtraceEvent'vcpuId :: !(Prelude.Maybe Data.Word.Word64),
                                            _KvmGetTimerMapFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KvmGetTimerMapFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KvmGetTimerMapFtraceEvent "directPtimer" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmGetTimerMapFtraceEvent'directPtimer
           (\ x__ y__ -> x__ {_KvmGetTimerMapFtraceEvent'directPtimer = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmGetTimerMapFtraceEvent "maybe'directPtimer" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmGetTimerMapFtraceEvent'directPtimer
           (\ x__ y__ -> x__ {_KvmGetTimerMapFtraceEvent'directPtimer = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmGetTimerMapFtraceEvent "directVtimer" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmGetTimerMapFtraceEvent'directVtimer
           (\ x__ y__ -> x__ {_KvmGetTimerMapFtraceEvent'directVtimer = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmGetTimerMapFtraceEvent "maybe'directVtimer" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmGetTimerMapFtraceEvent'directVtimer
           (\ x__ y__ -> x__ {_KvmGetTimerMapFtraceEvent'directVtimer = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmGetTimerMapFtraceEvent "emulPtimer" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmGetTimerMapFtraceEvent'emulPtimer
           (\ x__ y__ -> x__ {_KvmGetTimerMapFtraceEvent'emulPtimer = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmGetTimerMapFtraceEvent "maybe'emulPtimer" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmGetTimerMapFtraceEvent'emulPtimer
           (\ x__ y__ -> x__ {_KvmGetTimerMapFtraceEvent'emulPtimer = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmGetTimerMapFtraceEvent "vcpuId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmGetTimerMapFtraceEvent'vcpuId
           (\ x__ y__ -> x__ {_KvmGetTimerMapFtraceEvent'vcpuId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmGetTimerMapFtraceEvent "maybe'vcpuId" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmGetTimerMapFtraceEvent'vcpuId
           (\ x__ y__ -> x__ {_KvmGetTimerMapFtraceEvent'vcpuId = y__}))
        Prelude.id
instance Data.ProtoLens.Message KvmGetTimerMapFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.KvmGetTimerMapFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\EMKvmGetTimerMapFtraceEvent\DC2#\n\
      \\rdirect_ptimer\CAN\SOH \SOH(\ENQR\fdirectPtimer\DC2#\n\
      \\rdirect_vtimer\CAN\STX \SOH(\ENQR\fdirectVtimer\DC2\US\n\
      \\vemul_ptimer\CAN\ETX \SOH(\ENQR\n\
      \emulPtimer\DC2\ETB\n\
      \\avcpu_id\CAN\EOT \SOH(\EOTR\ACKvcpuId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        directPtimer__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "direct_ptimer"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'directPtimer")) ::
              Data.ProtoLens.FieldDescriptor KvmGetTimerMapFtraceEvent
        directVtimer__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "direct_vtimer"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'directVtimer")) ::
              Data.ProtoLens.FieldDescriptor KvmGetTimerMapFtraceEvent
        emulPtimer__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "emul_ptimer"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'emulPtimer")) ::
              Data.ProtoLens.FieldDescriptor KvmGetTimerMapFtraceEvent
        vcpuId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vcpu_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'vcpuId")) ::
              Data.ProtoLens.FieldDescriptor KvmGetTimerMapFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, directPtimer__field_descriptor),
           (Data.ProtoLens.Tag 2, directVtimer__field_descriptor),
           (Data.ProtoLens.Tag 3, emulPtimer__field_descriptor),
           (Data.ProtoLens.Tag 4, vcpuId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KvmGetTimerMapFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_KvmGetTimerMapFtraceEvent'_unknownFields = y__})
  defMessage
    = KvmGetTimerMapFtraceEvent'_constructor
        {_KvmGetTimerMapFtraceEvent'directPtimer = Prelude.Nothing,
         _KvmGetTimerMapFtraceEvent'directVtimer = Prelude.Nothing,
         _KvmGetTimerMapFtraceEvent'emulPtimer = Prelude.Nothing,
         _KvmGetTimerMapFtraceEvent'vcpuId = Prelude.Nothing,
         _KvmGetTimerMapFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KvmGetTimerMapFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser KvmGetTimerMapFtraceEvent
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
                                       "direct_ptimer"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"directPtimer") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "direct_vtimer"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"directVtimer") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "emul_ptimer"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"emulPtimer") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "vcpu_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"vcpuId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "KvmGetTimerMapFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'directPtimer") _x
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
                       (Data.ProtoLens.Field.field @"maybe'directVtimer") _x
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
                          (Data.ProtoLens.Field.field @"maybe'emulPtimer") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'vcpuId") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData KvmGetTimerMapFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KvmGetTimerMapFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_KvmGetTimerMapFtraceEvent'directPtimer x__)
                (Control.DeepSeq.deepseq
                   (_KvmGetTimerMapFtraceEvent'directVtimer x__)
                   (Control.DeepSeq.deepseq
                      (_KvmGetTimerMapFtraceEvent'emulPtimer x__)
                      (Control.DeepSeq.deepseq
                         (_KvmGetTimerMapFtraceEvent'vcpuId x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.hsr' @:: Lens' KvmGuestFaultFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'hsr' @:: Lens' KvmGuestFaultFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.hxfar' @:: Lens' KvmGuestFaultFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'hxfar' @:: Lens' KvmGuestFaultFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.ipa' @:: Lens' KvmGuestFaultFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'ipa' @:: Lens' KvmGuestFaultFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.vcpuPc' @:: Lens' KvmGuestFaultFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'vcpuPc' @:: Lens' KvmGuestFaultFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data KvmGuestFaultFtraceEvent
  = KvmGuestFaultFtraceEvent'_constructor {_KvmGuestFaultFtraceEvent'hsr :: !(Prelude.Maybe Data.Word.Word64),
                                           _KvmGuestFaultFtraceEvent'hxfar :: !(Prelude.Maybe Data.Word.Word64),
                                           _KvmGuestFaultFtraceEvent'ipa :: !(Prelude.Maybe Data.Word.Word64),
                                           _KvmGuestFaultFtraceEvent'vcpuPc :: !(Prelude.Maybe Data.Word.Word64),
                                           _KvmGuestFaultFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KvmGuestFaultFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KvmGuestFaultFtraceEvent "hsr" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmGuestFaultFtraceEvent'hsr
           (\ x__ y__ -> x__ {_KvmGuestFaultFtraceEvent'hsr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmGuestFaultFtraceEvent "maybe'hsr" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmGuestFaultFtraceEvent'hsr
           (\ x__ y__ -> x__ {_KvmGuestFaultFtraceEvent'hsr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmGuestFaultFtraceEvent "hxfar" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmGuestFaultFtraceEvent'hxfar
           (\ x__ y__ -> x__ {_KvmGuestFaultFtraceEvent'hxfar = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmGuestFaultFtraceEvent "maybe'hxfar" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmGuestFaultFtraceEvent'hxfar
           (\ x__ y__ -> x__ {_KvmGuestFaultFtraceEvent'hxfar = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmGuestFaultFtraceEvent "ipa" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmGuestFaultFtraceEvent'ipa
           (\ x__ y__ -> x__ {_KvmGuestFaultFtraceEvent'ipa = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmGuestFaultFtraceEvent "maybe'ipa" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmGuestFaultFtraceEvent'ipa
           (\ x__ y__ -> x__ {_KvmGuestFaultFtraceEvent'ipa = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmGuestFaultFtraceEvent "vcpuPc" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmGuestFaultFtraceEvent'vcpuPc
           (\ x__ y__ -> x__ {_KvmGuestFaultFtraceEvent'vcpuPc = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmGuestFaultFtraceEvent "maybe'vcpuPc" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmGuestFaultFtraceEvent'vcpuPc
           (\ x__ y__ -> x__ {_KvmGuestFaultFtraceEvent'vcpuPc = y__}))
        Prelude.id
instance Data.ProtoLens.Message KvmGuestFaultFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.KvmGuestFaultFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\CANKvmGuestFaultFtraceEvent\DC2\DLE\n\
      \\ETXhsr\CAN\SOH \SOH(\EOTR\ETXhsr\DC2\DC4\n\
      \\ENQhxfar\CAN\STX \SOH(\EOTR\ENQhxfar\DC2\DLE\n\
      \\ETXipa\CAN\ETX \SOH(\EOTR\ETXipa\DC2\ETB\n\
      \\avcpu_pc\CAN\EOT \SOH(\EOTR\ACKvcpuPc"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        hsr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "hsr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'hsr")) ::
              Data.ProtoLens.FieldDescriptor KvmGuestFaultFtraceEvent
        hxfar__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "hxfar"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'hxfar")) ::
              Data.ProtoLens.FieldDescriptor KvmGuestFaultFtraceEvent
        ipa__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ipa"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ipa")) ::
              Data.ProtoLens.FieldDescriptor KvmGuestFaultFtraceEvent
        vcpuPc__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vcpu_pc"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'vcpuPc")) ::
              Data.ProtoLens.FieldDescriptor KvmGuestFaultFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, hsr__field_descriptor),
           (Data.ProtoLens.Tag 2, hxfar__field_descriptor),
           (Data.ProtoLens.Tag 3, ipa__field_descriptor),
           (Data.ProtoLens.Tag 4, vcpuPc__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KvmGuestFaultFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_KvmGuestFaultFtraceEvent'_unknownFields = y__})
  defMessage
    = KvmGuestFaultFtraceEvent'_constructor
        {_KvmGuestFaultFtraceEvent'hsr = Prelude.Nothing,
         _KvmGuestFaultFtraceEvent'hxfar = Prelude.Nothing,
         _KvmGuestFaultFtraceEvent'ipa = Prelude.Nothing,
         _KvmGuestFaultFtraceEvent'vcpuPc = Prelude.Nothing,
         _KvmGuestFaultFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KvmGuestFaultFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser KvmGuestFaultFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "hsr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"hsr") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "hxfar"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"hxfar") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ipa"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ipa") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "vcpu_pc"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"vcpuPc") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "KvmGuestFaultFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'hsr") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'hxfar") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ipa") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'vcpuPc") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData KvmGuestFaultFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KvmGuestFaultFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_KvmGuestFaultFtraceEvent'hsr x__)
                (Control.DeepSeq.deepseq
                   (_KvmGuestFaultFtraceEvent'hxfar x__)
                   (Control.DeepSeq.deepseq
                      (_KvmGuestFaultFtraceEvent'ipa x__)
                      (Control.DeepSeq.deepseq
                         (_KvmGuestFaultFtraceEvent'vcpuPc x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.hsr' @:: Lens' KvmHandleSysRegFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'hsr' @:: Lens' KvmHandleSysRegFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data KvmHandleSysRegFtraceEvent
  = KvmHandleSysRegFtraceEvent'_constructor {_KvmHandleSysRegFtraceEvent'hsr :: !(Prelude.Maybe Data.Word.Word64),
                                             _KvmHandleSysRegFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KvmHandleSysRegFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KvmHandleSysRegFtraceEvent "hsr" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmHandleSysRegFtraceEvent'hsr
           (\ x__ y__ -> x__ {_KvmHandleSysRegFtraceEvent'hsr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmHandleSysRegFtraceEvent "maybe'hsr" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmHandleSysRegFtraceEvent'hsr
           (\ x__ y__ -> x__ {_KvmHandleSysRegFtraceEvent'hsr = y__}))
        Prelude.id
instance Data.ProtoLens.Message KvmHandleSysRegFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.KvmHandleSysRegFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SUBKvmHandleSysRegFtraceEvent\DC2\DLE\n\
      \\ETXhsr\CAN\SOH \SOH(\EOTR\ETXhsr"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        hsr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "hsr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'hsr")) ::
              Data.ProtoLens.FieldDescriptor KvmHandleSysRegFtraceEvent
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, hsr__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KvmHandleSysRegFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_KvmHandleSysRegFtraceEvent'_unknownFields = y__})
  defMessage
    = KvmHandleSysRegFtraceEvent'_constructor
        {_KvmHandleSysRegFtraceEvent'hsr = Prelude.Nothing,
         _KvmHandleSysRegFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KvmHandleSysRegFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser KvmHandleSysRegFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "hsr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"hsr") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "KvmHandleSysRegFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'hsr") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData KvmHandleSysRegFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KvmHandleSysRegFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq (_KvmHandleSysRegFtraceEvent'hsr x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.imm' @:: Lens' KvmHvcArm64FtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'imm' @:: Lens' KvmHvcArm64FtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.r0' @:: Lens' KvmHvcArm64FtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'r0' @:: Lens' KvmHvcArm64FtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.vcpuPc' @:: Lens' KvmHvcArm64FtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'vcpuPc' @:: Lens' KvmHvcArm64FtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data KvmHvcArm64FtraceEvent
  = KvmHvcArm64FtraceEvent'_constructor {_KvmHvcArm64FtraceEvent'imm :: !(Prelude.Maybe Data.Word.Word64),
                                         _KvmHvcArm64FtraceEvent'r0 :: !(Prelude.Maybe Data.Word.Word64),
                                         _KvmHvcArm64FtraceEvent'vcpuPc :: !(Prelude.Maybe Data.Word.Word64),
                                         _KvmHvcArm64FtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KvmHvcArm64FtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KvmHvcArm64FtraceEvent "imm" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmHvcArm64FtraceEvent'imm
           (\ x__ y__ -> x__ {_KvmHvcArm64FtraceEvent'imm = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmHvcArm64FtraceEvent "maybe'imm" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmHvcArm64FtraceEvent'imm
           (\ x__ y__ -> x__ {_KvmHvcArm64FtraceEvent'imm = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmHvcArm64FtraceEvent "r0" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmHvcArm64FtraceEvent'r0
           (\ x__ y__ -> x__ {_KvmHvcArm64FtraceEvent'r0 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmHvcArm64FtraceEvent "maybe'r0" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmHvcArm64FtraceEvent'r0
           (\ x__ y__ -> x__ {_KvmHvcArm64FtraceEvent'r0 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmHvcArm64FtraceEvent "vcpuPc" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmHvcArm64FtraceEvent'vcpuPc
           (\ x__ y__ -> x__ {_KvmHvcArm64FtraceEvent'vcpuPc = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmHvcArm64FtraceEvent "maybe'vcpuPc" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmHvcArm64FtraceEvent'vcpuPc
           (\ x__ y__ -> x__ {_KvmHvcArm64FtraceEvent'vcpuPc = y__}))
        Prelude.id
instance Data.ProtoLens.Message KvmHvcArm64FtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.KvmHvcArm64FtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SYNKvmHvcArm64FtraceEvent\DC2\DLE\n\
      \\ETXimm\CAN\SOH \SOH(\EOTR\ETXimm\DC2\SO\n\
      \\STXr0\CAN\STX \SOH(\EOTR\STXr0\DC2\ETB\n\
      \\avcpu_pc\CAN\ETX \SOH(\EOTR\ACKvcpuPc"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        imm__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "imm"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'imm")) ::
              Data.ProtoLens.FieldDescriptor KvmHvcArm64FtraceEvent
        r0__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "r0"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'r0")) ::
              Data.ProtoLens.FieldDescriptor KvmHvcArm64FtraceEvent
        vcpuPc__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vcpu_pc"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'vcpuPc")) ::
              Data.ProtoLens.FieldDescriptor KvmHvcArm64FtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, imm__field_descriptor),
           (Data.ProtoLens.Tag 2, r0__field_descriptor),
           (Data.ProtoLens.Tag 3, vcpuPc__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KvmHvcArm64FtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_KvmHvcArm64FtraceEvent'_unknownFields = y__})
  defMessage
    = KvmHvcArm64FtraceEvent'_constructor
        {_KvmHvcArm64FtraceEvent'imm = Prelude.Nothing,
         _KvmHvcArm64FtraceEvent'r0 = Prelude.Nothing,
         _KvmHvcArm64FtraceEvent'vcpuPc = Prelude.Nothing,
         _KvmHvcArm64FtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KvmHvcArm64FtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser KvmHvcArm64FtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "imm"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"imm") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "r0"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"r0") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "vcpu_pc"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"vcpuPc") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "KvmHvcArm64FtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'imm") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'r0") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'vcpuPc") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData KvmHvcArm64FtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KvmHvcArm64FtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_KvmHvcArm64FtraceEvent'imm x__)
                (Control.DeepSeq.deepseq
                   (_KvmHvcArm64FtraceEvent'r0 x__)
                   (Control.DeepSeq.deepseq (_KvmHvcArm64FtraceEvent'vcpuPc x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.irqNum' @:: Lens' KvmIrqLineFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'irqNum' @:: Lens' KvmIrqLineFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.level' @:: Lens' KvmIrqLineFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'level' @:: Lens' KvmIrqLineFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.type'' @:: Lens' KvmIrqLineFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'type'' @:: Lens' KvmIrqLineFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.vcpuIdx' @:: Lens' KvmIrqLineFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'vcpuIdx' @:: Lens' KvmIrqLineFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data KvmIrqLineFtraceEvent
  = KvmIrqLineFtraceEvent'_constructor {_KvmIrqLineFtraceEvent'irqNum :: !(Prelude.Maybe Data.Int.Int32),
                                        _KvmIrqLineFtraceEvent'level :: !(Prelude.Maybe Data.Int.Int32),
                                        _KvmIrqLineFtraceEvent'type' :: !(Prelude.Maybe Data.Word.Word32),
                                        _KvmIrqLineFtraceEvent'vcpuIdx :: !(Prelude.Maybe Data.Int.Int32),
                                        _KvmIrqLineFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KvmIrqLineFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KvmIrqLineFtraceEvent "irqNum" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmIrqLineFtraceEvent'irqNum
           (\ x__ y__ -> x__ {_KvmIrqLineFtraceEvent'irqNum = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmIrqLineFtraceEvent "maybe'irqNum" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmIrqLineFtraceEvent'irqNum
           (\ x__ y__ -> x__ {_KvmIrqLineFtraceEvent'irqNum = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmIrqLineFtraceEvent "level" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmIrqLineFtraceEvent'level
           (\ x__ y__ -> x__ {_KvmIrqLineFtraceEvent'level = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmIrqLineFtraceEvent "maybe'level" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmIrqLineFtraceEvent'level
           (\ x__ y__ -> x__ {_KvmIrqLineFtraceEvent'level = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmIrqLineFtraceEvent "type'" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmIrqLineFtraceEvent'type'
           (\ x__ y__ -> x__ {_KvmIrqLineFtraceEvent'type' = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmIrqLineFtraceEvent "maybe'type'" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmIrqLineFtraceEvent'type'
           (\ x__ y__ -> x__ {_KvmIrqLineFtraceEvent'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmIrqLineFtraceEvent "vcpuIdx" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmIrqLineFtraceEvent'vcpuIdx
           (\ x__ y__ -> x__ {_KvmIrqLineFtraceEvent'vcpuIdx = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmIrqLineFtraceEvent "maybe'vcpuIdx" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmIrqLineFtraceEvent'vcpuIdx
           (\ x__ y__ -> x__ {_KvmIrqLineFtraceEvent'vcpuIdx = y__}))
        Prelude.id
instance Data.ProtoLens.Message KvmIrqLineFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.KvmIrqLineFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\NAKKvmIrqLineFtraceEvent\DC2\ETB\n\
      \\airq_num\CAN\SOH \SOH(\ENQR\ACKirqNum\DC2\DC4\n\
      \\ENQlevel\CAN\STX \SOH(\ENQR\ENQlevel\DC2\DC2\n\
      \\EOTtype\CAN\ETX \SOH(\rR\EOTtype\DC2\EM\n\
      \\bvcpu_idx\CAN\EOT \SOH(\ENQR\avcpuIdx"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        irqNum__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "irq_num"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'irqNum")) ::
              Data.ProtoLens.FieldDescriptor KvmIrqLineFtraceEvent
        level__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "level"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'level")) ::
              Data.ProtoLens.FieldDescriptor KvmIrqLineFtraceEvent
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'type'")) ::
              Data.ProtoLens.FieldDescriptor KvmIrqLineFtraceEvent
        vcpuIdx__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vcpu_idx"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'vcpuIdx")) ::
              Data.ProtoLens.FieldDescriptor KvmIrqLineFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, irqNum__field_descriptor),
           (Data.ProtoLens.Tag 2, level__field_descriptor),
           (Data.ProtoLens.Tag 3, type'__field_descriptor),
           (Data.ProtoLens.Tag 4, vcpuIdx__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KvmIrqLineFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_KvmIrqLineFtraceEvent'_unknownFields = y__})
  defMessage
    = KvmIrqLineFtraceEvent'_constructor
        {_KvmIrqLineFtraceEvent'irqNum = Prelude.Nothing,
         _KvmIrqLineFtraceEvent'level = Prelude.Nothing,
         _KvmIrqLineFtraceEvent'type' = Prelude.Nothing,
         _KvmIrqLineFtraceEvent'vcpuIdx = Prelude.Nothing,
         _KvmIrqLineFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KvmIrqLineFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser KvmIrqLineFtraceEvent
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
                                       "irq_num"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"irqNum") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "level"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"level") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "vcpu_idx"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"vcpuIdx") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "KvmIrqLineFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'irqNum") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'level") _x
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
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'vcpuIdx") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData KvmIrqLineFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KvmIrqLineFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_KvmIrqLineFtraceEvent'irqNum x__)
                (Control.DeepSeq.deepseq
                   (_KvmIrqLineFtraceEvent'level x__)
                   (Control.DeepSeq.deepseq
                      (_KvmIrqLineFtraceEvent'type' x__)
                      (Control.DeepSeq.deepseq
                         (_KvmIrqLineFtraceEvent'vcpuIdx x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.cpsr' @:: Lens' KvmMmioEmulateFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'cpsr' @:: Lens' KvmMmioEmulateFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.instr' @:: Lens' KvmMmioEmulateFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'instr' @:: Lens' KvmMmioEmulateFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.vcpuPc' @:: Lens' KvmMmioEmulateFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'vcpuPc' @:: Lens' KvmMmioEmulateFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data KvmMmioEmulateFtraceEvent
  = KvmMmioEmulateFtraceEvent'_constructor {_KvmMmioEmulateFtraceEvent'cpsr :: !(Prelude.Maybe Data.Word.Word64),
                                            _KvmMmioEmulateFtraceEvent'instr :: !(Prelude.Maybe Data.Word.Word64),
                                            _KvmMmioEmulateFtraceEvent'vcpuPc :: !(Prelude.Maybe Data.Word.Word64),
                                            _KvmMmioEmulateFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KvmMmioEmulateFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KvmMmioEmulateFtraceEvent "cpsr" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmMmioEmulateFtraceEvent'cpsr
           (\ x__ y__ -> x__ {_KvmMmioEmulateFtraceEvent'cpsr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmMmioEmulateFtraceEvent "maybe'cpsr" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmMmioEmulateFtraceEvent'cpsr
           (\ x__ y__ -> x__ {_KvmMmioEmulateFtraceEvent'cpsr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmMmioEmulateFtraceEvent "instr" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmMmioEmulateFtraceEvent'instr
           (\ x__ y__ -> x__ {_KvmMmioEmulateFtraceEvent'instr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmMmioEmulateFtraceEvent "maybe'instr" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmMmioEmulateFtraceEvent'instr
           (\ x__ y__ -> x__ {_KvmMmioEmulateFtraceEvent'instr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmMmioEmulateFtraceEvent "vcpuPc" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmMmioEmulateFtraceEvent'vcpuPc
           (\ x__ y__ -> x__ {_KvmMmioEmulateFtraceEvent'vcpuPc = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmMmioEmulateFtraceEvent "maybe'vcpuPc" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmMmioEmulateFtraceEvent'vcpuPc
           (\ x__ y__ -> x__ {_KvmMmioEmulateFtraceEvent'vcpuPc = y__}))
        Prelude.id
instance Data.ProtoLens.Message KvmMmioEmulateFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.KvmMmioEmulateFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\EMKvmMmioEmulateFtraceEvent\DC2\DC2\n\
      \\EOTcpsr\CAN\SOH \SOH(\EOTR\EOTcpsr\DC2\DC4\n\
      \\ENQinstr\CAN\STX \SOH(\EOTR\ENQinstr\DC2\ETB\n\
      \\avcpu_pc\CAN\ETX \SOH(\EOTR\ACKvcpuPc"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        cpsr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cpsr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cpsr")) ::
              Data.ProtoLens.FieldDescriptor KvmMmioEmulateFtraceEvent
        instr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "instr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'instr")) ::
              Data.ProtoLens.FieldDescriptor KvmMmioEmulateFtraceEvent
        vcpuPc__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vcpu_pc"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'vcpuPc")) ::
              Data.ProtoLens.FieldDescriptor KvmMmioEmulateFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, cpsr__field_descriptor),
           (Data.ProtoLens.Tag 2, instr__field_descriptor),
           (Data.ProtoLens.Tag 3, vcpuPc__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KvmMmioEmulateFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_KvmMmioEmulateFtraceEvent'_unknownFields = y__})
  defMessage
    = KvmMmioEmulateFtraceEvent'_constructor
        {_KvmMmioEmulateFtraceEvent'cpsr = Prelude.Nothing,
         _KvmMmioEmulateFtraceEvent'instr = Prelude.Nothing,
         _KvmMmioEmulateFtraceEvent'vcpuPc = Prelude.Nothing,
         _KvmMmioEmulateFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KvmMmioEmulateFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser KvmMmioEmulateFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "cpsr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cpsr") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "instr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"instr") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "vcpu_pc"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"vcpuPc") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "KvmMmioEmulateFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cpsr") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'instr") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'vcpuPc") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData KvmMmioEmulateFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KvmMmioEmulateFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_KvmMmioEmulateFtraceEvent'cpsr x__)
                (Control.DeepSeq.deepseq
                   (_KvmMmioEmulateFtraceEvent'instr x__)
                   (Control.DeepSeq.deepseq
                      (_KvmMmioEmulateFtraceEvent'vcpuPc x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.gpa' @:: Lens' KvmMmioFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'gpa' @:: Lens' KvmMmioFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.len' @:: Lens' KvmMmioFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'len' @:: Lens' KvmMmioFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.type'' @:: Lens' KvmMmioFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'type'' @:: Lens' KvmMmioFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.val' @:: Lens' KvmMmioFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'val' @:: Lens' KvmMmioFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data KvmMmioFtraceEvent
  = KvmMmioFtraceEvent'_constructor {_KvmMmioFtraceEvent'gpa :: !(Prelude.Maybe Data.Word.Word64),
                                     _KvmMmioFtraceEvent'len :: !(Prelude.Maybe Data.Word.Word32),
                                     _KvmMmioFtraceEvent'type' :: !(Prelude.Maybe Data.Word.Word32),
                                     _KvmMmioFtraceEvent'val :: !(Prelude.Maybe Data.Word.Word64),
                                     _KvmMmioFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KvmMmioFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KvmMmioFtraceEvent "gpa" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmMmioFtraceEvent'gpa
           (\ x__ y__ -> x__ {_KvmMmioFtraceEvent'gpa = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmMmioFtraceEvent "maybe'gpa" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmMmioFtraceEvent'gpa
           (\ x__ y__ -> x__ {_KvmMmioFtraceEvent'gpa = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmMmioFtraceEvent "len" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmMmioFtraceEvent'len
           (\ x__ y__ -> x__ {_KvmMmioFtraceEvent'len = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmMmioFtraceEvent "maybe'len" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmMmioFtraceEvent'len
           (\ x__ y__ -> x__ {_KvmMmioFtraceEvent'len = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmMmioFtraceEvent "type'" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmMmioFtraceEvent'type'
           (\ x__ y__ -> x__ {_KvmMmioFtraceEvent'type' = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmMmioFtraceEvent "maybe'type'" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmMmioFtraceEvent'type'
           (\ x__ y__ -> x__ {_KvmMmioFtraceEvent'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmMmioFtraceEvent "val" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmMmioFtraceEvent'val
           (\ x__ y__ -> x__ {_KvmMmioFtraceEvent'val = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmMmioFtraceEvent "maybe'val" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmMmioFtraceEvent'val
           (\ x__ y__ -> x__ {_KvmMmioFtraceEvent'val = y__}))
        Prelude.id
instance Data.ProtoLens.Message KvmMmioFtraceEvent where
  messageName _ = Data.Text.pack "perfetto.protos.KvmMmioFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\DC2KvmMmioFtraceEvent\DC2\DLE\n\
      \\ETXgpa\CAN\SOH \SOH(\EOTR\ETXgpa\DC2\DLE\n\
      \\ETXlen\CAN\STX \SOH(\rR\ETXlen\DC2\DC2\n\
      \\EOTtype\CAN\ETX \SOH(\rR\EOTtype\DC2\DLE\n\
      \\ETXval\CAN\EOT \SOH(\EOTR\ETXval"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        gpa__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gpa"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gpa")) ::
              Data.ProtoLens.FieldDescriptor KvmMmioFtraceEvent
        len__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "len"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'len")) ::
              Data.ProtoLens.FieldDescriptor KvmMmioFtraceEvent
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'type'")) ::
              Data.ProtoLens.FieldDescriptor KvmMmioFtraceEvent
        val__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "val"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'val")) ::
              Data.ProtoLens.FieldDescriptor KvmMmioFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, gpa__field_descriptor),
           (Data.ProtoLens.Tag 2, len__field_descriptor),
           (Data.ProtoLens.Tag 3, type'__field_descriptor),
           (Data.ProtoLens.Tag 4, val__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KvmMmioFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_KvmMmioFtraceEvent'_unknownFields = y__})
  defMessage
    = KvmMmioFtraceEvent'_constructor
        {_KvmMmioFtraceEvent'gpa = Prelude.Nothing,
         _KvmMmioFtraceEvent'len = Prelude.Nothing,
         _KvmMmioFtraceEvent'type' = Prelude.Nothing,
         _KvmMmioFtraceEvent'val = Prelude.Nothing,
         _KvmMmioFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KvmMmioFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser KvmMmioFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "gpa"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"gpa") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "len"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"len") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "val"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"val") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "KvmMmioFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gpa") _x
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
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'val") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData KvmMmioFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KvmMmioFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_KvmMmioFtraceEvent'gpa x__)
                (Control.DeepSeq.deepseq
                   (_KvmMmioFtraceEvent'len x__)
                   (Control.DeepSeq.deepseq
                      (_KvmMmioFtraceEvent'type' x__)
                      (Control.DeepSeq.deepseq (_KvmMmioFtraceEvent'val x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.guestDebug' @:: Lens' KvmSetGuestDebugFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'guestDebug' @:: Lens' KvmSetGuestDebugFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.vcpu' @:: Lens' KvmSetGuestDebugFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'vcpu' @:: Lens' KvmSetGuestDebugFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data KvmSetGuestDebugFtraceEvent
  = KvmSetGuestDebugFtraceEvent'_constructor {_KvmSetGuestDebugFtraceEvent'guestDebug :: !(Prelude.Maybe Data.Word.Word32),
                                              _KvmSetGuestDebugFtraceEvent'vcpu :: !(Prelude.Maybe Data.Word.Word64),
                                              _KvmSetGuestDebugFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KvmSetGuestDebugFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KvmSetGuestDebugFtraceEvent "guestDebug" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmSetGuestDebugFtraceEvent'guestDebug
           (\ x__ y__ -> x__ {_KvmSetGuestDebugFtraceEvent'guestDebug = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmSetGuestDebugFtraceEvent "maybe'guestDebug" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmSetGuestDebugFtraceEvent'guestDebug
           (\ x__ y__ -> x__ {_KvmSetGuestDebugFtraceEvent'guestDebug = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmSetGuestDebugFtraceEvent "vcpu" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmSetGuestDebugFtraceEvent'vcpu
           (\ x__ y__ -> x__ {_KvmSetGuestDebugFtraceEvent'vcpu = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmSetGuestDebugFtraceEvent "maybe'vcpu" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmSetGuestDebugFtraceEvent'vcpu
           (\ x__ y__ -> x__ {_KvmSetGuestDebugFtraceEvent'vcpu = y__}))
        Prelude.id
instance Data.ProtoLens.Message KvmSetGuestDebugFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.KvmSetGuestDebugFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ESCKvmSetGuestDebugFtraceEvent\DC2\US\n\
      \\vguest_debug\CAN\SOH \SOH(\rR\n\
      \guestDebug\DC2\DC2\n\
      \\EOTvcpu\CAN\STX \SOH(\EOTR\EOTvcpu"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        guestDebug__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "guest_debug"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'guestDebug")) ::
              Data.ProtoLens.FieldDescriptor KvmSetGuestDebugFtraceEvent
        vcpu__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vcpu"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'vcpu")) ::
              Data.ProtoLens.FieldDescriptor KvmSetGuestDebugFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, guestDebug__field_descriptor),
           (Data.ProtoLens.Tag 2, vcpu__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KvmSetGuestDebugFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_KvmSetGuestDebugFtraceEvent'_unknownFields = y__})
  defMessage
    = KvmSetGuestDebugFtraceEvent'_constructor
        {_KvmSetGuestDebugFtraceEvent'guestDebug = Prelude.Nothing,
         _KvmSetGuestDebugFtraceEvent'vcpu = Prelude.Nothing,
         _KvmSetGuestDebugFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KvmSetGuestDebugFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser KvmSetGuestDebugFtraceEvent
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
                                       "guest_debug"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"guestDebug") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "vcpu"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"vcpu") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "KvmSetGuestDebugFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'guestDebug") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'vcpu") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData KvmSetGuestDebugFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KvmSetGuestDebugFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_KvmSetGuestDebugFtraceEvent'guestDebug x__)
                (Control.DeepSeq.deepseq
                   (_KvmSetGuestDebugFtraceEvent'vcpu x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.gsi' @:: Lens' KvmSetIrqFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'gsi' @:: Lens' KvmSetIrqFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.irqSourceId' @:: Lens' KvmSetIrqFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'irqSourceId' @:: Lens' KvmSetIrqFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.level' @:: Lens' KvmSetIrqFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'level' @:: Lens' KvmSetIrqFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data KvmSetIrqFtraceEvent
  = KvmSetIrqFtraceEvent'_constructor {_KvmSetIrqFtraceEvent'gsi :: !(Prelude.Maybe Data.Word.Word32),
                                       _KvmSetIrqFtraceEvent'irqSourceId :: !(Prelude.Maybe Data.Int.Int32),
                                       _KvmSetIrqFtraceEvent'level :: !(Prelude.Maybe Data.Int.Int32),
                                       _KvmSetIrqFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KvmSetIrqFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KvmSetIrqFtraceEvent "gsi" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmSetIrqFtraceEvent'gsi
           (\ x__ y__ -> x__ {_KvmSetIrqFtraceEvent'gsi = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmSetIrqFtraceEvent "maybe'gsi" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmSetIrqFtraceEvent'gsi
           (\ x__ y__ -> x__ {_KvmSetIrqFtraceEvent'gsi = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmSetIrqFtraceEvent "irqSourceId" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmSetIrqFtraceEvent'irqSourceId
           (\ x__ y__ -> x__ {_KvmSetIrqFtraceEvent'irqSourceId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmSetIrqFtraceEvent "maybe'irqSourceId" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmSetIrqFtraceEvent'irqSourceId
           (\ x__ y__ -> x__ {_KvmSetIrqFtraceEvent'irqSourceId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmSetIrqFtraceEvent "level" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmSetIrqFtraceEvent'level
           (\ x__ y__ -> x__ {_KvmSetIrqFtraceEvent'level = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmSetIrqFtraceEvent "maybe'level" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmSetIrqFtraceEvent'level
           (\ x__ y__ -> x__ {_KvmSetIrqFtraceEvent'level = y__}))
        Prelude.id
instance Data.ProtoLens.Message KvmSetIrqFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.KvmSetIrqFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\DC4KvmSetIrqFtraceEvent\DC2\DLE\n\
      \\ETXgsi\CAN\SOH \SOH(\rR\ETXgsi\DC2\"\n\
      \\rirq_source_id\CAN\STX \SOH(\ENQR\virqSourceId\DC2\DC4\n\
      \\ENQlevel\CAN\ETX \SOH(\ENQR\ENQlevel"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        gsi__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gsi"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gsi")) ::
              Data.ProtoLens.FieldDescriptor KvmSetIrqFtraceEvent
        irqSourceId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "irq_source_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'irqSourceId")) ::
              Data.ProtoLens.FieldDescriptor KvmSetIrqFtraceEvent
        level__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "level"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'level")) ::
              Data.ProtoLens.FieldDescriptor KvmSetIrqFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, gsi__field_descriptor),
           (Data.ProtoLens.Tag 2, irqSourceId__field_descriptor),
           (Data.ProtoLens.Tag 3, level__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KvmSetIrqFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_KvmSetIrqFtraceEvent'_unknownFields = y__})
  defMessage
    = KvmSetIrqFtraceEvent'_constructor
        {_KvmSetIrqFtraceEvent'gsi = Prelude.Nothing,
         _KvmSetIrqFtraceEvent'irqSourceId = Prelude.Nothing,
         _KvmSetIrqFtraceEvent'level = Prelude.Nothing,
         _KvmSetIrqFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KvmSetIrqFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser KvmSetIrqFtraceEvent
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
                                       "gsi"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"gsi") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "irq_source_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"irqSourceId") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "level"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"level") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "KvmSetIrqFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gsi") _x
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
                       (Data.ProtoLens.Field.field @"maybe'irqSourceId") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'level") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData KvmSetIrqFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KvmSetIrqFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_KvmSetIrqFtraceEvent'gsi x__)
                (Control.DeepSeq.deepseq
                   (_KvmSetIrqFtraceEvent'irqSourceId x__)
                   (Control.DeepSeq.deepseq (_KvmSetIrqFtraceEvent'level x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.hva' @:: Lens' KvmSetSpteHvaFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'hva' @:: Lens' KvmSetSpteHvaFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data KvmSetSpteHvaFtraceEvent
  = KvmSetSpteHvaFtraceEvent'_constructor {_KvmSetSpteHvaFtraceEvent'hva :: !(Prelude.Maybe Data.Word.Word64),
                                           _KvmSetSpteHvaFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KvmSetSpteHvaFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KvmSetSpteHvaFtraceEvent "hva" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmSetSpteHvaFtraceEvent'hva
           (\ x__ y__ -> x__ {_KvmSetSpteHvaFtraceEvent'hva = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmSetSpteHvaFtraceEvent "maybe'hva" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmSetSpteHvaFtraceEvent'hva
           (\ x__ y__ -> x__ {_KvmSetSpteHvaFtraceEvent'hva = y__}))
        Prelude.id
instance Data.ProtoLens.Message KvmSetSpteHvaFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.KvmSetSpteHvaFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\CANKvmSetSpteHvaFtraceEvent\DC2\DLE\n\
      \\ETXhva\CAN\SOH \SOH(\EOTR\ETXhva"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        hva__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "hva"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'hva")) ::
              Data.ProtoLens.FieldDescriptor KvmSetSpteHvaFtraceEvent
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, hva__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KvmSetSpteHvaFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_KvmSetSpteHvaFtraceEvent'_unknownFields = y__})
  defMessage
    = KvmSetSpteHvaFtraceEvent'_constructor
        {_KvmSetSpteHvaFtraceEvent'hva = Prelude.Nothing,
         _KvmSetSpteHvaFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KvmSetSpteHvaFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser KvmSetSpteHvaFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "hva"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"hva") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "KvmSetSpteHvaFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'hva") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData KvmSetSpteHvaFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KvmSetSpteHvaFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq (_KvmSetSpteHvaFtraceEvent'hva x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.cache' @:: Lens' KvmSetWayFlushFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'cache' @:: Lens' KvmSetWayFlushFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.vcpuPc' @:: Lens' KvmSetWayFlushFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'vcpuPc' @:: Lens' KvmSetWayFlushFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data KvmSetWayFlushFtraceEvent
  = KvmSetWayFlushFtraceEvent'_constructor {_KvmSetWayFlushFtraceEvent'cache :: !(Prelude.Maybe Data.Word.Word32),
                                            _KvmSetWayFlushFtraceEvent'vcpuPc :: !(Prelude.Maybe Data.Word.Word64),
                                            _KvmSetWayFlushFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KvmSetWayFlushFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KvmSetWayFlushFtraceEvent "cache" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmSetWayFlushFtraceEvent'cache
           (\ x__ y__ -> x__ {_KvmSetWayFlushFtraceEvent'cache = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmSetWayFlushFtraceEvent "maybe'cache" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmSetWayFlushFtraceEvent'cache
           (\ x__ y__ -> x__ {_KvmSetWayFlushFtraceEvent'cache = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmSetWayFlushFtraceEvent "vcpuPc" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmSetWayFlushFtraceEvent'vcpuPc
           (\ x__ y__ -> x__ {_KvmSetWayFlushFtraceEvent'vcpuPc = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmSetWayFlushFtraceEvent "maybe'vcpuPc" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmSetWayFlushFtraceEvent'vcpuPc
           (\ x__ y__ -> x__ {_KvmSetWayFlushFtraceEvent'vcpuPc = y__}))
        Prelude.id
instance Data.ProtoLens.Message KvmSetWayFlushFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.KvmSetWayFlushFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\EMKvmSetWayFlushFtraceEvent\DC2\DC4\n\
      \\ENQcache\CAN\SOH \SOH(\rR\ENQcache\DC2\ETB\n\
      \\avcpu_pc\CAN\STX \SOH(\EOTR\ACKvcpuPc"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        cache__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cache"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cache")) ::
              Data.ProtoLens.FieldDescriptor KvmSetWayFlushFtraceEvent
        vcpuPc__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vcpu_pc"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'vcpuPc")) ::
              Data.ProtoLens.FieldDescriptor KvmSetWayFlushFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, cache__field_descriptor),
           (Data.ProtoLens.Tag 2, vcpuPc__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KvmSetWayFlushFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_KvmSetWayFlushFtraceEvent'_unknownFields = y__})
  defMessage
    = KvmSetWayFlushFtraceEvent'_constructor
        {_KvmSetWayFlushFtraceEvent'cache = Prelude.Nothing,
         _KvmSetWayFlushFtraceEvent'vcpuPc = Prelude.Nothing,
         _KvmSetWayFlushFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KvmSetWayFlushFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser KvmSetWayFlushFtraceEvent
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
                                       "cache"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cache") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "vcpu_pc"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"vcpuPc") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "KvmSetWayFlushFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cache") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'vcpuPc") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData KvmSetWayFlushFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KvmSetWayFlushFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_KvmSetWayFlushFtraceEvent'cache x__)
                (Control.DeepSeq.deepseq
                   (_KvmSetWayFlushFtraceEvent'vcpuPc x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.crm' @:: Lens' KvmSysAccessFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'crm' @:: Lens' KvmSysAccessFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.crn' @:: Lens' KvmSysAccessFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'crn' @:: Lens' KvmSysAccessFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.op0' @:: Lens' KvmSysAccessFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'op0' @:: Lens' KvmSysAccessFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.op1' @:: Lens' KvmSysAccessFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'op1' @:: Lens' KvmSysAccessFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.op2' @:: Lens' KvmSysAccessFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'op2' @:: Lens' KvmSysAccessFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.isWrite' @:: Lens' KvmSysAccessFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'isWrite' @:: Lens' KvmSysAccessFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.name' @:: Lens' KvmSysAccessFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'name' @:: Lens' KvmSysAccessFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.vcpuPc' @:: Lens' KvmSysAccessFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'vcpuPc' @:: Lens' KvmSysAccessFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data KvmSysAccessFtraceEvent
  = KvmSysAccessFtraceEvent'_constructor {_KvmSysAccessFtraceEvent'crm :: !(Prelude.Maybe Data.Word.Word32),
                                          _KvmSysAccessFtraceEvent'crn :: !(Prelude.Maybe Data.Word.Word32),
                                          _KvmSysAccessFtraceEvent'op0 :: !(Prelude.Maybe Data.Word.Word32),
                                          _KvmSysAccessFtraceEvent'op1 :: !(Prelude.Maybe Data.Word.Word32),
                                          _KvmSysAccessFtraceEvent'op2 :: !(Prelude.Maybe Data.Word.Word32),
                                          _KvmSysAccessFtraceEvent'isWrite :: !(Prelude.Maybe Data.Word.Word32),
                                          _KvmSysAccessFtraceEvent'name :: !(Prelude.Maybe Data.Text.Text),
                                          _KvmSysAccessFtraceEvent'vcpuPc :: !(Prelude.Maybe Data.Word.Word64),
                                          _KvmSysAccessFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KvmSysAccessFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KvmSysAccessFtraceEvent "crm" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmSysAccessFtraceEvent'crm
           (\ x__ y__ -> x__ {_KvmSysAccessFtraceEvent'crm = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmSysAccessFtraceEvent "maybe'crm" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmSysAccessFtraceEvent'crm
           (\ x__ y__ -> x__ {_KvmSysAccessFtraceEvent'crm = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmSysAccessFtraceEvent "crn" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmSysAccessFtraceEvent'crn
           (\ x__ y__ -> x__ {_KvmSysAccessFtraceEvent'crn = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmSysAccessFtraceEvent "maybe'crn" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmSysAccessFtraceEvent'crn
           (\ x__ y__ -> x__ {_KvmSysAccessFtraceEvent'crn = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmSysAccessFtraceEvent "op0" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmSysAccessFtraceEvent'op0
           (\ x__ y__ -> x__ {_KvmSysAccessFtraceEvent'op0 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmSysAccessFtraceEvent "maybe'op0" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmSysAccessFtraceEvent'op0
           (\ x__ y__ -> x__ {_KvmSysAccessFtraceEvent'op0 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmSysAccessFtraceEvent "op1" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmSysAccessFtraceEvent'op1
           (\ x__ y__ -> x__ {_KvmSysAccessFtraceEvent'op1 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmSysAccessFtraceEvent "maybe'op1" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmSysAccessFtraceEvent'op1
           (\ x__ y__ -> x__ {_KvmSysAccessFtraceEvent'op1 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmSysAccessFtraceEvent "op2" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmSysAccessFtraceEvent'op2
           (\ x__ y__ -> x__ {_KvmSysAccessFtraceEvent'op2 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmSysAccessFtraceEvent "maybe'op2" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmSysAccessFtraceEvent'op2
           (\ x__ y__ -> x__ {_KvmSysAccessFtraceEvent'op2 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmSysAccessFtraceEvent "isWrite" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmSysAccessFtraceEvent'isWrite
           (\ x__ y__ -> x__ {_KvmSysAccessFtraceEvent'isWrite = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmSysAccessFtraceEvent "maybe'isWrite" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmSysAccessFtraceEvent'isWrite
           (\ x__ y__ -> x__ {_KvmSysAccessFtraceEvent'isWrite = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmSysAccessFtraceEvent "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmSysAccessFtraceEvent'name
           (\ x__ y__ -> x__ {_KvmSysAccessFtraceEvent'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmSysAccessFtraceEvent "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmSysAccessFtraceEvent'name
           (\ x__ y__ -> x__ {_KvmSysAccessFtraceEvent'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmSysAccessFtraceEvent "vcpuPc" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmSysAccessFtraceEvent'vcpuPc
           (\ x__ y__ -> x__ {_KvmSysAccessFtraceEvent'vcpuPc = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmSysAccessFtraceEvent "maybe'vcpuPc" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmSysAccessFtraceEvent'vcpuPc
           (\ x__ y__ -> x__ {_KvmSysAccessFtraceEvent'vcpuPc = y__}))
        Prelude.id
instance Data.ProtoLens.Message KvmSysAccessFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.KvmSysAccessFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ETBKvmSysAccessFtraceEvent\DC2\DLE\n\
      \\ETXCRm\CAN\SOH \SOH(\rR\ETXCRm\DC2\DLE\n\
      \\ETXCRn\CAN\STX \SOH(\rR\ETXCRn\DC2\DLE\n\
      \\ETXOp0\CAN\ETX \SOH(\rR\ETXOp0\DC2\DLE\n\
      \\ETXOp1\CAN\EOT \SOH(\rR\ETXOp1\DC2\DLE\n\
      \\ETXOp2\CAN\ENQ \SOH(\rR\ETXOp2\DC2\EM\n\
      \\bis_write\CAN\ACK \SOH(\rR\aisWrite\DC2\DC2\n\
      \\EOTname\CAN\a \SOH(\tR\EOTname\DC2\ETB\n\
      \\avcpu_pc\CAN\b \SOH(\EOTR\ACKvcpuPc"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        crm__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "CRm"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'crm")) ::
              Data.ProtoLens.FieldDescriptor KvmSysAccessFtraceEvent
        crn__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "CRn"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'crn")) ::
              Data.ProtoLens.FieldDescriptor KvmSysAccessFtraceEvent
        op0__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "Op0"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'op0")) ::
              Data.ProtoLens.FieldDescriptor KvmSysAccessFtraceEvent
        op1__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "Op1"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'op1")) ::
              Data.ProtoLens.FieldDescriptor KvmSysAccessFtraceEvent
        op2__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "Op2"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'op2")) ::
              Data.ProtoLens.FieldDescriptor KvmSysAccessFtraceEvent
        isWrite__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "is_write"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'isWrite")) ::
              Data.ProtoLens.FieldDescriptor KvmSysAccessFtraceEvent
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'name")) ::
              Data.ProtoLens.FieldDescriptor KvmSysAccessFtraceEvent
        vcpuPc__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vcpu_pc"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'vcpuPc")) ::
              Data.ProtoLens.FieldDescriptor KvmSysAccessFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, crm__field_descriptor),
           (Data.ProtoLens.Tag 2, crn__field_descriptor),
           (Data.ProtoLens.Tag 3, op0__field_descriptor),
           (Data.ProtoLens.Tag 4, op1__field_descriptor),
           (Data.ProtoLens.Tag 5, op2__field_descriptor),
           (Data.ProtoLens.Tag 6, isWrite__field_descriptor),
           (Data.ProtoLens.Tag 7, name__field_descriptor),
           (Data.ProtoLens.Tag 8, vcpuPc__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KvmSysAccessFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_KvmSysAccessFtraceEvent'_unknownFields = y__})
  defMessage
    = KvmSysAccessFtraceEvent'_constructor
        {_KvmSysAccessFtraceEvent'crm = Prelude.Nothing,
         _KvmSysAccessFtraceEvent'crn = Prelude.Nothing,
         _KvmSysAccessFtraceEvent'op0 = Prelude.Nothing,
         _KvmSysAccessFtraceEvent'op1 = Prelude.Nothing,
         _KvmSysAccessFtraceEvent'op2 = Prelude.Nothing,
         _KvmSysAccessFtraceEvent'isWrite = Prelude.Nothing,
         _KvmSysAccessFtraceEvent'name = Prelude.Nothing,
         _KvmSysAccessFtraceEvent'vcpuPc = Prelude.Nothing,
         _KvmSysAccessFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KvmSysAccessFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser KvmSysAccessFtraceEvent
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
                                       "CRm"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"crm") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "CRn"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"crn") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "Op0"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"op0") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "Op1"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"op1") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "Op2"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"op2") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "is_write"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"isWrite") y x)
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
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "vcpu_pc"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"vcpuPc") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "KvmSysAccessFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'crm") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'crn") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'op0") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'op1") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'op2") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'isWrite") _x
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
                                    Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'name") _x
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
                                         (Data.ProtoLens.Field.field @"maybe'vcpuPc") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData KvmSysAccessFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KvmSysAccessFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_KvmSysAccessFtraceEvent'crm x__)
                (Control.DeepSeq.deepseq
                   (_KvmSysAccessFtraceEvent'crn x__)
                   (Control.DeepSeq.deepseq
                      (_KvmSysAccessFtraceEvent'op0 x__)
                      (Control.DeepSeq.deepseq
                         (_KvmSysAccessFtraceEvent'op1 x__)
                         (Control.DeepSeq.deepseq
                            (_KvmSysAccessFtraceEvent'op2 x__)
                            (Control.DeepSeq.deepseq
                               (_KvmSysAccessFtraceEvent'isWrite x__)
                               (Control.DeepSeq.deepseq
                                  (_KvmSysAccessFtraceEvent'name x__)
                                  (Control.DeepSeq.deepseq
                                     (_KvmSysAccessFtraceEvent'vcpuPc x__) ()))))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.hva' @:: Lens' KvmTestAgeHvaFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'hva' @:: Lens' KvmTestAgeHvaFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data KvmTestAgeHvaFtraceEvent
  = KvmTestAgeHvaFtraceEvent'_constructor {_KvmTestAgeHvaFtraceEvent'hva :: !(Prelude.Maybe Data.Word.Word64),
                                           _KvmTestAgeHvaFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KvmTestAgeHvaFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KvmTestAgeHvaFtraceEvent "hva" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmTestAgeHvaFtraceEvent'hva
           (\ x__ y__ -> x__ {_KvmTestAgeHvaFtraceEvent'hva = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmTestAgeHvaFtraceEvent "maybe'hva" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmTestAgeHvaFtraceEvent'hva
           (\ x__ y__ -> x__ {_KvmTestAgeHvaFtraceEvent'hva = y__}))
        Prelude.id
instance Data.ProtoLens.Message KvmTestAgeHvaFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.KvmTestAgeHvaFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\CANKvmTestAgeHvaFtraceEvent\DC2\DLE\n\
      \\ETXhva\CAN\SOH \SOH(\EOTR\ETXhva"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        hva__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "hva"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'hva")) ::
              Data.ProtoLens.FieldDescriptor KvmTestAgeHvaFtraceEvent
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, hva__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KvmTestAgeHvaFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_KvmTestAgeHvaFtraceEvent'_unknownFields = y__})
  defMessage
    = KvmTestAgeHvaFtraceEvent'_constructor
        {_KvmTestAgeHvaFtraceEvent'hva = Prelude.Nothing,
         _KvmTestAgeHvaFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KvmTestAgeHvaFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser KvmTestAgeHvaFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "hva"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"hva") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "KvmTestAgeHvaFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'hva") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData KvmTestAgeHvaFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KvmTestAgeHvaFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq (_KvmTestAgeHvaFtraceEvent'hva x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.shouldFire' @:: Lens' KvmTimerEmulateFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'shouldFire' @:: Lens' KvmTimerEmulateFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.timerIdx' @:: Lens' KvmTimerEmulateFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'timerIdx' @:: Lens' KvmTimerEmulateFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data KvmTimerEmulateFtraceEvent
  = KvmTimerEmulateFtraceEvent'_constructor {_KvmTimerEmulateFtraceEvent'shouldFire :: !(Prelude.Maybe Data.Word.Word32),
                                             _KvmTimerEmulateFtraceEvent'timerIdx :: !(Prelude.Maybe Data.Int.Int32),
                                             _KvmTimerEmulateFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KvmTimerEmulateFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KvmTimerEmulateFtraceEvent "shouldFire" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmTimerEmulateFtraceEvent'shouldFire
           (\ x__ y__ -> x__ {_KvmTimerEmulateFtraceEvent'shouldFire = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmTimerEmulateFtraceEvent "maybe'shouldFire" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmTimerEmulateFtraceEvent'shouldFire
           (\ x__ y__ -> x__ {_KvmTimerEmulateFtraceEvent'shouldFire = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmTimerEmulateFtraceEvent "timerIdx" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmTimerEmulateFtraceEvent'timerIdx
           (\ x__ y__ -> x__ {_KvmTimerEmulateFtraceEvent'timerIdx = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmTimerEmulateFtraceEvent "maybe'timerIdx" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmTimerEmulateFtraceEvent'timerIdx
           (\ x__ y__ -> x__ {_KvmTimerEmulateFtraceEvent'timerIdx = y__}))
        Prelude.id
instance Data.ProtoLens.Message KvmTimerEmulateFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.KvmTimerEmulateFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SUBKvmTimerEmulateFtraceEvent\DC2\US\n\
      \\vshould_fire\CAN\SOH \SOH(\rR\n\
      \shouldFire\DC2\ESC\n\
      \\ttimer_idx\CAN\STX \SOH(\ENQR\btimerIdx"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        shouldFire__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "should_fire"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'shouldFire")) ::
              Data.ProtoLens.FieldDescriptor KvmTimerEmulateFtraceEvent
        timerIdx__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timer_idx"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timerIdx")) ::
              Data.ProtoLens.FieldDescriptor KvmTimerEmulateFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, shouldFire__field_descriptor),
           (Data.ProtoLens.Tag 2, timerIdx__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KvmTimerEmulateFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_KvmTimerEmulateFtraceEvent'_unknownFields = y__})
  defMessage
    = KvmTimerEmulateFtraceEvent'_constructor
        {_KvmTimerEmulateFtraceEvent'shouldFire = Prelude.Nothing,
         _KvmTimerEmulateFtraceEvent'timerIdx = Prelude.Nothing,
         _KvmTimerEmulateFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KvmTimerEmulateFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser KvmTimerEmulateFtraceEvent
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
                                       "should_fire"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"shouldFire") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timer_idx"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timerIdx") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "KvmTimerEmulateFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'shouldFire") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'timerIdx") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData KvmTimerEmulateFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KvmTimerEmulateFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_KvmTimerEmulateFtraceEvent'shouldFire x__)
                (Control.DeepSeq.deepseq
                   (_KvmTimerEmulateFtraceEvent'timerIdx x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.timerIdx' @:: Lens' KvmTimerHrtimerExpireFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'timerIdx' @:: Lens' KvmTimerHrtimerExpireFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data KvmTimerHrtimerExpireFtraceEvent
  = KvmTimerHrtimerExpireFtraceEvent'_constructor {_KvmTimerHrtimerExpireFtraceEvent'timerIdx :: !(Prelude.Maybe Data.Int.Int32),
                                                   _KvmTimerHrtimerExpireFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KvmTimerHrtimerExpireFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KvmTimerHrtimerExpireFtraceEvent "timerIdx" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmTimerHrtimerExpireFtraceEvent'timerIdx
           (\ x__ y__
              -> x__ {_KvmTimerHrtimerExpireFtraceEvent'timerIdx = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmTimerHrtimerExpireFtraceEvent "maybe'timerIdx" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmTimerHrtimerExpireFtraceEvent'timerIdx
           (\ x__ y__
              -> x__ {_KvmTimerHrtimerExpireFtraceEvent'timerIdx = y__}))
        Prelude.id
instance Data.ProtoLens.Message KvmTimerHrtimerExpireFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.KvmTimerHrtimerExpireFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \ KvmTimerHrtimerExpireFtraceEvent\DC2\ESC\n\
      \\ttimer_idx\CAN\SOH \SOH(\ENQR\btimerIdx"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        timerIdx__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timer_idx"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timerIdx")) ::
              Data.ProtoLens.FieldDescriptor KvmTimerHrtimerExpireFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, timerIdx__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KvmTimerHrtimerExpireFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_KvmTimerHrtimerExpireFtraceEvent'_unknownFields = y__})
  defMessage
    = KvmTimerHrtimerExpireFtraceEvent'_constructor
        {_KvmTimerHrtimerExpireFtraceEvent'timerIdx = Prelude.Nothing,
         _KvmTimerHrtimerExpireFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KvmTimerHrtimerExpireFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser KvmTimerHrtimerExpireFtraceEvent
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
                                       "timer_idx"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timerIdx") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "KvmTimerHrtimerExpireFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'timerIdx") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData KvmTimerHrtimerExpireFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KvmTimerHrtimerExpireFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_KvmTimerHrtimerExpireFtraceEvent'timerIdx x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.ctl' @:: Lens' KvmTimerRestoreStateFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'ctl' @:: Lens' KvmTimerRestoreStateFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.cval' @:: Lens' KvmTimerRestoreStateFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'cval' @:: Lens' KvmTimerRestoreStateFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.timerIdx' @:: Lens' KvmTimerRestoreStateFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'timerIdx' @:: Lens' KvmTimerRestoreStateFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data KvmTimerRestoreStateFtraceEvent
  = KvmTimerRestoreStateFtraceEvent'_constructor {_KvmTimerRestoreStateFtraceEvent'ctl :: !(Prelude.Maybe Data.Word.Word64),
                                                  _KvmTimerRestoreStateFtraceEvent'cval :: !(Prelude.Maybe Data.Word.Word64),
                                                  _KvmTimerRestoreStateFtraceEvent'timerIdx :: !(Prelude.Maybe Data.Int.Int32),
                                                  _KvmTimerRestoreStateFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KvmTimerRestoreStateFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KvmTimerRestoreStateFtraceEvent "ctl" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmTimerRestoreStateFtraceEvent'ctl
           (\ x__ y__ -> x__ {_KvmTimerRestoreStateFtraceEvent'ctl = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmTimerRestoreStateFtraceEvent "maybe'ctl" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmTimerRestoreStateFtraceEvent'ctl
           (\ x__ y__ -> x__ {_KvmTimerRestoreStateFtraceEvent'ctl = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmTimerRestoreStateFtraceEvent "cval" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmTimerRestoreStateFtraceEvent'cval
           (\ x__ y__ -> x__ {_KvmTimerRestoreStateFtraceEvent'cval = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmTimerRestoreStateFtraceEvent "maybe'cval" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmTimerRestoreStateFtraceEvent'cval
           (\ x__ y__ -> x__ {_KvmTimerRestoreStateFtraceEvent'cval = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmTimerRestoreStateFtraceEvent "timerIdx" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmTimerRestoreStateFtraceEvent'timerIdx
           (\ x__ y__
              -> x__ {_KvmTimerRestoreStateFtraceEvent'timerIdx = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmTimerRestoreStateFtraceEvent "maybe'timerIdx" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmTimerRestoreStateFtraceEvent'timerIdx
           (\ x__ y__
              -> x__ {_KvmTimerRestoreStateFtraceEvent'timerIdx = y__}))
        Prelude.id
instance Data.ProtoLens.Message KvmTimerRestoreStateFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.KvmTimerRestoreStateFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\USKvmTimerRestoreStateFtraceEvent\DC2\DLE\n\
      \\ETXctl\CAN\SOH \SOH(\EOTR\ETXctl\DC2\DC2\n\
      \\EOTcval\CAN\STX \SOH(\EOTR\EOTcval\DC2\ESC\n\
      \\ttimer_idx\CAN\ETX \SOH(\ENQR\btimerIdx"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        ctl__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ctl"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ctl")) ::
              Data.ProtoLens.FieldDescriptor KvmTimerRestoreStateFtraceEvent
        cval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cval"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cval")) ::
              Data.ProtoLens.FieldDescriptor KvmTimerRestoreStateFtraceEvent
        timerIdx__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timer_idx"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timerIdx")) ::
              Data.ProtoLens.FieldDescriptor KvmTimerRestoreStateFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, ctl__field_descriptor),
           (Data.ProtoLens.Tag 2, cval__field_descriptor),
           (Data.ProtoLens.Tag 3, timerIdx__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KvmTimerRestoreStateFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_KvmTimerRestoreStateFtraceEvent'_unknownFields = y__})
  defMessage
    = KvmTimerRestoreStateFtraceEvent'_constructor
        {_KvmTimerRestoreStateFtraceEvent'ctl = Prelude.Nothing,
         _KvmTimerRestoreStateFtraceEvent'cval = Prelude.Nothing,
         _KvmTimerRestoreStateFtraceEvent'timerIdx = Prelude.Nothing,
         _KvmTimerRestoreStateFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KvmTimerRestoreStateFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser KvmTimerRestoreStateFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ctl"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ctl") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "cval"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cval") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timer_idx"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timerIdx") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "KvmTimerRestoreStateFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ctl") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cval") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'timerIdx") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData KvmTimerRestoreStateFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KvmTimerRestoreStateFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_KvmTimerRestoreStateFtraceEvent'ctl x__)
                (Control.DeepSeq.deepseq
                   (_KvmTimerRestoreStateFtraceEvent'cval x__)
                   (Control.DeepSeq.deepseq
                      (_KvmTimerRestoreStateFtraceEvent'timerIdx x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.ctl' @:: Lens' KvmTimerSaveStateFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'ctl' @:: Lens' KvmTimerSaveStateFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.cval' @:: Lens' KvmTimerSaveStateFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'cval' @:: Lens' KvmTimerSaveStateFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.timerIdx' @:: Lens' KvmTimerSaveStateFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'timerIdx' @:: Lens' KvmTimerSaveStateFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data KvmTimerSaveStateFtraceEvent
  = KvmTimerSaveStateFtraceEvent'_constructor {_KvmTimerSaveStateFtraceEvent'ctl :: !(Prelude.Maybe Data.Word.Word64),
                                               _KvmTimerSaveStateFtraceEvent'cval :: !(Prelude.Maybe Data.Word.Word64),
                                               _KvmTimerSaveStateFtraceEvent'timerIdx :: !(Prelude.Maybe Data.Int.Int32),
                                               _KvmTimerSaveStateFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KvmTimerSaveStateFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KvmTimerSaveStateFtraceEvent "ctl" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmTimerSaveStateFtraceEvent'ctl
           (\ x__ y__ -> x__ {_KvmTimerSaveStateFtraceEvent'ctl = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmTimerSaveStateFtraceEvent "maybe'ctl" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmTimerSaveStateFtraceEvent'ctl
           (\ x__ y__ -> x__ {_KvmTimerSaveStateFtraceEvent'ctl = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmTimerSaveStateFtraceEvent "cval" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmTimerSaveStateFtraceEvent'cval
           (\ x__ y__ -> x__ {_KvmTimerSaveStateFtraceEvent'cval = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmTimerSaveStateFtraceEvent "maybe'cval" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmTimerSaveStateFtraceEvent'cval
           (\ x__ y__ -> x__ {_KvmTimerSaveStateFtraceEvent'cval = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmTimerSaveStateFtraceEvent "timerIdx" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmTimerSaveStateFtraceEvent'timerIdx
           (\ x__ y__ -> x__ {_KvmTimerSaveStateFtraceEvent'timerIdx = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmTimerSaveStateFtraceEvent "maybe'timerIdx" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmTimerSaveStateFtraceEvent'timerIdx
           (\ x__ y__ -> x__ {_KvmTimerSaveStateFtraceEvent'timerIdx = y__}))
        Prelude.id
instance Data.ProtoLens.Message KvmTimerSaveStateFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.KvmTimerSaveStateFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\FSKvmTimerSaveStateFtraceEvent\DC2\DLE\n\
      \\ETXctl\CAN\SOH \SOH(\EOTR\ETXctl\DC2\DC2\n\
      \\EOTcval\CAN\STX \SOH(\EOTR\EOTcval\DC2\ESC\n\
      \\ttimer_idx\CAN\ETX \SOH(\ENQR\btimerIdx"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        ctl__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ctl"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ctl")) ::
              Data.ProtoLens.FieldDescriptor KvmTimerSaveStateFtraceEvent
        cval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cval"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cval")) ::
              Data.ProtoLens.FieldDescriptor KvmTimerSaveStateFtraceEvent
        timerIdx__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timer_idx"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timerIdx")) ::
              Data.ProtoLens.FieldDescriptor KvmTimerSaveStateFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, ctl__field_descriptor),
           (Data.ProtoLens.Tag 2, cval__field_descriptor),
           (Data.ProtoLens.Tag 3, timerIdx__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KvmTimerSaveStateFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_KvmTimerSaveStateFtraceEvent'_unknownFields = y__})
  defMessage
    = KvmTimerSaveStateFtraceEvent'_constructor
        {_KvmTimerSaveStateFtraceEvent'ctl = Prelude.Nothing,
         _KvmTimerSaveStateFtraceEvent'cval = Prelude.Nothing,
         _KvmTimerSaveStateFtraceEvent'timerIdx = Prelude.Nothing,
         _KvmTimerSaveStateFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KvmTimerSaveStateFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser KvmTimerSaveStateFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ctl"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ctl") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "cval"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cval") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timer_idx"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timerIdx") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "KvmTimerSaveStateFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ctl") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cval") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'timerIdx") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData KvmTimerSaveStateFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KvmTimerSaveStateFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_KvmTimerSaveStateFtraceEvent'ctl x__)
                (Control.DeepSeq.deepseq
                   (_KvmTimerSaveStateFtraceEvent'cval x__)
                   (Control.DeepSeq.deepseq
                      (_KvmTimerSaveStateFtraceEvent'timerIdx x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.irq' @:: Lens' KvmTimerUpdateIrqFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'irq' @:: Lens' KvmTimerUpdateIrqFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.level' @:: Lens' KvmTimerUpdateIrqFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'level' @:: Lens' KvmTimerUpdateIrqFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.vcpuId' @:: Lens' KvmTimerUpdateIrqFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'vcpuId' @:: Lens' KvmTimerUpdateIrqFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data KvmTimerUpdateIrqFtraceEvent
  = KvmTimerUpdateIrqFtraceEvent'_constructor {_KvmTimerUpdateIrqFtraceEvent'irq :: !(Prelude.Maybe Data.Word.Word32),
                                               _KvmTimerUpdateIrqFtraceEvent'level :: !(Prelude.Maybe Data.Int.Int32),
                                               _KvmTimerUpdateIrqFtraceEvent'vcpuId :: !(Prelude.Maybe Data.Word.Word64),
                                               _KvmTimerUpdateIrqFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KvmTimerUpdateIrqFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KvmTimerUpdateIrqFtraceEvent "irq" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmTimerUpdateIrqFtraceEvent'irq
           (\ x__ y__ -> x__ {_KvmTimerUpdateIrqFtraceEvent'irq = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmTimerUpdateIrqFtraceEvent "maybe'irq" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmTimerUpdateIrqFtraceEvent'irq
           (\ x__ y__ -> x__ {_KvmTimerUpdateIrqFtraceEvent'irq = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmTimerUpdateIrqFtraceEvent "level" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmTimerUpdateIrqFtraceEvent'level
           (\ x__ y__ -> x__ {_KvmTimerUpdateIrqFtraceEvent'level = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmTimerUpdateIrqFtraceEvent "maybe'level" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmTimerUpdateIrqFtraceEvent'level
           (\ x__ y__ -> x__ {_KvmTimerUpdateIrqFtraceEvent'level = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmTimerUpdateIrqFtraceEvent "vcpuId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmTimerUpdateIrqFtraceEvent'vcpuId
           (\ x__ y__ -> x__ {_KvmTimerUpdateIrqFtraceEvent'vcpuId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmTimerUpdateIrqFtraceEvent "maybe'vcpuId" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmTimerUpdateIrqFtraceEvent'vcpuId
           (\ x__ y__ -> x__ {_KvmTimerUpdateIrqFtraceEvent'vcpuId = y__}))
        Prelude.id
instance Data.ProtoLens.Message KvmTimerUpdateIrqFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.KvmTimerUpdateIrqFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\FSKvmTimerUpdateIrqFtraceEvent\DC2\DLE\n\
      \\ETXirq\CAN\SOH \SOH(\rR\ETXirq\DC2\DC4\n\
      \\ENQlevel\CAN\STX \SOH(\ENQR\ENQlevel\DC2\ETB\n\
      \\avcpu_id\CAN\ETX \SOH(\EOTR\ACKvcpuId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        irq__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "irq"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'irq")) ::
              Data.ProtoLens.FieldDescriptor KvmTimerUpdateIrqFtraceEvent
        level__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "level"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'level")) ::
              Data.ProtoLens.FieldDescriptor KvmTimerUpdateIrqFtraceEvent
        vcpuId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vcpu_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'vcpuId")) ::
              Data.ProtoLens.FieldDescriptor KvmTimerUpdateIrqFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, irq__field_descriptor),
           (Data.ProtoLens.Tag 2, level__field_descriptor),
           (Data.ProtoLens.Tag 3, vcpuId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KvmTimerUpdateIrqFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_KvmTimerUpdateIrqFtraceEvent'_unknownFields = y__})
  defMessage
    = KvmTimerUpdateIrqFtraceEvent'_constructor
        {_KvmTimerUpdateIrqFtraceEvent'irq = Prelude.Nothing,
         _KvmTimerUpdateIrqFtraceEvent'level = Prelude.Nothing,
         _KvmTimerUpdateIrqFtraceEvent'vcpuId = Prelude.Nothing,
         _KvmTimerUpdateIrqFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KvmTimerUpdateIrqFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser KvmTimerUpdateIrqFtraceEvent
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
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "level"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"level") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "vcpu_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"vcpuId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "KvmTimerUpdateIrqFtraceEvent"
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
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'level") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'vcpuId") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData KvmTimerUpdateIrqFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KvmTimerUpdateIrqFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_KvmTimerUpdateIrqFtraceEvent'irq x__)
                (Control.DeepSeq.deepseq
                   (_KvmTimerUpdateIrqFtraceEvent'level x__)
                   (Control.DeepSeq.deepseq
                      (_KvmTimerUpdateIrqFtraceEvent'vcpuId x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.now' @:: Lens' KvmToggleCacheFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'now' @:: Lens' KvmToggleCacheFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.vcpuPc' @:: Lens' KvmToggleCacheFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'vcpuPc' @:: Lens' KvmToggleCacheFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.was' @:: Lens' KvmToggleCacheFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'was' @:: Lens' KvmToggleCacheFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data KvmToggleCacheFtraceEvent
  = KvmToggleCacheFtraceEvent'_constructor {_KvmToggleCacheFtraceEvent'now :: !(Prelude.Maybe Data.Word.Word32),
                                            _KvmToggleCacheFtraceEvent'vcpuPc :: !(Prelude.Maybe Data.Word.Word64),
                                            _KvmToggleCacheFtraceEvent'was :: !(Prelude.Maybe Data.Word.Word32),
                                            _KvmToggleCacheFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KvmToggleCacheFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KvmToggleCacheFtraceEvent "now" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmToggleCacheFtraceEvent'now
           (\ x__ y__ -> x__ {_KvmToggleCacheFtraceEvent'now = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmToggleCacheFtraceEvent "maybe'now" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmToggleCacheFtraceEvent'now
           (\ x__ y__ -> x__ {_KvmToggleCacheFtraceEvent'now = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmToggleCacheFtraceEvent "vcpuPc" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmToggleCacheFtraceEvent'vcpuPc
           (\ x__ y__ -> x__ {_KvmToggleCacheFtraceEvent'vcpuPc = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmToggleCacheFtraceEvent "maybe'vcpuPc" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmToggleCacheFtraceEvent'vcpuPc
           (\ x__ y__ -> x__ {_KvmToggleCacheFtraceEvent'vcpuPc = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmToggleCacheFtraceEvent "was" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmToggleCacheFtraceEvent'was
           (\ x__ y__ -> x__ {_KvmToggleCacheFtraceEvent'was = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmToggleCacheFtraceEvent "maybe'was" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmToggleCacheFtraceEvent'was
           (\ x__ y__ -> x__ {_KvmToggleCacheFtraceEvent'was = y__}))
        Prelude.id
instance Data.ProtoLens.Message KvmToggleCacheFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.KvmToggleCacheFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\EMKvmToggleCacheFtraceEvent\DC2\DLE\n\
      \\ETXnow\CAN\SOH \SOH(\rR\ETXnow\DC2\ETB\n\
      \\avcpu_pc\CAN\STX \SOH(\EOTR\ACKvcpuPc\DC2\DLE\n\
      \\ETXwas\CAN\ETX \SOH(\rR\ETXwas"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        now__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "now"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'now")) ::
              Data.ProtoLens.FieldDescriptor KvmToggleCacheFtraceEvent
        vcpuPc__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vcpu_pc"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'vcpuPc")) ::
              Data.ProtoLens.FieldDescriptor KvmToggleCacheFtraceEvent
        was__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "was"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'was")) ::
              Data.ProtoLens.FieldDescriptor KvmToggleCacheFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, now__field_descriptor),
           (Data.ProtoLens.Tag 2, vcpuPc__field_descriptor),
           (Data.ProtoLens.Tag 3, was__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KvmToggleCacheFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_KvmToggleCacheFtraceEvent'_unknownFields = y__})
  defMessage
    = KvmToggleCacheFtraceEvent'_constructor
        {_KvmToggleCacheFtraceEvent'now = Prelude.Nothing,
         _KvmToggleCacheFtraceEvent'vcpuPc = Prelude.Nothing,
         _KvmToggleCacheFtraceEvent'was = Prelude.Nothing,
         _KvmToggleCacheFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KvmToggleCacheFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser KvmToggleCacheFtraceEvent
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
                                       "now"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"now") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "vcpu_pc"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"vcpuPc") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "was"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"was") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "KvmToggleCacheFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'now") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'vcpuPc") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'was") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData KvmToggleCacheFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KvmToggleCacheFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_KvmToggleCacheFtraceEvent'now x__)
                (Control.DeepSeq.deepseq
                   (_KvmToggleCacheFtraceEvent'vcpuPc x__)
                   (Control.DeepSeq.deepseq (_KvmToggleCacheFtraceEvent'was x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.end' @:: Lens' KvmUnmapHvaRangeFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'end' @:: Lens' KvmUnmapHvaRangeFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.start' @:: Lens' KvmUnmapHvaRangeFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'start' @:: Lens' KvmUnmapHvaRangeFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data KvmUnmapHvaRangeFtraceEvent
  = KvmUnmapHvaRangeFtraceEvent'_constructor {_KvmUnmapHvaRangeFtraceEvent'end :: !(Prelude.Maybe Data.Word.Word64),
                                              _KvmUnmapHvaRangeFtraceEvent'start :: !(Prelude.Maybe Data.Word.Word64),
                                              _KvmUnmapHvaRangeFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KvmUnmapHvaRangeFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KvmUnmapHvaRangeFtraceEvent "end" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmUnmapHvaRangeFtraceEvent'end
           (\ x__ y__ -> x__ {_KvmUnmapHvaRangeFtraceEvent'end = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmUnmapHvaRangeFtraceEvent "maybe'end" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmUnmapHvaRangeFtraceEvent'end
           (\ x__ y__ -> x__ {_KvmUnmapHvaRangeFtraceEvent'end = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmUnmapHvaRangeFtraceEvent "start" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmUnmapHvaRangeFtraceEvent'start
           (\ x__ y__ -> x__ {_KvmUnmapHvaRangeFtraceEvent'start = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmUnmapHvaRangeFtraceEvent "maybe'start" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmUnmapHvaRangeFtraceEvent'start
           (\ x__ y__ -> x__ {_KvmUnmapHvaRangeFtraceEvent'start = y__}))
        Prelude.id
instance Data.ProtoLens.Message KvmUnmapHvaRangeFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.KvmUnmapHvaRangeFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ESCKvmUnmapHvaRangeFtraceEvent\DC2\DLE\n\
      \\ETXend\CAN\SOH \SOH(\EOTR\ETXend\DC2\DC4\n\
      \\ENQstart\CAN\STX \SOH(\EOTR\ENQstart"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        end__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "end"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'end")) ::
              Data.ProtoLens.FieldDescriptor KvmUnmapHvaRangeFtraceEvent
        start__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'start")) ::
              Data.ProtoLens.FieldDescriptor KvmUnmapHvaRangeFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, end__field_descriptor),
           (Data.ProtoLens.Tag 2, start__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KvmUnmapHvaRangeFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_KvmUnmapHvaRangeFtraceEvent'_unknownFields = y__})
  defMessage
    = KvmUnmapHvaRangeFtraceEvent'_constructor
        {_KvmUnmapHvaRangeFtraceEvent'end = Prelude.Nothing,
         _KvmUnmapHvaRangeFtraceEvent'start = Prelude.Nothing,
         _KvmUnmapHvaRangeFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KvmUnmapHvaRangeFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser KvmUnmapHvaRangeFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "end"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"end") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "start"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"start") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "KvmUnmapHvaRangeFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'end") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'start") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData KvmUnmapHvaRangeFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KvmUnmapHvaRangeFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_KvmUnmapHvaRangeFtraceEvent'end x__)
                (Control.DeepSeq.deepseq
                   (_KvmUnmapHvaRangeFtraceEvent'start x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.reason' @:: Lens' KvmUserspaceExitFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'reason' @:: Lens' KvmUserspaceExitFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data KvmUserspaceExitFtraceEvent
  = KvmUserspaceExitFtraceEvent'_constructor {_KvmUserspaceExitFtraceEvent'reason :: !(Prelude.Maybe Data.Word.Word32),
                                              _KvmUserspaceExitFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KvmUserspaceExitFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KvmUserspaceExitFtraceEvent "reason" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmUserspaceExitFtraceEvent'reason
           (\ x__ y__ -> x__ {_KvmUserspaceExitFtraceEvent'reason = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmUserspaceExitFtraceEvent "maybe'reason" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmUserspaceExitFtraceEvent'reason
           (\ x__ y__ -> x__ {_KvmUserspaceExitFtraceEvent'reason = y__}))
        Prelude.id
instance Data.ProtoLens.Message KvmUserspaceExitFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.KvmUserspaceExitFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ESCKvmUserspaceExitFtraceEvent\DC2\SYN\n\
      \\ACKreason\CAN\SOH \SOH(\rR\ACKreason"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        reason__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reason"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'reason")) ::
              Data.ProtoLens.FieldDescriptor KvmUserspaceExitFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, reason__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KvmUserspaceExitFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_KvmUserspaceExitFtraceEvent'_unknownFields = y__})
  defMessage
    = KvmUserspaceExitFtraceEvent'_constructor
        {_KvmUserspaceExitFtraceEvent'reason = Prelude.Nothing,
         _KvmUserspaceExitFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KvmUserspaceExitFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser KvmUserspaceExitFtraceEvent
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
                                       "reason"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"reason") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "KvmUserspaceExitFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'reason") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData KvmUserspaceExitFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KvmUserspaceExitFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_KvmUserspaceExitFtraceEvent'reason x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.ns' @:: Lens' KvmVcpuWakeupFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'ns' @:: Lens' KvmVcpuWakeupFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.valid' @:: Lens' KvmVcpuWakeupFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'valid' @:: Lens' KvmVcpuWakeupFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.waited' @:: Lens' KvmVcpuWakeupFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'waited' @:: Lens' KvmVcpuWakeupFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data KvmVcpuWakeupFtraceEvent
  = KvmVcpuWakeupFtraceEvent'_constructor {_KvmVcpuWakeupFtraceEvent'ns :: !(Prelude.Maybe Data.Word.Word64),
                                           _KvmVcpuWakeupFtraceEvent'valid :: !(Prelude.Maybe Data.Word.Word32),
                                           _KvmVcpuWakeupFtraceEvent'waited :: !(Prelude.Maybe Data.Word.Word32),
                                           _KvmVcpuWakeupFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KvmVcpuWakeupFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KvmVcpuWakeupFtraceEvent "ns" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmVcpuWakeupFtraceEvent'ns
           (\ x__ y__ -> x__ {_KvmVcpuWakeupFtraceEvent'ns = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmVcpuWakeupFtraceEvent "maybe'ns" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmVcpuWakeupFtraceEvent'ns
           (\ x__ y__ -> x__ {_KvmVcpuWakeupFtraceEvent'ns = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmVcpuWakeupFtraceEvent "valid" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmVcpuWakeupFtraceEvent'valid
           (\ x__ y__ -> x__ {_KvmVcpuWakeupFtraceEvent'valid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmVcpuWakeupFtraceEvent "maybe'valid" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmVcpuWakeupFtraceEvent'valid
           (\ x__ y__ -> x__ {_KvmVcpuWakeupFtraceEvent'valid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmVcpuWakeupFtraceEvent "waited" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmVcpuWakeupFtraceEvent'waited
           (\ x__ y__ -> x__ {_KvmVcpuWakeupFtraceEvent'waited = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmVcpuWakeupFtraceEvent "maybe'waited" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmVcpuWakeupFtraceEvent'waited
           (\ x__ y__ -> x__ {_KvmVcpuWakeupFtraceEvent'waited = y__}))
        Prelude.id
instance Data.ProtoLens.Message KvmVcpuWakeupFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.KvmVcpuWakeupFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\CANKvmVcpuWakeupFtraceEvent\DC2\SO\n\
      \\STXns\CAN\SOH \SOH(\EOTR\STXns\DC2\DC4\n\
      \\ENQvalid\CAN\STX \SOH(\rR\ENQvalid\DC2\SYN\n\
      \\ACKwaited\CAN\ETX \SOH(\rR\ACKwaited"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        ns__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ns"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ns")) ::
              Data.ProtoLens.FieldDescriptor KvmVcpuWakeupFtraceEvent
        valid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "valid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'valid")) ::
              Data.ProtoLens.FieldDescriptor KvmVcpuWakeupFtraceEvent
        waited__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "waited"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'waited")) ::
              Data.ProtoLens.FieldDescriptor KvmVcpuWakeupFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, ns__field_descriptor),
           (Data.ProtoLens.Tag 2, valid__field_descriptor),
           (Data.ProtoLens.Tag 3, waited__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KvmVcpuWakeupFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_KvmVcpuWakeupFtraceEvent'_unknownFields = y__})
  defMessage
    = KvmVcpuWakeupFtraceEvent'_constructor
        {_KvmVcpuWakeupFtraceEvent'ns = Prelude.Nothing,
         _KvmVcpuWakeupFtraceEvent'valid = Prelude.Nothing,
         _KvmVcpuWakeupFtraceEvent'waited = Prelude.Nothing,
         _KvmVcpuWakeupFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KvmVcpuWakeupFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser KvmVcpuWakeupFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ns"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ns") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "valid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"valid") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "waited"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"waited") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "KvmVcpuWakeupFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ns") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'valid") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'waited") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData KvmVcpuWakeupFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KvmVcpuWakeupFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_KvmVcpuWakeupFtraceEvent'ns x__)
                (Control.DeepSeq.deepseq
                   (_KvmVcpuWakeupFtraceEvent'valid x__)
                   (Control.DeepSeq.deepseq
                      (_KvmVcpuWakeupFtraceEvent'waited x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.isWfe' @:: Lens' KvmWfxArm64FtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'isWfe' @:: Lens' KvmWfxArm64FtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.vcpuPc' @:: Lens' KvmWfxArm64FtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'vcpuPc' @:: Lens' KvmWfxArm64FtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data KvmWfxArm64FtraceEvent
  = KvmWfxArm64FtraceEvent'_constructor {_KvmWfxArm64FtraceEvent'isWfe :: !(Prelude.Maybe Data.Word.Word32),
                                         _KvmWfxArm64FtraceEvent'vcpuPc :: !(Prelude.Maybe Data.Word.Word64),
                                         _KvmWfxArm64FtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KvmWfxArm64FtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KvmWfxArm64FtraceEvent "isWfe" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmWfxArm64FtraceEvent'isWfe
           (\ x__ y__ -> x__ {_KvmWfxArm64FtraceEvent'isWfe = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmWfxArm64FtraceEvent "maybe'isWfe" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmWfxArm64FtraceEvent'isWfe
           (\ x__ y__ -> x__ {_KvmWfxArm64FtraceEvent'isWfe = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KvmWfxArm64FtraceEvent "vcpuPc" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmWfxArm64FtraceEvent'vcpuPc
           (\ x__ y__ -> x__ {_KvmWfxArm64FtraceEvent'vcpuPc = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KvmWfxArm64FtraceEvent "maybe'vcpuPc" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KvmWfxArm64FtraceEvent'vcpuPc
           (\ x__ y__ -> x__ {_KvmWfxArm64FtraceEvent'vcpuPc = y__}))
        Prelude.id
instance Data.ProtoLens.Message KvmWfxArm64FtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.KvmWfxArm64FtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SYNKvmWfxArm64FtraceEvent\DC2\NAK\n\
      \\ACKis_wfe\CAN\SOH \SOH(\rR\ENQisWfe\DC2\ETB\n\
      \\avcpu_pc\CAN\STX \SOH(\EOTR\ACKvcpuPc"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        isWfe__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "is_wfe"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'isWfe")) ::
              Data.ProtoLens.FieldDescriptor KvmWfxArm64FtraceEvent
        vcpuPc__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vcpu_pc"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'vcpuPc")) ::
              Data.ProtoLens.FieldDescriptor KvmWfxArm64FtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, isWfe__field_descriptor),
           (Data.ProtoLens.Tag 2, vcpuPc__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KvmWfxArm64FtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_KvmWfxArm64FtraceEvent'_unknownFields = y__})
  defMessage
    = KvmWfxArm64FtraceEvent'_constructor
        {_KvmWfxArm64FtraceEvent'isWfe = Prelude.Nothing,
         _KvmWfxArm64FtraceEvent'vcpuPc = Prelude.Nothing,
         _KvmWfxArm64FtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KvmWfxArm64FtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser KvmWfxArm64FtraceEvent
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
                                       "is_wfe"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"isWfe") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "vcpu_pc"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"vcpuPc") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "KvmWfxArm64FtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'isWfe") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'vcpuPc") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData KvmWfxArm64FtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KvmWfxArm64FtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_KvmWfxArm64FtraceEvent'isWfe x__)
                (Control.DeepSeq.deepseq (_KvmWfxArm64FtraceEvent'vcpuPc x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.fn' @:: Lens' TrapRegFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'fn' @:: Lens' TrapRegFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.isWrite' @:: Lens' TrapRegFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'isWrite' @:: Lens' TrapRegFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.reg' @:: Lens' TrapRegFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'reg' @:: Lens' TrapRegFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.writeValue' @:: Lens' TrapRegFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'writeValue' @:: Lens' TrapRegFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data TrapRegFtraceEvent
  = TrapRegFtraceEvent'_constructor {_TrapRegFtraceEvent'fn :: !(Prelude.Maybe Data.Text.Text),
                                     _TrapRegFtraceEvent'isWrite :: !(Prelude.Maybe Data.Word.Word32),
                                     _TrapRegFtraceEvent'reg :: !(Prelude.Maybe Data.Int.Int32),
                                     _TrapRegFtraceEvent'writeValue :: !(Prelude.Maybe Data.Word.Word64),
                                     _TrapRegFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TrapRegFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TrapRegFtraceEvent "fn" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrapRegFtraceEvent'fn
           (\ x__ y__ -> x__ {_TrapRegFtraceEvent'fn = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrapRegFtraceEvent "maybe'fn" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrapRegFtraceEvent'fn
           (\ x__ y__ -> x__ {_TrapRegFtraceEvent'fn = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrapRegFtraceEvent "isWrite" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrapRegFtraceEvent'isWrite
           (\ x__ y__ -> x__ {_TrapRegFtraceEvent'isWrite = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrapRegFtraceEvent "maybe'isWrite" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrapRegFtraceEvent'isWrite
           (\ x__ y__ -> x__ {_TrapRegFtraceEvent'isWrite = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrapRegFtraceEvent "reg" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrapRegFtraceEvent'reg
           (\ x__ y__ -> x__ {_TrapRegFtraceEvent'reg = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrapRegFtraceEvent "maybe'reg" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrapRegFtraceEvent'reg
           (\ x__ y__ -> x__ {_TrapRegFtraceEvent'reg = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrapRegFtraceEvent "writeValue" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrapRegFtraceEvent'writeValue
           (\ x__ y__ -> x__ {_TrapRegFtraceEvent'writeValue = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TrapRegFtraceEvent "maybe'writeValue" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrapRegFtraceEvent'writeValue
           (\ x__ y__ -> x__ {_TrapRegFtraceEvent'writeValue = y__}))
        Prelude.id
instance Data.ProtoLens.Message TrapRegFtraceEvent where
  messageName _ = Data.Text.pack "perfetto.protos.TrapRegFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\DC2TrapRegFtraceEvent\DC2\SO\n\
      \\STXfn\CAN\SOH \SOH(\tR\STXfn\DC2\EM\n\
      \\bis_write\CAN\STX \SOH(\rR\aisWrite\DC2\DLE\n\
      \\ETXreg\CAN\ETX \SOH(\ENQR\ETXreg\DC2\US\n\
      \\vwrite_value\CAN\EOT \SOH(\EOTR\n\
      \writeValue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        fn__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fn"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fn")) ::
              Data.ProtoLens.FieldDescriptor TrapRegFtraceEvent
        isWrite__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "is_write"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'isWrite")) ::
              Data.ProtoLens.FieldDescriptor TrapRegFtraceEvent
        reg__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reg"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'reg")) ::
              Data.ProtoLens.FieldDescriptor TrapRegFtraceEvent
        writeValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "write_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'writeValue")) ::
              Data.ProtoLens.FieldDescriptor TrapRegFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, fn__field_descriptor),
           (Data.ProtoLens.Tag 2, isWrite__field_descriptor),
           (Data.ProtoLens.Tag 3, reg__field_descriptor),
           (Data.ProtoLens.Tag 4, writeValue__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TrapRegFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_TrapRegFtraceEvent'_unknownFields = y__})
  defMessage
    = TrapRegFtraceEvent'_constructor
        {_TrapRegFtraceEvent'fn = Prelude.Nothing,
         _TrapRegFtraceEvent'isWrite = Prelude.Nothing,
         _TrapRegFtraceEvent'reg = Prelude.Nothing,
         _TrapRegFtraceEvent'writeValue = Prelude.Nothing,
         _TrapRegFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TrapRegFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser TrapRegFtraceEvent
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
                                       "fn"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"fn") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "is_write"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"isWrite") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "reg"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"reg") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "write_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"writeValue") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TrapRegFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'fn") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'isWrite") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'reg") _x
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
                             (Data.ProtoLens.Field.field @"maybe'writeValue") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData TrapRegFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TrapRegFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TrapRegFtraceEvent'fn x__)
                (Control.DeepSeq.deepseq
                   (_TrapRegFtraceEvent'isWrite x__)
                   (Control.DeepSeq.deepseq
                      (_TrapRegFtraceEvent'reg x__)
                      (Control.DeepSeq.deepseq
                         (_TrapRegFtraceEvent'writeValue x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.irq' @:: Lens' VgicUpdateIrqPendingFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'irq' @:: Lens' VgicUpdateIrqPendingFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.level' @:: Lens' VgicUpdateIrqPendingFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'level' @:: Lens' VgicUpdateIrqPendingFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.vcpuId' @:: Lens' VgicUpdateIrqPendingFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields.maybe'vcpuId' @:: Lens' VgicUpdateIrqPendingFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data VgicUpdateIrqPendingFtraceEvent
  = VgicUpdateIrqPendingFtraceEvent'_constructor {_VgicUpdateIrqPendingFtraceEvent'irq :: !(Prelude.Maybe Data.Word.Word32),
                                                  _VgicUpdateIrqPendingFtraceEvent'level :: !(Prelude.Maybe Data.Word.Word32),
                                                  _VgicUpdateIrqPendingFtraceEvent'vcpuId :: !(Prelude.Maybe Data.Word.Word64),
                                                  _VgicUpdateIrqPendingFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show VgicUpdateIrqPendingFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField VgicUpdateIrqPendingFtraceEvent "irq" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VgicUpdateIrqPendingFtraceEvent'irq
           (\ x__ y__ -> x__ {_VgicUpdateIrqPendingFtraceEvent'irq = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField VgicUpdateIrqPendingFtraceEvent "maybe'irq" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VgicUpdateIrqPendingFtraceEvent'irq
           (\ x__ y__ -> x__ {_VgicUpdateIrqPendingFtraceEvent'irq = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VgicUpdateIrqPendingFtraceEvent "level" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VgicUpdateIrqPendingFtraceEvent'level
           (\ x__ y__ -> x__ {_VgicUpdateIrqPendingFtraceEvent'level = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField VgicUpdateIrqPendingFtraceEvent "maybe'level" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VgicUpdateIrqPendingFtraceEvent'level
           (\ x__ y__ -> x__ {_VgicUpdateIrqPendingFtraceEvent'level = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VgicUpdateIrqPendingFtraceEvent "vcpuId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VgicUpdateIrqPendingFtraceEvent'vcpuId
           (\ x__ y__ -> x__ {_VgicUpdateIrqPendingFtraceEvent'vcpuId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField VgicUpdateIrqPendingFtraceEvent "maybe'vcpuId" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VgicUpdateIrqPendingFtraceEvent'vcpuId
           (\ x__ y__ -> x__ {_VgicUpdateIrqPendingFtraceEvent'vcpuId = y__}))
        Prelude.id
instance Data.ProtoLens.Message VgicUpdateIrqPendingFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.VgicUpdateIrqPendingFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\USVgicUpdateIrqPendingFtraceEvent\DC2\DLE\n\
      \\ETXirq\CAN\SOH \SOH(\rR\ETXirq\DC2\DC4\n\
      \\ENQlevel\CAN\STX \SOH(\rR\ENQlevel\DC2\ETB\n\
      \\avcpu_id\CAN\ETX \SOH(\EOTR\ACKvcpuId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        irq__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "irq"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'irq")) ::
              Data.ProtoLens.FieldDescriptor VgicUpdateIrqPendingFtraceEvent
        level__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "level"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'level")) ::
              Data.ProtoLens.FieldDescriptor VgicUpdateIrqPendingFtraceEvent
        vcpuId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vcpu_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'vcpuId")) ::
              Data.ProtoLens.FieldDescriptor VgicUpdateIrqPendingFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, irq__field_descriptor),
           (Data.ProtoLens.Tag 2, level__field_descriptor),
           (Data.ProtoLens.Tag 3, vcpuId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _VgicUpdateIrqPendingFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_VgicUpdateIrqPendingFtraceEvent'_unknownFields = y__})
  defMessage
    = VgicUpdateIrqPendingFtraceEvent'_constructor
        {_VgicUpdateIrqPendingFtraceEvent'irq = Prelude.Nothing,
         _VgicUpdateIrqPendingFtraceEvent'level = Prelude.Nothing,
         _VgicUpdateIrqPendingFtraceEvent'vcpuId = Prelude.Nothing,
         _VgicUpdateIrqPendingFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          VgicUpdateIrqPendingFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser VgicUpdateIrqPendingFtraceEvent
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
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "level"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"level") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "vcpu_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"vcpuId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "VgicUpdateIrqPendingFtraceEvent"
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
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'level") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'vcpuId") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData VgicUpdateIrqPendingFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_VgicUpdateIrqPendingFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_VgicUpdateIrqPendingFtraceEvent'irq x__)
                (Control.DeepSeq.deepseq
                   (_VgicUpdateIrqPendingFtraceEvent'level x__)
                   (Control.DeepSeq.deepseq
                      (_VgicUpdateIrqPendingFtraceEvent'vcpuId x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \&protos/perfetto/trace/ftrace/kvm.proto\DC2\SIperfetto.protos\"-\n\
    \\EMKvmAccessFaultFtraceEvent\DC2\DLE\n\
    \\ETXipa\CAN\SOH \SOH(\EOTR\ETXipa\"B\n\
    \\DC4KvmAckIrqFtraceEvent\DC2\CAN\n\
    \\airqchip\CAN\SOH \SOH(\rR\airqchip\DC2\DLE\n\
    \\ETXpin\CAN\STX \SOH(\rR\ETXpin\">\n\
    \\DC4KvmAgeHvaFtraceEvent\DC2\DLE\n\
    \\ETXend\CAN\SOH \SOH(\EOTR\ETXend\DC2\DC4\n\
    \\ENQstart\CAN\STX \SOH(\EOTR\ENQstart\"q\n\
    \\NAKKvmAgePageFtraceEvent\DC2\DLE\n\
    \\ETXgfn\CAN\SOH \SOH(\EOTR\ETXgfn\DC2\DLE\n\
    \\ETXhva\CAN\STX \SOH(\EOTR\ETXhva\DC2\DC4\n\
    \\ENQlevel\CAN\ETX \SOH(\rR\ENQlevel\DC2\RS\n\
    \\n\
    \referenced\CAN\EOT \SOH(\rR\n\
    \referenced\">\n\
    \\ESCKvmArmClearDebugFtraceEvent\DC2\US\n\
    \\vguest_debug\CAN\SOH \SOH(\rR\n\
    \guestDebug\"F\n\
    \\SUBKvmArmSetDreg32FtraceEvent\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\rR\ENQvalue\"B\n\
    \\SUBKvmArmSetRegsetFtraceEvent\DC2\DLE\n\
    \\ETXlen\CAN\SOH \SOH(\ENQR\ETXlen\DC2\DC2\n\
    \\EOTname\CAN\STX \SOH(\tR\EOTname\"R\n\
    \\ESCKvmArmSetupDebugFtraceEvent\DC2\US\n\
    \\vguest_debug\CAN\SOH \SOH(\rR\n\
    \guestDebug\DC2\DC2\n\
    \\EOTvcpu\CAN\STX \SOH(\EOTR\EOTvcpu\".\n\
    \\DC3KvmEntryFtraceEvent\DC2\ETB\n\
    \\avcpu_pc\CAN\SOH \SOH(\EOTR\ACKvcpuPc\"V\n\
    \\DC2KvmExitFtraceEvent\DC2\NAK\n\
    \\ACKesr_ec\CAN\SOH \SOH(\rR\ENQesrEc\DC2\DLE\n\
    \\ETXret\CAN\STX \SOH(\ENQR\ETXret\DC2\ETB\n\
    \\avcpu_pc\CAN\ETX \SOH(\EOTR\ACKvcpuPc\"'\n\
    \\DC1KvmFpuFtraceEvent\DC2\DC2\n\
    \\EOTload\CAN\SOH \SOH(\rR\EOTload\"\159\SOH\n\
    \\EMKvmGetTimerMapFtraceEvent\DC2#\n\
    \\rdirect_ptimer\CAN\SOH \SOH(\ENQR\fdirectPtimer\DC2#\n\
    \\rdirect_vtimer\CAN\STX \SOH(\ENQR\fdirectVtimer\DC2\US\n\
    \\vemul_ptimer\CAN\ETX \SOH(\ENQR\n\
    \emulPtimer\DC2\ETB\n\
    \\avcpu_id\CAN\EOT \SOH(\EOTR\ACKvcpuId\"m\n\
    \\CANKvmGuestFaultFtraceEvent\DC2\DLE\n\
    \\ETXhsr\CAN\SOH \SOH(\EOTR\ETXhsr\DC2\DC4\n\
    \\ENQhxfar\CAN\STX \SOH(\EOTR\ENQhxfar\DC2\DLE\n\
    \\ETXipa\CAN\ETX \SOH(\EOTR\ETXipa\DC2\ETB\n\
    \\avcpu_pc\CAN\EOT \SOH(\EOTR\ACKvcpuPc\".\n\
    \\SUBKvmHandleSysRegFtraceEvent\DC2\DLE\n\
    \\ETXhsr\CAN\SOH \SOH(\EOTR\ETXhsr\"S\n\
    \\SYNKvmHvcArm64FtraceEvent\DC2\DLE\n\
    \\ETXimm\CAN\SOH \SOH(\EOTR\ETXimm\DC2\SO\n\
    \\STXr0\CAN\STX \SOH(\EOTR\STXr0\DC2\ETB\n\
    \\avcpu_pc\CAN\ETX \SOH(\EOTR\ACKvcpuPc\"u\n\
    \\NAKKvmIrqLineFtraceEvent\DC2\ETB\n\
    \\airq_num\CAN\SOH \SOH(\ENQR\ACKirqNum\DC2\DC4\n\
    \\ENQlevel\CAN\STX \SOH(\ENQR\ENQlevel\DC2\DC2\n\
    \\EOTtype\CAN\ETX \SOH(\rR\EOTtype\DC2\EM\n\
    \\bvcpu_idx\CAN\EOT \SOH(\ENQR\avcpuIdx\"^\n\
    \\DC2KvmMmioFtraceEvent\DC2\DLE\n\
    \\ETXgpa\CAN\SOH \SOH(\EOTR\ETXgpa\DC2\DLE\n\
    \\ETXlen\CAN\STX \SOH(\rR\ETXlen\DC2\DC2\n\
    \\EOTtype\CAN\ETX \SOH(\rR\EOTtype\DC2\DLE\n\
    \\ETXval\CAN\EOT \SOH(\EOTR\ETXval\"^\n\
    \\EMKvmMmioEmulateFtraceEvent\DC2\DC2\n\
    \\EOTcpsr\CAN\SOH \SOH(\EOTR\EOTcpsr\DC2\DC4\n\
    \\ENQinstr\CAN\STX \SOH(\EOTR\ENQinstr\DC2\ETB\n\
    \\avcpu_pc\CAN\ETX \SOH(\EOTR\ACKvcpuPc\"R\n\
    \\ESCKvmSetGuestDebugFtraceEvent\DC2\US\n\
    \\vguest_debug\CAN\SOH \SOH(\rR\n\
    \guestDebug\DC2\DC2\n\
    \\EOTvcpu\CAN\STX \SOH(\EOTR\EOTvcpu\"b\n\
    \\DC4KvmSetIrqFtraceEvent\DC2\DLE\n\
    \\ETXgsi\CAN\SOH \SOH(\rR\ETXgsi\DC2\"\n\
    \\rirq_source_id\CAN\STX \SOH(\ENQR\virqSourceId\DC2\DC4\n\
    \\ENQlevel\CAN\ETX \SOH(\ENQR\ENQlevel\",\n\
    \\CANKvmSetSpteHvaFtraceEvent\DC2\DLE\n\
    \\ETXhva\CAN\SOH \SOH(\EOTR\ETXhva\"J\n\
    \\EMKvmSetWayFlushFtraceEvent\DC2\DC4\n\
    \\ENQcache\CAN\SOH \SOH(\rR\ENQcache\DC2\ETB\n\
    \\avcpu_pc\CAN\STX \SOH(\EOTR\ACKvcpuPc\"\187\SOH\n\
    \\ETBKvmSysAccessFtraceEvent\DC2\DLE\n\
    \\ETXCRm\CAN\SOH \SOH(\rR\ETXCRm\DC2\DLE\n\
    \\ETXCRn\CAN\STX \SOH(\rR\ETXCRn\DC2\DLE\n\
    \\ETXOp0\CAN\ETX \SOH(\rR\ETXOp0\DC2\DLE\n\
    \\ETXOp1\CAN\EOT \SOH(\rR\ETXOp1\DC2\DLE\n\
    \\ETXOp2\CAN\ENQ \SOH(\rR\ETXOp2\DC2\EM\n\
    \\bis_write\CAN\ACK \SOH(\rR\aisWrite\DC2\DC2\n\
    \\EOTname\CAN\a \SOH(\tR\EOTname\DC2\ETB\n\
    \\avcpu_pc\CAN\b \SOH(\EOTR\ACKvcpuPc\",\n\
    \\CANKvmTestAgeHvaFtraceEvent\DC2\DLE\n\
    \\ETXhva\CAN\SOH \SOH(\EOTR\ETXhva\"Z\n\
    \\SUBKvmTimerEmulateFtraceEvent\DC2\US\n\
    \\vshould_fire\CAN\SOH \SOH(\rR\n\
    \shouldFire\DC2\ESC\n\
    \\ttimer_idx\CAN\STX \SOH(\ENQR\btimerIdx\"?\n\
    \ KvmTimerHrtimerExpireFtraceEvent\DC2\ESC\n\
    \\ttimer_idx\CAN\SOH \SOH(\ENQR\btimerIdx\"d\n\
    \\USKvmTimerRestoreStateFtraceEvent\DC2\DLE\n\
    \\ETXctl\CAN\SOH \SOH(\EOTR\ETXctl\DC2\DC2\n\
    \\EOTcval\CAN\STX \SOH(\EOTR\EOTcval\DC2\ESC\n\
    \\ttimer_idx\CAN\ETX \SOH(\ENQR\btimerIdx\"a\n\
    \\FSKvmTimerSaveStateFtraceEvent\DC2\DLE\n\
    \\ETXctl\CAN\SOH \SOH(\EOTR\ETXctl\DC2\DC2\n\
    \\EOTcval\CAN\STX \SOH(\EOTR\EOTcval\DC2\ESC\n\
    \\ttimer_idx\CAN\ETX \SOH(\ENQR\btimerIdx\"_\n\
    \\FSKvmTimerUpdateIrqFtraceEvent\DC2\DLE\n\
    \\ETXirq\CAN\SOH \SOH(\rR\ETXirq\DC2\DC4\n\
    \\ENQlevel\CAN\STX \SOH(\ENQR\ENQlevel\DC2\ETB\n\
    \\avcpu_id\CAN\ETX \SOH(\EOTR\ACKvcpuId\"X\n\
    \\EMKvmToggleCacheFtraceEvent\DC2\DLE\n\
    \\ETXnow\CAN\SOH \SOH(\rR\ETXnow\DC2\ETB\n\
    \\avcpu_pc\CAN\STX \SOH(\EOTR\ACKvcpuPc\DC2\DLE\n\
    \\ETXwas\CAN\ETX \SOH(\rR\ETXwas\"E\n\
    \\ESCKvmUnmapHvaRangeFtraceEvent\DC2\DLE\n\
    \\ETXend\CAN\SOH \SOH(\EOTR\ETXend\DC2\DC4\n\
    \\ENQstart\CAN\STX \SOH(\EOTR\ENQstart\"5\n\
    \\ESCKvmUserspaceExitFtraceEvent\DC2\SYN\n\
    \\ACKreason\CAN\SOH \SOH(\rR\ACKreason\"X\n\
    \\CANKvmVcpuWakeupFtraceEvent\DC2\SO\n\
    \\STXns\CAN\SOH \SOH(\EOTR\STXns\DC2\DC4\n\
    \\ENQvalid\CAN\STX \SOH(\rR\ENQvalid\DC2\SYN\n\
    \\ACKwaited\CAN\ETX \SOH(\rR\ACKwaited\"H\n\
    \\SYNKvmWfxArm64FtraceEvent\DC2\NAK\n\
    \\ACKis_wfe\CAN\SOH \SOH(\rR\ENQisWfe\DC2\ETB\n\
    \\avcpu_pc\CAN\STX \SOH(\EOTR\ACKvcpuPc\"r\n\
    \\DC2TrapRegFtraceEvent\DC2\SO\n\
    \\STXfn\CAN\SOH \SOH(\tR\STXfn\DC2\EM\n\
    \\bis_write\CAN\STX \SOH(\rR\aisWrite\DC2\DLE\n\
    \\ETXreg\CAN\ETX \SOH(\ENQR\ETXreg\DC2\US\n\
    \\vwrite_value\CAN\EOT \SOH(\EOTR\n\
    \writeValue\"b\n\
    \\USVgicUpdateIrqPendingFtraceEvent\DC2\DLE\n\
    \\ETXirq\CAN\SOH \SOH(\rR\ETXirq\DC2\DC4\n\
    \\ENQlevel\CAN\STX \SOH(\rR\ENQlevel\DC2\ETB\n\
    \\avcpu_id\CAN\ETX \SOH(\EOTR\ACKvcpuIdJ\240\&9\n\
    \\a\DC2\ENQ\EOT\NUL\169\SOH\SOH\n\
    \a\n\
    \\SOH\f\DC2\ETX\EOT\NUL\DC22W Autogenerated by:\n\
    \ ../../src/tools/ftrace_proto_gen/ftrace_proto_gen.cc\n\
    \ Do not edit.\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\ENQ\NUL\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\a\NUL\t\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b!\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\b\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\b\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\b\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\b\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\b\CAN\EM\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\n\
    \\NUL\r\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\n\
    \\b\FS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\v\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\v\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\v\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\v\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\v\FS\GS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\f\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX\f\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\f\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\f\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\f\CAN\EM\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT\SO\NUL\DC1\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\SO\b\FS\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\SI\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETX\SI\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX\SI\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\SI\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\SI\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX\DLE\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETX\DLE\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX\DLE\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX\DLE\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX\DLE\SUB\ESC\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOT\DC2\NUL\ETB\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX\DC2\b\GS\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX\DC3\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETX\DC3\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX\DC3\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX\DC3\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX\DC3\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX\DC4\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\EOT\DC2\ETX\DC4\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETX\DC4\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX\DC4\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX\DC4\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETX\NAK\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\EOT\DC2\ETX\NAK\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\ETX\NAK\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETX\NAK\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETX\NAK\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\ETX\SYN\STX!\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\EOT\DC2\ETX\SYN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ENQ\DC2\ETX\SYN\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\ETX\SYN\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\ETX\SYN\US \n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOT\CAN\NUL\SUB\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX\CAN\b#\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX\EM\STX\"\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\EOT\DC2\ETX\EM\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX\EM\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX\EM\DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX\EM !\n\
    \\n\
    \\n\
    \\STX\EOT\ENQ\DC2\EOT\ESC\NUL\RS\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX\ESC\b\"\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETX\FS\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\ETX\FS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETX\FS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX\FS\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX\FS\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ETX\GS\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\EOT\DC2\ETX\GS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\ETX\GS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETX\GS\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETX\GS\SUB\ESC\n\
    \\n\
    \\n\
    \\STX\EOT\ACK\DC2\EOT\US\NUL\"\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETX\US\b\"\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETX \STX\EM\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\EOT\DC2\ETX \STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETX \v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETX \DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETX \ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\ETX!\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\EOT\DC2\ETX!\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\ETX!\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\ETX!\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\ETX!\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\a\DC2\EOT#\NUL&\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETX#\b#\n\
    \\v\n\
    \\EOT\EOT\a\STX\NUL\DC2\ETX$\STX\"\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\EOT\DC2\ETX$\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ENQ\DC2\ETX$\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\ETX$\DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\ETX$ !\n\
    \\v\n\
    \\EOT\EOT\a\STX\SOH\DC2\ETX%\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\EOT\DC2\ETX%\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ENQ\DC2\ETX%\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\ETX%\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\ETX%\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\b\DC2\EOT'\NUL)\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\b\SOH\DC2\ETX'\b\ESC\n\
    \\v\n\
    \\EOT\EOT\b\STX\NUL\DC2\ETX(\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\EOT\DC2\ETX(\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\ETX(\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\ETX(\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\ETX(\FS\GS\n\
    \\n\
    \\n\
    \\STX\EOT\t\DC2\EOT*\NUL.\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\t\SOH\DC2\ETX*\b\SUB\n\
    \\v\n\
    \\EOT\EOT\t\STX\NUL\DC2\ETX+\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\EOT\DC2\ETX+\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ENQ\DC2\ETX+\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\ETX+\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\ETX+\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\t\STX\SOH\DC2\ETX,\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\EOT\DC2\ETX,\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\ENQ\DC2\ETX,\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\SOH\DC2\ETX,\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\ETX\DC2\ETX,\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\t\STX\STX\DC2\ETX-\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\t\STX\STX\EOT\DC2\ETX-\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\STX\ENQ\DC2\ETX-\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\t\STX\STX\SOH\DC2\ETX-\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\t\STX\STX\ETX\DC2\ETX-\FS\GS\n\
    \\n\
    \\n\
    \\STX\EOT\n\
    \\DC2\EOT/\NUL1\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\n\
    \\SOH\DC2\ETX/\b\EM\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\ETX0\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\EOT\DC2\ETX0\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ENQ\DC2\ETX0\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\ETX0\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\ETX0\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\v\DC2\EOT2\NUL7\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\v\SOH\DC2\ETX2\b!\n\
    \\v\n\
    \\EOT\EOT\v\STX\NUL\DC2\ETX3\STX#\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\EOT\DC2\ETX3\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\ENQ\DC2\ETX3\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\ETX3\DC1\RS\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\ETX3!\"\n\
    \\v\n\
    \\EOT\EOT\v\STX\SOH\DC2\ETX4\STX#\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\EOT\DC2\ETX4\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\ENQ\DC2\ETX4\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\SOH\DC2\ETX4\DC1\RS\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\ETX\DC2\ETX4!\"\n\
    \\v\n\
    \\EOT\EOT\v\STX\STX\DC2\ETX5\STX!\n\
    \\f\n\
    \\ENQ\EOT\v\STX\STX\EOT\DC2\ETX5\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\STX\ENQ\DC2\ETX5\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\v\STX\STX\SOH\DC2\ETX5\DC1\FS\n\
    \\f\n\
    \\ENQ\EOT\v\STX\STX\ETX\DC2\ETX5\US \n\
    \\v\n\
    \\EOT\EOT\v\STX\ETX\DC2\ETX6\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\v\STX\ETX\EOT\DC2\ETX6\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\ETX\ENQ\DC2\ETX6\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\v\STX\ETX\SOH\DC2\ETX6\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\v\STX\ETX\ETX\DC2\ETX6\FS\GS\n\
    \\n\
    \\n\
    \\STX\EOT\f\DC2\EOT8\NUL=\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\f\SOH\DC2\ETX8\b \n\
    \\v\n\
    \\EOT\EOT\f\STX\NUL\DC2\ETX9\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\EOT\DC2\ETX9\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\ENQ\DC2\ETX9\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\ETX9\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\ETX9\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\f\STX\SOH\DC2\ETX:\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\f\STX\SOH\EOT\DC2\ETX:\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\SOH\ENQ\DC2\ETX:\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\f\STX\SOH\SOH\DC2\ETX:\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\f\STX\SOH\ETX\DC2\ETX:\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\f\STX\STX\DC2\ETX;\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\f\STX\STX\EOT\DC2\ETX;\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\STX\ENQ\DC2\ETX;\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\f\STX\STX\SOH\DC2\ETX;\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\f\STX\STX\ETX\DC2\ETX;\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\f\STX\ETX\DC2\ETX<\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ETX\EOT\DC2\ETX<\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ETX\ENQ\DC2\ETX<\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ETX\SOH\DC2\ETX<\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ETX\ETX\DC2\ETX<\FS\GS\n\
    \\n\
    \\n\
    \\STX\EOT\r\DC2\EOT>\NUL@\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\r\SOH\DC2\ETX>\b\"\n\
    \\v\n\
    \\EOT\EOT\r\STX\NUL\DC2\ETX?\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\EOT\DC2\ETX?\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\ENQ\DC2\ETX?\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\SOH\DC2\ETX?\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\ETX\DC2\ETX?\CAN\EM\n\
    \\n\
    \\n\
    \\STX\EOT\SO\DC2\EOTA\NULE\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SO\SOH\DC2\ETXA\b\RS\n\
    \\v\n\
    \\EOT\EOT\SO\STX\NUL\DC2\ETXB\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\NUL\EOT\DC2\ETXB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\NUL\ENQ\DC2\ETXB\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\NUL\SOH\DC2\ETXB\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\NUL\ETX\DC2\ETXB\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\SO\STX\SOH\DC2\ETXC\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\SOH\EOT\DC2\ETXC\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\SOH\ENQ\DC2\ETXC\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\SOH\SOH\DC2\ETXC\DC2\DC4\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\SOH\ETX\DC2\ETXC\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\SO\STX\STX\DC2\ETXD\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\STX\EOT\DC2\ETXD\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\STX\ENQ\DC2\ETXD\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\STX\SOH\DC2\ETXD\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\STX\ETX\DC2\ETXD\FS\GS\n\
    \\n\
    \\n\
    \\STX\EOT\SI\DC2\EOTF\NULK\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SI\SOH\DC2\ETXF\b\GS\n\
    \\v\n\
    \\EOT\EOT\SI\STX\NUL\DC2\ETXG\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\NUL\EOT\DC2\ETXG\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\NUL\ENQ\DC2\ETXG\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\NUL\SOH\DC2\ETXG\DC1\CAN\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\NUL\ETX\DC2\ETXG\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\SI\STX\SOH\DC2\ETXH\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\SOH\EOT\DC2\ETXH\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\SOH\ENQ\DC2\ETXH\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\SOH\SOH\DC2\ETXH\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\SOH\ETX\DC2\ETXH\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\SI\STX\STX\DC2\ETXI\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\STX\EOT\DC2\ETXI\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\STX\ENQ\DC2\ETXI\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\STX\SOH\DC2\ETXI\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\STX\ETX\DC2\ETXI\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\SI\STX\ETX\DC2\ETXJ\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\ETX\EOT\DC2\ETXJ\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\ETX\ENQ\DC2\ETXJ\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\ETX\SOH\DC2\ETXJ\DC1\EM\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\ETX\ETX\DC2\ETXJ\FS\GS\n\
    \\n\
    \\n\
    \\STX\EOT\DLE\DC2\EOTL\NULQ\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\DLE\SOH\DC2\ETXL\b\SUB\n\
    \\v\n\
    \\EOT\EOT\DLE\STX\NUL\DC2\ETXM\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\NUL\EOT\DC2\ETXM\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\NUL\ENQ\DC2\ETXM\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\NUL\SOH\DC2\ETXM\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\NUL\ETX\DC2\ETXM\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\DLE\STX\SOH\DC2\ETXN\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\SOH\EOT\DC2\ETXN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\SOH\ENQ\DC2\ETXN\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\SOH\SOH\DC2\ETXN\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\SOH\ETX\DC2\ETXN\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\DLE\STX\STX\DC2\ETXO\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\STX\EOT\DC2\ETXO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\STX\ENQ\DC2\ETXO\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\STX\SOH\DC2\ETXO\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\STX\ETX\DC2\ETXO\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\DLE\STX\ETX\DC2\ETXP\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\ETX\EOT\DC2\ETXP\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\ETX\ENQ\DC2\ETXP\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\ETX\SOH\DC2\ETXP\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\ETX\ETX\DC2\ETXP\CAN\EM\n\
    \\n\
    \\n\
    \\STX\EOT\DC1\DC2\EOTR\NULV\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\DC1\SOH\DC2\ETXR\b!\n\
    \\v\n\
    \\EOT\EOT\DC1\STX\NUL\DC2\ETXS\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\DC1\STX\NUL\EOT\DC2\ETXS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\DC1\STX\NUL\ENQ\DC2\ETXS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\DC1\STX\NUL\SOH\DC2\ETXS\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\DC1\STX\NUL\ETX\DC2\ETXS\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\DC1\STX\SOH\DC2\ETXT\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\DC1\STX\SOH\EOT\DC2\ETXT\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\DC1\STX\SOH\ENQ\DC2\ETXT\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\DC1\STX\SOH\SOH\DC2\ETXT\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\DC1\STX\SOH\ETX\DC2\ETXT\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\DC1\STX\STX\DC2\ETXU\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\DC1\STX\STX\EOT\DC2\ETXU\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\DC1\STX\STX\ENQ\DC2\ETXU\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\DC1\STX\STX\SOH\DC2\ETXU\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\DC1\STX\STX\ETX\DC2\ETXU\FS\GS\n\
    \\n\
    \\n\
    \\STX\EOT\DC2\DC2\EOTW\NULZ\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\DC2\SOH\DC2\ETXW\b#\n\
    \\v\n\
    \\EOT\EOT\DC2\STX\NUL\DC2\ETXX\STX\"\n\
    \\f\n\
    \\ENQ\EOT\DC2\STX\NUL\EOT\DC2\ETXX\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\DC2\STX\NUL\ENQ\DC2\ETXX\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\DC2\STX\NUL\SOH\DC2\ETXX\DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\DC2\STX\NUL\ETX\DC2\ETXX !\n\
    \\v\n\
    \\EOT\EOT\DC2\STX\SOH\DC2\ETXY\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\DC2\STX\SOH\EOT\DC2\ETXY\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\DC2\STX\SOH\ENQ\DC2\ETXY\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\DC2\STX\SOH\SOH\DC2\ETXY\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\DC2\STX\SOH\ETX\DC2\ETXY\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\DC3\DC2\EOT[\NUL_\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\DC3\SOH\DC2\ETX[\b\FS\n\
    \\v\n\
    \\EOT\EOT\DC3\STX\NUL\DC2\ETX\\\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\DC3\STX\NUL\EOT\DC2\ETX\\\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\DC3\STX\NUL\ENQ\DC2\ETX\\\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\DC3\STX\NUL\SOH\DC2\ETX\\\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\DC3\STX\NUL\ETX\DC2\ETX\\\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\DC3\STX\SOH\DC2\ETX]\STX#\n\
    \\f\n\
    \\ENQ\EOT\DC3\STX\SOH\EOT\DC2\ETX]\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\DC3\STX\SOH\ENQ\DC2\ETX]\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\DC3\STX\SOH\SOH\DC2\ETX]\DC1\RS\n\
    \\f\n\
    \\ENQ\EOT\DC3\STX\SOH\ETX\DC2\ETX]!\"\n\
    \\v\n\
    \\EOT\EOT\DC3\STX\STX\DC2\ETX^\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\DC3\STX\STX\EOT\DC2\ETX^\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\DC3\STX\STX\ENQ\DC2\ETX^\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\DC3\STX\STX\SOH\DC2\ETX^\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\DC3\STX\STX\ETX\DC2\ETX^\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\DC4\DC2\EOT`\NULb\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\DC4\SOH\DC2\ETX`\b \n\
    \\v\n\
    \\EOT\EOT\DC4\STX\NUL\DC2\ETXa\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\DC4\STX\NUL\EOT\DC2\ETXa\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\DC4\STX\NUL\ENQ\DC2\ETXa\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\DC4\STX\NUL\SOH\DC2\ETXa\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\DC4\STX\NUL\ETX\DC2\ETXa\CAN\EM\n\
    \\n\
    \\n\
    \\STX\EOT\NAK\DC2\EOTc\NULf\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NAK\SOH\DC2\ETXc\b!\n\
    \\v\n\
    \\EOT\EOT\NAK\STX\NUL\DC2\ETXd\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\NAK\STX\NUL\EOT\DC2\ETXd\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NAK\STX\NUL\ENQ\DC2\ETXd\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NAK\STX\NUL\SOH\DC2\ETXd\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\NAK\STX\NUL\ETX\DC2\ETXd\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\NAK\STX\SOH\DC2\ETXe\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\NAK\STX\SOH\EOT\DC2\ETXe\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NAK\STX\SOH\ENQ\DC2\ETXe\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NAK\STX\SOH\SOH\DC2\ETXe\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\NAK\STX\SOH\ETX\DC2\ETXe\FS\GS\n\
    \\n\
    \\n\
    \\STX\EOT\SYN\DC2\EOTg\NULp\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SYN\SOH\DC2\ETXg\b\US\n\
    \\v\n\
    \\EOT\EOT\SYN\STX\NUL\DC2\ETXh\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SYN\STX\NUL\EOT\DC2\ETXh\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SYN\STX\NUL\ENQ\DC2\ETXh\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SYN\STX\NUL\SOH\DC2\ETXh\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\SYN\STX\NUL\ETX\DC2\ETXh\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\SYN\STX\SOH\DC2\ETXi\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SYN\STX\SOH\EOT\DC2\ETXi\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SYN\STX\SOH\ENQ\DC2\ETXi\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SYN\STX\SOH\SOH\DC2\ETXi\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\SYN\STX\SOH\ETX\DC2\ETXi\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\SYN\STX\STX\DC2\ETXj\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SYN\STX\STX\EOT\DC2\ETXj\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SYN\STX\STX\ENQ\DC2\ETXj\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SYN\STX\STX\SOH\DC2\ETXj\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\SYN\STX\STX\ETX\DC2\ETXj\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\SYN\STX\ETX\DC2\ETXk\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SYN\STX\ETX\EOT\DC2\ETXk\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SYN\STX\ETX\ENQ\DC2\ETXk\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SYN\STX\ETX\SOH\DC2\ETXk\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\SYN\STX\ETX\ETX\DC2\ETXk\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\SYN\STX\EOT\DC2\ETXl\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SYN\STX\EOT\EOT\DC2\ETXl\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SYN\STX\EOT\ENQ\DC2\ETXl\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SYN\STX\EOT\SOH\DC2\ETXl\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\SYN\STX\EOT\ETX\DC2\ETXl\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\SYN\STX\ENQ\DC2\ETXm\STX\US\n\
    \\f\n\
    \\ENQ\EOT\SYN\STX\ENQ\EOT\DC2\ETXm\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SYN\STX\ENQ\ENQ\DC2\ETXm\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SYN\STX\ENQ\SOH\DC2\ETXm\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\SYN\STX\ENQ\ETX\DC2\ETXm\GS\RS\n\
    \\v\n\
    \\EOT\EOT\SYN\STX\ACK\DC2\ETXn\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SYN\STX\ACK\EOT\DC2\ETXn\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SYN\STX\ACK\ENQ\DC2\ETXn\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SYN\STX\ACK\SOH\DC2\ETXn\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\SYN\STX\ACK\ETX\DC2\ETXn\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\SYN\STX\a\DC2\ETXo\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\SYN\STX\a\EOT\DC2\ETXo\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SYN\STX\a\ENQ\DC2\ETXo\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SYN\STX\a\SOH\DC2\ETXo\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\SYN\STX\a\ETX\DC2\ETXo\FS\GS\n\
    \\n\
    \\n\
    \\STX\EOT\ETB\DC2\EOTq\NULs\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETB\SOH\DC2\ETXq\b \n\
    \\v\n\
    \\EOT\EOT\ETB\STX\NUL\DC2\ETXr\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\ETB\STX\NUL\EOT\DC2\ETXr\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETB\STX\NUL\ENQ\DC2\ETXr\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETB\STX\NUL\SOH\DC2\ETXr\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\ETB\STX\NUL\ETX\DC2\ETXr\CAN\EM\n\
    \\n\
    \\n\
    \\STX\EOT\CAN\DC2\EOTt\NULw\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\CAN\SOH\DC2\ETXt\b\"\n\
    \\v\n\
    \\EOT\EOT\CAN\STX\NUL\DC2\ETXu\STX\"\n\
    \\f\n\
    \\ENQ\EOT\CAN\STX\NUL\EOT\DC2\ETXu\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\CAN\STX\NUL\ENQ\DC2\ETXu\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\CAN\STX\NUL\SOH\DC2\ETXu\DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\CAN\STX\NUL\ETX\DC2\ETXu !\n\
    \\v\n\
    \\EOT\EOT\CAN\STX\SOH\DC2\ETXv\STX\US\n\
    \\f\n\
    \\ENQ\EOT\CAN\STX\SOH\EOT\DC2\ETXv\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\CAN\STX\SOH\ENQ\DC2\ETXv\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\CAN\STX\SOH\SOH\DC2\ETXv\DC1\SUB\n\
    \\f\n\
    \\ENQ\EOT\CAN\STX\SOH\ETX\DC2\ETXv\GS\RS\n\
    \\n\
    \\n\
    \\STX\EOT\EM\DC2\EOTx\NULz\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EM\SOH\DC2\ETXx\b(\n\
    \\v\n\
    \\EOT\EOT\EM\STX\NUL\DC2\ETXy\STX\US\n\
    \\f\n\
    \\ENQ\EOT\EM\STX\NUL\EOT\DC2\ETXy\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EM\STX\NUL\ENQ\DC2\ETXy\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\EM\STX\NUL\SOH\DC2\ETXy\DC1\SUB\n\
    \\f\n\
    \\ENQ\EOT\EM\STX\NUL\ETX\DC2\ETXy\GS\RS\n\
    \\n\
    \\n\
    \\STX\EOT\SUB\DC2\EOT{\NUL\DEL\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SUB\SOH\DC2\ETX{\b'\n\
    \\v\n\
    \\EOT\EOT\SUB\STX\NUL\DC2\ETX|\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SUB\STX\NUL\EOT\DC2\ETX|\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SUB\STX\NUL\ENQ\DC2\ETX|\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SUB\STX\NUL\SOH\DC2\ETX|\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\SUB\STX\NUL\ETX\DC2\ETX|\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\SUB\STX\SOH\DC2\ETX}\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SUB\STX\SOH\EOT\DC2\ETX}\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SUB\STX\SOH\ENQ\DC2\ETX}\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SUB\STX\SOH\SOH\DC2\ETX}\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\SUB\STX\SOH\ETX\DC2\ETX}\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\SUB\STX\STX\DC2\ETX~\STX\US\n\
    \\f\n\
    \\ENQ\EOT\SUB\STX\STX\EOT\DC2\ETX~\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SUB\STX\STX\ENQ\DC2\ETX~\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SUB\STX\STX\SOH\DC2\ETX~\DC1\SUB\n\
    \\f\n\
    \\ENQ\EOT\SUB\STX\STX\ETX\DC2\ETX~\GS\RS\n\
    \\f\n\
    \\STX\EOT\ESC\DC2\ACK\128\SOH\NUL\132\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\ESC\SOH\DC2\EOT\128\SOH\b$\n\
    \\f\n\
    \\EOT\EOT\ESC\STX\NUL\DC2\EOT\129\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\NUL\EOT\DC2\EOT\129\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\NUL\ENQ\DC2\EOT\129\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\NUL\SOH\DC2\EOT\129\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\NUL\ETX\DC2\EOT\129\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\ESC\STX\SOH\DC2\EOT\130\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\SOH\EOT\DC2\EOT\130\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\SOH\ENQ\DC2\EOT\130\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\SOH\SOH\DC2\EOT\130\SOH\DC2\SYN\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\SOH\ETX\DC2\EOT\130\SOH\EM\SUB\n\
    \\f\n\
    \\EOT\EOT\ESC\STX\STX\DC2\EOT\131\SOH\STX\US\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\STX\EOT\DC2\EOT\131\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\STX\ENQ\DC2\EOT\131\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\STX\SOH\DC2\EOT\131\SOH\DC1\SUB\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\STX\ETX\DC2\EOT\131\SOH\GS\RS\n\
    \\f\n\
    \\STX\EOT\FS\DC2\ACK\133\SOH\NUL\137\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\FS\SOH\DC2\EOT\133\SOH\b$\n\
    \\f\n\
    \\EOT\EOT\FS\STX\NUL\DC2\EOT\134\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\NUL\EOT\DC2\EOT\134\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\NUL\ENQ\DC2\EOT\134\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\NUL\SOH\DC2\EOT\134\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\NUL\ETX\DC2\EOT\134\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\FS\STX\SOH\DC2\EOT\135\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\SOH\EOT\DC2\EOT\135\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\SOH\ENQ\DC2\EOT\135\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\SOH\SOH\DC2\EOT\135\SOH\DC1\SYN\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\SOH\ETX\DC2\EOT\135\SOH\EM\SUB\n\
    \\f\n\
    \\EOT\EOT\FS\STX\STX\DC2\EOT\136\SOH\STX\RS\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\STX\EOT\DC2\EOT\136\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\STX\ENQ\DC2\EOT\136\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\STX\SOH\DC2\EOT\136\SOH\DC2\EM\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\STX\ETX\DC2\EOT\136\SOH\FS\GS\n\
    \\f\n\
    \\STX\EOT\GS\DC2\ACK\138\SOH\NUL\142\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\GS\SOH\DC2\EOT\138\SOH\b!\n\
    \\f\n\
    \\EOT\EOT\GS\STX\NUL\DC2\EOT\139\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\NUL\EOT\DC2\EOT\139\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\NUL\ENQ\DC2\EOT\139\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\NUL\SOH\DC2\EOT\139\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\NUL\ETX\DC2\EOT\139\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\GS\STX\SOH\DC2\EOT\140\SOH\STX\RS\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\SOH\EOT\DC2\EOT\140\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\SOH\ENQ\DC2\EOT\140\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\SOH\SOH\DC2\EOT\140\SOH\DC2\EM\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\SOH\ETX\DC2\EOT\140\SOH\FS\GS\n\
    \\f\n\
    \\EOT\EOT\GS\STX\STX\DC2\EOT\141\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\STX\EOT\DC2\EOT\141\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\STX\ENQ\DC2\EOT\141\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\STX\SOH\DC2\EOT\141\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\STX\ETX\DC2\EOT\141\SOH\CAN\EM\n\
    \\f\n\
    \\STX\EOT\RS\DC2\ACK\143\SOH\NUL\146\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\RS\SOH\DC2\EOT\143\SOH\b#\n\
    \\f\n\
    \\EOT\EOT\RS\STX\NUL\DC2\EOT\144\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\NUL\EOT\DC2\EOT\144\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\NUL\ENQ\DC2\EOT\144\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\NUL\SOH\DC2\EOT\144\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\NUL\ETX\DC2\EOT\144\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\RS\STX\SOH\DC2\EOT\145\SOH\STX\FS\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\SOH\EOT\DC2\EOT\145\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\SOH\ENQ\DC2\EOT\145\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\SOH\SOH\DC2\EOT\145\SOH\DC2\ETB\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\SOH\ETX\DC2\EOT\145\SOH\SUB\ESC\n\
    \\f\n\
    \\STX\EOT\US\DC2\ACK\147\SOH\NUL\149\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\US\SOH\DC2\EOT\147\SOH\b#\n\
    \\f\n\
    \\EOT\EOT\US\STX\NUL\DC2\EOT\148\SOH\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\US\STX\NUL\EOT\DC2\EOT\148\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\US\STX\NUL\ENQ\DC2\EOT\148\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\US\STX\NUL\SOH\DC2\EOT\148\SOH\DC2\CAN\n\
    \\r\n\
    \\ENQ\EOT\US\STX\NUL\ETX\DC2\EOT\148\SOH\ESC\FS\n\
    \\f\n\
    \\STX\EOT \DC2\ACK\150\SOH\NUL\154\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT \SOH\DC2\EOT\150\SOH\b \n\
    \\f\n\
    \\EOT\EOT \STX\NUL\DC2\EOT\151\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT \STX\NUL\EOT\DC2\EOT\151\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT \STX\NUL\ENQ\DC2\EOT\151\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT \STX\NUL\SOH\DC2\EOT\151\SOH\DC2\DC4\n\
    \\r\n\
    \\ENQ\EOT \STX\NUL\ETX\DC2\EOT\151\SOH\ETB\CAN\n\
    \\f\n\
    \\EOT\EOT \STX\SOH\DC2\EOT\152\SOH\STX\FS\n\
    \\r\n\
    \\ENQ\EOT \STX\SOH\EOT\DC2\EOT\152\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT \STX\SOH\ENQ\DC2\EOT\152\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT \STX\SOH\SOH\DC2\EOT\152\SOH\DC2\ETB\n\
    \\r\n\
    \\ENQ\EOT \STX\SOH\ETX\DC2\EOT\152\SOH\SUB\ESC\n\
    \\f\n\
    \\EOT\EOT \STX\STX\DC2\EOT\153\SOH\STX\GS\n\
    \\r\n\
    \\ENQ\EOT \STX\STX\EOT\DC2\EOT\153\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT \STX\STX\ENQ\DC2\EOT\153\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT \STX\STX\SOH\DC2\EOT\153\SOH\DC2\CAN\n\
    \\r\n\
    \\ENQ\EOT \STX\STX\ETX\DC2\EOT\153\SOH\ESC\FS\n\
    \\f\n\
    \\STX\EOT!\DC2\ACK\155\SOH\NUL\158\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT!\SOH\DC2\EOT\155\SOH\b\RS\n\
    \\f\n\
    \\EOT\EOT!\STX\NUL\DC2\EOT\156\SOH\STX\GS\n\
    \\r\n\
    \\ENQ\EOT!\STX\NUL\EOT\DC2\EOT\156\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT!\STX\NUL\ENQ\DC2\EOT\156\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT!\STX\NUL\SOH\DC2\EOT\156\SOH\DC2\CAN\n\
    \\r\n\
    \\ENQ\EOT!\STX\NUL\ETX\DC2\EOT\156\SOH\ESC\FS\n\
    \\f\n\
    \\EOT\EOT!\STX\SOH\DC2\EOT\157\SOH\STX\RS\n\
    \\r\n\
    \\ENQ\EOT!\STX\SOH\EOT\DC2\EOT\157\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT!\STX\SOH\ENQ\DC2\EOT\157\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT!\STX\SOH\SOH\DC2\EOT\157\SOH\DC2\EM\n\
    \\r\n\
    \\ENQ\EOT!\STX\SOH\ETX\DC2\EOT\157\SOH\FS\GS\n\
    \\f\n\
    \\STX\EOT\"\DC2\ACK\159\SOH\NUL\164\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\"\SOH\DC2\EOT\159\SOH\b\SUB\n\
    \\f\n\
    \\EOT\EOT\"\STX\NUL\DC2\EOT\160\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\"\STX\NUL\EOT\DC2\EOT\160\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\"\STX\NUL\ENQ\DC2\EOT\160\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\"\STX\NUL\SOH\DC2\EOT\160\SOH\DC2\DC4\n\
    \\r\n\
    \\ENQ\EOT\"\STX\NUL\ETX\DC2\EOT\160\SOH\ETB\CAN\n\
    \\f\n\
    \\EOT\EOT\"\STX\SOH\DC2\EOT\161\SOH\STX\US\n\
    \\r\n\
    \\ENQ\EOT\"\STX\SOH\EOT\DC2\EOT\161\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\"\STX\SOH\ENQ\DC2\EOT\161\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\"\STX\SOH\SOH\DC2\EOT\161\SOH\DC2\SUB\n\
    \\r\n\
    \\ENQ\EOT\"\STX\SOH\ETX\DC2\EOT\161\SOH\GS\RS\n\
    \\f\n\
    \\EOT\EOT\"\STX\STX\DC2\EOT\162\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\"\STX\STX\EOT\DC2\EOT\162\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\"\STX\STX\ENQ\DC2\EOT\162\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\"\STX\STX\SOH\DC2\EOT\162\SOH\DC1\DC4\n\
    \\r\n\
    \\ENQ\EOT\"\STX\STX\ETX\DC2\EOT\162\SOH\ETB\CAN\n\
    \\f\n\
    \\EOT\EOT\"\STX\ETX\DC2\EOT\163\SOH\STX\"\n\
    \\r\n\
    \\ENQ\EOT\"\STX\ETX\EOT\DC2\EOT\163\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\"\STX\ETX\ENQ\DC2\EOT\163\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\"\STX\ETX\SOH\DC2\EOT\163\SOH\DC2\GS\n\
    \\r\n\
    \\ENQ\EOT\"\STX\ETX\ETX\DC2\EOT\163\SOH !\n\
    \\f\n\
    \\STX\EOT#\DC2\ACK\165\SOH\NUL\169\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT#\SOH\DC2\EOT\165\SOH\b'\n\
    \\f\n\
    \\EOT\EOT#\STX\NUL\DC2\EOT\166\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT#\STX\NUL\EOT\DC2\EOT\166\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT#\STX\NUL\ENQ\DC2\EOT\166\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT#\STX\NUL\SOH\DC2\EOT\166\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT#\STX\NUL\ETX\DC2\EOT\166\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT#\STX\SOH\DC2\EOT\167\SOH\STX\FS\n\
    \\r\n\
    \\ENQ\EOT#\STX\SOH\EOT\DC2\EOT\167\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT#\STX\SOH\ENQ\DC2\EOT\167\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT#\STX\SOH\SOH\DC2\EOT\167\SOH\DC2\ETB\n\
    \\r\n\
    \\ENQ\EOT#\STX\SOH\ETX\DC2\EOT\167\SOH\SUB\ESC\n\
    \\f\n\
    \\EOT\EOT#\STX\STX\DC2\EOT\168\SOH\STX\RS\n\
    \\r\n\
    \\ENQ\EOT#\STX\STX\EOT\DC2\EOT\168\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT#\STX\STX\ENQ\DC2\EOT\168\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT#\STX\STX\SOH\DC2\EOT\168\SOH\DC2\EM\n\
    \\r\n\
    \\ENQ\EOT#\STX\STX\ETX\DC2\EOT\168\SOH\FS\GS"