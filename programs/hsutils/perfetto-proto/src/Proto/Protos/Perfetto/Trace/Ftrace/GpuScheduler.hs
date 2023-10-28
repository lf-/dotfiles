{- This file was auto-generated from protos/perfetto/trace/ftrace/gpu_scheduler.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.GpuScheduler (
        DrmRunJobFtraceEvent(), DrmSchedJobFtraceEvent(),
        DrmSchedProcessJobFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.GpuScheduler_Fields.entity' @:: Lens' DrmRunJobFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.GpuScheduler_Fields.maybe'entity' @:: Lens' DrmRunJobFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.GpuScheduler_Fields.fence' @:: Lens' DrmRunJobFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.GpuScheduler_Fields.maybe'fence' @:: Lens' DrmRunJobFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.GpuScheduler_Fields.hwJobCount' @:: Lens' DrmRunJobFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.GpuScheduler_Fields.maybe'hwJobCount' @:: Lens' DrmRunJobFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.GpuScheduler_Fields.id' @:: Lens' DrmRunJobFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.GpuScheduler_Fields.maybe'id' @:: Lens' DrmRunJobFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.GpuScheduler_Fields.jobCount' @:: Lens' DrmRunJobFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.GpuScheduler_Fields.maybe'jobCount' @:: Lens' DrmRunJobFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.GpuScheduler_Fields.name' @:: Lens' DrmRunJobFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.GpuScheduler_Fields.maybe'name' @:: Lens' DrmRunJobFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data DrmRunJobFtraceEvent
  = DrmRunJobFtraceEvent'_constructor {_DrmRunJobFtraceEvent'entity :: !(Prelude.Maybe Data.Word.Word64),
                                       _DrmRunJobFtraceEvent'fence :: !(Prelude.Maybe Data.Word.Word64),
                                       _DrmRunJobFtraceEvent'hwJobCount :: !(Prelude.Maybe Data.Int.Int32),
                                       _DrmRunJobFtraceEvent'id :: !(Prelude.Maybe Data.Word.Word64),
                                       _DrmRunJobFtraceEvent'jobCount :: !(Prelude.Maybe Data.Word.Word32),
                                       _DrmRunJobFtraceEvent'name :: !(Prelude.Maybe Data.Text.Text),
                                       _DrmRunJobFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DrmRunJobFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DrmRunJobFtraceEvent "entity" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DrmRunJobFtraceEvent'entity
           (\ x__ y__ -> x__ {_DrmRunJobFtraceEvent'entity = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DrmRunJobFtraceEvent "maybe'entity" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DrmRunJobFtraceEvent'entity
           (\ x__ y__ -> x__ {_DrmRunJobFtraceEvent'entity = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DrmRunJobFtraceEvent "fence" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DrmRunJobFtraceEvent'fence
           (\ x__ y__ -> x__ {_DrmRunJobFtraceEvent'fence = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DrmRunJobFtraceEvent "maybe'fence" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DrmRunJobFtraceEvent'fence
           (\ x__ y__ -> x__ {_DrmRunJobFtraceEvent'fence = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DrmRunJobFtraceEvent "hwJobCount" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DrmRunJobFtraceEvent'hwJobCount
           (\ x__ y__ -> x__ {_DrmRunJobFtraceEvent'hwJobCount = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DrmRunJobFtraceEvent "maybe'hwJobCount" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DrmRunJobFtraceEvent'hwJobCount
           (\ x__ y__ -> x__ {_DrmRunJobFtraceEvent'hwJobCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DrmRunJobFtraceEvent "id" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DrmRunJobFtraceEvent'id
           (\ x__ y__ -> x__ {_DrmRunJobFtraceEvent'id = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DrmRunJobFtraceEvent "maybe'id" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DrmRunJobFtraceEvent'id
           (\ x__ y__ -> x__ {_DrmRunJobFtraceEvent'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DrmRunJobFtraceEvent "jobCount" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DrmRunJobFtraceEvent'jobCount
           (\ x__ y__ -> x__ {_DrmRunJobFtraceEvent'jobCount = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DrmRunJobFtraceEvent "maybe'jobCount" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DrmRunJobFtraceEvent'jobCount
           (\ x__ y__ -> x__ {_DrmRunJobFtraceEvent'jobCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DrmRunJobFtraceEvent "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DrmRunJobFtraceEvent'name
           (\ x__ y__ -> x__ {_DrmRunJobFtraceEvent'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DrmRunJobFtraceEvent "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DrmRunJobFtraceEvent'name
           (\ x__ y__ -> x__ {_DrmRunJobFtraceEvent'name = y__}))
        Prelude.id
instance Data.ProtoLens.Message DrmRunJobFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.DrmRunJobFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\DC4DrmRunJobFtraceEvent\DC2\SYN\n\
      \\ACKentity\CAN\SOH \SOH(\EOTR\ACKentity\DC2\DC4\n\
      \\ENQfence\CAN\STX \SOH(\EOTR\ENQfence\DC2 \n\
      \\fhw_job_count\CAN\ETX \SOH(\ENQR\n\
      \hwJobCount\DC2\SO\n\
      \\STXid\CAN\EOT \SOH(\EOTR\STXid\DC2\ESC\n\
      \\tjob_count\CAN\ENQ \SOH(\rR\bjobCount\DC2\DC2\n\
      \\EOTname\CAN\ACK \SOH(\tR\EOTname"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        entity__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "entity"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'entity")) ::
              Data.ProtoLens.FieldDescriptor DrmRunJobFtraceEvent
        fence__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fence"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fence")) ::
              Data.ProtoLens.FieldDescriptor DrmRunJobFtraceEvent
        hwJobCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "hw_job_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'hwJobCount")) ::
              Data.ProtoLens.FieldDescriptor DrmRunJobFtraceEvent
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'id")) ::
              Data.ProtoLens.FieldDescriptor DrmRunJobFtraceEvent
        jobCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "job_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'jobCount")) ::
              Data.ProtoLens.FieldDescriptor DrmRunJobFtraceEvent
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'name")) ::
              Data.ProtoLens.FieldDescriptor DrmRunJobFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, entity__field_descriptor),
           (Data.ProtoLens.Tag 2, fence__field_descriptor),
           (Data.ProtoLens.Tag 3, hwJobCount__field_descriptor),
           (Data.ProtoLens.Tag 4, id__field_descriptor),
           (Data.ProtoLens.Tag 5, jobCount__field_descriptor),
           (Data.ProtoLens.Tag 6, name__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DrmRunJobFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_DrmRunJobFtraceEvent'_unknownFields = y__})
  defMessage
    = DrmRunJobFtraceEvent'_constructor
        {_DrmRunJobFtraceEvent'entity = Prelude.Nothing,
         _DrmRunJobFtraceEvent'fence = Prelude.Nothing,
         _DrmRunJobFtraceEvent'hwJobCount = Prelude.Nothing,
         _DrmRunJobFtraceEvent'id = Prelude.Nothing,
         _DrmRunJobFtraceEvent'jobCount = Prelude.Nothing,
         _DrmRunJobFtraceEvent'name = Prelude.Nothing,
         _DrmRunJobFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DrmRunJobFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser DrmRunJobFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "entity"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"entity") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "fence"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"fence") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "hw_job_count"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"hwJobCount") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "job_count"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"jobCount") y x)
                        50
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
          (do loop Data.ProtoLens.defMessage) "DrmRunJobFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'entity") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'fence") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'hwJobCount") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'id") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'jobCount") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'name") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.Text.Encoding.encodeUtf8 _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData DrmRunJobFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DrmRunJobFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DrmRunJobFtraceEvent'entity x__)
                (Control.DeepSeq.deepseq
                   (_DrmRunJobFtraceEvent'fence x__)
                   (Control.DeepSeq.deepseq
                      (_DrmRunJobFtraceEvent'hwJobCount x__)
                      (Control.DeepSeq.deepseq
                         (_DrmRunJobFtraceEvent'id x__)
                         (Control.DeepSeq.deepseq
                            (_DrmRunJobFtraceEvent'jobCount x__)
                            (Control.DeepSeq.deepseq (_DrmRunJobFtraceEvent'name x__) ()))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.GpuScheduler_Fields.entity' @:: Lens' DrmSchedJobFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.GpuScheduler_Fields.maybe'entity' @:: Lens' DrmSchedJobFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.GpuScheduler_Fields.fence' @:: Lens' DrmSchedJobFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.GpuScheduler_Fields.maybe'fence' @:: Lens' DrmSchedJobFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.GpuScheduler_Fields.hwJobCount' @:: Lens' DrmSchedJobFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.GpuScheduler_Fields.maybe'hwJobCount' @:: Lens' DrmSchedJobFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.GpuScheduler_Fields.id' @:: Lens' DrmSchedJobFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.GpuScheduler_Fields.maybe'id' @:: Lens' DrmSchedJobFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.GpuScheduler_Fields.jobCount' @:: Lens' DrmSchedJobFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.GpuScheduler_Fields.maybe'jobCount' @:: Lens' DrmSchedJobFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.GpuScheduler_Fields.name' @:: Lens' DrmSchedJobFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.GpuScheduler_Fields.maybe'name' @:: Lens' DrmSchedJobFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data DrmSchedJobFtraceEvent
  = DrmSchedJobFtraceEvent'_constructor {_DrmSchedJobFtraceEvent'entity :: !(Prelude.Maybe Data.Word.Word64),
                                         _DrmSchedJobFtraceEvent'fence :: !(Prelude.Maybe Data.Word.Word64),
                                         _DrmSchedJobFtraceEvent'hwJobCount :: !(Prelude.Maybe Data.Int.Int32),
                                         _DrmSchedJobFtraceEvent'id :: !(Prelude.Maybe Data.Word.Word64),
                                         _DrmSchedJobFtraceEvent'jobCount :: !(Prelude.Maybe Data.Word.Word32),
                                         _DrmSchedJobFtraceEvent'name :: !(Prelude.Maybe Data.Text.Text),
                                         _DrmSchedJobFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DrmSchedJobFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DrmSchedJobFtraceEvent "entity" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DrmSchedJobFtraceEvent'entity
           (\ x__ y__ -> x__ {_DrmSchedJobFtraceEvent'entity = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DrmSchedJobFtraceEvent "maybe'entity" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DrmSchedJobFtraceEvent'entity
           (\ x__ y__ -> x__ {_DrmSchedJobFtraceEvent'entity = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DrmSchedJobFtraceEvent "fence" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DrmSchedJobFtraceEvent'fence
           (\ x__ y__ -> x__ {_DrmSchedJobFtraceEvent'fence = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DrmSchedJobFtraceEvent "maybe'fence" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DrmSchedJobFtraceEvent'fence
           (\ x__ y__ -> x__ {_DrmSchedJobFtraceEvent'fence = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DrmSchedJobFtraceEvent "hwJobCount" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DrmSchedJobFtraceEvent'hwJobCount
           (\ x__ y__ -> x__ {_DrmSchedJobFtraceEvent'hwJobCount = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DrmSchedJobFtraceEvent "maybe'hwJobCount" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DrmSchedJobFtraceEvent'hwJobCount
           (\ x__ y__ -> x__ {_DrmSchedJobFtraceEvent'hwJobCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DrmSchedJobFtraceEvent "id" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DrmSchedJobFtraceEvent'id
           (\ x__ y__ -> x__ {_DrmSchedJobFtraceEvent'id = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DrmSchedJobFtraceEvent "maybe'id" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DrmSchedJobFtraceEvent'id
           (\ x__ y__ -> x__ {_DrmSchedJobFtraceEvent'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DrmSchedJobFtraceEvent "jobCount" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DrmSchedJobFtraceEvent'jobCount
           (\ x__ y__ -> x__ {_DrmSchedJobFtraceEvent'jobCount = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DrmSchedJobFtraceEvent "maybe'jobCount" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DrmSchedJobFtraceEvent'jobCount
           (\ x__ y__ -> x__ {_DrmSchedJobFtraceEvent'jobCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DrmSchedJobFtraceEvent "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DrmSchedJobFtraceEvent'name
           (\ x__ y__ -> x__ {_DrmSchedJobFtraceEvent'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DrmSchedJobFtraceEvent "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DrmSchedJobFtraceEvent'name
           (\ x__ y__ -> x__ {_DrmSchedJobFtraceEvent'name = y__}))
        Prelude.id
instance Data.ProtoLens.Message DrmSchedJobFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.DrmSchedJobFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SYNDrmSchedJobFtraceEvent\DC2\SYN\n\
      \\ACKentity\CAN\SOH \SOH(\EOTR\ACKentity\DC2\DC4\n\
      \\ENQfence\CAN\STX \SOH(\EOTR\ENQfence\DC2 \n\
      \\fhw_job_count\CAN\ETX \SOH(\ENQR\n\
      \hwJobCount\DC2\SO\n\
      \\STXid\CAN\EOT \SOH(\EOTR\STXid\DC2\ESC\n\
      \\tjob_count\CAN\ENQ \SOH(\rR\bjobCount\DC2\DC2\n\
      \\EOTname\CAN\ACK \SOH(\tR\EOTname"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        entity__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "entity"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'entity")) ::
              Data.ProtoLens.FieldDescriptor DrmSchedJobFtraceEvent
        fence__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fence"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fence")) ::
              Data.ProtoLens.FieldDescriptor DrmSchedJobFtraceEvent
        hwJobCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "hw_job_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'hwJobCount")) ::
              Data.ProtoLens.FieldDescriptor DrmSchedJobFtraceEvent
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'id")) ::
              Data.ProtoLens.FieldDescriptor DrmSchedJobFtraceEvent
        jobCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "job_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'jobCount")) ::
              Data.ProtoLens.FieldDescriptor DrmSchedJobFtraceEvent
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'name")) ::
              Data.ProtoLens.FieldDescriptor DrmSchedJobFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, entity__field_descriptor),
           (Data.ProtoLens.Tag 2, fence__field_descriptor),
           (Data.ProtoLens.Tag 3, hwJobCount__field_descriptor),
           (Data.ProtoLens.Tag 4, id__field_descriptor),
           (Data.ProtoLens.Tag 5, jobCount__field_descriptor),
           (Data.ProtoLens.Tag 6, name__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DrmSchedJobFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_DrmSchedJobFtraceEvent'_unknownFields = y__})
  defMessage
    = DrmSchedJobFtraceEvent'_constructor
        {_DrmSchedJobFtraceEvent'entity = Prelude.Nothing,
         _DrmSchedJobFtraceEvent'fence = Prelude.Nothing,
         _DrmSchedJobFtraceEvent'hwJobCount = Prelude.Nothing,
         _DrmSchedJobFtraceEvent'id = Prelude.Nothing,
         _DrmSchedJobFtraceEvent'jobCount = Prelude.Nothing,
         _DrmSchedJobFtraceEvent'name = Prelude.Nothing,
         _DrmSchedJobFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DrmSchedJobFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser DrmSchedJobFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "entity"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"entity") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "fence"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"fence") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "hw_job_count"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"hwJobCount") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "job_count"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"jobCount") y x)
                        50
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
          (do loop Data.ProtoLens.defMessage) "DrmSchedJobFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'entity") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'fence") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'hwJobCount") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'id") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'jobCount") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'name") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.Text.Encoding.encodeUtf8 _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData DrmSchedJobFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DrmSchedJobFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DrmSchedJobFtraceEvent'entity x__)
                (Control.DeepSeq.deepseq
                   (_DrmSchedJobFtraceEvent'fence x__)
                   (Control.DeepSeq.deepseq
                      (_DrmSchedJobFtraceEvent'hwJobCount x__)
                      (Control.DeepSeq.deepseq
                         (_DrmSchedJobFtraceEvent'id x__)
                         (Control.DeepSeq.deepseq
                            (_DrmSchedJobFtraceEvent'jobCount x__)
                            (Control.DeepSeq.deepseq
                               (_DrmSchedJobFtraceEvent'name x__) ()))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.GpuScheduler_Fields.fence' @:: Lens' DrmSchedProcessJobFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.GpuScheduler_Fields.maybe'fence' @:: Lens' DrmSchedProcessJobFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data DrmSchedProcessJobFtraceEvent
  = DrmSchedProcessJobFtraceEvent'_constructor {_DrmSchedProcessJobFtraceEvent'fence :: !(Prelude.Maybe Data.Word.Word64),
                                                _DrmSchedProcessJobFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DrmSchedProcessJobFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DrmSchedProcessJobFtraceEvent "fence" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DrmSchedProcessJobFtraceEvent'fence
           (\ x__ y__ -> x__ {_DrmSchedProcessJobFtraceEvent'fence = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DrmSchedProcessJobFtraceEvent "maybe'fence" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DrmSchedProcessJobFtraceEvent'fence
           (\ x__ y__ -> x__ {_DrmSchedProcessJobFtraceEvent'fence = y__}))
        Prelude.id
instance Data.ProtoLens.Message DrmSchedProcessJobFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.DrmSchedProcessJobFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\GSDrmSchedProcessJobFtraceEvent\DC2\DC4\n\
      \\ENQfence\CAN\SOH \SOH(\EOTR\ENQfence"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        fence__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fence"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fence")) ::
              Data.ProtoLens.FieldDescriptor DrmSchedProcessJobFtraceEvent
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, fence__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DrmSchedProcessJobFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_DrmSchedProcessJobFtraceEvent'_unknownFields = y__})
  defMessage
    = DrmSchedProcessJobFtraceEvent'_constructor
        {_DrmSchedProcessJobFtraceEvent'fence = Prelude.Nothing,
         _DrmSchedProcessJobFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DrmSchedProcessJobFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser DrmSchedProcessJobFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "fence"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"fence") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DrmSchedProcessJobFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'fence") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData DrmSchedProcessJobFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DrmSchedProcessJobFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DrmSchedProcessJobFtraceEvent'fence x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \0protos/perfetto/trace/ftrace/gpu_scheduler.proto\DC2\SIperfetto.protos\"\169\SOH\n\
    \\SYNDrmSchedJobFtraceEvent\DC2\SYN\n\
    \\ACKentity\CAN\SOH \SOH(\EOTR\ACKentity\DC2\DC4\n\
    \\ENQfence\CAN\STX \SOH(\EOTR\ENQfence\DC2 \n\
    \\fhw_job_count\CAN\ETX \SOH(\ENQR\n\
    \hwJobCount\DC2\SO\n\
    \\STXid\CAN\EOT \SOH(\EOTR\STXid\DC2\ESC\n\
    \\tjob_count\CAN\ENQ \SOH(\rR\bjobCount\DC2\DC2\n\
    \\EOTname\CAN\ACK \SOH(\tR\EOTname\"\167\SOH\n\
    \\DC4DrmRunJobFtraceEvent\DC2\SYN\n\
    \\ACKentity\CAN\SOH \SOH(\EOTR\ACKentity\DC2\DC4\n\
    \\ENQfence\CAN\STX \SOH(\EOTR\ENQfence\DC2 \n\
    \\fhw_job_count\CAN\ETX \SOH(\ENQR\n\
    \hwJobCount\DC2\SO\n\
    \\STXid\CAN\EOT \SOH(\EOTR\STXid\DC2\ESC\n\
    \\tjob_count\CAN\ENQ \SOH(\rR\bjobCount\DC2\DC2\n\
    \\EOTname\CAN\ACK \SOH(\tR\EOTname\"5\n\
    \\GSDrmSchedProcessJobFtraceEvent\DC2\DC4\n\
    \\ENQfence\CAN\SOH \SOH(\EOTR\ENQfenceJ\190\b\n\
    \\ACK\DC2\EOT\EOT\NUL\EM\SOH\n\
    \a\n\
    \\SOH\f\DC2\ETX\EOT\NUL\DC22W Autogenerated by:\n\
    \ ../../src/tools/ftrace_proto_gen/ftrace_proto_gen.cc\n\
    \ Do not edit.\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\ENQ\NUL\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\a\NUL\SO\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b\RS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\b\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\b\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\b\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\b\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\b\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\t\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\t\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\t\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\t\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\t\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\n\
    \\STX\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\n\
    \\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\n\
    \\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\n\
    \\DC1\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\n\
    \ !\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\v\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX\v\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\v\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\v\DC2\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\v\ETB\CAN\n\
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
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX\r\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\EOT\DC2\ETX\r\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETX\r\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX\r\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX\r\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\SI\NUL\SYN\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\SI\b\FS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\DLE\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\DLE\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\DLE\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\DLE\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\DLE\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\DC1\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX\DC1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\DC1\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\DC1\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\DC1\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX\DC2\STX\"\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\EOT\DC2\ETX\DC2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX\DC2\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX\DC2\DC1\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX\DC2 !\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX\DC3\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\EOT\DC2\ETX\DC3\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX\DC3\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX\DC3\DC2\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX\DC3\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETX\DC4\STX \n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\EOT\DC2\ETX\DC4\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ENQ\DC2\ETX\DC4\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETX\DC4\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETX\DC4\RS\US\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\ETX\NAK\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\EOT\DC2\ETX\NAK\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ENQ\DC2\ETX\NAK\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\ETX\NAK\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\ETX\NAK\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT\ETB\NUL\EM\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\ETB\b%\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\CAN\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETX\CAN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX\CAN\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\CAN\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\CAN\SUB\ESC"