{- This file was auto-generated from protos/perfetto/trace/ftrace/sched.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Sched (
        SchedBlockedReasonFtraceEvent(), SchedCpuHotplugFtraceEvent(),
        SchedCpuUtilCfsFtraceEvent(), SchedPiSetprioFtraceEvent(),
        SchedProcessExecFtraceEvent(), SchedProcessExitFtraceEvent(),
        SchedProcessForkFtraceEvent(), SchedProcessFreeFtraceEvent(),
        SchedProcessHangFtraceEvent(), SchedProcessWaitFtraceEvent(),
        SchedSwitchFtraceEvent(), SchedWakeupFtraceEvent(),
        SchedWakeupNewFtraceEvent(), SchedWakingFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.pid' @:: Lens' SchedBlockedReasonFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'pid' @:: Lens' SchedBlockedReasonFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.caller' @:: Lens' SchedBlockedReasonFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'caller' @:: Lens' SchedBlockedReasonFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.ioWait' @:: Lens' SchedBlockedReasonFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'ioWait' @:: Lens' SchedBlockedReasonFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data SchedBlockedReasonFtraceEvent
  = SchedBlockedReasonFtraceEvent'_constructor {_SchedBlockedReasonFtraceEvent'pid :: !(Prelude.Maybe Data.Int.Int32),
                                                _SchedBlockedReasonFtraceEvent'caller :: !(Prelude.Maybe Data.Word.Word64),
                                                _SchedBlockedReasonFtraceEvent'ioWait :: !(Prelude.Maybe Data.Word.Word32),
                                                _SchedBlockedReasonFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SchedBlockedReasonFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SchedBlockedReasonFtraceEvent "pid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedBlockedReasonFtraceEvent'pid
           (\ x__ y__ -> x__ {_SchedBlockedReasonFtraceEvent'pid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedBlockedReasonFtraceEvent "maybe'pid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedBlockedReasonFtraceEvent'pid
           (\ x__ y__ -> x__ {_SchedBlockedReasonFtraceEvent'pid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedBlockedReasonFtraceEvent "caller" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedBlockedReasonFtraceEvent'caller
           (\ x__ y__ -> x__ {_SchedBlockedReasonFtraceEvent'caller = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedBlockedReasonFtraceEvent "maybe'caller" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedBlockedReasonFtraceEvent'caller
           (\ x__ y__ -> x__ {_SchedBlockedReasonFtraceEvent'caller = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedBlockedReasonFtraceEvent "ioWait" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedBlockedReasonFtraceEvent'ioWait
           (\ x__ y__ -> x__ {_SchedBlockedReasonFtraceEvent'ioWait = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedBlockedReasonFtraceEvent "maybe'ioWait" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedBlockedReasonFtraceEvent'ioWait
           (\ x__ y__ -> x__ {_SchedBlockedReasonFtraceEvent'ioWait = y__}))
        Prelude.id
instance Data.ProtoLens.Message SchedBlockedReasonFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.SchedBlockedReasonFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\GSSchedBlockedReasonFtraceEvent\DC2\DLE\n\
      \\ETXpid\CAN\SOH \SOH(\ENQR\ETXpid\DC2\SYN\n\
      \\ACKcaller\CAN\STX \SOH(\EOTR\ACKcaller\DC2\ETB\n\
      \\aio_wait\CAN\ETX \SOH(\rR\ACKioWait"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        pid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pid")) ::
              Data.ProtoLens.FieldDescriptor SchedBlockedReasonFtraceEvent
        caller__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "caller"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'caller")) ::
              Data.ProtoLens.FieldDescriptor SchedBlockedReasonFtraceEvent
        ioWait__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "io_wait"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ioWait")) ::
              Data.ProtoLens.FieldDescriptor SchedBlockedReasonFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, pid__field_descriptor),
           (Data.ProtoLens.Tag 2, caller__field_descriptor),
           (Data.ProtoLens.Tag 3, ioWait__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SchedBlockedReasonFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_SchedBlockedReasonFtraceEvent'_unknownFields = y__})
  defMessage
    = SchedBlockedReasonFtraceEvent'_constructor
        {_SchedBlockedReasonFtraceEvent'pid = Prelude.Nothing,
         _SchedBlockedReasonFtraceEvent'caller = Prelude.Nothing,
         _SchedBlockedReasonFtraceEvent'ioWait = Prelude.Nothing,
         _SchedBlockedReasonFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SchedBlockedReasonFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser SchedBlockedReasonFtraceEvent
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
                                       "pid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pid") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "caller"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"caller") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "io_wait"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ioWait") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SchedBlockedReasonFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pid") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'caller") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ioWait") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData SchedBlockedReasonFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SchedBlockedReasonFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SchedBlockedReasonFtraceEvent'pid x__)
                (Control.DeepSeq.deepseq
                   (_SchedBlockedReasonFtraceEvent'caller x__)
                   (Control.DeepSeq.deepseq
                      (_SchedBlockedReasonFtraceEvent'ioWait x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.affectedCpu' @:: Lens' SchedCpuHotplugFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'affectedCpu' @:: Lens' SchedCpuHotplugFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.error' @:: Lens' SchedCpuHotplugFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'error' @:: Lens' SchedCpuHotplugFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.status' @:: Lens' SchedCpuHotplugFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'status' @:: Lens' SchedCpuHotplugFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data SchedCpuHotplugFtraceEvent
  = SchedCpuHotplugFtraceEvent'_constructor {_SchedCpuHotplugFtraceEvent'affectedCpu :: !(Prelude.Maybe Data.Int.Int32),
                                             _SchedCpuHotplugFtraceEvent'error :: !(Prelude.Maybe Data.Int.Int32),
                                             _SchedCpuHotplugFtraceEvent'status :: !(Prelude.Maybe Data.Int.Int32),
                                             _SchedCpuHotplugFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SchedCpuHotplugFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SchedCpuHotplugFtraceEvent "affectedCpu" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedCpuHotplugFtraceEvent'affectedCpu
           (\ x__ y__ -> x__ {_SchedCpuHotplugFtraceEvent'affectedCpu = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedCpuHotplugFtraceEvent "maybe'affectedCpu" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedCpuHotplugFtraceEvent'affectedCpu
           (\ x__ y__ -> x__ {_SchedCpuHotplugFtraceEvent'affectedCpu = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedCpuHotplugFtraceEvent "error" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedCpuHotplugFtraceEvent'error
           (\ x__ y__ -> x__ {_SchedCpuHotplugFtraceEvent'error = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedCpuHotplugFtraceEvent "maybe'error" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedCpuHotplugFtraceEvent'error
           (\ x__ y__ -> x__ {_SchedCpuHotplugFtraceEvent'error = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedCpuHotplugFtraceEvent "status" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedCpuHotplugFtraceEvent'status
           (\ x__ y__ -> x__ {_SchedCpuHotplugFtraceEvent'status = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedCpuHotplugFtraceEvent "maybe'status" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedCpuHotplugFtraceEvent'status
           (\ x__ y__ -> x__ {_SchedCpuHotplugFtraceEvent'status = y__}))
        Prelude.id
instance Data.ProtoLens.Message SchedCpuHotplugFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.SchedCpuHotplugFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SUBSchedCpuHotplugFtraceEvent\DC2!\n\
      \\faffected_cpu\CAN\SOH \SOH(\ENQR\vaffectedCpu\DC2\DC4\n\
      \\ENQerror\CAN\STX \SOH(\ENQR\ENQerror\DC2\SYN\n\
      \\ACKstatus\CAN\ETX \SOH(\ENQR\ACKstatus"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        affectedCpu__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "affected_cpu"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'affectedCpu")) ::
              Data.ProtoLens.FieldDescriptor SchedCpuHotplugFtraceEvent
        error__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "error"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'error")) ::
              Data.ProtoLens.FieldDescriptor SchedCpuHotplugFtraceEvent
        status__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'status")) ::
              Data.ProtoLens.FieldDescriptor SchedCpuHotplugFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, affectedCpu__field_descriptor),
           (Data.ProtoLens.Tag 2, error__field_descriptor),
           (Data.ProtoLens.Tag 3, status__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SchedCpuHotplugFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_SchedCpuHotplugFtraceEvent'_unknownFields = y__})
  defMessage
    = SchedCpuHotplugFtraceEvent'_constructor
        {_SchedCpuHotplugFtraceEvent'affectedCpu = Prelude.Nothing,
         _SchedCpuHotplugFtraceEvent'error = Prelude.Nothing,
         _SchedCpuHotplugFtraceEvent'status = Prelude.Nothing,
         _SchedCpuHotplugFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SchedCpuHotplugFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser SchedCpuHotplugFtraceEvent
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
                                       "affected_cpu"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"affectedCpu") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "error"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"error") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "status"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"status") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SchedCpuHotplugFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'affectedCpu") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'error") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'status") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData SchedCpuHotplugFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SchedCpuHotplugFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SchedCpuHotplugFtraceEvent'affectedCpu x__)
                (Control.DeepSeq.deepseq
                   (_SchedCpuHotplugFtraceEvent'error x__)
                   (Control.DeepSeq.deepseq
                      (_SchedCpuHotplugFtraceEvent'status x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.active' @:: Lens' SchedCpuUtilCfsFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'active' @:: Lens' SchedCpuUtilCfsFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.capacity' @:: Lens' SchedCpuUtilCfsFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'capacity' @:: Lens' SchedCpuUtilCfsFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.capacityOrig' @:: Lens' SchedCpuUtilCfsFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'capacityOrig' @:: Lens' SchedCpuUtilCfsFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.cpu' @:: Lens' SchedCpuUtilCfsFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'cpu' @:: Lens' SchedCpuUtilCfsFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.cpuImportance' @:: Lens' SchedCpuUtilCfsFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'cpuImportance' @:: Lens' SchedCpuUtilCfsFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.cpuUtil' @:: Lens' SchedCpuUtilCfsFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'cpuUtil' @:: Lens' SchedCpuUtilCfsFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.exitLat' @:: Lens' SchedCpuUtilCfsFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'exitLat' @:: Lens' SchedCpuUtilCfsFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.groupCapacity' @:: Lens' SchedCpuUtilCfsFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'groupCapacity' @:: Lens' SchedCpuUtilCfsFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.grpOverutilized' @:: Lens' SchedCpuUtilCfsFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'grpOverutilized' @:: Lens' SchedCpuUtilCfsFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.idleCpu' @:: Lens' SchedCpuUtilCfsFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'idleCpu' @:: Lens' SchedCpuUtilCfsFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.nrRunning' @:: Lens' SchedCpuUtilCfsFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'nrRunning' @:: Lens' SchedCpuUtilCfsFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.spareCap' @:: Lens' SchedCpuUtilCfsFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'spareCap' @:: Lens' SchedCpuUtilCfsFtraceEvent (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.taskFits' @:: Lens' SchedCpuUtilCfsFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'taskFits' @:: Lens' SchedCpuUtilCfsFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.wakeGroupUtil' @:: Lens' SchedCpuUtilCfsFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'wakeGroupUtil' @:: Lens' SchedCpuUtilCfsFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.wakeUtil' @:: Lens' SchedCpuUtilCfsFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'wakeUtil' @:: Lens' SchedCpuUtilCfsFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data SchedCpuUtilCfsFtraceEvent
  = SchedCpuUtilCfsFtraceEvent'_constructor {_SchedCpuUtilCfsFtraceEvent'active :: !(Prelude.Maybe Data.Int.Int32),
                                             _SchedCpuUtilCfsFtraceEvent'capacity :: !(Prelude.Maybe Data.Word.Word64),
                                             _SchedCpuUtilCfsFtraceEvent'capacityOrig :: !(Prelude.Maybe Data.Word.Word64),
                                             _SchedCpuUtilCfsFtraceEvent'cpu :: !(Prelude.Maybe Data.Word.Word32),
                                             _SchedCpuUtilCfsFtraceEvent'cpuImportance :: !(Prelude.Maybe Data.Word.Word64),
                                             _SchedCpuUtilCfsFtraceEvent'cpuUtil :: !(Prelude.Maybe Data.Word.Word64),
                                             _SchedCpuUtilCfsFtraceEvent'exitLat :: !(Prelude.Maybe Data.Word.Word32),
                                             _SchedCpuUtilCfsFtraceEvent'groupCapacity :: !(Prelude.Maybe Data.Word.Word64),
                                             _SchedCpuUtilCfsFtraceEvent'grpOverutilized :: !(Prelude.Maybe Data.Word.Word32),
                                             _SchedCpuUtilCfsFtraceEvent'idleCpu :: !(Prelude.Maybe Data.Word.Word32),
                                             _SchedCpuUtilCfsFtraceEvent'nrRunning :: !(Prelude.Maybe Data.Word.Word32),
                                             _SchedCpuUtilCfsFtraceEvent'spareCap :: !(Prelude.Maybe Data.Int.Int64),
                                             _SchedCpuUtilCfsFtraceEvent'taskFits :: !(Prelude.Maybe Data.Word.Word32),
                                             _SchedCpuUtilCfsFtraceEvent'wakeGroupUtil :: !(Prelude.Maybe Data.Word.Word64),
                                             _SchedCpuUtilCfsFtraceEvent'wakeUtil :: !(Prelude.Maybe Data.Word.Word64),
                                             _SchedCpuUtilCfsFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SchedCpuUtilCfsFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SchedCpuUtilCfsFtraceEvent "active" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedCpuUtilCfsFtraceEvent'active
           (\ x__ y__ -> x__ {_SchedCpuUtilCfsFtraceEvent'active = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedCpuUtilCfsFtraceEvent "maybe'active" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedCpuUtilCfsFtraceEvent'active
           (\ x__ y__ -> x__ {_SchedCpuUtilCfsFtraceEvent'active = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedCpuUtilCfsFtraceEvent "capacity" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedCpuUtilCfsFtraceEvent'capacity
           (\ x__ y__ -> x__ {_SchedCpuUtilCfsFtraceEvent'capacity = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedCpuUtilCfsFtraceEvent "maybe'capacity" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedCpuUtilCfsFtraceEvent'capacity
           (\ x__ y__ -> x__ {_SchedCpuUtilCfsFtraceEvent'capacity = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedCpuUtilCfsFtraceEvent "capacityOrig" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedCpuUtilCfsFtraceEvent'capacityOrig
           (\ x__ y__
              -> x__ {_SchedCpuUtilCfsFtraceEvent'capacityOrig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedCpuUtilCfsFtraceEvent "maybe'capacityOrig" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedCpuUtilCfsFtraceEvent'capacityOrig
           (\ x__ y__
              -> x__ {_SchedCpuUtilCfsFtraceEvent'capacityOrig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedCpuUtilCfsFtraceEvent "cpu" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedCpuUtilCfsFtraceEvent'cpu
           (\ x__ y__ -> x__ {_SchedCpuUtilCfsFtraceEvent'cpu = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedCpuUtilCfsFtraceEvent "maybe'cpu" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedCpuUtilCfsFtraceEvent'cpu
           (\ x__ y__ -> x__ {_SchedCpuUtilCfsFtraceEvent'cpu = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedCpuUtilCfsFtraceEvent "cpuImportance" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedCpuUtilCfsFtraceEvent'cpuImportance
           (\ x__ y__
              -> x__ {_SchedCpuUtilCfsFtraceEvent'cpuImportance = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedCpuUtilCfsFtraceEvent "maybe'cpuImportance" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedCpuUtilCfsFtraceEvent'cpuImportance
           (\ x__ y__
              -> x__ {_SchedCpuUtilCfsFtraceEvent'cpuImportance = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedCpuUtilCfsFtraceEvent "cpuUtil" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedCpuUtilCfsFtraceEvent'cpuUtil
           (\ x__ y__ -> x__ {_SchedCpuUtilCfsFtraceEvent'cpuUtil = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedCpuUtilCfsFtraceEvent "maybe'cpuUtil" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedCpuUtilCfsFtraceEvent'cpuUtil
           (\ x__ y__ -> x__ {_SchedCpuUtilCfsFtraceEvent'cpuUtil = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedCpuUtilCfsFtraceEvent "exitLat" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedCpuUtilCfsFtraceEvent'exitLat
           (\ x__ y__ -> x__ {_SchedCpuUtilCfsFtraceEvent'exitLat = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedCpuUtilCfsFtraceEvent "maybe'exitLat" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedCpuUtilCfsFtraceEvent'exitLat
           (\ x__ y__ -> x__ {_SchedCpuUtilCfsFtraceEvent'exitLat = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedCpuUtilCfsFtraceEvent "groupCapacity" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedCpuUtilCfsFtraceEvent'groupCapacity
           (\ x__ y__
              -> x__ {_SchedCpuUtilCfsFtraceEvent'groupCapacity = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedCpuUtilCfsFtraceEvent "maybe'groupCapacity" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedCpuUtilCfsFtraceEvent'groupCapacity
           (\ x__ y__
              -> x__ {_SchedCpuUtilCfsFtraceEvent'groupCapacity = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedCpuUtilCfsFtraceEvent "grpOverutilized" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedCpuUtilCfsFtraceEvent'grpOverutilized
           (\ x__ y__
              -> x__ {_SchedCpuUtilCfsFtraceEvent'grpOverutilized = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedCpuUtilCfsFtraceEvent "maybe'grpOverutilized" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedCpuUtilCfsFtraceEvent'grpOverutilized
           (\ x__ y__
              -> x__ {_SchedCpuUtilCfsFtraceEvent'grpOverutilized = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedCpuUtilCfsFtraceEvent "idleCpu" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedCpuUtilCfsFtraceEvent'idleCpu
           (\ x__ y__ -> x__ {_SchedCpuUtilCfsFtraceEvent'idleCpu = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedCpuUtilCfsFtraceEvent "maybe'idleCpu" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedCpuUtilCfsFtraceEvent'idleCpu
           (\ x__ y__ -> x__ {_SchedCpuUtilCfsFtraceEvent'idleCpu = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedCpuUtilCfsFtraceEvent "nrRunning" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedCpuUtilCfsFtraceEvent'nrRunning
           (\ x__ y__ -> x__ {_SchedCpuUtilCfsFtraceEvent'nrRunning = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedCpuUtilCfsFtraceEvent "maybe'nrRunning" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedCpuUtilCfsFtraceEvent'nrRunning
           (\ x__ y__ -> x__ {_SchedCpuUtilCfsFtraceEvent'nrRunning = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedCpuUtilCfsFtraceEvent "spareCap" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedCpuUtilCfsFtraceEvent'spareCap
           (\ x__ y__ -> x__ {_SchedCpuUtilCfsFtraceEvent'spareCap = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedCpuUtilCfsFtraceEvent "maybe'spareCap" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedCpuUtilCfsFtraceEvent'spareCap
           (\ x__ y__ -> x__ {_SchedCpuUtilCfsFtraceEvent'spareCap = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedCpuUtilCfsFtraceEvent "taskFits" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedCpuUtilCfsFtraceEvent'taskFits
           (\ x__ y__ -> x__ {_SchedCpuUtilCfsFtraceEvent'taskFits = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedCpuUtilCfsFtraceEvent "maybe'taskFits" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedCpuUtilCfsFtraceEvent'taskFits
           (\ x__ y__ -> x__ {_SchedCpuUtilCfsFtraceEvent'taskFits = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedCpuUtilCfsFtraceEvent "wakeGroupUtil" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedCpuUtilCfsFtraceEvent'wakeGroupUtil
           (\ x__ y__
              -> x__ {_SchedCpuUtilCfsFtraceEvent'wakeGroupUtil = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedCpuUtilCfsFtraceEvent "maybe'wakeGroupUtil" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedCpuUtilCfsFtraceEvent'wakeGroupUtil
           (\ x__ y__
              -> x__ {_SchedCpuUtilCfsFtraceEvent'wakeGroupUtil = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedCpuUtilCfsFtraceEvent "wakeUtil" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedCpuUtilCfsFtraceEvent'wakeUtil
           (\ x__ y__ -> x__ {_SchedCpuUtilCfsFtraceEvent'wakeUtil = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedCpuUtilCfsFtraceEvent "maybe'wakeUtil" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedCpuUtilCfsFtraceEvent'wakeUtil
           (\ x__ y__ -> x__ {_SchedCpuUtilCfsFtraceEvent'wakeUtil = y__}))
        Prelude.id
instance Data.ProtoLens.Message SchedCpuUtilCfsFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.SchedCpuUtilCfsFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SUBSchedCpuUtilCfsFtraceEvent\DC2\SYN\n\
      \\ACKactive\CAN\SOH \SOH(\ENQR\ACKactive\DC2\SUB\n\
      \\bcapacity\CAN\STX \SOH(\EOTR\bcapacity\DC2#\n\
      \\rcapacity_orig\CAN\ETX \SOH(\EOTR\fcapacityOrig\DC2\DLE\n\
      \\ETXcpu\CAN\EOT \SOH(\rR\ETXcpu\DC2%\n\
      \\SOcpu_importance\CAN\ENQ \SOH(\EOTR\rcpuImportance\DC2\EM\n\
      \\bcpu_util\CAN\ACK \SOH(\EOTR\acpuUtil\DC2\EM\n\
      \\bexit_lat\CAN\a \SOH(\rR\aexitLat\DC2%\n\
      \\SOgroup_capacity\CAN\b \SOH(\EOTR\rgroupCapacity\DC2)\n\
      \\DLEgrp_overutilized\CAN\t \SOH(\rR\SIgrpOverutilized\DC2\EM\n\
      \\bidle_cpu\CAN\n\
      \ \SOH(\rR\aidleCpu\DC2\GS\n\
      \\n\
      \nr_running\CAN\v \SOH(\rR\tnrRunning\DC2\ESC\n\
      \\tspare_cap\CAN\f \SOH(\ETXR\bspareCap\DC2\ESC\n\
      \\ttask_fits\CAN\r \SOH(\rR\btaskFits\DC2&\n\
      \\SIwake_group_util\CAN\SO \SOH(\EOTR\rwakeGroupUtil\DC2\ESC\n\
      \\twake_util\CAN\SI \SOH(\EOTR\bwakeUtil"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        active__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "active"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'active")) ::
              Data.ProtoLens.FieldDescriptor SchedCpuUtilCfsFtraceEvent
        capacity__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "capacity"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'capacity")) ::
              Data.ProtoLens.FieldDescriptor SchedCpuUtilCfsFtraceEvent
        capacityOrig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "capacity_orig"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'capacityOrig")) ::
              Data.ProtoLens.FieldDescriptor SchedCpuUtilCfsFtraceEvent
        cpu__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cpu"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cpu")) ::
              Data.ProtoLens.FieldDescriptor SchedCpuUtilCfsFtraceEvent
        cpuImportance__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cpu_importance"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cpuImportance")) ::
              Data.ProtoLens.FieldDescriptor SchedCpuUtilCfsFtraceEvent
        cpuUtil__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cpu_util"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cpuUtil")) ::
              Data.ProtoLens.FieldDescriptor SchedCpuUtilCfsFtraceEvent
        exitLat__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "exit_lat"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'exitLat")) ::
              Data.ProtoLens.FieldDescriptor SchedCpuUtilCfsFtraceEvent
        groupCapacity__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_capacity"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'groupCapacity")) ::
              Data.ProtoLens.FieldDescriptor SchedCpuUtilCfsFtraceEvent
        grpOverutilized__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "grp_overutilized"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'grpOverutilized")) ::
              Data.ProtoLens.FieldDescriptor SchedCpuUtilCfsFtraceEvent
        idleCpu__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "idle_cpu"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'idleCpu")) ::
              Data.ProtoLens.FieldDescriptor SchedCpuUtilCfsFtraceEvent
        nrRunning__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nr_running"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nrRunning")) ::
              Data.ProtoLens.FieldDescriptor SchedCpuUtilCfsFtraceEvent
        spareCap__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "spare_cap"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'spareCap")) ::
              Data.ProtoLens.FieldDescriptor SchedCpuUtilCfsFtraceEvent
        taskFits__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "task_fits"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'taskFits")) ::
              Data.ProtoLens.FieldDescriptor SchedCpuUtilCfsFtraceEvent
        wakeGroupUtil__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "wake_group_util"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'wakeGroupUtil")) ::
              Data.ProtoLens.FieldDescriptor SchedCpuUtilCfsFtraceEvent
        wakeUtil__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "wake_util"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'wakeUtil")) ::
              Data.ProtoLens.FieldDescriptor SchedCpuUtilCfsFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, active__field_descriptor),
           (Data.ProtoLens.Tag 2, capacity__field_descriptor),
           (Data.ProtoLens.Tag 3, capacityOrig__field_descriptor),
           (Data.ProtoLens.Tag 4, cpu__field_descriptor),
           (Data.ProtoLens.Tag 5, cpuImportance__field_descriptor),
           (Data.ProtoLens.Tag 6, cpuUtil__field_descriptor),
           (Data.ProtoLens.Tag 7, exitLat__field_descriptor),
           (Data.ProtoLens.Tag 8, groupCapacity__field_descriptor),
           (Data.ProtoLens.Tag 9, grpOverutilized__field_descriptor),
           (Data.ProtoLens.Tag 10, idleCpu__field_descriptor),
           (Data.ProtoLens.Tag 11, nrRunning__field_descriptor),
           (Data.ProtoLens.Tag 12, spareCap__field_descriptor),
           (Data.ProtoLens.Tag 13, taskFits__field_descriptor),
           (Data.ProtoLens.Tag 14, wakeGroupUtil__field_descriptor),
           (Data.ProtoLens.Tag 15, wakeUtil__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SchedCpuUtilCfsFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_SchedCpuUtilCfsFtraceEvent'_unknownFields = y__})
  defMessage
    = SchedCpuUtilCfsFtraceEvent'_constructor
        {_SchedCpuUtilCfsFtraceEvent'active = Prelude.Nothing,
         _SchedCpuUtilCfsFtraceEvent'capacity = Prelude.Nothing,
         _SchedCpuUtilCfsFtraceEvent'capacityOrig = Prelude.Nothing,
         _SchedCpuUtilCfsFtraceEvent'cpu = Prelude.Nothing,
         _SchedCpuUtilCfsFtraceEvent'cpuImportance = Prelude.Nothing,
         _SchedCpuUtilCfsFtraceEvent'cpuUtil = Prelude.Nothing,
         _SchedCpuUtilCfsFtraceEvent'exitLat = Prelude.Nothing,
         _SchedCpuUtilCfsFtraceEvent'groupCapacity = Prelude.Nothing,
         _SchedCpuUtilCfsFtraceEvent'grpOverutilized = Prelude.Nothing,
         _SchedCpuUtilCfsFtraceEvent'idleCpu = Prelude.Nothing,
         _SchedCpuUtilCfsFtraceEvent'nrRunning = Prelude.Nothing,
         _SchedCpuUtilCfsFtraceEvent'spareCap = Prelude.Nothing,
         _SchedCpuUtilCfsFtraceEvent'taskFits = Prelude.Nothing,
         _SchedCpuUtilCfsFtraceEvent'wakeGroupUtil = Prelude.Nothing,
         _SchedCpuUtilCfsFtraceEvent'wakeUtil = Prelude.Nothing,
         _SchedCpuUtilCfsFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SchedCpuUtilCfsFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser SchedCpuUtilCfsFtraceEvent
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
                                       "active"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"active") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "capacity"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"capacity") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "capacity_orig"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"capacityOrig") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "cpu"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cpu") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "cpu_importance"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"cpuImportance") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "cpu_util"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cpuUtil") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "exit_lat"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"exitLat") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "group_capacity"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"groupCapacity") y x)
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "grp_overutilized"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"grpOverutilized") y x)
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "idle_cpu"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"idleCpu") y x)
                        88
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "nr_running"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nrRunning") y x)
                        96
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "spare_cap"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"spareCap") y x)
                        104
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "task_fits"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"taskFits") y x)
                        112
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "wake_group_util"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"wakeGroupUtil") y x)
                        120
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "wake_util"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"wakeUtil") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SchedCpuUtilCfsFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'active") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'capacity") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'capacityOrig") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cpu") _x
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
                                (Data.ProtoLens.Field.field @"maybe'cpuImportance") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cpuUtil") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'exitLat") _x
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
                                         (Data.ProtoLens.Field.field @"maybe'groupCapacity") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"maybe'grpOverutilized") _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                               ((Prelude..)
                                                  Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  Prelude.fromIntegral _v))
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field @"maybe'idleCpu") _x
                                         of
                                           Prelude.Nothing -> Data.Monoid.mempty
                                           (Prelude.Just _v)
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 80)
                                                  ((Prelude..)
                                                     Data.ProtoLens.Encoding.Bytes.putVarInt
                                                     Prelude.fromIntegral _v))
                                        ((Data.Monoid.<>)
                                           (case
                                                Lens.Family2.view
                                                  (Data.ProtoLens.Field.field @"maybe'nrRunning") _x
                                            of
                                              Prelude.Nothing -> Data.Monoid.mempty
                                              (Prelude.Just _v)
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 88)
                                                     ((Prelude..)
                                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                                        Prelude.fromIntegral _v))
                                           ((Data.Monoid.<>)
                                              (case
                                                   Lens.Family2.view
                                                     (Data.ProtoLens.Field.field @"maybe'spareCap")
                                                     _x
                                               of
                                                 Prelude.Nothing -> Data.Monoid.mempty
                                                 (Prelude.Just _v)
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 96)
                                                        ((Prelude..)
                                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           Prelude.fromIntegral _v))
                                              ((Data.Monoid.<>)
                                                 (case
                                                      Lens.Family2.view
                                                        (Data.ProtoLens.Field.field
                                                           @"maybe'taskFits")
                                                        _x
                                                  of
                                                    Prelude.Nothing -> Data.Monoid.mempty
                                                    (Prelude.Just _v)
                                                      -> (Data.Monoid.<>)
                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              104)
                                                           ((Prelude..)
                                                              Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              Prelude.fromIntegral _v))
                                                 ((Data.Monoid.<>)
                                                    (case
                                                         Lens.Family2.view
                                                           (Data.ProtoLens.Field.field
                                                              @"maybe'wakeGroupUtil")
                                                           _x
                                                     of
                                                       Prelude.Nothing -> Data.Monoid.mempty
                                                       (Prelude.Just _v)
                                                         -> (Data.Monoid.<>)
                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 112)
                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 _v))
                                                    ((Data.Monoid.<>)
                                                       (case
                                                            Lens.Family2.view
                                                              (Data.ProtoLens.Field.field
                                                                 @"maybe'wakeUtil")
                                                              _x
                                                        of
                                                          Prelude.Nothing -> Data.Monoid.mempty
                                                          (Prelude.Just _v)
                                                            -> (Data.Monoid.<>)
                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    120)
                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    _v))
                                                       (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                          (Lens.Family2.view
                                                             Data.ProtoLens.unknownFields
                                                             _x))))))))))))))))
instance Control.DeepSeq.NFData SchedCpuUtilCfsFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SchedCpuUtilCfsFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SchedCpuUtilCfsFtraceEvent'active x__)
                (Control.DeepSeq.deepseq
                   (_SchedCpuUtilCfsFtraceEvent'capacity x__)
                   (Control.DeepSeq.deepseq
                      (_SchedCpuUtilCfsFtraceEvent'capacityOrig x__)
                      (Control.DeepSeq.deepseq
                         (_SchedCpuUtilCfsFtraceEvent'cpu x__)
                         (Control.DeepSeq.deepseq
                            (_SchedCpuUtilCfsFtraceEvent'cpuImportance x__)
                            (Control.DeepSeq.deepseq
                               (_SchedCpuUtilCfsFtraceEvent'cpuUtil x__)
                               (Control.DeepSeq.deepseq
                                  (_SchedCpuUtilCfsFtraceEvent'exitLat x__)
                                  (Control.DeepSeq.deepseq
                                     (_SchedCpuUtilCfsFtraceEvent'groupCapacity x__)
                                     (Control.DeepSeq.deepseq
                                        (_SchedCpuUtilCfsFtraceEvent'grpOverutilized x__)
                                        (Control.DeepSeq.deepseq
                                           (_SchedCpuUtilCfsFtraceEvent'idleCpu x__)
                                           (Control.DeepSeq.deepseq
                                              (_SchedCpuUtilCfsFtraceEvent'nrRunning x__)
                                              (Control.DeepSeq.deepseq
                                                 (_SchedCpuUtilCfsFtraceEvent'spareCap x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_SchedCpuUtilCfsFtraceEvent'taskFits x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_SchedCpuUtilCfsFtraceEvent'wakeGroupUtil
                                                          x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_SchedCpuUtilCfsFtraceEvent'wakeUtil x__)
                                                          ())))))))))))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.comm' @:: Lens' SchedPiSetprioFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'comm' @:: Lens' SchedPiSetprioFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.newprio' @:: Lens' SchedPiSetprioFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'newprio' @:: Lens' SchedPiSetprioFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.oldprio' @:: Lens' SchedPiSetprioFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'oldprio' @:: Lens' SchedPiSetprioFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.pid' @:: Lens' SchedPiSetprioFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'pid' @:: Lens' SchedPiSetprioFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data SchedPiSetprioFtraceEvent
  = SchedPiSetprioFtraceEvent'_constructor {_SchedPiSetprioFtraceEvent'comm :: !(Prelude.Maybe Data.Text.Text),
                                            _SchedPiSetprioFtraceEvent'newprio :: !(Prelude.Maybe Data.Int.Int32),
                                            _SchedPiSetprioFtraceEvent'oldprio :: !(Prelude.Maybe Data.Int.Int32),
                                            _SchedPiSetprioFtraceEvent'pid :: !(Prelude.Maybe Data.Int.Int32),
                                            _SchedPiSetprioFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SchedPiSetprioFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SchedPiSetprioFtraceEvent "comm" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedPiSetprioFtraceEvent'comm
           (\ x__ y__ -> x__ {_SchedPiSetprioFtraceEvent'comm = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedPiSetprioFtraceEvent "maybe'comm" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedPiSetprioFtraceEvent'comm
           (\ x__ y__ -> x__ {_SchedPiSetprioFtraceEvent'comm = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedPiSetprioFtraceEvent "newprio" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedPiSetprioFtraceEvent'newprio
           (\ x__ y__ -> x__ {_SchedPiSetprioFtraceEvent'newprio = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedPiSetprioFtraceEvent "maybe'newprio" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedPiSetprioFtraceEvent'newprio
           (\ x__ y__ -> x__ {_SchedPiSetprioFtraceEvent'newprio = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedPiSetprioFtraceEvent "oldprio" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedPiSetprioFtraceEvent'oldprio
           (\ x__ y__ -> x__ {_SchedPiSetprioFtraceEvent'oldprio = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedPiSetprioFtraceEvent "maybe'oldprio" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedPiSetprioFtraceEvent'oldprio
           (\ x__ y__ -> x__ {_SchedPiSetprioFtraceEvent'oldprio = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedPiSetprioFtraceEvent "pid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedPiSetprioFtraceEvent'pid
           (\ x__ y__ -> x__ {_SchedPiSetprioFtraceEvent'pid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedPiSetprioFtraceEvent "maybe'pid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedPiSetprioFtraceEvent'pid
           (\ x__ y__ -> x__ {_SchedPiSetprioFtraceEvent'pid = y__}))
        Prelude.id
instance Data.ProtoLens.Message SchedPiSetprioFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.SchedPiSetprioFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\EMSchedPiSetprioFtraceEvent\DC2\DC2\n\
      \\EOTcomm\CAN\SOH \SOH(\tR\EOTcomm\DC2\CAN\n\
      \\anewprio\CAN\STX \SOH(\ENQR\anewprio\DC2\CAN\n\
      \\aoldprio\CAN\ETX \SOH(\ENQR\aoldprio\DC2\DLE\n\
      \\ETXpid\CAN\EOT \SOH(\ENQR\ETXpid"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        comm__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "comm"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'comm")) ::
              Data.ProtoLens.FieldDescriptor SchedPiSetprioFtraceEvent
        newprio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "newprio"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'newprio")) ::
              Data.ProtoLens.FieldDescriptor SchedPiSetprioFtraceEvent
        oldprio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "oldprio"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'oldprio")) ::
              Data.ProtoLens.FieldDescriptor SchedPiSetprioFtraceEvent
        pid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pid")) ::
              Data.ProtoLens.FieldDescriptor SchedPiSetprioFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, comm__field_descriptor),
           (Data.ProtoLens.Tag 2, newprio__field_descriptor),
           (Data.ProtoLens.Tag 3, oldprio__field_descriptor),
           (Data.ProtoLens.Tag 4, pid__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SchedPiSetprioFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_SchedPiSetprioFtraceEvent'_unknownFields = y__})
  defMessage
    = SchedPiSetprioFtraceEvent'_constructor
        {_SchedPiSetprioFtraceEvent'comm = Prelude.Nothing,
         _SchedPiSetprioFtraceEvent'newprio = Prelude.Nothing,
         _SchedPiSetprioFtraceEvent'oldprio = Prelude.Nothing,
         _SchedPiSetprioFtraceEvent'pid = Prelude.Nothing,
         _SchedPiSetprioFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SchedPiSetprioFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser SchedPiSetprioFtraceEvent
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
                                       "comm"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"comm") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "newprio"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"newprio") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "oldprio"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"oldprio") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "pid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pid") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SchedPiSetprioFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'comm") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'newprio") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'oldprio") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pid") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData SchedPiSetprioFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SchedPiSetprioFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SchedPiSetprioFtraceEvent'comm x__)
                (Control.DeepSeq.deepseq
                   (_SchedPiSetprioFtraceEvent'newprio x__)
                   (Control.DeepSeq.deepseq
                      (_SchedPiSetprioFtraceEvent'oldprio x__)
                      (Control.DeepSeq.deepseq
                         (_SchedPiSetprioFtraceEvent'pid x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.filename' @:: Lens' SchedProcessExecFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'filename' @:: Lens' SchedProcessExecFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.pid' @:: Lens' SchedProcessExecFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'pid' @:: Lens' SchedProcessExecFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.oldPid' @:: Lens' SchedProcessExecFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'oldPid' @:: Lens' SchedProcessExecFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data SchedProcessExecFtraceEvent
  = SchedProcessExecFtraceEvent'_constructor {_SchedProcessExecFtraceEvent'filename :: !(Prelude.Maybe Data.Text.Text),
                                              _SchedProcessExecFtraceEvent'pid :: !(Prelude.Maybe Data.Int.Int32),
                                              _SchedProcessExecFtraceEvent'oldPid :: !(Prelude.Maybe Data.Int.Int32),
                                              _SchedProcessExecFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SchedProcessExecFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SchedProcessExecFtraceEvent "filename" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedProcessExecFtraceEvent'filename
           (\ x__ y__ -> x__ {_SchedProcessExecFtraceEvent'filename = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedProcessExecFtraceEvent "maybe'filename" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedProcessExecFtraceEvent'filename
           (\ x__ y__ -> x__ {_SchedProcessExecFtraceEvent'filename = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedProcessExecFtraceEvent "pid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedProcessExecFtraceEvent'pid
           (\ x__ y__ -> x__ {_SchedProcessExecFtraceEvent'pid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedProcessExecFtraceEvent "maybe'pid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedProcessExecFtraceEvent'pid
           (\ x__ y__ -> x__ {_SchedProcessExecFtraceEvent'pid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedProcessExecFtraceEvent "oldPid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedProcessExecFtraceEvent'oldPid
           (\ x__ y__ -> x__ {_SchedProcessExecFtraceEvent'oldPid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedProcessExecFtraceEvent "maybe'oldPid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedProcessExecFtraceEvent'oldPid
           (\ x__ y__ -> x__ {_SchedProcessExecFtraceEvent'oldPid = y__}))
        Prelude.id
instance Data.ProtoLens.Message SchedProcessExecFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.SchedProcessExecFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ESCSchedProcessExecFtraceEvent\DC2\SUB\n\
      \\bfilename\CAN\SOH \SOH(\tR\bfilename\DC2\DLE\n\
      \\ETXpid\CAN\STX \SOH(\ENQR\ETXpid\DC2\ETB\n\
      \\aold_pid\CAN\ETX \SOH(\ENQR\ACKoldPid"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        filename__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "filename"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'filename")) ::
              Data.ProtoLens.FieldDescriptor SchedProcessExecFtraceEvent
        pid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pid")) ::
              Data.ProtoLens.FieldDescriptor SchedProcessExecFtraceEvent
        oldPid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "old_pid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'oldPid")) ::
              Data.ProtoLens.FieldDescriptor SchedProcessExecFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, filename__field_descriptor),
           (Data.ProtoLens.Tag 2, pid__field_descriptor),
           (Data.ProtoLens.Tag 3, oldPid__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SchedProcessExecFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_SchedProcessExecFtraceEvent'_unknownFields = y__})
  defMessage
    = SchedProcessExecFtraceEvent'_constructor
        {_SchedProcessExecFtraceEvent'filename = Prelude.Nothing,
         _SchedProcessExecFtraceEvent'pid = Prelude.Nothing,
         _SchedProcessExecFtraceEvent'oldPid = Prelude.Nothing,
         _SchedProcessExecFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SchedProcessExecFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser SchedProcessExecFtraceEvent
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
                                       "filename"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"filename") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "pid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pid") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "old_pid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"oldPid") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SchedProcessExecFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'filename") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pid") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'oldPid") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData SchedProcessExecFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SchedProcessExecFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SchedProcessExecFtraceEvent'filename x__)
                (Control.DeepSeq.deepseq
                   (_SchedProcessExecFtraceEvent'pid x__)
                   (Control.DeepSeq.deepseq
                      (_SchedProcessExecFtraceEvent'oldPid x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.comm' @:: Lens' SchedProcessExitFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'comm' @:: Lens' SchedProcessExitFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.pid' @:: Lens' SchedProcessExitFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'pid' @:: Lens' SchedProcessExitFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.tgid' @:: Lens' SchedProcessExitFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'tgid' @:: Lens' SchedProcessExitFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.prio' @:: Lens' SchedProcessExitFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'prio' @:: Lens' SchedProcessExitFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data SchedProcessExitFtraceEvent
  = SchedProcessExitFtraceEvent'_constructor {_SchedProcessExitFtraceEvent'comm :: !(Prelude.Maybe Data.Text.Text),
                                              _SchedProcessExitFtraceEvent'pid :: !(Prelude.Maybe Data.Int.Int32),
                                              _SchedProcessExitFtraceEvent'tgid :: !(Prelude.Maybe Data.Int.Int32),
                                              _SchedProcessExitFtraceEvent'prio :: !(Prelude.Maybe Data.Int.Int32),
                                              _SchedProcessExitFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SchedProcessExitFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SchedProcessExitFtraceEvent "comm" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedProcessExitFtraceEvent'comm
           (\ x__ y__ -> x__ {_SchedProcessExitFtraceEvent'comm = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedProcessExitFtraceEvent "maybe'comm" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedProcessExitFtraceEvent'comm
           (\ x__ y__ -> x__ {_SchedProcessExitFtraceEvent'comm = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedProcessExitFtraceEvent "pid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedProcessExitFtraceEvent'pid
           (\ x__ y__ -> x__ {_SchedProcessExitFtraceEvent'pid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedProcessExitFtraceEvent "maybe'pid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedProcessExitFtraceEvent'pid
           (\ x__ y__ -> x__ {_SchedProcessExitFtraceEvent'pid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedProcessExitFtraceEvent "tgid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedProcessExitFtraceEvent'tgid
           (\ x__ y__ -> x__ {_SchedProcessExitFtraceEvent'tgid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedProcessExitFtraceEvent "maybe'tgid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedProcessExitFtraceEvent'tgid
           (\ x__ y__ -> x__ {_SchedProcessExitFtraceEvent'tgid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedProcessExitFtraceEvent "prio" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedProcessExitFtraceEvent'prio
           (\ x__ y__ -> x__ {_SchedProcessExitFtraceEvent'prio = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedProcessExitFtraceEvent "maybe'prio" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedProcessExitFtraceEvent'prio
           (\ x__ y__ -> x__ {_SchedProcessExitFtraceEvent'prio = y__}))
        Prelude.id
instance Data.ProtoLens.Message SchedProcessExitFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.SchedProcessExitFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ESCSchedProcessExitFtraceEvent\DC2\DC2\n\
      \\EOTcomm\CAN\SOH \SOH(\tR\EOTcomm\DC2\DLE\n\
      \\ETXpid\CAN\STX \SOH(\ENQR\ETXpid\DC2\DC2\n\
      \\EOTtgid\CAN\ETX \SOH(\ENQR\EOTtgid\DC2\DC2\n\
      \\EOTprio\CAN\EOT \SOH(\ENQR\EOTprio"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        comm__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "comm"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'comm")) ::
              Data.ProtoLens.FieldDescriptor SchedProcessExitFtraceEvent
        pid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pid")) ::
              Data.ProtoLens.FieldDescriptor SchedProcessExitFtraceEvent
        tgid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tgid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tgid")) ::
              Data.ProtoLens.FieldDescriptor SchedProcessExitFtraceEvent
        prio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "prio"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'prio")) ::
              Data.ProtoLens.FieldDescriptor SchedProcessExitFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, comm__field_descriptor),
           (Data.ProtoLens.Tag 2, pid__field_descriptor),
           (Data.ProtoLens.Tag 3, tgid__field_descriptor),
           (Data.ProtoLens.Tag 4, prio__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SchedProcessExitFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_SchedProcessExitFtraceEvent'_unknownFields = y__})
  defMessage
    = SchedProcessExitFtraceEvent'_constructor
        {_SchedProcessExitFtraceEvent'comm = Prelude.Nothing,
         _SchedProcessExitFtraceEvent'pid = Prelude.Nothing,
         _SchedProcessExitFtraceEvent'tgid = Prelude.Nothing,
         _SchedProcessExitFtraceEvent'prio = Prelude.Nothing,
         _SchedProcessExitFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SchedProcessExitFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser SchedProcessExitFtraceEvent
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
                                       "comm"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"comm") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "pid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pid") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "tgid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"tgid") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "prio"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"prio") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SchedProcessExitFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'comm") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pid") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'tgid") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'prio") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData SchedProcessExitFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SchedProcessExitFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SchedProcessExitFtraceEvent'comm x__)
                (Control.DeepSeq.deepseq
                   (_SchedProcessExitFtraceEvent'pid x__)
                   (Control.DeepSeq.deepseq
                      (_SchedProcessExitFtraceEvent'tgid x__)
                      (Control.DeepSeq.deepseq
                         (_SchedProcessExitFtraceEvent'prio x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.parentComm' @:: Lens' SchedProcessForkFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'parentComm' @:: Lens' SchedProcessForkFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.parentPid' @:: Lens' SchedProcessForkFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'parentPid' @:: Lens' SchedProcessForkFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.childComm' @:: Lens' SchedProcessForkFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'childComm' @:: Lens' SchedProcessForkFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.childPid' @:: Lens' SchedProcessForkFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'childPid' @:: Lens' SchedProcessForkFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data SchedProcessForkFtraceEvent
  = SchedProcessForkFtraceEvent'_constructor {_SchedProcessForkFtraceEvent'parentComm :: !(Prelude.Maybe Data.Text.Text),
                                              _SchedProcessForkFtraceEvent'parentPid :: !(Prelude.Maybe Data.Int.Int32),
                                              _SchedProcessForkFtraceEvent'childComm :: !(Prelude.Maybe Data.Text.Text),
                                              _SchedProcessForkFtraceEvent'childPid :: !(Prelude.Maybe Data.Int.Int32),
                                              _SchedProcessForkFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SchedProcessForkFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SchedProcessForkFtraceEvent "parentComm" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedProcessForkFtraceEvent'parentComm
           (\ x__ y__ -> x__ {_SchedProcessForkFtraceEvent'parentComm = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedProcessForkFtraceEvent "maybe'parentComm" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedProcessForkFtraceEvent'parentComm
           (\ x__ y__ -> x__ {_SchedProcessForkFtraceEvent'parentComm = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedProcessForkFtraceEvent "parentPid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedProcessForkFtraceEvent'parentPid
           (\ x__ y__ -> x__ {_SchedProcessForkFtraceEvent'parentPid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedProcessForkFtraceEvent "maybe'parentPid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedProcessForkFtraceEvent'parentPid
           (\ x__ y__ -> x__ {_SchedProcessForkFtraceEvent'parentPid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedProcessForkFtraceEvent "childComm" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedProcessForkFtraceEvent'childComm
           (\ x__ y__ -> x__ {_SchedProcessForkFtraceEvent'childComm = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedProcessForkFtraceEvent "maybe'childComm" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedProcessForkFtraceEvent'childComm
           (\ x__ y__ -> x__ {_SchedProcessForkFtraceEvent'childComm = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedProcessForkFtraceEvent "childPid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedProcessForkFtraceEvent'childPid
           (\ x__ y__ -> x__ {_SchedProcessForkFtraceEvent'childPid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedProcessForkFtraceEvent "maybe'childPid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedProcessForkFtraceEvent'childPid
           (\ x__ y__ -> x__ {_SchedProcessForkFtraceEvent'childPid = y__}))
        Prelude.id
instance Data.ProtoLens.Message SchedProcessForkFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.SchedProcessForkFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ESCSchedProcessForkFtraceEvent\DC2\US\n\
      \\vparent_comm\CAN\SOH \SOH(\tR\n\
      \parentComm\DC2\GS\n\
      \\n\
      \parent_pid\CAN\STX \SOH(\ENQR\tparentPid\DC2\GS\n\
      \\n\
      \child_comm\CAN\ETX \SOH(\tR\tchildComm\DC2\ESC\n\
      \\tchild_pid\CAN\EOT \SOH(\ENQR\bchildPid"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        parentComm__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "parent_comm"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'parentComm")) ::
              Data.ProtoLens.FieldDescriptor SchedProcessForkFtraceEvent
        parentPid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "parent_pid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'parentPid")) ::
              Data.ProtoLens.FieldDescriptor SchedProcessForkFtraceEvent
        childComm__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "child_comm"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'childComm")) ::
              Data.ProtoLens.FieldDescriptor SchedProcessForkFtraceEvent
        childPid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "child_pid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'childPid")) ::
              Data.ProtoLens.FieldDescriptor SchedProcessForkFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, parentComm__field_descriptor),
           (Data.ProtoLens.Tag 2, parentPid__field_descriptor),
           (Data.ProtoLens.Tag 3, childComm__field_descriptor),
           (Data.ProtoLens.Tag 4, childPid__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SchedProcessForkFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_SchedProcessForkFtraceEvent'_unknownFields = y__})
  defMessage
    = SchedProcessForkFtraceEvent'_constructor
        {_SchedProcessForkFtraceEvent'parentComm = Prelude.Nothing,
         _SchedProcessForkFtraceEvent'parentPid = Prelude.Nothing,
         _SchedProcessForkFtraceEvent'childComm = Prelude.Nothing,
         _SchedProcessForkFtraceEvent'childPid = Prelude.Nothing,
         _SchedProcessForkFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SchedProcessForkFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser SchedProcessForkFtraceEvent
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
                                       "parent_comm"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"parentComm") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "parent_pid"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"parentPid") y x)
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
                                       "child_comm"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"childComm") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "child_pid"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"childPid") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SchedProcessForkFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'parentComm") _x
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
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'parentPid") _x
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
                          (Data.ProtoLens.Field.field @"maybe'childComm") _x
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
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'childPid") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData SchedProcessForkFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SchedProcessForkFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SchedProcessForkFtraceEvent'parentComm x__)
                (Control.DeepSeq.deepseq
                   (_SchedProcessForkFtraceEvent'parentPid x__)
                   (Control.DeepSeq.deepseq
                      (_SchedProcessForkFtraceEvent'childComm x__)
                      (Control.DeepSeq.deepseq
                         (_SchedProcessForkFtraceEvent'childPid x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.comm' @:: Lens' SchedProcessFreeFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'comm' @:: Lens' SchedProcessFreeFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.pid' @:: Lens' SchedProcessFreeFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'pid' @:: Lens' SchedProcessFreeFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.prio' @:: Lens' SchedProcessFreeFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'prio' @:: Lens' SchedProcessFreeFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data SchedProcessFreeFtraceEvent
  = SchedProcessFreeFtraceEvent'_constructor {_SchedProcessFreeFtraceEvent'comm :: !(Prelude.Maybe Data.Text.Text),
                                              _SchedProcessFreeFtraceEvent'pid :: !(Prelude.Maybe Data.Int.Int32),
                                              _SchedProcessFreeFtraceEvent'prio :: !(Prelude.Maybe Data.Int.Int32),
                                              _SchedProcessFreeFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SchedProcessFreeFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SchedProcessFreeFtraceEvent "comm" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedProcessFreeFtraceEvent'comm
           (\ x__ y__ -> x__ {_SchedProcessFreeFtraceEvent'comm = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedProcessFreeFtraceEvent "maybe'comm" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedProcessFreeFtraceEvent'comm
           (\ x__ y__ -> x__ {_SchedProcessFreeFtraceEvent'comm = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedProcessFreeFtraceEvent "pid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedProcessFreeFtraceEvent'pid
           (\ x__ y__ -> x__ {_SchedProcessFreeFtraceEvent'pid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedProcessFreeFtraceEvent "maybe'pid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedProcessFreeFtraceEvent'pid
           (\ x__ y__ -> x__ {_SchedProcessFreeFtraceEvent'pid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedProcessFreeFtraceEvent "prio" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedProcessFreeFtraceEvent'prio
           (\ x__ y__ -> x__ {_SchedProcessFreeFtraceEvent'prio = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedProcessFreeFtraceEvent "maybe'prio" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedProcessFreeFtraceEvent'prio
           (\ x__ y__ -> x__ {_SchedProcessFreeFtraceEvent'prio = y__}))
        Prelude.id
instance Data.ProtoLens.Message SchedProcessFreeFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.SchedProcessFreeFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ESCSchedProcessFreeFtraceEvent\DC2\DC2\n\
      \\EOTcomm\CAN\SOH \SOH(\tR\EOTcomm\DC2\DLE\n\
      \\ETXpid\CAN\STX \SOH(\ENQR\ETXpid\DC2\DC2\n\
      \\EOTprio\CAN\ETX \SOH(\ENQR\EOTprio"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        comm__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "comm"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'comm")) ::
              Data.ProtoLens.FieldDescriptor SchedProcessFreeFtraceEvent
        pid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pid")) ::
              Data.ProtoLens.FieldDescriptor SchedProcessFreeFtraceEvent
        prio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "prio"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'prio")) ::
              Data.ProtoLens.FieldDescriptor SchedProcessFreeFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, comm__field_descriptor),
           (Data.ProtoLens.Tag 2, pid__field_descriptor),
           (Data.ProtoLens.Tag 3, prio__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SchedProcessFreeFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_SchedProcessFreeFtraceEvent'_unknownFields = y__})
  defMessage
    = SchedProcessFreeFtraceEvent'_constructor
        {_SchedProcessFreeFtraceEvent'comm = Prelude.Nothing,
         _SchedProcessFreeFtraceEvent'pid = Prelude.Nothing,
         _SchedProcessFreeFtraceEvent'prio = Prelude.Nothing,
         _SchedProcessFreeFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SchedProcessFreeFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser SchedProcessFreeFtraceEvent
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
                                       "comm"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"comm") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "pid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pid") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "prio"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"prio") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SchedProcessFreeFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'comm") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pid") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'prio") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData SchedProcessFreeFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SchedProcessFreeFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SchedProcessFreeFtraceEvent'comm x__)
                (Control.DeepSeq.deepseq
                   (_SchedProcessFreeFtraceEvent'pid x__)
                   (Control.DeepSeq.deepseq
                      (_SchedProcessFreeFtraceEvent'prio x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.comm' @:: Lens' SchedProcessHangFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'comm' @:: Lens' SchedProcessHangFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.pid' @:: Lens' SchedProcessHangFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'pid' @:: Lens' SchedProcessHangFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data SchedProcessHangFtraceEvent
  = SchedProcessHangFtraceEvent'_constructor {_SchedProcessHangFtraceEvent'comm :: !(Prelude.Maybe Data.Text.Text),
                                              _SchedProcessHangFtraceEvent'pid :: !(Prelude.Maybe Data.Int.Int32),
                                              _SchedProcessHangFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SchedProcessHangFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SchedProcessHangFtraceEvent "comm" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedProcessHangFtraceEvent'comm
           (\ x__ y__ -> x__ {_SchedProcessHangFtraceEvent'comm = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedProcessHangFtraceEvent "maybe'comm" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedProcessHangFtraceEvent'comm
           (\ x__ y__ -> x__ {_SchedProcessHangFtraceEvent'comm = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedProcessHangFtraceEvent "pid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedProcessHangFtraceEvent'pid
           (\ x__ y__ -> x__ {_SchedProcessHangFtraceEvent'pid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedProcessHangFtraceEvent "maybe'pid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedProcessHangFtraceEvent'pid
           (\ x__ y__ -> x__ {_SchedProcessHangFtraceEvent'pid = y__}))
        Prelude.id
instance Data.ProtoLens.Message SchedProcessHangFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.SchedProcessHangFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ESCSchedProcessHangFtraceEvent\DC2\DC2\n\
      \\EOTcomm\CAN\SOH \SOH(\tR\EOTcomm\DC2\DLE\n\
      \\ETXpid\CAN\STX \SOH(\ENQR\ETXpid"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        comm__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "comm"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'comm")) ::
              Data.ProtoLens.FieldDescriptor SchedProcessHangFtraceEvent
        pid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pid")) ::
              Data.ProtoLens.FieldDescriptor SchedProcessHangFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, comm__field_descriptor),
           (Data.ProtoLens.Tag 2, pid__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SchedProcessHangFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_SchedProcessHangFtraceEvent'_unknownFields = y__})
  defMessage
    = SchedProcessHangFtraceEvent'_constructor
        {_SchedProcessHangFtraceEvent'comm = Prelude.Nothing,
         _SchedProcessHangFtraceEvent'pid = Prelude.Nothing,
         _SchedProcessHangFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SchedProcessHangFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser SchedProcessHangFtraceEvent
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
                                       "comm"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"comm") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "pid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pid") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SchedProcessHangFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'comm") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pid") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData SchedProcessHangFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SchedProcessHangFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SchedProcessHangFtraceEvent'comm x__)
                (Control.DeepSeq.deepseq
                   (_SchedProcessHangFtraceEvent'pid x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.comm' @:: Lens' SchedProcessWaitFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'comm' @:: Lens' SchedProcessWaitFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.pid' @:: Lens' SchedProcessWaitFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'pid' @:: Lens' SchedProcessWaitFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.prio' @:: Lens' SchedProcessWaitFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'prio' @:: Lens' SchedProcessWaitFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data SchedProcessWaitFtraceEvent
  = SchedProcessWaitFtraceEvent'_constructor {_SchedProcessWaitFtraceEvent'comm :: !(Prelude.Maybe Data.Text.Text),
                                              _SchedProcessWaitFtraceEvent'pid :: !(Prelude.Maybe Data.Int.Int32),
                                              _SchedProcessWaitFtraceEvent'prio :: !(Prelude.Maybe Data.Int.Int32),
                                              _SchedProcessWaitFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SchedProcessWaitFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SchedProcessWaitFtraceEvent "comm" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedProcessWaitFtraceEvent'comm
           (\ x__ y__ -> x__ {_SchedProcessWaitFtraceEvent'comm = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedProcessWaitFtraceEvent "maybe'comm" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedProcessWaitFtraceEvent'comm
           (\ x__ y__ -> x__ {_SchedProcessWaitFtraceEvent'comm = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedProcessWaitFtraceEvent "pid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedProcessWaitFtraceEvent'pid
           (\ x__ y__ -> x__ {_SchedProcessWaitFtraceEvent'pid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedProcessWaitFtraceEvent "maybe'pid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedProcessWaitFtraceEvent'pid
           (\ x__ y__ -> x__ {_SchedProcessWaitFtraceEvent'pid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedProcessWaitFtraceEvent "prio" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedProcessWaitFtraceEvent'prio
           (\ x__ y__ -> x__ {_SchedProcessWaitFtraceEvent'prio = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedProcessWaitFtraceEvent "maybe'prio" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedProcessWaitFtraceEvent'prio
           (\ x__ y__ -> x__ {_SchedProcessWaitFtraceEvent'prio = y__}))
        Prelude.id
instance Data.ProtoLens.Message SchedProcessWaitFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.SchedProcessWaitFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ESCSchedProcessWaitFtraceEvent\DC2\DC2\n\
      \\EOTcomm\CAN\SOH \SOH(\tR\EOTcomm\DC2\DLE\n\
      \\ETXpid\CAN\STX \SOH(\ENQR\ETXpid\DC2\DC2\n\
      \\EOTprio\CAN\ETX \SOH(\ENQR\EOTprio"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        comm__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "comm"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'comm")) ::
              Data.ProtoLens.FieldDescriptor SchedProcessWaitFtraceEvent
        pid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pid")) ::
              Data.ProtoLens.FieldDescriptor SchedProcessWaitFtraceEvent
        prio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "prio"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'prio")) ::
              Data.ProtoLens.FieldDescriptor SchedProcessWaitFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, comm__field_descriptor),
           (Data.ProtoLens.Tag 2, pid__field_descriptor),
           (Data.ProtoLens.Tag 3, prio__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SchedProcessWaitFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_SchedProcessWaitFtraceEvent'_unknownFields = y__})
  defMessage
    = SchedProcessWaitFtraceEvent'_constructor
        {_SchedProcessWaitFtraceEvent'comm = Prelude.Nothing,
         _SchedProcessWaitFtraceEvent'pid = Prelude.Nothing,
         _SchedProcessWaitFtraceEvent'prio = Prelude.Nothing,
         _SchedProcessWaitFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SchedProcessWaitFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser SchedProcessWaitFtraceEvent
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
                                       "comm"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"comm") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "pid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pid") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "prio"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"prio") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SchedProcessWaitFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'comm") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pid") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'prio") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData SchedProcessWaitFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SchedProcessWaitFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SchedProcessWaitFtraceEvent'comm x__)
                (Control.DeepSeq.deepseq
                   (_SchedProcessWaitFtraceEvent'pid x__)
                   (Control.DeepSeq.deepseq
                      (_SchedProcessWaitFtraceEvent'prio x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.prevComm' @:: Lens' SchedSwitchFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'prevComm' @:: Lens' SchedSwitchFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.prevPid' @:: Lens' SchedSwitchFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'prevPid' @:: Lens' SchedSwitchFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.prevPrio' @:: Lens' SchedSwitchFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'prevPrio' @:: Lens' SchedSwitchFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.prevState' @:: Lens' SchedSwitchFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'prevState' @:: Lens' SchedSwitchFtraceEvent (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.nextComm' @:: Lens' SchedSwitchFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'nextComm' @:: Lens' SchedSwitchFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.nextPid' @:: Lens' SchedSwitchFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'nextPid' @:: Lens' SchedSwitchFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.nextPrio' @:: Lens' SchedSwitchFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'nextPrio' @:: Lens' SchedSwitchFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data SchedSwitchFtraceEvent
  = SchedSwitchFtraceEvent'_constructor {_SchedSwitchFtraceEvent'prevComm :: !(Prelude.Maybe Data.Text.Text),
                                         _SchedSwitchFtraceEvent'prevPid :: !(Prelude.Maybe Data.Int.Int32),
                                         _SchedSwitchFtraceEvent'prevPrio :: !(Prelude.Maybe Data.Int.Int32),
                                         _SchedSwitchFtraceEvent'prevState :: !(Prelude.Maybe Data.Int.Int64),
                                         _SchedSwitchFtraceEvent'nextComm :: !(Prelude.Maybe Data.Text.Text),
                                         _SchedSwitchFtraceEvent'nextPid :: !(Prelude.Maybe Data.Int.Int32),
                                         _SchedSwitchFtraceEvent'nextPrio :: !(Prelude.Maybe Data.Int.Int32),
                                         _SchedSwitchFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SchedSwitchFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SchedSwitchFtraceEvent "prevComm" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedSwitchFtraceEvent'prevComm
           (\ x__ y__ -> x__ {_SchedSwitchFtraceEvent'prevComm = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedSwitchFtraceEvent "maybe'prevComm" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedSwitchFtraceEvent'prevComm
           (\ x__ y__ -> x__ {_SchedSwitchFtraceEvent'prevComm = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedSwitchFtraceEvent "prevPid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedSwitchFtraceEvent'prevPid
           (\ x__ y__ -> x__ {_SchedSwitchFtraceEvent'prevPid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedSwitchFtraceEvent "maybe'prevPid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedSwitchFtraceEvent'prevPid
           (\ x__ y__ -> x__ {_SchedSwitchFtraceEvent'prevPid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedSwitchFtraceEvent "prevPrio" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedSwitchFtraceEvent'prevPrio
           (\ x__ y__ -> x__ {_SchedSwitchFtraceEvent'prevPrio = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedSwitchFtraceEvent "maybe'prevPrio" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedSwitchFtraceEvent'prevPrio
           (\ x__ y__ -> x__ {_SchedSwitchFtraceEvent'prevPrio = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedSwitchFtraceEvent "prevState" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedSwitchFtraceEvent'prevState
           (\ x__ y__ -> x__ {_SchedSwitchFtraceEvent'prevState = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedSwitchFtraceEvent "maybe'prevState" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedSwitchFtraceEvent'prevState
           (\ x__ y__ -> x__ {_SchedSwitchFtraceEvent'prevState = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedSwitchFtraceEvent "nextComm" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedSwitchFtraceEvent'nextComm
           (\ x__ y__ -> x__ {_SchedSwitchFtraceEvent'nextComm = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedSwitchFtraceEvent "maybe'nextComm" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedSwitchFtraceEvent'nextComm
           (\ x__ y__ -> x__ {_SchedSwitchFtraceEvent'nextComm = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedSwitchFtraceEvent "nextPid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedSwitchFtraceEvent'nextPid
           (\ x__ y__ -> x__ {_SchedSwitchFtraceEvent'nextPid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedSwitchFtraceEvent "maybe'nextPid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedSwitchFtraceEvent'nextPid
           (\ x__ y__ -> x__ {_SchedSwitchFtraceEvent'nextPid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedSwitchFtraceEvent "nextPrio" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedSwitchFtraceEvent'nextPrio
           (\ x__ y__ -> x__ {_SchedSwitchFtraceEvent'nextPrio = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedSwitchFtraceEvent "maybe'nextPrio" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedSwitchFtraceEvent'nextPrio
           (\ x__ y__ -> x__ {_SchedSwitchFtraceEvent'nextPrio = y__}))
        Prelude.id
instance Data.ProtoLens.Message SchedSwitchFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.SchedSwitchFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SYNSchedSwitchFtraceEvent\DC2\ESC\n\
      \\tprev_comm\CAN\SOH \SOH(\tR\bprevComm\DC2\EM\n\
      \\bprev_pid\CAN\STX \SOH(\ENQR\aprevPid\DC2\ESC\n\
      \\tprev_prio\CAN\ETX \SOH(\ENQR\bprevPrio\DC2\GS\n\
      \\n\
      \prev_state\CAN\EOT \SOH(\ETXR\tprevState\DC2\ESC\n\
      \\tnext_comm\CAN\ENQ \SOH(\tR\bnextComm\DC2\EM\n\
      \\bnext_pid\CAN\ACK \SOH(\ENQR\anextPid\DC2\ESC\n\
      \\tnext_prio\CAN\a \SOH(\ENQR\bnextPrio"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        prevComm__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "prev_comm"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'prevComm")) ::
              Data.ProtoLens.FieldDescriptor SchedSwitchFtraceEvent
        prevPid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "prev_pid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'prevPid")) ::
              Data.ProtoLens.FieldDescriptor SchedSwitchFtraceEvent
        prevPrio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "prev_prio"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'prevPrio")) ::
              Data.ProtoLens.FieldDescriptor SchedSwitchFtraceEvent
        prevState__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "prev_state"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'prevState")) ::
              Data.ProtoLens.FieldDescriptor SchedSwitchFtraceEvent
        nextComm__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "next_comm"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nextComm")) ::
              Data.ProtoLens.FieldDescriptor SchedSwitchFtraceEvent
        nextPid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "next_pid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nextPid")) ::
              Data.ProtoLens.FieldDescriptor SchedSwitchFtraceEvent
        nextPrio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "next_prio"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nextPrio")) ::
              Data.ProtoLens.FieldDescriptor SchedSwitchFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, prevComm__field_descriptor),
           (Data.ProtoLens.Tag 2, prevPid__field_descriptor),
           (Data.ProtoLens.Tag 3, prevPrio__field_descriptor),
           (Data.ProtoLens.Tag 4, prevState__field_descriptor),
           (Data.ProtoLens.Tag 5, nextComm__field_descriptor),
           (Data.ProtoLens.Tag 6, nextPid__field_descriptor),
           (Data.ProtoLens.Tag 7, nextPrio__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SchedSwitchFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_SchedSwitchFtraceEvent'_unknownFields = y__})
  defMessage
    = SchedSwitchFtraceEvent'_constructor
        {_SchedSwitchFtraceEvent'prevComm = Prelude.Nothing,
         _SchedSwitchFtraceEvent'prevPid = Prelude.Nothing,
         _SchedSwitchFtraceEvent'prevPrio = Prelude.Nothing,
         _SchedSwitchFtraceEvent'prevState = Prelude.Nothing,
         _SchedSwitchFtraceEvent'nextComm = Prelude.Nothing,
         _SchedSwitchFtraceEvent'nextPid = Prelude.Nothing,
         _SchedSwitchFtraceEvent'nextPrio = Prelude.Nothing,
         _SchedSwitchFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SchedSwitchFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser SchedSwitchFtraceEvent
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
                                       "prev_comm"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"prevComm") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "prev_pid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"prevPid") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "prev_prio"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"prevPrio") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "prev_state"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"prevState") y x)
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
                                       "next_comm"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nextComm") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "next_pid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nextPid") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "next_prio"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nextPrio") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SchedSwitchFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'prevComm") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'prevPid") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'prevPrio") _x
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
                             (Data.ProtoLens.Field.field @"maybe'prevState") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nextComm") _x
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
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nextPid") _x
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
                                      (Data.ProtoLens.Field.field @"maybe'nextPrio") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                         ((Prelude..)
                                            Data.ProtoLens.Encoding.Bytes.putVarInt
                                            Prelude.fromIntegral _v))
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData SchedSwitchFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SchedSwitchFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SchedSwitchFtraceEvent'prevComm x__)
                (Control.DeepSeq.deepseq
                   (_SchedSwitchFtraceEvent'prevPid x__)
                   (Control.DeepSeq.deepseq
                      (_SchedSwitchFtraceEvent'prevPrio x__)
                      (Control.DeepSeq.deepseq
                         (_SchedSwitchFtraceEvent'prevState x__)
                         (Control.DeepSeq.deepseq
                            (_SchedSwitchFtraceEvent'nextComm x__)
                            (Control.DeepSeq.deepseq
                               (_SchedSwitchFtraceEvent'nextPid x__)
                               (Control.DeepSeq.deepseq
                                  (_SchedSwitchFtraceEvent'nextPrio x__) ())))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.comm' @:: Lens' SchedWakeupFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'comm' @:: Lens' SchedWakeupFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.pid' @:: Lens' SchedWakeupFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'pid' @:: Lens' SchedWakeupFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.prio' @:: Lens' SchedWakeupFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'prio' @:: Lens' SchedWakeupFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.success' @:: Lens' SchedWakeupFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'success' @:: Lens' SchedWakeupFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.targetCpu' @:: Lens' SchedWakeupFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'targetCpu' @:: Lens' SchedWakeupFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data SchedWakeupFtraceEvent
  = SchedWakeupFtraceEvent'_constructor {_SchedWakeupFtraceEvent'comm :: !(Prelude.Maybe Data.Text.Text),
                                         _SchedWakeupFtraceEvent'pid :: !(Prelude.Maybe Data.Int.Int32),
                                         _SchedWakeupFtraceEvent'prio :: !(Prelude.Maybe Data.Int.Int32),
                                         _SchedWakeupFtraceEvent'success :: !(Prelude.Maybe Data.Int.Int32),
                                         _SchedWakeupFtraceEvent'targetCpu :: !(Prelude.Maybe Data.Int.Int32),
                                         _SchedWakeupFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SchedWakeupFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SchedWakeupFtraceEvent "comm" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedWakeupFtraceEvent'comm
           (\ x__ y__ -> x__ {_SchedWakeupFtraceEvent'comm = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedWakeupFtraceEvent "maybe'comm" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedWakeupFtraceEvent'comm
           (\ x__ y__ -> x__ {_SchedWakeupFtraceEvent'comm = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedWakeupFtraceEvent "pid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedWakeupFtraceEvent'pid
           (\ x__ y__ -> x__ {_SchedWakeupFtraceEvent'pid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedWakeupFtraceEvent "maybe'pid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedWakeupFtraceEvent'pid
           (\ x__ y__ -> x__ {_SchedWakeupFtraceEvent'pid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedWakeupFtraceEvent "prio" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedWakeupFtraceEvent'prio
           (\ x__ y__ -> x__ {_SchedWakeupFtraceEvent'prio = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedWakeupFtraceEvent "maybe'prio" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedWakeupFtraceEvent'prio
           (\ x__ y__ -> x__ {_SchedWakeupFtraceEvent'prio = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedWakeupFtraceEvent "success" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedWakeupFtraceEvent'success
           (\ x__ y__ -> x__ {_SchedWakeupFtraceEvent'success = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedWakeupFtraceEvent "maybe'success" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedWakeupFtraceEvent'success
           (\ x__ y__ -> x__ {_SchedWakeupFtraceEvent'success = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedWakeupFtraceEvent "targetCpu" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedWakeupFtraceEvent'targetCpu
           (\ x__ y__ -> x__ {_SchedWakeupFtraceEvent'targetCpu = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedWakeupFtraceEvent "maybe'targetCpu" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedWakeupFtraceEvent'targetCpu
           (\ x__ y__ -> x__ {_SchedWakeupFtraceEvent'targetCpu = y__}))
        Prelude.id
instance Data.ProtoLens.Message SchedWakeupFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.SchedWakeupFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SYNSchedWakeupFtraceEvent\DC2\DC2\n\
      \\EOTcomm\CAN\SOH \SOH(\tR\EOTcomm\DC2\DLE\n\
      \\ETXpid\CAN\STX \SOH(\ENQR\ETXpid\DC2\DC2\n\
      \\EOTprio\CAN\ETX \SOH(\ENQR\EOTprio\DC2\CAN\n\
      \\asuccess\CAN\EOT \SOH(\ENQR\asuccess\DC2\GS\n\
      \\n\
      \target_cpu\CAN\ENQ \SOH(\ENQR\ttargetCpu"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        comm__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "comm"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'comm")) ::
              Data.ProtoLens.FieldDescriptor SchedWakeupFtraceEvent
        pid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pid")) ::
              Data.ProtoLens.FieldDescriptor SchedWakeupFtraceEvent
        prio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "prio"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'prio")) ::
              Data.ProtoLens.FieldDescriptor SchedWakeupFtraceEvent
        success__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "success"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'success")) ::
              Data.ProtoLens.FieldDescriptor SchedWakeupFtraceEvent
        targetCpu__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "target_cpu"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'targetCpu")) ::
              Data.ProtoLens.FieldDescriptor SchedWakeupFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, comm__field_descriptor),
           (Data.ProtoLens.Tag 2, pid__field_descriptor),
           (Data.ProtoLens.Tag 3, prio__field_descriptor),
           (Data.ProtoLens.Tag 4, success__field_descriptor),
           (Data.ProtoLens.Tag 5, targetCpu__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SchedWakeupFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_SchedWakeupFtraceEvent'_unknownFields = y__})
  defMessage
    = SchedWakeupFtraceEvent'_constructor
        {_SchedWakeupFtraceEvent'comm = Prelude.Nothing,
         _SchedWakeupFtraceEvent'pid = Prelude.Nothing,
         _SchedWakeupFtraceEvent'prio = Prelude.Nothing,
         _SchedWakeupFtraceEvent'success = Prelude.Nothing,
         _SchedWakeupFtraceEvent'targetCpu = Prelude.Nothing,
         _SchedWakeupFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SchedWakeupFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser SchedWakeupFtraceEvent
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
                                       "comm"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"comm") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "pid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pid") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "prio"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"prio") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "success"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"success") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "target_cpu"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"targetCpu") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SchedWakeupFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'comm") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pid") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'prio") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'success") _x
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
                                (Data.ProtoLens.Field.field @"maybe'targetCpu") _x
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
instance Control.DeepSeq.NFData SchedWakeupFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SchedWakeupFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SchedWakeupFtraceEvent'comm x__)
                (Control.DeepSeq.deepseq
                   (_SchedWakeupFtraceEvent'pid x__)
                   (Control.DeepSeq.deepseq
                      (_SchedWakeupFtraceEvent'prio x__)
                      (Control.DeepSeq.deepseq
                         (_SchedWakeupFtraceEvent'success x__)
                         (Control.DeepSeq.deepseq
                            (_SchedWakeupFtraceEvent'targetCpu x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.comm' @:: Lens' SchedWakeupNewFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'comm' @:: Lens' SchedWakeupNewFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.pid' @:: Lens' SchedWakeupNewFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'pid' @:: Lens' SchedWakeupNewFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.prio' @:: Lens' SchedWakeupNewFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'prio' @:: Lens' SchedWakeupNewFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.success' @:: Lens' SchedWakeupNewFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'success' @:: Lens' SchedWakeupNewFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.targetCpu' @:: Lens' SchedWakeupNewFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'targetCpu' @:: Lens' SchedWakeupNewFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data SchedWakeupNewFtraceEvent
  = SchedWakeupNewFtraceEvent'_constructor {_SchedWakeupNewFtraceEvent'comm :: !(Prelude.Maybe Data.Text.Text),
                                            _SchedWakeupNewFtraceEvent'pid :: !(Prelude.Maybe Data.Int.Int32),
                                            _SchedWakeupNewFtraceEvent'prio :: !(Prelude.Maybe Data.Int.Int32),
                                            _SchedWakeupNewFtraceEvent'success :: !(Prelude.Maybe Data.Int.Int32),
                                            _SchedWakeupNewFtraceEvent'targetCpu :: !(Prelude.Maybe Data.Int.Int32),
                                            _SchedWakeupNewFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SchedWakeupNewFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SchedWakeupNewFtraceEvent "comm" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedWakeupNewFtraceEvent'comm
           (\ x__ y__ -> x__ {_SchedWakeupNewFtraceEvent'comm = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedWakeupNewFtraceEvent "maybe'comm" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedWakeupNewFtraceEvent'comm
           (\ x__ y__ -> x__ {_SchedWakeupNewFtraceEvent'comm = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedWakeupNewFtraceEvent "pid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedWakeupNewFtraceEvent'pid
           (\ x__ y__ -> x__ {_SchedWakeupNewFtraceEvent'pid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedWakeupNewFtraceEvent "maybe'pid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedWakeupNewFtraceEvent'pid
           (\ x__ y__ -> x__ {_SchedWakeupNewFtraceEvent'pid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedWakeupNewFtraceEvent "prio" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedWakeupNewFtraceEvent'prio
           (\ x__ y__ -> x__ {_SchedWakeupNewFtraceEvent'prio = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedWakeupNewFtraceEvent "maybe'prio" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedWakeupNewFtraceEvent'prio
           (\ x__ y__ -> x__ {_SchedWakeupNewFtraceEvent'prio = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedWakeupNewFtraceEvent "success" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedWakeupNewFtraceEvent'success
           (\ x__ y__ -> x__ {_SchedWakeupNewFtraceEvent'success = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedWakeupNewFtraceEvent "maybe'success" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedWakeupNewFtraceEvent'success
           (\ x__ y__ -> x__ {_SchedWakeupNewFtraceEvent'success = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedWakeupNewFtraceEvent "targetCpu" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedWakeupNewFtraceEvent'targetCpu
           (\ x__ y__ -> x__ {_SchedWakeupNewFtraceEvent'targetCpu = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedWakeupNewFtraceEvent "maybe'targetCpu" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedWakeupNewFtraceEvent'targetCpu
           (\ x__ y__ -> x__ {_SchedWakeupNewFtraceEvent'targetCpu = y__}))
        Prelude.id
instance Data.ProtoLens.Message SchedWakeupNewFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.SchedWakeupNewFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\EMSchedWakeupNewFtraceEvent\DC2\DC2\n\
      \\EOTcomm\CAN\SOH \SOH(\tR\EOTcomm\DC2\DLE\n\
      \\ETXpid\CAN\STX \SOH(\ENQR\ETXpid\DC2\DC2\n\
      \\EOTprio\CAN\ETX \SOH(\ENQR\EOTprio\DC2\CAN\n\
      \\asuccess\CAN\EOT \SOH(\ENQR\asuccess\DC2\GS\n\
      \\n\
      \target_cpu\CAN\ENQ \SOH(\ENQR\ttargetCpu"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        comm__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "comm"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'comm")) ::
              Data.ProtoLens.FieldDescriptor SchedWakeupNewFtraceEvent
        pid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pid")) ::
              Data.ProtoLens.FieldDescriptor SchedWakeupNewFtraceEvent
        prio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "prio"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'prio")) ::
              Data.ProtoLens.FieldDescriptor SchedWakeupNewFtraceEvent
        success__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "success"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'success")) ::
              Data.ProtoLens.FieldDescriptor SchedWakeupNewFtraceEvent
        targetCpu__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "target_cpu"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'targetCpu")) ::
              Data.ProtoLens.FieldDescriptor SchedWakeupNewFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, comm__field_descriptor),
           (Data.ProtoLens.Tag 2, pid__field_descriptor),
           (Data.ProtoLens.Tag 3, prio__field_descriptor),
           (Data.ProtoLens.Tag 4, success__field_descriptor),
           (Data.ProtoLens.Tag 5, targetCpu__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SchedWakeupNewFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_SchedWakeupNewFtraceEvent'_unknownFields = y__})
  defMessage
    = SchedWakeupNewFtraceEvent'_constructor
        {_SchedWakeupNewFtraceEvent'comm = Prelude.Nothing,
         _SchedWakeupNewFtraceEvent'pid = Prelude.Nothing,
         _SchedWakeupNewFtraceEvent'prio = Prelude.Nothing,
         _SchedWakeupNewFtraceEvent'success = Prelude.Nothing,
         _SchedWakeupNewFtraceEvent'targetCpu = Prelude.Nothing,
         _SchedWakeupNewFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SchedWakeupNewFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser SchedWakeupNewFtraceEvent
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
                                       "comm"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"comm") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "pid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pid") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "prio"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"prio") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "success"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"success") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "target_cpu"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"targetCpu") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SchedWakeupNewFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'comm") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pid") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'prio") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'success") _x
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
                                (Data.ProtoLens.Field.field @"maybe'targetCpu") _x
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
instance Control.DeepSeq.NFData SchedWakeupNewFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SchedWakeupNewFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SchedWakeupNewFtraceEvent'comm x__)
                (Control.DeepSeq.deepseq
                   (_SchedWakeupNewFtraceEvent'pid x__)
                   (Control.DeepSeq.deepseq
                      (_SchedWakeupNewFtraceEvent'prio x__)
                      (Control.DeepSeq.deepseq
                         (_SchedWakeupNewFtraceEvent'success x__)
                         (Control.DeepSeq.deepseq
                            (_SchedWakeupNewFtraceEvent'targetCpu x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.comm' @:: Lens' SchedWakingFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'comm' @:: Lens' SchedWakingFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.pid' @:: Lens' SchedWakingFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'pid' @:: Lens' SchedWakingFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.prio' @:: Lens' SchedWakingFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'prio' @:: Lens' SchedWakingFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.success' @:: Lens' SchedWakingFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'success' @:: Lens' SchedWakingFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.targetCpu' @:: Lens' SchedWakingFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sched_Fields.maybe'targetCpu' @:: Lens' SchedWakingFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data SchedWakingFtraceEvent
  = SchedWakingFtraceEvent'_constructor {_SchedWakingFtraceEvent'comm :: !(Prelude.Maybe Data.Text.Text),
                                         _SchedWakingFtraceEvent'pid :: !(Prelude.Maybe Data.Int.Int32),
                                         _SchedWakingFtraceEvent'prio :: !(Prelude.Maybe Data.Int.Int32),
                                         _SchedWakingFtraceEvent'success :: !(Prelude.Maybe Data.Int.Int32),
                                         _SchedWakingFtraceEvent'targetCpu :: !(Prelude.Maybe Data.Int.Int32),
                                         _SchedWakingFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SchedWakingFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SchedWakingFtraceEvent "comm" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedWakingFtraceEvent'comm
           (\ x__ y__ -> x__ {_SchedWakingFtraceEvent'comm = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedWakingFtraceEvent "maybe'comm" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedWakingFtraceEvent'comm
           (\ x__ y__ -> x__ {_SchedWakingFtraceEvent'comm = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedWakingFtraceEvent "pid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedWakingFtraceEvent'pid
           (\ x__ y__ -> x__ {_SchedWakingFtraceEvent'pid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedWakingFtraceEvent "maybe'pid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedWakingFtraceEvent'pid
           (\ x__ y__ -> x__ {_SchedWakingFtraceEvent'pid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedWakingFtraceEvent "prio" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedWakingFtraceEvent'prio
           (\ x__ y__ -> x__ {_SchedWakingFtraceEvent'prio = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedWakingFtraceEvent "maybe'prio" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedWakingFtraceEvent'prio
           (\ x__ y__ -> x__ {_SchedWakingFtraceEvent'prio = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedWakingFtraceEvent "success" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedWakingFtraceEvent'success
           (\ x__ y__ -> x__ {_SchedWakingFtraceEvent'success = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedWakingFtraceEvent "maybe'success" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedWakingFtraceEvent'success
           (\ x__ y__ -> x__ {_SchedWakingFtraceEvent'success = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchedWakingFtraceEvent "targetCpu" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedWakingFtraceEvent'targetCpu
           (\ x__ y__ -> x__ {_SchedWakingFtraceEvent'targetCpu = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SchedWakingFtraceEvent "maybe'targetCpu" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchedWakingFtraceEvent'targetCpu
           (\ x__ y__ -> x__ {_SchedWakingFtraceEvent'targetCpu = y__}))
        Prelude.id
instance Data.ProtoLens.Message SchedWakingFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.SchedWakingFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SYNSchedWakingFtraceEvent\DC2\DC2\n\
      \\EOTcomm\CAN\SOH \SOH(\tR\EOTcomm\DC2\DLE\n\
      \\ETXpid\CAN\STX \SOH(\ENQR\ETXpid\DC2\DC2\n\
      \\EOTprio\CAN\ETX \SOH(\ENQR\EOTprio\DC2\CAN\n\
      \\asuccess\CAN\EOT \SOH(\ENQR\asuccess\DC2\GS\n\
      \\n\
      \target_cpu\CAN\ENQ \SOH(\ENQR\ttargetCpu"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        comm__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "comm"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'comm")) ::
              Data.ProtoLens.FieldDescriptor SchedWakingFtraceEvent
        pid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pid")) ::
              Data.ProtoLens.FieldDescriptor SchedWakingFtraceEvent
        prio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "prio"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'prio")) ::
              Data.ProtoLens.FieldDescriptor SchedWakingFtraceEvent
        success__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "success"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'success")) ::
              Data.ProtoLens.FieldDescriptor SchedWakingFtraceEvent
        targetCpu__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "target_cpu"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'targetCpu")) ::
              Data.ProtoLens.FieldDescriptor SchedWakingFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, comm__field_descriptor),
           (Data.ProtoLens.Tag 2, pid__field_descriptor),
           (Data.ProtoLens.Tag 3, prio__field_descriptor),
           (Data.ProtoLens.Tag 4, success__field_descriptor),
           (Data.ProtoLens.Tag 5, targetCpu__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SchedWakingFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_SchedWakingFtraceEvent'_unknownFields = y__})
  defMessage
    = SchedWakingFtraceEvent'_constructor
        {_SchedWakingFtraceEvent'comm = Prelude.Nothing,
         _SchedWakingFtraceEvent'pid = Prelude.Nothing,
         _SchedWakingFtraceEvent'prio = Prelude.Nothing,
         _SchedWakingFtraceEvent'success = Prelude.Nothing,
         _SchedWakingFtraceEvent'targetCpu = Prelude.Nothing,
         _SchedWakingFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SchedWakingFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser SchedWakingFtraceEvent
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
                                       "comm"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"comm") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "pid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pid") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "prio"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"prio") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "success"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"success") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "target_cpu"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"targetCpu") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SchedWakingFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'comm") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pid") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'prio") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'success") _x
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
                                (Data.ProtoLens.Field.field @"maybe'targetCpu") _x
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
instance Control.DeepSeq.NFData SchedWakingFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SchedWakingFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SchedWakingFtraceEvent'comm x__)
                (Control.DeepSeq.deepseq
                   (_SchedWakingFtraceEvent'pid x__)
                   (Control.DeepSeq.deepseq
                      (_SchedWakingFtraceEvent'prio x__)
                      (Control.DeepSeq.deepseq
                         (_SchedWakingFtraceEvent'success x__)
                         (Control.DeepSeq.deepseq
                            (_SchedWakingFtraceEvent'targetCpu x__) ())))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \(protos/perfetto/trace/ftrace/sched.proto\DC2\SIperfetto.protos\"\225\SOH\n\
    \\SYNSchedSwitchFtraceEvent\DC2\ESC\n\
    \\tprev_comm\CAN\SOH \SOH(\tR\bprevComm\DC2\EM\n\
    \\bprev_pid\CAN\STX \SOH(\ENQR\aprevPid\DC2\ESC\n\
    \\tprev_prio\CAN\ETX \SOH(\ENQR\bprevPrio\DC2\GS\n\
    \\n\
    \prev_state\CAN\EOT \SOH(\ETXR\tprevState\DC2\ESC\n\
    \\tnext_comm\CAN\ENQ \SOH(\tR\bnextComm\DC2\EM\n\
    \\bnext_pid\CAN\ACK \SOH(\ENQR\anextPid\DC2\ESC\n\
    \\tnext_prio\CAN\a \SOH(\ENQR\bnextPrio\"\139\SOH\n\
    \\SYNSchedWakeupFtraceEvent\DC2\DC2\n\
    \\EOTcomm\CAN\SOH \SOH(\tR\EOTcomm\DC2\DLE\n\
    \\ETXpid\CAN\STX \SOH(\ENQR\ETXpid\DC2\DC2\n\
    \\EOTprio\CAN\ETX \SOH(\ENQR\EOTprio\DC2\CAN\n\
    \\asuccess\CAN\EOT \SOH(\ENQR\asuccess\DC2\GS\n\
    \\n\
    \target_cpu\CAN\ENQ \SOH(\ENQR\ttargetCpu\"b\n\
    \\GSSchedBlockedReasonFtraceEvent\DC2\DLE\n\
    \\ETXpid\CAN\SOH \SOH(\ENQR\ETXpid\DC2\SYN\n\
    \\ACKcaller\CAN\STX \SOH(\EOTR\ACKcaller\DC2\ETB\n\
    \\aio_wait\CAN\ETX \SOH(\rR\ACKioWait\"m\n\
    \\SUBSchedCpuHotplugFtraceEvent\DC2!\n\
    \\faffected_cpu\CAN\SOH \SOH(\ENQR\vaffectedCpu\DC2\DC4\n\
    \\ENQerror\CAN\STX \SOH(\ENQR\ENQerror\DC2\SYN\n\
    \\ACKstatus\CAN\ETX \SOH(\ENQR\ACKstatus\"\139\SOH\n\
    \\SYNSchedWakingFtraceEvent\DC2\DC2\n\
    \\EOTcomm\CAN\SOH \SOH(\tR\EOTcomm\DC2\DLE\n\
    \\ETXpid\CAN\STX \SOH(\ENQR\ETXpid\DC2\DC2\n\
    \\EOTprio\CAN\ETX \SOH(\ENQR\EOTprio\DC2\CAN\n\
    \\asuccess\CAN\EOT \SOH(\ENQR\asuccess\DC2\GS\n\
    \\n\
    \target_cpu\CAN\ENQ \SOH(\ENQR\ttargetCpu\"\142\SOH\n\
    \\EMSchedWakeupNewFtraceEvent\DC2\DC2\n\
    \\EOTcomm\CAN\SOH \SOH(\tR\EOTcomm\DC2\DLE\n\
    \\ETXpid\CAN\STX \SOH(\ENQR\ETXpid\DC2\DC2\n\
    \\EOTprio\CAN\ETX \SOH(\ENQR\EOTprio\DC2\CAN\n\
    \\asuccess\CAN\EOT \SOH(\ENQR\asuccess\DC2\GS\n\
    \\n\
    \target_cpu\CAN\ENQ \SOH(\ENQR\ttargetCpu\"d\n\
    \\ESCSchedProcessExecFtraceEvent\DC2\SUB\n\
    \\bfilename\CAN\SOH \SOH(\tR\bfilename\DC2\DLE\n\
    \\ETXpid\CAN\STX \SOH(\ENQR\ETXpid\DC2\ETB\n\
    \\aold_pid\CAN\ETX \SOH(\ENQR\ACKoldPid\"k\n\
    \\ESCSchedProcessExitFtraceEvent\DC2\DC2\n\
    \\EOTcomm\CAN\SOH \SOH(\tR\EOTcomm\DC2\DLE\n\
    \\ETXpid\CAN\STX \SOH(\ENQR\ETXpid\DC2\DC2\n\
    \\EOTtgid\CAN\ETX \SOH(\ENQR\EOTtgid\DC2\DC2\n\
    \\EOTprio\CAN\EOT \SOH(\ENQR\EOTprio\"\153\SOH\n\
    \\ESCSchedProcessForkFtraceEvent\DC2\US\n\
    \\vparent_comm\CAN\SOH \SOH(\tR\n\
    \parentComm\DC2\GS\n\
    \\n\
    \parent_pid\CAN\STX \SOH(\ENQR\tparentPid\DC2\GS\n\
    \\n\
    \child_comm\CAN\ETX \SOH(\tR\tchildComm\DC2\ESC\n\
    \\tchild_pid\CAN\EOT \SOH(\ENQR\bchildPid\"W\n\
    \\ESCSchedProcessFreeFtraceEvent\DC2\DC2\n\
    \\EOTcomm\CAN\SOH \SOH(\tR\EOTcomm\DC2\DLE\n\
    \\ETXpid\CAN\STX \SOH(\ENQR\ETXpid\DC2\DC2\n\
    \\EOTprio\CAN\ETX \SOH(\ENQR\EOTprio\"C\n\
    \\ESCSchedProcessHangFtraceEvent\DC2\DC2\n\
    \\EOTcomm\CAN\SOH \SOH(\tR\EOTcomm\DC2\DLE\n\
    \\ETXpid\CAN\STX \SOH(\ENQR\ETXpid\"W\n\
    \\ESCSchedProcessWaitFtraceEvent\DC2\DC2\n\
    \\EOTcomm\CAN\SOH \SOH(\tR\EOTcomm\DC2\DLE\n\
    \\ETXpid\CAN\STX \SOH(\ENQR\ETXpid\DC2\DC2\n\
    \\EOTprio\CAN\ETX \SOH(\ENQR\EOTprio\"u\n\
    \\EMSchedPiSetprioFtraceEvent\DC2\DC2\n\
    \\EOTcomm\CAN\SOH \SOH(\tR\EOTcomm\DC2\CAN\n\
    \\anewprio\CAN\STX \SOH(\ENQR\anewprio\DC2\CAN\n\
    \\aoldprio\CAN\ETX \SOH(\ENQR\aoldprio\DC2\DLE\n\
    \\ETXpid\CAN\EOT \SOH(\ENQR\ETXpid\"\239\ETX\n\
    \\SUBSchedCpuUtilCfsFtraceEvent\DC2\SYN\n\
    \\ACKactive\CAN\SOH \SOH(\ENQR\ACKactive\DC2\SUB\n\
    \\bcapacity\CAN\STX \SOH(\EOTR\bcapacity\DC2#\n\
    \\rcapacity_orig\CAN\ETX \SOH(\EOTR\fcapacityOrig\DC2\DLE\n\
    \\ETXcpu\CAN\EOT \SOH(\rR\ETXcpu\DC2%\n\
    \\SOcpu_importance\CAN\ENQ \SOH(\EOTR\rcpuImportance\DC2\EM\n\
    \\bcpu_util\CAN\ACK \SOH(\EOTR\acpuUtil\DC2\EM\n\
    \\bexit_lat\CAN\a \SOH(\rR\aexitLat\DC2%\n\
    \\SOgroup_capacity\CAN\b \SOH(\EOTR\rgroupCapacity\DC2)\n\
    \\DLEgrp_overutilized\CAN\t \SOH(\rR\SIgrpOverutilized\DC2\EM\n\
    \\bidle_cpu\CAN\n\
    \ \SOH(\rR\aidleCpu\DC2\GS\n\
    \\n\
    \nr_running\CAN\v \SOH(\rR\tnrRunning\DC2\ESC\n\
    \\tspare_cap\CAN\f \SOH(\ETXR\bspareCap\DC2\ESC\n\
    \\ttask_fits\CAN\r \SOH(\rR\btaskFits\DC2&\n\
    \\SIwake_group_util\CAN\SO \SOH(\EOTR\rwakeGroupUtil\DC2\ESC\n\
    \\twake_util\CAN\SI \SOH(\EOTR\bwakeUtilJ\143'\n\
    \\ACK\DC2\EOT\EOT\NULd\SOH\n\
    \a\n\
    \\SOH\f\DC2\ETX\EOT\NUL\DC22W Autogenerated by:\n\
    \ ../../src/tools/ftrace_proto_gen/ftrace_proto_gen.cc\n\
    \ Do not edit.\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\ENQ\NUL\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\a\NUL\SI\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b\RS\n\
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
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\t\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\t\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\t\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\t\DC1\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\t\FS\GS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\n\
    \\STX\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\n\
    \\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\n\
    \\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\n\
    \\DC1\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\n\
    \\GS\RS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\v\STX \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX\v\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\v\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\v\DC1\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\v\RS\US\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX\f\STX \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\EOT\DC2\ETX\f\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX\f\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\f\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\f\RS\US\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX\r\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\EOT\DC2\ETX\r\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETX\r\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX\r\DC1\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX\r\FS\GS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETX\SO\STX\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\EOT\DC2\ETX\SO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ENQ\DC2\ETX\SO\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETX\SO\DC1\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETX\SO\GS\RS\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\DLE\NUL\SYN\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\DLE\b\RS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\DC1\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\DC1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\DC1\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\DC1\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\DC1\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\DC2\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX\DC2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\DC2\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\DC2\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\DC2\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX\DC3\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\EOT\DC2\ETX\DC3\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX\DC3\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX\DC3\DC1\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX\DC3\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX\DC4\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\EOT\DC2\ETX\DC4\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX\DC4\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX\DC4\DC1\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX\DC4\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETX\NAK\STX \n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\EOT\DC2\ETX\NAK\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ENQ\DC2\ETX\NAK\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETX\NAK\DC1\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETX\NAK\RS\US\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT\ETB\NUL\ESC\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\ETB\b%\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\CAN\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETX\CAN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX\CAN\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\CAN\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\CAN\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX\EM\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETX\EM\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX\EM\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX\EM\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX\EM\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX\SUB\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\EOT\DC2\ETX\SUB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETX\SUB\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX\SUB\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX\SUB\FS\GS\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOT\FS\NUL \SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX\FS\b\"\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX\GS\STX\"\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETX\GS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX\GS\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX\GS\DC1\GS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX\GS !\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX\RS\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\EOT\DC2\ETX\RS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETX\RS\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX\RS\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX\RS\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETX\US\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\EOT\DC2\ETX\US\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\ETX\US\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETX\US\DC1\ETB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETX\US\SUB\ESC\n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOT!\NUL'\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX!\b\RS\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX\"\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\EOT\DC2\ETX\"\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX\"\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX\"\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX\"\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETX#\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\EOT\DC2\ETX#\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETX#\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETX#\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETX#\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETX$\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\EOT\DC2\ETX$\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ENQ\DC2\ETX$\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETX$\DC1\NAK\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETX$\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\ETX%\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\EOT\DC2\ETX%\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ENQ\DC2\ETX%\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\ETX%\DC1\CAN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\ETX%\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\EOT\DC2\ETX&\STX \n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\EOT\DC2\ETX&\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\ENQ\DC2\ETX&\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\SOH\DC2\ETX&\DC1\ESC\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\ETX\DC2\ETX&\RS\US\n\
    \\n\
    \\n\
    \\STX\EOT\ENQ\DC2\EOT(\NUL.\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX(\b!\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETX)\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\ETX)\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETX)\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX)\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX)\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ETX*\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\EOT\DC2\ETX*\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\ETX*\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETX*\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETX*\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\ETX+\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\EOT\DC2\ETX+\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ENQ\DC2\ETX+\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\ETX+\DC1\NAK\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\ETX+\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\ETX\DC2\ETX,\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\EOT\DC2\ETX,\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\ENQ\DC2\ETX,\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\SOH\DC2\ETX,\DC1\CAN\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\ETX\DC2\ETX,\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\EOT\DC2\ETX-\STX \n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\EOT\DC2\ETX-\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\ENQ\DC2\ETX-\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\SOH\DC2\ETX-\DC1\ESC\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\ETX\DC2\ETX-\RS\US\n\
    \\n\
    \\n\
    \\STX\EOT\ACK\DC2\EOT/\NUL3\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETX/\b#\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETX0\STX\US\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\EOT\DC2\ETX0\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETX0\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETX0\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETX0\GS\RS\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\ETX1\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\EOT\DC2\ETX1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\ETX1\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\ETX1\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\ETX1\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\STX\DC2\ETX2\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\EOT\DC2\ETX2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ENQ\DC2\ETX2\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\SOH\DC2\ETX2\DC1\CAN\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ETX\DC2\ETX2\ESC\FS\n\
    \\n\
    \\n\
    \\STX\EOT\a\DC2\EOT4\NUL9\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETX4\b#\n\
    \\v\n\
    \\EOT\EOT\a\STX\NUL\DC2\ETX5\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\EOT\DC2\ETX5\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ENQ\DC2\ETX5\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\ETX5\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\ETX5\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\a\STX\SOH\DC2\ETX6\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\EOT\DC2\ETX6\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ENQ\DC2\ETX6\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\ETX6\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\ETX6\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\a\STX\STX\DC2\ETX7\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\EOT\DC2\ETX7\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\ENQ\DC2\ETX7\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\SOH\DC2\ETX7\DC1\NAK\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\ETX\DC2\ETX7\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\a\STX\ETX\DC2\ETX8\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ETX\EOT\DC2\ETX8\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ETX\ENQ\DC2\ETX8\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ETX\SOH\DC2\ETX8\DC1\NAK\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ETX\ETX\DC2\ETX8\CAN\EM\n\
    \\n\
    \\n\
    \\STX\EOT\b\DC2\EOT:\NUL?\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\b\SOH\DC2\ETX:\b#\n\
    \\v\n\
    \\EOT\EOT\b\STX\NUL\DC2\ETX;\STX\"\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\EOT\DC2\ETX;\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\ETX;\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\ETX;\DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\ETX; !\n\
    \\v\n\
    \\EOT\EOT\b\STX\SOH\DC2\ETX<\STX \n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\EOT\DC2\ETX<\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ENQ\DC2\ETX<\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\ETX<\DC1\ESC\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\ETX<\RS\US\n\
    \\v\n\
    \\EOT\EOT\b\STX\STX\DC2\ETX=\STX!\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\EOT\DC2\ETX=\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\ENQ\DC2\ETX=\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\SOH\DC2\ETX=\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\ETX\DC2\ETX=\US \n\
    \\v\n\
    \\EOT\EOT\b\STX\ETX\DC2\ETX>\STX\US\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ETX\EOT\DC2\ETX>\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ETX\ENQ\DC2\ETX>\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ETX\SOH\DC2\ETX>\DC1\SUB\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ETX\ETX\DC2\ETX>\GS\RS\n\
    \\n\
    \\n\
    \\STX\EOT\t\DC2\EOT@\NULD\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\t\SOH\DC2\ETX@\b#\n\
    \\v\n\
    \\EOT\EOT\t\STX\NUL\DC2\ETXA\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\EOT\DC2\ETXA\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ENQ\DC2\ETXA\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\ETXA\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\ETXA\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\t\STX\SOH\DC2\ETXB\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\EOT\DC2\ETXB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\ENQ\DC2\ETXB\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\SOH\DC2\ETXB\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\ETX\DC2\ETXB\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\t\STX\STX\DC2\ETXC\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\t\STX\STX\EOT\DC2\ETXC\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\STX\ENQ\DC2\ETXC\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\t\STX\STX\SOH\DC2\ETXC\DC1\NAK\n\
    \\f\n\
    \\ENQ\EOT\t\STX\STX\ETX\DC2\ETXC\CAN\EM\n\
    \\n\
    \\n\
    \\STX\EOT\n\
    \\DC2\EOTE\NULH\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\n\
    \\SOH\DC2\ETXE\b#\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\ETXF\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\EOT\DC2\ETXF\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ENQ\DC2\ETXF\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\ETXF\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\ETXF\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\SOH\DC2\ETXG\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\EOT\DC2\ETXG\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ENQ\DC2\ETXG\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\SOH\DC2\ETXG\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ETX\DC2\ETXG\ETB\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\v\DC2\EOTI\NULM\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\v\SOH\DC2\ETXI\b#\n\
    \\v\n\
    \\EOT\EOT\v\STX\NUL\DC2\ETXJ\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\EOT\DC2\ETXJ\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\ENQ\DC2\ETXJ\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\ETXJ\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\ETXJ\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\v\STX\SOH\DC2\ETXK\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\EOT\DC2\ETXK\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\ENQ\DC2\ETXK\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\SOH\DC2\ETXK\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\ETX\DC2\ETXK\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\v\STX\STX\DC2\ETXL\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\v\STX\STX\EOT\DC2\ETXL\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\STX\ENQ\DC2\ETXL\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\v\STX\STX\SOH\DC2\ETXL\DC1\NAK\n\
    \\f\n\
    \\ENQ\EOT\v\STX\STX\ETX\DC2\ETXL\CAN\EM\n\
    \\n\
    \\n\
    \\STX\EOT\f\DC2\EOTN\NULS\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\f\SOH\DC2\ETXN\b!\n\
    \\v\n\
    \\EOT\EOT\f\STX\NUL\DC2\ETXO\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\EOT\DC2\ETXO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\ENQ\DC2\ETXO\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\ETXO\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\ETXO\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\f\STX\SOH\DC2\ETXP\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\f\STX\SOH\EOT\DC2\ETXP\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\SOH\ENQ\DC2\ETXP\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\f\STX\SOH\SOH\DC2\ETXP\DC1\CAN\n\
    \\f\n\
    \\ENQ\EOT\f\STX\SOH\ETX\DC2\ETXP\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\f\STX\STX\DC2\ETXQ\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\f\STX\STX\EOT\DC2\ETXQ\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\STX\ENQ\DC2\ETXQ\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\f\STX\STX\SOH\DC2\ETXQ\DC1\CAN\n\
    \\f\n\
    \\ENQ\EOT\f\STX\STX\ETX\DC2\ETXQ\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\f\STX\ETX\DC2\ETXR\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ETX\EOT\DC2\ETXR\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ETX\ENQ\DC2\ETXR\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ETX\SOH\DC2\ETXR\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ETX\ETX\DC2\ETXR\ETB\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\r\DC2\EOTT\NULd\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\r\SOH\DC2\ETXT\b\"\n\
    \\v\n\
    \\EOT\EOT\r\STX\NUL\DC2\ETXU\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\EOT\DC2\ETXU\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\ENQ\DC2\ETXU\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\SOH\DC2\ETXU\DC1\ETB\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\ETX\DC2\ETXU\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\r\STX\SOH\DC2\ETXV\STX\US\n\
    \\f\n\
    \\ENQ\EOT\r\STX\SOH\EOT\DC2\ETXV\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\SOH\ENQ\DC2\ETXV\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\r\STX\SOH\SOH\DC2\ETXV\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\r\STX\SOH\ETX\DC2\ETXV\GS\RS\n\
    \\v\n\
    \\EOT\EOT\r\STX\STX\DC2\ETXW\STX$\n\
    \\f\n\
    \\ENQ\EOT\r\STX\STX\EOT\DC2\ETXW\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\STX\ENQ\DC2\ETXW\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\r\STX\STX\SOH\DC2\ETXW\DC2\US\n\
    \\f\n\
    \\ENQ\EOT\r\STX\STX\ETX\DC2\ETXW\"#\n\
    \\v\n\
    \\EOT\EOT\r\STX\ETX\DC2\ETXX\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ETX\EOT\DC2\ETXX\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ETX\ENQ\DC2\ETXX\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ETX\SOH\DC2\ETXX\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ETX\ETX\DC2\ETXX\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\r\STX\EOT\DC2\ETXY\STX%\n\
    \\f\n\
    \\ENQ\EOT\r\STX\EOT\EOT\DC2\ETXY\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\EOT\ENQ\DC2\ETXY\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\r\STX\EOT\SOH\DC2\ETXY\DC2 \n\
    \\f\n\
    \\ENQ\EOT\r\STX\EOT\ETX\DC2\ETXY#$\n\
    \\v\n\
    \\EOT\EOT\r\STX\ENQ\DC2\ETXZ\STX\US\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ENQ\EOT\DC2\ETXZ\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ENQ\ENQ\DC2\ETXZ\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ENQ\SOH\DC2\ETXZ\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ENQ\ETX\DC2\ETXZ\GS\RS\n\
    \\v\n\
    \\EOT\EOT\r\STX\ACK\DC2\ETX[\STX\US\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ACK\EOT\DC2\ETX[\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ACK\ENQ\DC2\ETX[\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ACK\SOH\DC2\ETX[\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ACK\ETX\DC2\ETX[\GS\RS\n\
    \\v\n\
    \\EOT\EOT\r\STX\a\DC2\ETX\\\STX%\n\
    \\f\n\
    \\ENQ\EOT\r\STX\a\EOT\DC2\ETX\\\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\a\ENQ\DC2\ETX\\\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\r\STX\a\SOH\DC2\ETX\\\DC2 \n\
    \\f\n\
    \\ENQ\EOT\r\STX\a\ETX\DC2\ETX\\#$\n\
    \\v\n\
    \\EOT\EOT\r\STX\b\DC2\ETX]\STX'\n\
    \\f\n\
    \\ENQ\EOT\r\STX\b\EOT\DC2\ETX]\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\b\ENQ\DC2\ETX]\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\r\STX\b\SOH\DC2\ETX]\DC2\"\n\
    \\f\n\
    \\ENQ\EOT\r\STX\b\ETX\DC2\ETX]%&\n\
    \\v\n\
    \\EOT\EOT\r\STX\t\DC2\ETX^\STX \n\
    \\f\n\
    \\ENQ\EOT\r\STX\t\EOT\DC2\ETX^\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\t\ENQ\DC2\ETX^\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\r\STX\t\SOH\DC2\ETX^\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\r\STX\t\ETX\DC2\ETX^\GS\US\n\
    \\v\n\
    \\EOT\EOT\r\STX\n\
    \\DC2\ETX_\STX\"\n\
    \\f\n\
    \\ENQ\EOT\r\STX\n\
    \\EOT\DC2\ETX_\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\n\
    \\ENQ\DC2\ETX_\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\r\STX\n\
    \\SOH\DC2\ETX_\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\r\STX\n\
    \\ETX\DC2\ETX_\US!\n\
    \\v\n\
    \\EOT\EOT\r\STX\v\DC2\ETX`\STX \n\
    \\f\n\
    \\ENQ\EOT\r\STX\v\EOT\DC2\ETX`\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\v\ENQ\DC2\ETX`\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\r\STX\v\SOH\DC2\ETX`\DC1\SUB\n\
    \\f\n\
    \\ENQ\EOT\r\STX\v\ETX\DC2\ETX`\GS\US\n\
    \\v\n\
    \\EOT\EOT\r\STX\f\DC2\ETXa\STX!\n\
    \\f\n\
    \\ENQ\EOT\r\STX\f\EOT\DC2\ETXa\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\f\ENQ\DC2\ETXa\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\r\STX\f\SOH\DC2\ETXa\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\r\STX\f\ETX\DC2\ETXa\RS \n\
    \\v\n\
    \\EOT\EOT\r\STX\r\DC2\ETXb\STX'\n\
    \\f\n\
    \\ENQ\EOT\r\STX\r\EOT\DC2\ETXb\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\r\ENQ\DC2\ETXb\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\r\STX\r\SOH\DC2\ETXb\DC2!\n\
    \\f\n\
    \\ENQ\EOT\r\STX\r\ETX\DC2\ETXb$&\n\
    \\v\n\
    \\EOT\EOT\r\STX\SO\DC2\ETXc\STX!\n\
    \\f\n\
    \\ENQ\EOT\r\STX\SO\EOT\DC2\ETXc\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\SO\ENQ\DC2\ETXc\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\r\STX\SO\SOH\DC2\ETXc\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\r\STX\SO\ETX\DC2\ETXc\RS "