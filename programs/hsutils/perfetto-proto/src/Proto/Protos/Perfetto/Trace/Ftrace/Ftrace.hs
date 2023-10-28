{- This file was auto-generated from protos/perfetto/trace/ftrace/ftrace.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Ftrace (
        FuncgraphEntryFtraceEvent(), FuncgraphExitFtraceEvent(),
        PrintFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ftrace_Fields.depth' @:: Lens' FuncgraphEntryFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ftrace_Fields.maybe'depth' @:: Lens' FuncgraphEntryFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ftrace_Fields.func' @:: Lens' FuncgraphEntryFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ftrace_Fields.maybe'func' @:: Lens' FuncgraphEntryFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data FuncgraphEntryFtraceEvent
  = FuncgraphEntryFtraceEvent'_constructor {_FuncgraphEntryFtraceEvent'depth :: !(Prelude.Maybe Data.Int.Int32),
                                            _FuncgraphEntryFtraceEvent'func :: !(Prelude.Maybe Data.Word.Word64),
                                            _FuncgraphEntryFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FuncgraphEntryFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FuncgraphEntryFtraceEvent "depth" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FuncgraphEntryFtraceEvent'depth
           (\ x__ y__ -> x__ {_FuncgraphEntryFtraceEvent'depth = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FuncgraphEntryFtraceEvent "maybe'depth" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FuncgraphEntryFtraceEvent'depth
           (\ x__ y__ -> x__ {_FuncgraphEntryFtraceEvent'depth = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FuncgraphEntryFtraceEvent "func" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FuncgraphEntryFtraceEvent'func
           (\ x__ y__ -> x__ {_FuncgraphEntryFtraceEvent'func = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FuncgraphEntryFtraceEvent "maybe'func" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FuncgraphEntryFtraceEvent'func
           (\ x__ y__ -> x__ {_FuncgraphEntryFtraceEvent'func = y__}))
        Prelude.id
instance Data.ProtoLens.Message FuncgraphEntryFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.FuncgraphEntryFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\EMFuncgraphEntryFtraceEvent\DC2\DC4\n\
      \\ENQdepth\CAN\SOH \SOH(\ENQR\ENQdepth\DC2\DC2\n\
      \\EOTfunc\CAN\STX \SOH(\EOTR\EOTfunc"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        depth__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "depth"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'depth")) ::
              Data.ProtoLens.FieldDescriptor FuncgraphEntryFtraceEvent
        func__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "func"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'func")) ::
              Data.ProtoLens.FieldDescriptor FuncgraphEntryFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, depth__field_descriptor),
           (Data.ProtoLens.Tag 2, func__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FuncgraphEntryFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_FuncgraphEntryFtraceEvent'_unknownFields = y__})
  defMessage
    = FuncgraphEntryFtraceEvent'_constructor
        {_FuncgraphEntryFtraceEvent'depth = Prelude.Nothing,
         _FuncgraphEntryFtraceEvent'func = Prelude.Nothing,
         _FuncgraphEntryFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FuncgraphEntryFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser FuncgraphEntryFtraceEvent
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
                                       "depth"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"depth") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "func"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"func") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "FuncgraphEntryFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'depth") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'func") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData FuncgraphEntryFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FuncgraphEntryFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FuncgraphEntryFtraceEvent'depth x__)
                (Control.DeepSeq.deepseq (_FuncgraphEntryFtraceEvent'func x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ftrace_Fields.calltime' @:: Lens' FuncgraphExitFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ftrace_Fields.maybe'calltime' @:: Lens' FuncgraphExitFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ftrace_Fields.depth' @:: Lens' FuncgraphExitFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ftrace_Fields.maybe'depth' @:: Lens' FuncgraphExitFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ftrace_Fields.func' @:: Lens' FuncgraphExitFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ftrace_Fields.maybe'func' @:: Lens' FuncgraphExitFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ftrace_Fields.overrun' @:: Lens' FuncgraphExitFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ftrace_Fields.maybe'overrun' @:: Lens' FuncgraphExitFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ftrace_Fields.rettime' @:: Lens' FuncgraphExitFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ftrace_Fields.maybe'rettime' @:: Lens' FuncgraphExitFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data FuncgraphExitFtraceEvent
  = FuncgraphExitFtraceEvent'_constructor {_FuncgraphExitFtraceEvent'calltime :: !(Prelude.Maybe Data.Word.Word64),
                                           _FuncgraphExitFtraceEvent'depth :: !(Prelude.Maybe Data.Int.Int32),
                                           _FuncgraphExitFtraceEvent'func :: !(Prelude.Maybe Data.Word.Word64),
                                           _FuncgraphExitFtraceEvent'overrun :: !(Prelude.Maybe Data.Word.Word64),
                                           _FuncgraphExitFtraceEvent'rettime :: !(Prelude.Maybe Data.Word.Word64),
                                           _FuncgraphExitFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FuncgraphExitFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FuncgraphExitFtraceEvent "calltime" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FuncgraphExitFtraceEvent'calltime
           (\ x__ y__ -> x__ {_FuncgraphExitFtraceEvent'calltime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FuncgraphExitFtraceEvent "maybe'calltime" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FuncgraphExitFtraceEvent'calltime
           (\ x__ y__ -> x__ {_FuncgraphExitFtraceEvent'calltime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FuncgraphExitFtraceEvent "depth" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FuncgraphExitFtraceEvent'depth
           (\ x__ y__ -> x__ {_FuncgraphExitFtraceEvent'depth = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FuncgraphExitFtraceEvent "maybe'depth" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FuncgraphExitFtraceEvent'depth
           (\ x__ y__ -> x__ {_FuncgraphExitFtraceEvent'depth = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FuncgraphExitFtraceEvent "func" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FuncgraphExitFtraceEvent'func
           (\ x__ y__ -> x__ {_FuncgraphExitFtraceEvent'func = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FuncgraphExitFtraceEvent "maybe'func" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FuncgraphExitFtraceEvent'func
           (\ x__ y__ -> x__ {_FuncgraphExitFtraceEvent'func = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FuncgraphExitFtraceEvent "overrun" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FuncgraphExitFtraceEvent'overrun
           (\ x__ y__ -> x__ {_FuncgraphExitFtraceEvent'overrun = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FuncgraphExitFtraceEvent "maybe'overrun" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FuncgraphExitFtraceEvent'overrun
           (\ x__ y__ -> x__ {_FuncgraphExitFtraceEvent'overrun = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FuncgraphExitFtraceEvent "rettime" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FuncgraphExitFtraceEvent'rettime
           (\ x__ y__ -> x__ {_FuncgraphExitFtraceEvent'rettime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FuncgraphExitFtraceEvent "maybe'rettime" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FuncgraphExitFtraceEvent'rettime
           (\ x__ y__ -> x__ {_FuncgraphExitFtraceEvent'rettime = y__}))
        Prelude.id
instance Data.ProtoLens.Message FuncgraphExitFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.FuncgraphExitFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\CANFuncgraphExitFtraceEvent\DC2\SUB\n\
      \\bcalltime\CAN\SOH \SOH(\EOTR\bcalltime\DC2\DC4\n\
      \\ENQdepth\CAN\STX \SOH(\ENQR\ENQdepth\DC2\DC2\n\
      \\EOTfunc\CAN\ETX \SOH(\EOTR\EOTfunc\DC2\CAN\n\
      \\aoverrun\CAN\EOT \SOH(\EOTR\aoverrun\DC2\CAN\n\
      \\arettime\CAN\ENQ \SOH(\EOTR\arettime"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        calltime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "calltime"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'calltime")) ::
              Data.ProtoLens.FieldDescriptor FuncgraphExitFtraceEvent
        depth__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "depth"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'depth")) ::
              Data.ProtoLens.FieldDescriptor FuncgraphExitFtraceEvent
        func__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "func"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'func")) ::
              Data.ProtoLens.FieldDescriptor FuncgraphExitFtraceEvent
        overrun__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "overrun"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'overrun")) ::
              Data.ProtoLens.FieldDescriptor FuncgraphExitFtraceEvent
        rettime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rettime"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rettime")) ::
              Data.ProtoLens.FieldDescriptor FuncgraphExitFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, calltime__field_descriptor),
           (Data.ProtoLens.Tag 2, depth__field_descriptor),
           (Data.ProtoLens.Tag 3, func__field_descriptor),
           (Data.ProtoLens.Tag 4, overrun__field_descriptor),
           (Data.ProtoLens.Tag 5, rettime__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FuncgraphExitFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_FuncgraphExitFtraceEvent'_unknownFields = y__})
  defMessage
    = FuncgraphExitFtraceEvent'_constructor
        {_FuncgraphExitFtraceEvent'calltime = Prelude.Nothing,
         _FuncgraphExitFtraceEvent'depth = Prelude.Nothing,
         _FuncgraphExitFtraceEvent'func = Prelude.Nothing,
         _FuncgraphExitFtraceEvent'overrun = Prelude.Nothing,
         _FuncgraphExitFtraceEvent'rettime = Prelude.Nothing,
         _FuncgraphExitFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FuncgraphExitFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser FuncgraphExitFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "calltime"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"calltime") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "depth"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"depth") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "func"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"func") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "overrun"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"overrun") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "rettime"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"rettime") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "FuncgraphExitFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'calltime") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'depth") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'func") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'overrun") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'rettime") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData FuncgraphExitFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FuncgraphExitFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FuncgraphExitFtraceEvent'calltime x__)
                (Control.DeepSeq.deepseq
                   (_FuncgraphExitFtraceEvent'depth x__)
                   (Control.DeepSeq.deepseq
                      (_FuncgraphExitFtraceEvent'func x__)
                      (Control.DeepSeq.deepseq
                         (_FuncgraphExitFtraceEvent'overrun x__)
                         (Control.DeepSeq.deepseq
                            (_FuncgraphExitFtraceEvent'rettime x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ftrace_Fields.ip' @:: Lens' PrintFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ftrace_Fields.maybe'ip' @:: Lens' PrintFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ftrace_Fields.buf' @:: Lens' PrintFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ftrace_Fields.maybe'buf' @:: Lens' PrintFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data PrintFtraceEvent
  = PrintFtraceEvent'_constructor {_PrintFtraceEvent'ip :: !(Prelude.Maybe Data.Word.Word64),
                                   _PrintFtraceEvent'buf :: !(Prelude.Maybe Data.Text.Text),
                                   _PrintFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PrintFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PrintFtraceEvent "ip" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PrintFtraceEvent'ip
           (\ x__ y__ -> x__ {_PrintFtraceEvent'ip = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField PrintFtraceEvent "maybe'ip" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PrintFtraceEvent'ip
           (\ x__ y__ -> x__ {_PrintFtraceEvent'ip = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PrintFtraceEvent "buf" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PrintFtraceEvent'buf
           (\ x__ y__ -> x__ {_PrintFtraceEvent'buf = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField PrintFtraceEvent "maybe'buf" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PrintFtraceEvent'buf
           (\ x__ y__ -> x__ {_PrintFtraceEvent'buf = y__}))
        Prelude.id
instance Data.ProtoLens.Message PrintFtraceEvent where
  messageName _ = Data.Text.pack "perfetto.protos.PrintFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\DLEPrintFtraceEvent\DC2\SO\n\
      \\STXip\CAN\SOH \SOH(\EOTR\STXip\DC2\DLE\n\
      \\ETXbuf\CAN\STX \SOH(\tR\ETXbuf"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        ip__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ip"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ip")) ::
              Data.ProtoLens.FieldDescriptor PrintFtraceEvent
        buf__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "buf"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'buf")) ::
              Data.ProtoLens.FieldDescriptor PrintFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, ip__field_descriptor),
           (Data.ProtoLens.Tag 2, buf__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PrintFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_PrintFtraceEvent'_unknownFields = y__})
  defMessage
    = PrintFtraceEvent'_constructor
        {_PrintFtraceEvent'ip = Prelude.Nothing,
         _PrintFtraceEvent'buf = Prelude.Nothing,
         _PrintFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PrintFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser PrintFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ip"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ip") y x)
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
                                       "buf"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"buf") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "PrintFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ip") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'buf") _x
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
instance Control.DeepSeq.NFData PrintFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PrintFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_PrintFtraceEvent'ip x__)
                (Control.DeepSeq.deepseq (_PrintFtraceEvent'buf x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \)protos/perfetto/trace/ftrace/ftrace.proto\DC2\SIperfetto.protos\"4\n\
    \\DLEPrintFtraceEvent\DC2\SO\n\
    \\STXip\CAN\SOH \SOH(\EOTR\STXip\DC2\DLE\n\
    \\ETXbuf\CAN\STX \SOH(\tR\ETXbuf\"E\n\
    \\EMFuncgraphEntryFtraceEvent\DC2\DC4\n\
    \\ENQdepth\CAN\SOH \SOH(\ENQR\ENQdepth\DC2\DC2\n\
    \\EOTfunc\CAN\STX \SOH(\EOTR\EOTfunc\"\148\SOH\n\
    \\CANFuncgraphExitFtraceEvent\DC2\SUB\n\
    \\bcalltime\CAN\SOH \SOH(\EOTR\bcalltime\DC2\DC4\n\
    \\ENQdepth\CAN\STX \SOH(\ENQR\ENQdepth\DC2\DC2\n\
    \\EOTfunc\CAN\ETX \SOH(\EOTR\EOTfunc\DC2\CAN\n\
    \\aoverrun\CAN\EOT \SOH(\EOTR\aoverrun\DC2\CAN\n\
    \\arettime\CAN\ENQ \SOH(\EOTR\arettimeJ\170\ACK\n\
    \\ACK\DC2\EOT\EOT\NUL\NAK\SOH\n\
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
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b\CAN\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\b\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\b\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\b\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\b\DC2\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\b\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\t\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\t\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\t\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\t\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\t\CAN\EM\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\v\NUL\SO\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\v\b!\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\f\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\f\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\f\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\f\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\f\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\r\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX\r\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\r\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\r\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\r\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT\SI\NUL\NAK\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\SI\b \n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\DLE\STX\US\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETX\DLE\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX\DLE\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\DLE\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\DLE\GS\RS\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX\DC1\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETX\DC1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX\DC1\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX\DC1\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX\DC1\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX\DC2\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\EOT\DC2\ETX\DC2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETX\DC2\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX\DC2\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX\DC2\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETX\DC3\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\EOT\DC2\ETX\DC3\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ENQ\DC2\ETX\DC3\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETX\DC3\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETX\DC3\FS\GS\n\
    \\v\n\
    \\EOT\EOT\STX\STX\EOT\DC2\ETX\DC4\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\EOT\DC2\ETX\DC4\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ENQ\DC2\ETX\DC4\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\ETX\DC4\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\ETX\DC4\FS\GS"