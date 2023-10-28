{- This file was auto-generated from protos/perfetto/trace/ftrace/task.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Task (
        TaskNewtaskFtraceEvent(), TaskRenameFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Task_Fields.pid' @:: Lens' TaskNewtaskFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Task_Fields.maybe'pid' @:: Lens' TaskNewtaskFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Task_Fields.comm' @:: Lens' TaskNewtaskFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Task_Fields.maybe'comm' @:: Lens' TaskNewtaskFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Task_Fields.cloneFlags' @:: Lens' TaskNewtaskFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Task_Fields.maybe'cloneFlags' @:: Lens' TaskNewtaskFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Task_Fields.oomScoreAdj' @:: Lens' TaskNewtaskFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Task_Fields.maybe'oomScoreAdj' @:: Lens' TaskNewtaskFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data TaskNewtaskFtraceEvent
  = TaskNewtaskFtraceEvent'_constructor {_TaskNewtaskFtraceEvent'pid :: !(Prelude.Maybe Data.Int.Int32),
                                         _TaskNewtaskFtraceEvent'comm :: !(Prelude.Maybe Data.Text.Text),
                                         _TaskNewtaskFtraceEvent'cloneFlags :: !(Prelude.Maybe Data.Word.Word64),
                                         _TaskNewtaskFtraceEvent'oomScoreAdj :: !(Prelude.Maybe Data.Int.Int32),
                                         _TaskNewtaskFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TaskNewtaskFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TaskNewtaskFtraceEvent "pid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskNewtaskFtraceEvent'pid
           (\ x__ y__ -> x__ {_TaskNewtaskFtraceEvent'pid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TaskNewtaskFtraceEvent "maybe'pid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskNewtaskFtraceEvent'pid
           (\ x__ y__ -> x__ {_TaskNewtaskFtraceEvent'pid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TaskNewtaskFtraceEvent "comm" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskNewtaskFtraceEvent'comm
           (\ x__ y__ -> x__ {_TaskNewtaskFtraceEvent'comm = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TaskNewtaskFtraceEvent "maybe'comm" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskNewtaskFtraceEvent'comm
           (\ x__ y__ -> x__ {_TaskNewtaskFtraceEvent'comm = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TaskNewtaskFtraceEvent "cloneFlags" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskNewtaskFtraceEvent'cloneFlags
           (\ x__ y__ -> x__ {_TaskNewtaskFtraceEvent'cloneFlags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TaskNewtaskFtraceEvent "maybe'cloneFlags" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskNewtaskFtraceEvent'cloneFlags
           (\ x__ y__ -> x__ {_TaskNewtaskFtraceEvent'cloneFlags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TaskNewtaskFtraceEvent "oomScoreAdj" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskNewtaskFtraceEvent'oomScoreAdj
           (\ x__ y__ -> x__ {_TaskNewtaskFtraceEvent'oomScoreAdj = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TaskNewtaskFtraceEvent "maybe'oomScoreAdj" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskNewtaskFtraceEvent'oomScoreAdj
           (\ x__ y__ -> x__ {_TaskNewtaskFtraceEvent'oomScoreAdj = y__}))
        Prelude.id
instance Data.ProtoLens.Message TaskNewtaskFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.TaskNewtaskFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SYNTaskNewtaskFtraceEvent\DC2\DLE\n\
      \\ETXpid\CAN\SOH \SOH(\ENQR\ETXpid\DC2\DC2\n\
      \\EOTcomm\CAN\STX \SOH(\tR\EOTcomm\DC2\US\n\
      \\vclone_flags\CAN\ETX \SOH(\EOTR\n\
      \cloneFlags\DC2\"\n\
      \\room_score_adj\CAN\EOT \SOH(\ENQR\voomScoreAdj"
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
              Data.ProtoLens.FieldDescriptor TaskNewtaskFtraceEvent
        comm__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "comm"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'comm")) ::
              Data.ProtoLens.FieldDescriptor TaskNewtaskFtraceEvent
        cloneFlags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "clone_flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cloneFlags")) ::
              Data.ProtoLens.FieldDescriptor TaskNewtaskFtraceEvent
        oomScoreAdj__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "oom_score_adj"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'oomScoreAdj")) ::
              Data.ProtoLens.FieldDescriptor TaskNewtaskFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, pid__field_descriptor),
           (Data.ProtoLens.Tag 2, comm__field_descriptor),
           (Data.ProtoLens.Tag 3, cloneFlags__field_descriptor),
           (Data.ProtoLens.Tag 4, oomScoreAdj__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TaskNewtaskFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_TaskNewtaskFtraceEvent'_unknownFields = y__})
  defMessage
    = TaskNewtaskFtraceEvent'_constructor
        {_TaskNewtaskFtraceEvent'pid = Prelude.Nothing,
         _TaskNewtaskFtraceEvent'comm = Prelude.Nothing,
         _TaskNewtaskFtraceEvent'cloneFlags = Prelude.Nothing,
         _TaskNewtaskFtraceEvent'oomScoreAdj = Prelude.Nothing,
         _TaskNewtaskFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TaskNewtaskFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser TaskNewtaskFtraceEvent
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
                                       "comm"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"comm") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "clone_flags"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"cloneFlags") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "oom_score_adj"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"oomScoreAdj") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TaskNewtaskFtraceEvent"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'comm") _x
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
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'cloneFlags") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'oomScoreAdj") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData TaskNewtaskFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TaskNewtaskFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TaskNewtaskFtraceEvent'pid x__)
                (Control.DeepSeq.deepseq
                   (_TaskNewtaskFtraceEvent'comm x__)
                   (Control.DeepSeq.deepseq
                      (_TaskNewtaskFtraceEvent'cloneFlags x__)
                      (Control.DeepSeq.deepseq
                         (_TaskNewtaskFtraceEvent'oomScoreAdj x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Task_Fields.pid' @:: Lens' TaskRenameFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Task_Fields.maybe'pid' @:: Lens' TaskRenameFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Task_Fields.oldcomm' @:: Lens' TaskRenameFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Task_Fields.maybe'oldcomm' @:: Lens' TaskRenameFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Task_Fields.newcomm' @:: Lens' TaskRenameFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Task_Fields.maybe'newcomm' @:: Lens' TaskRenameFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Task_Fields.oomScoreAdj' @:: Lens' TaskRenameFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Task_Fields.maybe'oomScoreAdj' @:: Lens' TaskRenameFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data TaskRenameFtraceEvent
  = TaskRenameFtraceEvent'_constructor {_TaskRenameFtraceEvent'pid :: !(Prelude.Maybe Data.Int.Int32),
                                        _TaskRenameFtraceEvent'oldcomm :: !(Prelude.Maybe Data.Text.Text),
                                        _TaskRenameFtraceEvent'newcomm :: !(Prelude.Maybe Data.Text.Text),
                                        _TaskRenameFtraceEvent'oomScoreAdj :: !(Prelude.Maybe Data.Int.Int32),
                                        _TaskRenameFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TaskRenameFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TaskRenameFtraceEvent "pid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskRenameFtraceEvent'pid
           (\ x__ y__ -> x__ {_TaskRenameFtraceEvent'pid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TaskRenameFtraceEvent "maybe'pid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskRenameFtraceEvent'pid
           (\ x__ y__ -> x__ {_TaskRenameFtraceEvent'pid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TaskRenameFtraceEvent "oldcomm" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskRenameFtraceEvent'oldcomm
           (\ x__ y__ -> x__ {_TaskRenameFtraceEvent'oldcomm = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TaskRenameFtraceEvent "maybe'oldcomm" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskRenameFtraceEvent'oldcomm
           (\ x__ y__ -> x__ {_TaskRenameFtraceEvent'oldcomm = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TaskRenameFtraceEvent "newcomm" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskRenameFtraceEvent'newcomm
           (\ x__ y__ -> x__ {_TaskRenameFtraceEvent'newcomm = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TaskRenameFtraceEvent "maybe'newcomm" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskRenameFtraceEvent'newcomm
           (\ x__ y__ -> x__ {_TaskRenameFtraceEvent'newcomm = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TaskRenameFtraceEvent "oomScoreAdj" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskRenameFtraceEvent'oomScoreAdj
           (\ x__ y__ -> x__ {_TaskRenameFtraceEvent'oomScoreAdj = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TaskRenameFtraceEvent "maybe'oomScoreAdj" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TaskRenameFtraceEvent'oomScoreAdj
           (\ x__ y__ -> x__ {_TaskRenameFtraceEvent'oomScoreAdj = y__}))
        Prelude.id
instance Data.ProtoLens.Message TaskRenameFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.TaskRenameFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\NAKTaskRenameFtraceEvent\DC2\DLE\n\
      \\ETXpid\CAN\SOH \SOH(\ENQR\ETXpid\DC2\CAN\n\
      \\aoldcomm\CAN\STX \SOH(\tR\aoldcomm\DC2\CAN\n\
      \\anewcomm\CAN\ETX \SOH(\tR\anewcomm\DC2\"\n\
      \\room_score_adj\CAN\EOT \SOH(\ENQR\voomScoreAdj"
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
              Data.ProtoLens.FieldDescriptor TaskRenameFtraceEvent
        oldcomm__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "oldcomm"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'oldcomm")) ::
              Data.ProtoLens.FieldDescriptor TaskRenameFtraceEvent
        newcomm__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "newcomm"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'newcomm")) ::
              Data.ProtoLens.FieldDescriptor TaskRenameFtraceEvent
        oomScoreAdj__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "oom_score_adj"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'oomScoreAdj")) ::
              Data.ProtoLens.FieldDescriptor TaskRenameFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, pid__field_descriptor),
           (Data.ProtoLens.Tag 2, oldcomm__field_descriptor),
           (Data.ProtoLens.Tag 3, newcomm__field_descriptor),
           (Data.ProtoLens.Tag 4, oomScoreAdj__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TaskRenameFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_TaskRenameFtraceEvent'_unknownFields = y__})
  defMessage
    = TaskRenameFtraceEvent'_constructor
        {_TaskRenameFtraceEvent'pid = Prelude.Nothing,
         _TaskRenameFtraceEvent'oldcomm = Prelude.Nothing,
         _TaskRenameFtraceEvent'newcomm = Prelude.Nothing,
         _TaskRenameFtraceEvent'oomScoreAdj = Prelude.Nothing,
         _TaskRenameFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TaskRenameFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser TaskRenameFtraceEvent
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
                                       "oldcomm"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"oldcomm") y x)
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
                                       "newcomm"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"newcomm") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "oom_score_adj"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"oomScoreAdj") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TaskRenameFtraceEvent"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'oldcomm") _x
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'newcomm") _x
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
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'oomScoreAdj") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData TaskRenameFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TaskRenameFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TaskRenameFtraceEvent'pid x__)
                (Control.DeepSeq.deepseq
                   (_TaskRenameFtraceEvent'oldcomm x__)
                   (Control.DeepSeq.deepseq
                      (_TaskRenameFtraceEvent'newcomm x__)
                      (Control.DeepSeq.deepseq
                         (_TaskRenameFtraceEvent'oomScoreAdj x__) ()))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \'protos/perfetto/trace/ftrace/task.proto\DC2\SIperfetto.protos\"\131\SOH\n\
    \\SYNTaskNewtaskFtraceEvent\DC2\DLE\n\
    \\ETXpid\CAN\SOH \SOH(\ENQR\ETXpid\DC2\DC2\n\
    \\EOTcomm\CAN\STX \SOH(\tR\EOTcomm\DC2\US\n\
    \\vclone_flags\CAN\ETX \SOH(\EOTR\n\
    \cloneFlags\DC2\"\n\
    \\room_score_adj\CAN\EOT \SOH(\ENQR\voomScoreAdj\"\129\SOH\n\
    \\NAKTaskRenameFtraceEvent\DC2\DLE\n\
    \\ETXpid\CAN\SOH \SOH(\ENQR\ETXpid\DC2\CAN\n\
    \\aoldcomm\CAN\STX \SOH(\tR\aoldcomm\DC2\CAN\n\
    \\anewcomm\CAN\ETX \SOH(\tR\anewcomm\DC2\"\n\
    \\room_score_adj\CAN\EOT \SOH(\ENQR\voomScoreAdjJ\205\ENQ\n\
    \\ACK\DC2\EOT\EOT\NUL\DC2\SOH\n\
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
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b\RS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\b\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\b\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\b\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\b\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\b\ETB\CAN\n\
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
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\n\
    \\STX\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\n\
    \\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\n\
    \\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\n\
    \\DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\n\
    \ !\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\v\STX#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX\v\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\v\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\v\DC1\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\v!\"\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\r\NUL\DC2\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\r\b\GS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\SO\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\SO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\SO\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\SO\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\SO\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\SI\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX\SI\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\SI\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\SI\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\SI\FS\GS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX\DLE\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\EOT\DC2\ETX\DLE\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX\DLE\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX\DLE\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX\DLE\FS\GS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX\DC1\STX#\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\EOT\DC2\ETX\DC1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX\DC1\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX\DC1\DC1\RS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX\DC1!\""