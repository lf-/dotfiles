{- This file was auto-generated from protos/perfetto/trace/ftrace/workqueue.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Workqueue (
        WorkqueueActivateWorkFtraceEvent(),
        WorkqueueExecuteEndFtraceEvent(),
        WorkqueueExecuteStartFtraceEvent(), WorkqueueQueueWorkFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Workqueue_Fields.work' @:: Lens' WorkqueueActivateWorkFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Workqueue_Fields.maybe'work' @:: Lens' WorkqueueActivateWorkFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data WorkqueueActivateWorkFtraceEvent
  = WorkqueueActivateWorkFtraceEvent'_constructor {_WorkqueueActivateWorkFtraceEvent'work :: !(Prelude.Maybe Data.Word.Word64),
                                                   _WorkqueueActivateWorkFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WorkqueueActivateWorkFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField WorkqueueActivateWorkFtraceEvent "work" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkqueueActivateWorkFtraceEvent'work
           (\ x__ y__ -> x__ {_WorkqueueActivateWorkFtraceEvent'work = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField WorkqueueActivateWorkFtraceEvent "maybe'work" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkqueueActivateWorkFtraceEvent'work
           (\ x__ y__ -> x__ {_WorkqueueActivateWorkFtraceEvent'work = y__}))
        Prelude.id
instance Data.ProtoLens.Message WorkqueueActivateWorkFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.WorkqueueActivateWorkFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \ WorkqueueActivateWorkFtraceEvent\DC2\DC2\n\
      \\EOTwork\CAN\SOH \SOH(\EOTR\EOTwork"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        work__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "work"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'work")) ::
              Data.ProtoLens.FieldDescriptor WorkqueueActivateWorkFtraceEvent
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, work__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WorkqueueActivateWorkFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_WorkqueueActivateWorkFtraceEvent'_unknownFields = y__})
  defMessage
    = WorkqueueActivateWorkFtraceEvent'_constructor
        {_WorkqueueActivateWorkFtraceEvent'work = Prelude.Nothing,
         _WorkqueueActivateWorkFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WorkqueueActivateWorkFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser WorkqueueActivateWorkFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "work"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"work") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "WorkqueueActivateWorkFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'work") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData WorkqueueActivateWorkFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WorkqueueActivateWorkFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_WorkqueueActivateWorkFtraceEvent'work x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Workqueue_Fields.work' @:: Lens' WorkqueueExecuteEndFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Workqueue_Fields.maybe'work' @:: Lens' WorkqueueExecuteEndFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Workqueue_Fields.function' @:: Lens' WorkqueueExecuteEndFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Workqueue_Fields.maybe'function' @:: Lens' WorkqueueExecuteEndFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data WorkqueueExecuteEndFtraceEvent
  = WorkqueueExecuteEndFtraceEvent'_constructor {_WorkqueueExecuteEndFtraceEvent'work :: !(Prelude.Maybe Data.Word.Word64),
                                                 _WorkqueueExecuteEndFtraceEvent'function :: !(Prelude.Maybe Data.Word.Word64),
                                                 _WorkqueueExecuteEndFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WorkqueueExecuteEndFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField WorkqueueExecuteEndFtraceEvent "work" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkqueueExecuteEndFtraceEvent'work
           (\ x__ y__ -> x__ {_WorkqueueExecuteEndFtraceEvent'work = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField WorkqueueExecuteEndFtraceEvent "maybe'work" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkqueueExecuteEndFtraceEvent'work
           (\ x__ y__ -> x__ {_WorkqueueExecuteEndFtraceEvent'work = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkqueueExecuteEndFtraceEvent "function" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkqueueExecuteEndFtraceEvent'function
           (\ x__ y__
              -> x__ {_WorkqueueExecuteEndFtraceEvent'function = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField WorkqueueExecuteEndFtraceEvent "maybe'function" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkqueueExecuteEndFtraceEvent'function
           (\ x__ y__
              -> x__ {_WorkqueueExecuteEndFtraceEvent'function = y__}))
        Prelude.id
instance Data.ProtoLens.Message WorkqueueExecuteEndFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.WorkqueueExecuteEndFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\RSWorkqueueExecuteEndFtraceEvent\DC2\DC2\n\
      \\EOTwork\CAN\SOH \SOH(\EOTR\EOTwork\DC2\SUB\n\
      \\bfunction\CAN\STX \SOH(\EOTR\bfunction"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        work__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "work"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'work")) ::
              Data.ProtoLens.FieldDescriptor WorkqueueExecuteEndFtraceEvent
        function__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "function"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'function")) ::
              Data.ProtoLens.FieldDescriptor WorkqueueExecuteEndFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, work__field_descriptor),
           (Data.ProtoLens.Tag 2, function__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WorkqueueExecuteEndFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_WorkqueueExecuteEndFtraceEvent'_unknownFields = y__})
  defMessage
    = WorkqueueExecuteEndFtraceEvent'_constructor
        {_WorkqueueExecuteEndFtraceEvent'work = Prelude.Nothing,
         _WorkqueueExecuteEndFtraceEvent'function = Prelude.Nothing,
         _WorkqueueExecuteEndFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WorkqueueExecuteEndFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser WorkqueueExecuteEndFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "work"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"work") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "function"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"function") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "WorkqueueExecuteEndFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'work") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'function") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData WorkqueueExecuteEndFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WorkqueueExecuteEndFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_WorkqueueExecuteEndFtraceEvent'work x__)
                (Control.DeepSeq.deepseq
                   (_WorkqueueExecuteEndFtraceEvent'function x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Workqueue_Fields.work' @:: Lens' WorkqueueExecuteStartFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Workqueue_Fields.maybe'work' @:: Lens' WorkqueueExecuteStartFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Workqueue_Fields.function' @:: Lens' WorkqueueExecuteStartFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Workqueue_Fields.maybe'function' @:: Lens' WorkqueueExecuteStartFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data WorkqueueExecuteStartFtraceEvent
  = WorkqueueExecuteStartFtraceEvent'_constructor {_WorkqueueExecuteStartFtraceEvent'work :: !(Prelude.Maybe Data.Word.Word64),
                                                   _WorkqueueExecuteStartFtraceEvent'function :: !(Prelude.Maybe Data.Word.Word64),
                                                   _WorkqueueExecuteStartFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WorkqueueExecuteStartFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField WorkqueueExecuteStartFtraceEvent "work" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkqueueExecuteStartFtraceEvent'work
           (\ x__ y__ -> x__ {_WorkqueueExecuteStartFtraceEvent'work = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField WorkqueueExecuteStartFtraceEvent "maybe'work" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkqueueExecuteStartFtraceEvent'work
           (\ x__ y__ -> x__ {_WorkqueueExecuteStartFtraceEvent'work = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkqueueExecuteStartFtraceEvent "function" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkqueueExecuteStartFtraceEvent'function
           (\ x__ y__
              -> x__ {_WorkqueueExecuteStartFtraceEvent'function = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField WorkqueueExecuteStartFtraceEvent "maybe'function" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkqueueExecuteStartFtraceEvent'function
           (\ x__ y__
              -> x__ {_WorkqueueExecuteStartFtraceEvent'function = y__}))
        Prelude.id
instance Data.ProtoLens.Message WorkqueueExecuteStartFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.WorkqueueExecuteStartFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \ WorkqueueExecuteStartFtraceEvent\DC2\DC2\n\
      \\EOTwork\CAN\SOH \SOH(\EOTR\EOTwork\DC2\SUB\n\
      \\bfunction\CAN\STX \SOH(\EOTR\bfunction"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        work__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "work"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'work")) ::
              Data.ProtoLens.FieldDescriptor WorkqueueExecuteStartFtraceEvent
        function__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "function"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'function")) ::
              Data.ProtoLens.FieldDescriptor WorkqueueExecuteStartFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, work__field_descriptor),
           (Data.ProtoLens.Tag 2, function__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WorkqueueExecuteStartFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_WorkqueueExecuteStartFtraceEvent'_unknownFields = y__})
  defMessage
    = WorkqueueExecuteStartFtraceEvent'_constructor
        {_WorkqueueExecuteStartFtraceEvent'work = Prelude.Nothing,
         _WorkqueueExecuteStartFtraceEvent'function = Prelude.Nothing,
         _WorkqueueExecuteStartFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WorkqueueExecuteStartFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser WorkqueueExecuteStartFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "work"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"work") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "function"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"function") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "WorkqueueExecuteStartFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'work") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'function") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData WorkqueueExecuteStartFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WorkqueueExecuteStartFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_WorkqueueExecuteStartFtraceEvent'work x__)
                (Control.DeepSeq.deepseq
                   (_WorkqueueExecuteStartFtraceEvent'function x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Workqueue_Fields.work' @:: Lens' WorkqueueQueueWorkFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Workqueue_Fields.maybe'work' @:: Lens' WorkqueueQueueWorkFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Workqueue_Fields.function' @:: Lens' WorkqueueQueueWorkFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Workqueue_Fields.maybe'function' @:: Lens' WorkqueueQueueWorkFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Workqueue_Fields.workqueue' @:: Lens' WorkqueueQueueWorkFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Workqueue_Fields.maybe'workqueue' @:: Lens' WorkqueueQueueWorkFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Workqueue_Fields.reqCpu' @:: Lens' WorkqueueQueueWorkFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Workqueue_Fields.maybe'reqCpu' @:: Lens' WorkqueueQueueWorkFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Workqueue_Fields.cpu' @:: Lens' WorkqueueQueueWorkFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Workqueue_Fields.maybe'cpu' @:: Lens' WorkqueueQueueWorkFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data WorkqueueQueueWorkFtraceEvent
  = WorkqueueQueueWorkFtraceEvent'_constructor {_WorkqueueQueueWorkFtraceEvent'work :: !(Prelude.Maybe Data.Word.Word64),
                                                _WorkqueueQueueWorkFtraceEvent'function :: !(Prelude.Maybe Data.Word.Word64),
                                                _WorkqueueQueueWorkFtraceEvent'workqueue :: !(Prelude.Maybe Data.Word.Word64),
                                                _WorkqueueQueueWorkFtraceEvent'reqCpu :: !(Prelude.Maybe Data.Word.Word32),
                                                _WorkqueueQueueWorkFtraceEvent'cpu :: !(Prelude.Maybe Data.Word.Word32),
                                                _WorkqueueQueueWorkFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WorkqueueQueueWorkFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField WorkqueueQueueWorkFtraceEvent "work" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkqueueQueueWorkFtraceEvent'work
           (\ x__ y__ -> x__ {_WorkqueueQueueWorkFtraceEvent'work = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField WorkqueueQueueWorkFtraceEvent "maybe'work" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkqueueQueueWorkFtraceEvent'work
           (\ x__ y__ -> x__ {_WorkqueueQueueWorkFtraceEvent'work = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkqueueQueueWorkFtraceEvent "function" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkqueueQueueWorkFtraceEvent'function
           (\ x__ y__ -> x__ {_WorkqueueQueueWorkFtraceEvent'function = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField WorkqueueQueueWorkFtraceEvent "maybe'function" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkqueueQueueWorkFtraceEvent'function
           (\ x__ y__ -> x__ {_WorkqueueQueueWorkFtraceEvent'function = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkqueueQueueWorkFtraceEvent "workqueue" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkqueueQueueWorkFtraceEvent'workqueue
           (\ x__ y__
              -> x__ {_WorkqueueQueueWorkFtraceEvent'workqueue = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField WorkqueueQueueWorkFtraceEvent "maybe'workqueue" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkqueueQueueWorkFtraceEvent'workqueue
           (\ x__ y__
              -> x__ {_WorkqueueQueueWorkFtraceEvent'workqueue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkqueueQueueWorkFtraceEvent "reqCpu" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkqueueQueueWorkFtraceEvent'reqCpu
           (\ x__ y__ -> x__ {_WorkqueueQueueWorkFtraceEvent'reqCpu = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField WorkqueueQueueWorkFtraceEvent "maybe'reqCpu" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkqueueQueueWorkFtraceEvent'reqCpu
           (\ x__ y__ -> x__ {_WorkqueueQueueWorkFtraceEvent'reqCpu = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WorkqueueQueueWorkFtraceEvent "cpu" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkqueueQueueWorkFtraceEvent'cpu
           (\ x__ y__ -> x__ {_WorkqueueQueueWorkFtraceEvent'cpu = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField WorkqueueQueueWorkFtraceEvent "maybe'cpu" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WorkqueueQueueWorkFtraceEvent'cpu
           (\ x__ y__ -> x__ {_WorkqueueQueueWorkFtraceEvent'cpu = y__}))
        Prelude.id
instance Data.ProtoLens.Message WorkqueueQueueWorkFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.WorkqueueQueueWorkFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\GSWorkqueueQueueWorkFtraceEvent\DC2\DC2\n\
      \\EOTwork\CAN\SOH \SOH(\EOTR\EOTwork\DC2\SUB\n\
      \\bfunction\CAN\STX \SOH(\EOTR\bfunction\DC2\FS\n\
      \\tworkqueue\CAN\ETX \SOH(\EOTR\tworkqueue\DC2\ETB\n\
      \\areq_cpu\CAN\EOT \SOH(\rR\ACKreqCpu\DC2\DLE\n\
      \\ETXcpu\CAN\ENQ \SOH(\rR\ETXcpu"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        work__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "work"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'work")) ::
              Data.ProtoLens.FieldDescriptor WorkqueueQueueWorkFtraceEvent
        function__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "function"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'function")) ::
              Data.ProtoLens.FieldDescriptor WorkqueueQueueWorkFtraceEvent
        workqueue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "workqueue"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'workqueue")) ::
              Data.ProtoLens.FieldDescriptor WorkqueueQueueWorkFtraceEvent
        reqCpu__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "req_cpu"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'reqCpu")) ::
              Data.ProtoLens.FieldDescriptor WorkqueueQueueWorkFtraceEvent
        cpu__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cpu"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cpu")) ::
              Data.ProtoLens.FieldDescriptor WorkqueueQueueWorkFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, work__field_descriptor),
           (Data.ProtoLens.Tag 2, function__field_descriptor),
           (Data.ProtoLens.Tag 3, workqueue__field_descriptor),
           (Data.ProtoLens.Tag 4, reqCpu__field_descriptor),
           (Data.ProtoLens.Tag 5, cpu__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WorkqueueQueueWorkFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_WorkqueueQueueWorkFtraceEvent'_unknownFields = y__})
  defMessage
    = WorkqueueQueueWorkFtraceEvent'_constructor
        {_WorkqueueQueueWorkFtraceEvent'work = Prelude.Nothing,
         _WorkqueueQueueWorkFtraceEvent'function = Prelude.Nothing,
         _WorkqueueQueueWorkFtraceEvent'workqueue = Prelude.Nothing,
         _WorkqueueQueueWorkFtraceEvent'reqCpu = Prelude.Nothing,
         _WorkqueueQueueWorkFtraceEvent'cpu = Prelude.Nothing,
         _WorkqueueQueueWorkFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WorkqueueQueueWorkFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser WorkqueueQueueWorkFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "work"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"work") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "function"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"function") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "workqueue"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"workqueue") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "req_cpu"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"reqCpu") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "cpu"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cpu") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "WorkqueueQueueWorkFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'work") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'function") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'workqueue") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'reqCpu") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cpu") _x
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
instance Control.DeepSeq.NFData WorkqueueQueueWorkFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WorkqueueQueueWorkFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_WorkqueueQueueWorkFtraceEvent'work x__)
                (Control.DeepSeq.deepseq
                   (_WorkqueueQueueWorkFtraceEvent'function x__)
                   (Control.DeepSeq.deepseq
                      (_WorkqueueQueueWorkFtraceEvent'workqueue x__)
                      (Control.DeepSeq.deepseq
                         (_WorkqueueQueueWorkFtraceEvent'reqCpu x__)
                         (Control.DeepSeq.deepseq
                            (_WorkqueueQueueWorkFtraceEvent'cpu x__) ())))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \,protos/perfetto/trace/ftrace/workqueue.proto\DC2\SIperfetto.protos\"6\n\
    \ WorkqueueActivateWorkFtraceEvent\DC2\DC2\n\
    \\EOTwork\CAN\SOH \SOH(\EOTR\EOTwork\"P\n\
    \\RSWorkqueueExecuteEndFtraceEvent\DC2\DC2\n\
    \\EOTwork\CAN\SOH \SOH(\EOTR\EOTwork\DC2\SUB\n\
    \\bfunction\CAN\STX \SOH(\EOTR\bfunction\"R\n\
    \ WorkqueueExecuteStartFtraceEvent\DC2\DC2\n\
    \\EOTwork\CAN\SOH \SOH(\EOTR\EOTwork\DC2\SUB\n\
    \\bfunction\CAN\STX \SOH(\EOTR\bfunction\"\152\SOH\n\
    \\GSWorkqueueQueueWorkFtraceEvent\DC2\DC2\n\
    \\EOTwork\CAN\SOH \SOH(\EOTR\EOTwork\DC2\SUB\n\
    \\bfunction\CAN\STX \SOH(\EOTR\bfunction\DC2\FS\n\
    \\tworkqueue\CAN\ETX \SOH(\EOTR\tworkqueue\DC2\ETB\n\
    \\areq_cpu\CAN\EOT \SOH(\rR\ACKreqCpu\DC2\DLE\n\
    \\ETXcpu\CAN\ENQ \SOH(\rR\ETXcpuJ\135\a\n\
    \\ACK\DC2\EOT\EOT\NUL\CAN\SOH\n\
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
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b(\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\b\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\b\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\b\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\b\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\b\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\n\
    \\NUL\r\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\n\
    \\b&\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\v\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\v\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\v\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\v\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\v\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\f\STX\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX\f\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\f\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\f\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\f\GS\RS\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT\SO\NUL\DC1\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\SO\b(\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\SI\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETX\SI\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX\SI\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\SI\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\SI\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX\DLE\STX\US\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETX\DLE\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX\DLE\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX\DLE\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX\DLE\GS\RS\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOT\DC2\NUL\CAN\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX\DC2\b%\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX\DC3\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETX\DC3\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX\DC3\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX\DC3\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX\DC3\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX\DC4\STX\US\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\EOT\DC2\ETX\DC4\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETX\DC4\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX\DC4\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX\DC4\GS\RS\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETX\NAK\STX \n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\EOT\DC2\ETX\NAK\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\ETX\NAK\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETX\NAK\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETX\NAK\RS\US\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\ETX\SYN\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\EOT\DC2\ETX\SYN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ENQ\DC2\ETX\SYN\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\ETX\SYN\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\ETX\SYN\FS\GS\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\EOT\DC2\ETX\ETB\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\EOT\DC2\ETX\ETB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ENQ\DC2\ETX\ETB\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\SOH\DC2\ETX\ETB\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ETX\DC2\ETX\ETB\CAN\EM"