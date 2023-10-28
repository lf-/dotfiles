{- This file was auto-generated from protos/perfetto/trace/ftrace/compaction.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Compaction (
        MmCompactionBeginFtraceEvent(),
        MmCompactionDeferCompactionFtraceEvent(),
        MmCompactionDeferResetFtraceEvent(),
        MmCompactionDeferredFtraceEvent(), MmCompactionEndFtraceEvent(),
        MmCompactionFinishedFtraceEvent(),
        MmCompactionIsolateFreepagesFtraceEvent(),
        MmCompactionIsolateMigratepagesFtraceEvent(),
        MmCompactionKcompactdSleepFtraceEvent(),
        MmCompactionKcompactdWakeFtraceEvent(),
        MmCompactionMigratepagesFtraceEvent(),
        MmCompactionSuitableFtraceEvent(),
        MmCompactionTryToCompactPagesFtraceEvent(),
        MmCompactionWakeupKcompactdFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.zoneStart' @:: Lens' MmCompactionBeginFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'zoneStart' @:: Lens' MmCompactionBeginFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.migratePfn' @:: Lens' MmCompactionBeginFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'migratePfn' @:: Lens' MmCompactionBeginFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.freePfn' @:: Lens' MmCompactionBeginFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'freePfn' @:: Lens' MmCompactionBeginFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.zoneEnd' @:: Lens' MmCompactionBeginFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'zoneEnd' @:: Lens' MmCompactionBeginFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.sync' @:: Lens' MmCompactionBeginFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'sync' @:: Lens' MmCompactionBeginFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data MmCompactionBeginFtraceEvent
  = MmCompactionBeginFtraceEvent'_constructor {_MmCompactionBeginFtraceEvent'zoneStart :: !(Prelude.Maybe Data.Word.Word64),
                                               _MmCompactionBeginFtraceEvent'migratePfn :: !(Prelude.Maybe Data.Word.Word64),
                                               _MmCompactionBeginFtraceEvent'freePfn :: !(Prelude.Maybe Data.Word.Word64),
                                               _MmCompactionBeginFtraceEvent'zoneEnd :: !(Prelude.Maybe Data.Word.Word64),
                                               _MmCompactionBeginFtraceEvent'sync :: !(Prelude.Maybe Data.Word.Word32),
                                               _MmCompactionBeginFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MmCompactionBeginFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MmCompactionBeginFtraceEvent "zoneStart" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionBeginFtraceEvent'zoneStart
           (\ x__ y__ -> x__ {_MmCompactionBeginFtraceEvent'zoneStart = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionBeginFtraceEvent "maybe'zoneStart" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionBeginFtraceEvent'zoneStart
           (\ x__ y__ -> x__ {_MmCompactionBeginFtraceEvent'zoneStart = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionBeginFtraceEvent "migratePfn" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionBeginFtraceEvent'migratePfn
           (\ x__ y__
              -> x__ {_MmCompactionBeginFtraceEvent'migratePfn = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionBeginFtraceEvent "maybe'migratePfn" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionBeginFtraceEvent'migratePfn
           (\ x__ y__
              -> x__ {_MmCompactionBeginFtraceEvent'migratePfn = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionBeginFtraceEvent "freePfn" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionBeginFtraceEvent'freePfn
           (\ x__ y__ -> x__ {_MmCompactionBeginFtraceEvent'freePfn = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionBeginFtraceEvent "maybe'freePfn" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionBeginFtraceEvent'freePfn
           (\ x__ y__ -> x__ {_MmCompactionBeginFtraceEvent'freePfn = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionBeginFtraceEvent "zoneEnd" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionBeginFtraceEvent'zoneEnd
           (\ x__ y__ -> x__ {_MmCompactionBeginFtraceEvent'zoneEnd = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionBeginFtraceEvent "maybe'zoneEnd" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionBeginFtraceEvent'zoneEnd
           (\ x__ y__ -> x__ {_MmCompactionBeginFtraceEvent'zoneEnd = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionBeginFtraceEvent "sync" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionBeginFtraceEvent'sync
           (\ x__ y__ -> x__ {_MmCompactionBeginFtraceEvent'sync = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionBeginFtraceEvent "maybe'sync" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionBeginFtraceEvent'sync
           (\ x__ y__ -> x__ {_MmCompactionBeginFtraceEvent'sync = y__}))
        Prelude.id
instance Data.ProtoLens.Message MmCompactionBeginFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.MmCompactionBeginFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\FSMmCompactionBeginFtraceEvent\DC2\GS\n\
      \\n\
      \zone_start\CAN\SOH \SOH(\EOTR\tzoneStart\DC2\US\n\
      \\vmigrate_pfn\CAN\STX \SOH(\EOTR\n\
      \migratePfn\DC2\EM\n\
      \\bfree_pfn\CAN\ETX \SOH(\EOTR\afreePfn\DC2\EM\n\
      \\bzone_end\CAN\EOT \SOH(\EOTR\azoneEnd\DC2\DC2\n\
      \\EOTsync\CAN\ENQ \SOH(\rR\EOTsync"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        zoneStart__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "zone_start"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'zoneStart")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionBeginFtraceEvent
        migratePfn__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "migrate_pfn"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'migratePfn")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionBeginFtraceEvent
        freePfn__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "free_pfn"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'freePfn")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionBeginFtraceEvent
        zoneEnd__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "zone_end"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'zoneEnd")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionBeginFtraceEvent
        sync__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sync"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sync")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionBeginFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, zoneStart__field_descriptor),
           (Data.ProtoLens.Tag 2, migratePfn__field_descriptor),
           (Data.ProtoLens.Tag 3, freePfn__field_descriptor),
           (Data.ProtoLens.Tag 4, zoneEnd__field_descriptor),
           (Data.ProtoLens.Tag 5, sync__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MmCompactionBeginFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_MmCompactionBeginFtraceEvent'_unknownFields = y__})
  defMessage
    = MmCompactionBeginFtraceEvent'_constructor
        {_MmCompactionBeginFtraceEvent'zoneStart = Prelude.Nothing,
         _MmCompactionBeginFtraceEvent'migratePfn = Prelude.Nothing,
         _MmCompactionBeginFtraceEvent'freePfn = Prelude.Nothing,
         _MmCompactionBeginFtraceEvent'zoneEnd = Prelude.Nothing,
         _MmCompactionBeginFtraceEvent'sync = Prelude.Nothing,
         _MmCompactionBeginFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MmCompactionBeginFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MmCompactionBeginFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "zone_start"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"zoneStart") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "migrate_pfn"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"migratePfn") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "free_pfn"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"freePfn") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "zone_end"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"zoneEnd") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "sync"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"sync") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MmCompactionBeginFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'zoneStart") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'migratePfn") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'freePfn") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'zoneEnd") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'sync") _x
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
instance Control.DeepSeq.NFData MmCompactionBeginFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MmCompactionBeginFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MmCompactionBeginFtraceEvent'zoneStart x__)
                (Control.DeepSeq.deepseq
                   (_MmCompactionBeginFtraceEvent'migratePfn x__)
                   (Control.DeepSeq.deepseq
                      (_MmCompactionBeginFtraceEvent'freePfn x__)
                      (Control.DeepSeq.deepseq
                         (_MmCompactionBeginFtraceEvent'zoneEnd x__)
                         (Control.DeepSeq.deepseq
                            (_MmCompactionBeginFtraceEvent'sync x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.nid' @:: Lens' MmCompactionDeferCompactionFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'nid' @:: Lens' MmCompactionDeferCompactionFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.idx' @:: Lens' MmCompactionDeferCompactionFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'idx' @:: Lens' MmCompactionDeferCompactionFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.order' @:: Lens' MmCompactionDeferCompactionFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'order' @:: Lens' MmCompactionDeferCompactionFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.considered' @:: Lens' MmCompactionDeferCompactionFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'considered' @:: Lens' MmCompactionDeferCompactionFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.deferShift' @:: Lens' MmCompactionDeferCompactionFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'deferShift' @:: Lens' MmCompactionDeferCompactionFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.orderFailed' @:: Lens' MmCompactionDeferCompactionFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'orderFailed' @:: Lens' MmCompactionDeferCompactionFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data MmCompactionDeferCompactionFtraceEvent
  = MmCompactionDeferCompactionFtraceEvent'_constructor {_MmCompactionDeferCompactionFtraceEvent'nid :: !(Prelude.Maybe Data.Int.Int32),
                                                         _MmCompactionDeferCompactionFtraceEvent'idx :: !(Prelude.Maybe Data.Word.Word32),
                                                         _MmCompactionDeferCompactionFtraceEvent'order :: !(Prelude.Maybe Data.Int.Int32),
                                                         _MmCompactionDeferCompactionFtraceEvent'considered :: !(Prelude.Maybe Data.Word.Word32),
                                                         _MmCompactionDeferCompactionFtraceEvent'deferShift :: !(Prelude.Maybe Data.Word.Word32),
                                                         _MmCompactionDeferCompactionFtraceEvent'orderFailed :: !(Prelude.Maybe Data.Int.Int32),
                                                         _MmCompactionDeferCompactionFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MmCompactionDeferCompactionFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MmCompactionDeferCompactionFtraceEvent "nid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionDeferCompactionFtraceEvent'nid
           (\ x__ y__
              -> x__ {_MmCompactionDeferCompactionFtraceEvent'nid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionDeferCompactionFtraceEvent "maybe'nid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionDeferCompactionFtraceEvent'nid
           (\ x__ y__
              -> x__ {_MmCompactionDeferCompactionFtraceEvent'nid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionDeferCompactionFtraceEvent "idx" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionDeferCompactionFtraceEvent'idx
           (\ x__ y__
              -> x__ {_MmCompactionDeferCompactionFtraceEvent'idx = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionDeferCompactionFtraceEvent "maybe'idx" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionDeferCompactionFtraceEvent'idx
           (\ x__ y__
              -> x__ {_MmCompactionDeferCompactionFtraceEvent'idx = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionDeferCompactionFtraceEvent "order" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionDeferCompactionFtraceEvent'order
           (\ x__ y__
              -> x__ {_MmCompactionDeferCompactionFtraceEvent'order = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionDeferCompactionFtraceEvent "maybe'order" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionDeferCompactionFtraceEvent'order
           (\ x__ y__
              -> x__ {_MmCompactionDeferCompactionFtraceEvent'order = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionDeferCompactionFtraceEvent "considered" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionDeferCompactionFtraceEvent'considered
           (\ x__ y__
              -> x__ {_MmCompactionDeferCompactionFtraceEvent'considered = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionDeferCompactionFtraceEvent "maybe'considered" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionDeferCompactionFtraceEvent'considered
           (\ x__ y__
              -> x__ {_MmCompactionDeferCompactionFtraceEvent'considered = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionDeferCompactionFtraceEvent "deferShift" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionDeferCompactionFtraceEvent'deferShift
           (\ x__ y__
              -> x__ {_MmCompactionDeferCompactionFtraceEvent'deferShift = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionDeferCompactionFtraceEvent "maybe'deferShift" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionDeferCompactionFtraceEvent'deferShift
           (\ x__ y__
              -> x__ {_MmCompactionDeferCompactionFtraceEvent'deferShift = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionDeferCompactionFtraceEvent "orderFailed" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionDeferCompactionFtraceEvent'orderFailed
           (\ x__ y__
              -> x__
                   {_MmCompactionDeferCompactionFtraceEvent'orderFailed = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionDeferCompactionFtraceEvent "maybe'orderFailed" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionDeferCompactionFtraceEvent'orderFailed
           (\ x__ y__
              -> x__
                   {_MmCompactionDeferCompactionFtraceEvent'orderFailed = y__}))
        Prelude.id
instance Data.ProtoLens.Message MmCompactionDeferCompactionFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.MmCompactionDeferCompactionFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \&MmCompactionDeferCompactionFtraceEvent\DC2\DLE\n\
      \\ETXnid\CAN\SOH \SOH(\ENQR\ETXnid\DC2\DLE\n\
      \\ETXidx\CAN\STX \SOH(\rR\ETXidx\DC2\DC4\n\
      \\ENQorder\CAN\ETX \SOH(\ENQR\ENQorder\DC2\RS\n\
      \\n\
      \considered\CAN\EOT \SOH(\rR\n\
      \considered\DC2\US\n\
      \\vdefer_shift\CAN\ENQ \SOH(\rR\n\
      \deferShift\DC2!\n\
      \\forder_failed\CAN\ACK \SOH(\ENQR\vorderFailed"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        nid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nid")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionDeferCompactionFtraceEvent
        idx__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "idx"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'idx")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionDeferCompactionFtraceEvent
        order__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "order"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'order")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionDeferCompactionFtraceEvent
        considered__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "considered"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'considered")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionDeferCompactionFtraceEvent
        deferShift__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "defer_shift"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'deferShift")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionDeferCompactionFtraceEvent
        orderFailed__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "order_failed"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'orderFailed")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionDeferCompactionFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, nid__field_descriptor),
           (Data.ProtoLens.Tag 2, idx__field_descriptor),
           (Data.ProtoLens.Tag 3, order__field_descriptor),
           (Data.ProtoLens.Tag 4, considered__field_descriptor),
           (Data.ProtoLens.Tag 5, deferShift__field_descriptor),
           (Data.ProtoLens.Tag 6, orderFailed__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MmCompactionDeferCompactionFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__
                {_MmCompactionDeferCompactionFtraceEvent'_unknownFields = y__})
  defMessage
    = MmCompactionDeferCompactionFtraceEvent'_constructor
        {_MmCompactionDeferCompactionFtraceEvent'nid = Prelude.Nothing,
         _MmCompactionDeferCompactionFtraceEvent'idx = Prelude.Nothing,
         _MmCompactionDeferCompactionFtraceEvent'order = Prelude.Nothing,
         _MmCompactionDeferCompactionFtraceEvent'considered = Prelude.Nothing,
         _MmCompactionDeferCompactionFtraceEvent'deferShift = Prelude.Nothing,
         _MmCompactionDeferCompactionFtraceEvent'orderFailed = Prelude.Nothing,
         _MmCompactionDeferCompactionFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MmCompactionDeferCompactionFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MmCompactionDeferCompactionFtraceEvent
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
                                       "nid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nid") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "idx"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"idx") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "order"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"order") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "considered"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"considered") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "defer_shift"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"deferShift") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "order_failed"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"orderFailed") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "MmCompactionDeferCompactionFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nid") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'idx") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'order") _x
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
                             (Data.ProtoLens.Field.field @"maybe'considered") _x
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
                                (Data.ProtoLens.Field.field @"maybe'deferShift") _x
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
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'orderFailed") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                      ((Prelude..)
                                         Data.ProtoLens.Encoding.Bytes.putVarInt
                                         Prelude.fromIntegral _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData MmCompactionDeferCompactionFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MmCompactionDeferCompactionFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MmCompactionDeferCompactionFtraceEvent'nid x__)
                (Control.DeepSeq.deepseq
                   (_MmCompactionDeferCompactionFtraceEvent'idx x__)
                   (Control.DeepSeq.deepseq
                      (_MmCompactionDeferCompactionFtraceEvent'order x__)
                      (Control.DeepSeq.deepseq
                         (_MmCompactionDeferCompactionFtraceEvent'considered x__)
                         (Control.DeepSeq.deepseq
                            (_MmCompactionDeferCompactionFtraceEvent'deferShift x__)
                            (Control.DeepSeq.deepseq
                               (_MmCompactionDeferCompactionFtraceEvent'orderFailed x__) ()))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.nid' @:: Lens' MmCompactionDeferResetFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'nid' @:: Lens' MmCompactionDeferResetFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.idx' @:: Lens' MmCompactionDeferResetFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'idx' @:: Lens' MmCompactionDeferResetFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.order' @:: Lens' MmCompactionDeferResetFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'order' @:: Lens' MmCompactionDeferResetFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.considered' @:: Lens' MmCompactionDeferResetFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'considered' @:: Lens' MmCompactionDeferResetFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.deferShift' @:: Lens' MmCompactionDeferResetFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'deferShift' @:: Lens' MmCompactionDeferResetFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.orderFailed' @:: Lens' MmCompactionDeferResetFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'orderFailed' @:: Lens' MmCompactionDeferResetFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data MmCompactionDeferResetFtraceEvent
  = MmCompactionDeferResetFtraceEvent'_constructor {_MmCompactionDeferResetFtraceEvent'nid :: !(Prelude.Maybe Data.Int.Int32),
                                                    _MmCompactionDeferResetFtraceEvent'idx :: !(Prelude.Maybe Data.Word.Word32),
                                                    _MmCompactionDeferResetFtraceEvent'order :: !(Prelude.Maybe Data.Int.Int32),
                                                    _MmCompactionDeferResetFtraceEvent'considered :: !(Prelude.Maybe Data.Word.Word32),
                                                    _MmCompactionDeferResetFtraceEvent'deferShift :: !(Prelude.Maybe Data.Word.Word32),
                                                    _MmCompactionDeferResetFtraceEvent'orderFailed :: !(Prelude.Maybe Data.Int.Int32),
                                                    _MmCompactionDeferResetFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MmCompactionDeferResetFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MmCompactionDeferResetFtraceEvent "nid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionDeferResetFtraceEvent'nid
           (\ x__ y__ -> x__ {_MmCompactionDeferResetFtraceEvent'nid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionDeferResetFtraceEvent "maybe'nid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionDeferResetFtraceEvent'nid
           (\ x__ y__ -> x__ {_MmCompactionDeferResetFtraceEvent'nid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionDeferResetFtraceEvent "idx" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionDeferResetFtraceEvent'idx
           (\ x__ y__ -> x__ {_MmCompactionDeferResetFtraceEvent'idx = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionDeferResetFtraceEvent "maybe'idx" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionDeferResetFtraceEvent'idx
           (\ x__ y__ -> x__ {_MmCompactionDeferResetFtraceEvent'idx = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionDeferResetFtraceEvent "order" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionDeferResetFtraceEvent'order
           (\ x__ y__
              -> x__ {_MmCompactionDeferResetFtraceEvent'order = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionDeferResetFtraceEvent "maybe'order" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionDeferResetFtraceEvent'order
           (\ x__ y__
              -> x__ {_MmCompactionDeferResetFtraceEvent'order = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionDeferResetFtraceEvent "considered" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionDeferResetFtraceEvent'considered
           (\ x__ y__
              -> x__ {_MmCompactionDeferResetFtraceEvent'considered = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionDeferResetFtraceEvent "maybe'considered" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionDeferResetFtraceEvent'considered
           (\ x__ y__
              -> x__ {_MmCompactionDeferResetFtraceEvent'considered = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionDeferResetFtraceEvent "deferShift" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionDeferResetFtraceEvent'deferShift
           (\ x__ y__
              -> x__ {_MmCompactionDeferResetFtraceEvent'deferShift = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionDeferResetFtraceEvent "maybe'deferShift" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionDeferResetFtraceEvent'deferShift
           (\ x__ y__
              -> x__ {_MmCompactionDeferResetFtraceEvent'deferShift = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionDeferResetFtraceEvent "orderFailed" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionDeferResetFtraceEvent'orderFailed
           (\ x__ y__
              -> x__ {_MmCompactionDeferResetFtraceEvent'orderFailed = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionDeferResetFtraceEvent "maybe'orderFailed" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionDeferResetFtraceEvent'orderFailed
           (\ x__ y__
              -> x__ {_MmCompactionDeferResetFtraceEvent'orderFailed = y__}))
        Prelude.id
instance Data.ProtoLens.Message MmCompactionDeferResetFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.MmCompactionDeferResetFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \!MmCompactionDeferResetFtraceEvent\DC2\DLE\n\
      \\ETXnid\CAN\SOH \SOH(\ENQR\ETXnid\DC2\DLE\n\
      \\ETXidx\CAN\STX \SOH(\rR\ETXidx\DC2\DC4\n\
      \\ENQorder\CAN\ETX \SOH(\ENQR\ENQorder\DC2\RS\n\
      \\n\
      \considered\CAN\EOT \SOH(\rR\n\
      \considered\DC2\US\n\
      \\vdefer_shift\CAN\ENQ \SOH(\rR\n\
      \deferShift\DC2!\n\
      \\forder_failed\CAN\ACK \SOH(\ENQR\vorderFailed"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        nid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nid")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionDeferResetFtraceEvent
        idx__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "idx"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'idx")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionDeferResetFtraceEvent
        order__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "order"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'order")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionDeferResetFtraceEvent
        considered__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "considered"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'considered")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionDeferResetFtraceEvent
        deferShift__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "defer_shift"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'deferShift")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionDeferResetFtraceEvent
        orderFailed__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "order_failed"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'orderFailed")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionDeferResetFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, nid__field_descriptor),
           (Data.ProtoLens.Tag 2, idx__field_descriptor),
           (Data.ProtoLens.Tag 3, order__field_descriptor),
           (Data.ProtoLens.Tag 4, considered__field_descriptor),
           (Data.ProtoLens.Tag 5, deferShift__field_descriptor),
           (Data.ProtoLens.Tag 6, orderFailed__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MmCompactionDeferResetFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_MmCompactionDeferResetFtraceEvent'_unknownFields = y__})
  defMessage
    = MmCompactionDeferResetFtraceEvent'_constructor
        {_MmCompactionDeferResetFtraceEvent'nid = Prelude.Nothing,
         _MmCompactionDeferResetFtraceEvent'idx = Prelude.Nothing,
         _MmCompactionDeferResetFtraceEvent'order = Prelude.Nothing,
         _MmCompactionDeferResetFtraceEvent'considered = Prelude.Nothing,
         _MmCompactionDeferResetFtraceEvent'deferShift = Prelude.Nothing,
         _MmCompactionDeferResetFtraceEvent'orderFailed = Prelude.Nothing,
         _MmCompactionDeferResetFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MmCompactionDeferResetFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MmCompactionDeferResetFtraceEvent
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
                                       "nid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nid") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "idx"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"idx") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "order"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"order") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "considered"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"considered") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "defer_shift"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"deferShift") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "order_failed"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"orderFailed") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "MmCompactionDeferResetFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nid") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'idx") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'order") _x
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
                             (Data.ProtoLens.Field.field @"maybe'considered") _x
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
                                (Data.ProtoLens.Field.field @"maybe'deferShift") _x
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
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'orderFailed") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                      ((Prelude..)
                                         Data.ProtoLens.Encoding.Bytes.putVarInt
                                         Prelude.fromIntegral _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData MmCompactionDeferResetFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MmCompactionDeferResetFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MmCompactionDeferResetFtraceEvent'nid x__)
                (Control.DeepSeq.deepseq
                   (_MmCompactionDeferResetFtraceEvent'idx x__)
                   (Control.DeepSeq.deepseq
                      (_MmCompactionDeferResetFtraceEvent'order x__)
                      (Control.DeepSeq.deepseq
                         (_MmCompactionDeferResetFtraceEvent'considered x__)
                         (Control.DeepSeq.deepseq
                            (_MmCompactionDeferResetFtraceEvent'deferShift x__)
                            (Control.DeepSeq.deepseq
                               (_MmCompactionDeferResetFtraceEvent'orderFailed x__) ()))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.nid' @:: Lens' MmCompactionDeferredFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'nid' @:: Lens' MmCompactionDeferredFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.idx' @:: Lens' MmCompactionDeferredFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'idx' @:: Lens' MmCompactionDeferredFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.order' @:: Lens' MmCompactionDeferredFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'order' @:: Lens' MmCompactionDeferredFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.considered' @:: Lens' MmCompactionDeferredFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'considered' @:: Lens' MmCompactionDeferredFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.deferShift' @:: Lens' MmCompactionDeferredFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'deferShift' @:: Lens' MmCompactionDeferredFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.orderFailed' @:: Lens' MmCompactionDeferredFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'orderFailed' @:: Lens' MmCompactionDeferredFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data MmCompactionDeferredFtraceEvent
  = MmCompactionDeferredFtraceEvent'_constructor {_MmCompactionDeferredFtraceEvent'nid :: !(Prelude.Maybe Data.Int.Int32),
                                                  _MmCompactionDeferredFtraceEvent'idx :: !(Prelude.Maybe Data.Word.Word32),
                                                  _MmCompactionDeferredFtraceEvent'order :: !(Prelude.Maybe Data.Int.Int32),
                                                  _MmCompactionDeferredFtraceEvent'considered :: !(Prelude.Maybe Data.Word.Word32),
                                                  _MmCompactionDeferredFtraceEvent'deferShift :: !(Prelude.Maybe Data.Word.Word32),
                                                  _MmCompactionDeferredFtraceEvent'orderFailed :: !(Prelude.Maybe Data.Int.Int32),
                                                  _MmCompactionDeferredFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MmCompactionDeferredFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MmCompactionDeferredFtraceEvent "nid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionDeferredFtraceEvent'nid
           (\ x__ y__ -> x__ {_MmCompactionDeferredFtraceEvent'nid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionDeferredFtraceEvent "maybe'nid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionDeferredFtraceEvent'nid
           (\ x__ y__ -> x__ {_MmCompactionDeferredFtraceEvent'nid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionDeferredFtraceEvent "idx" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionDeferredFtraceEvent'idx
           (\ x__ y__ -> x__ {_MmCompactionDeferredFtraceEvent'idx = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionDeferredFtraceEvent "maybe'idx" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionDeferredFtraceEvent'idx
           (\ x__ y__ -> x__ {_MmCompactionDeferredFtraceEvent'idx = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionDeferredFtraceEvent "order" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionDeferredFtraceEvent'order
           (\ x__ y__ -> x__ {_MmCompactionDeferredFtraceEvent'order = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionDeferredFtraceEvent "maybe'order" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionDeferredFtraceEvent'order
           (\ x__ y__ -> x__ {_MmCompactionDeferredFtraceEvent'order = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionDeferredFtraceEvent "considered" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionDeferredFtraceEvent'considered
           (\ x__ y__
              -> x__ {_MmCompactionDeferredFtraceEvent'considered = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionDeferredFtraceEvent "maybe'considered" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionDeferredFtraceEvent'considered
           (\ x__ y__
              -> x__ {_MmCompactionDeferredFtraceEvent'considered = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionDeferredFtraceEvent "deferShift" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionDeferredFtraceEvent'deferShift
           (\ x__ y__
              -> x__ {_MmCompactionDeferredFtraceEvent'deferShift = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionDeferredFtraceEvent "maybe'deferShift" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionDeferredFtraceEvent'deferShift
           (\ x__ y__
              -> x__ {_MmCompactionDeferredFtraceEvent'deferShift = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionDeferredFtraceEvent "orderFailed" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionDeferredFtraceEvent'orderFailed
           (\ x__ y__
              -> x__ {_MmCompactionDeferredFtraceEvent'orderFailed = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionDeferredFtraceEvent "maybe'orderFailed" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionDeferredFtraceEvent'orderFailed
           (\ x__ y__
              -> x__ {_MmCompactionDeferredFtraceEvent'orderFailed = y__}))
        Prelude.id
instance Data.ProtoLens.Message MmCompactionDeferredFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.MmCompactionDeferredFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\USMmCompactionDeferredFtraceEvent\DC2\DLE\n\
      \\ETXnid\CAN\SOH \SOH(\ENQR\ETXnid\DC2\DLE\n\
      \\ETXidx\CAN\STX \SOH(\rR\ETXidx\DC2\DC4\n\
      \\ENQorder\CAN\ETX \SOH(\ENQR\ENQorder\DC2\RS\n\
      \\n\
      \considered\CAN\EOT \SOH(\rR\n\
      \considered\DC2\US\n\
      \\vdefer_shift\CAN\ENQ \SOH(\rR\n\
      \deferShift\DC2!\n\
      \\forder_failed\CAN\ACK \SOH(\ENQR\vorderFailed"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        nid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nid")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionDeferredFtraceEvent
        idx__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "idx"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'idx")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionDeferredFtraceEvent
        order__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "order"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'order")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionDeferredFtraceEvent
        considered__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "considered"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'considered")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionDeferredFtraceEvent
        deferShift__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "defer_shift"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'deferShift")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionDeferredFtraceEvent
        orderFailed__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "order_failed"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'orderFailed")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionDeferredFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, nid__field_descriptor),
           (Data.ProtoLens.Tag 2, idx__field_descriptor),
           (Data.ProtoLens.Tag 3, order__field_descriptor),
           (Data.ProtoLens.Tag 4, considered__field_descriptor),
           (Data.ProtoLens.Tag 5, deferShift__field_descriptor),
           (Data.ProtoLens.Tag 6, orderFailed__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MmCompactionDeferredFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_MmCompactionDeferredFtraceEvent'_unknownFields = y__})
  defMessage
    = MmCompactionDeferredFtraceEvent'_constructor
        {_MmCompactionDeferredFtraceEvent'nid = Prelude.Nothing,
         _MmCompactionDeferredFtraceEvent'idx = Prelude.Nothing,
         _MmCompactionDeferredFtraceEvent'order = Prelude.Nothing,
         _MmCompactionDeferredFtraceEvent'considered = Prelude.Nothing,
         _MmCompactionDeferredFtraceEvent'deferShift = Prelude.Nothing,
         _MmCompactionDeferredFtraceEvent'orderFailed = Prelude.Nothing,
         _MmCompactionDeferredFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MmCompactionDeferredFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MmCompactionDeferredFtraceEvent
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
                                       "nid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nid") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "idx"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"idx") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "order"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"order") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "considered"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"considered") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "defer_shift"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"deferShift") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "order_failed"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"orderFailed") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "MmCompactionDeferredFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nid") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'idx") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'order") _x
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
                             (Data.ProtoLens.Field.field @"maybe'considered") _x
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
                                (Data.ProtoLens.Field.field @"maybe'deferShift") _x
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
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'orderFailed") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                      ((Prelude..)
                                         Data.ProtoLens.Encoding.Bytes.putVarInt
                                         Prelude.fromIntegral _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData MmCompactionDeferredFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MmCompactionDeferredFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MmCompactionDeferredFtraceEvent'nid x__)
                (Control.DeepSeq.deepseq
                   (_MmCompactionDeferredFtraceEvent'idx x__)
                   (Control.DeepSeq.deepseq
                      (_MmCompactionDeferredFtraceEvent'order x__)
                      (Control.DeepSeq.deepseq
                         (_MmCompactionDeferredFtraceEvent'considered x__)
                         (Control.DeepSeq.deepseq
                            (_MmCompactionDeferredFtraceEvent'deferShift x__)
                            (Control.DeepSeq.deepseq
                               (_MmCompactionDeferredFtraceEvent'orderFailed x__) ()))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.zoneStart' @:: Lens' MmCompactionEndFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'zoneStart' @:: Lens' MmCompactionEndFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.migratePfn' @:: Lens' MmCompactionEndFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'migratePfn' @:: Lens' MmCompactionEndFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.freePfn' @:: Lens' MmCompactionEndFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'freePfn' @:: Lens' MmCompactionEndFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.zoneEnd' @:: Lens' MmCompactionEndFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'zoneEnd' @:: Lens' MmCompactionEndFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.sync' @:: Lens' MmCompactionEndFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'sync' @:: Lens' MmCompactionEndFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.status' @:: Lens' MmCompactionEndFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'status' @:: Lens' MmCompactionEndFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data MmCompactionEndFtraceEvent
  = MmCompactionEndFtraceEvent'_constructor {_MmCompactionEndFtraceEvent'zoneStart :: !(Prelude.Maybe Data.Word.Word64),
                                             _MmCompactionEndFtraceEvent'migratePfn :: !(Prelude.Maybe Data.Word.Word64),
                                             _MmCompactionEndFtraceEvent'freePfn :: !(Prelude.Maybe Data.Word.Word64),
                                             _MmCompactionEndFtraceEvent'zoneEnd :: !(Prelude.Maybe Data.Word.Word64),
                                             _MmCompactionEndFtraceEvent'sync :: !(Prelude.Maybe Data.Word.Word32),
                                             _MmCompactionEndFtraceEvent'status :: !(Prelude.Maybe Data.Int.Int32),
                                             _MmCompactionEndFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MmCompactionEndFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MmCompactionEndFtraceEvent "zoneStart" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionEndFtraceEvent'zoneStart
           (\ x__ y__ -> x__ {_MmCompactionEndFtraceEvent'zoneStart = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionEndFtraceEvent "maybe'zoneStart" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionEndFtraceEvent'zoneStart
           (\ x__ y__ -> x__ {_MmCompactionEndFtraceEvent'zoneStart = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionEndFtraceEvent "migratePfn" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionEndFtraceEvent'migratePfn
           (\ x__ y__ -> x__ {_MmCompactionEndFtraceEvent'migratePfn = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionEndFtraceEvent "maybe'migratePfn" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionEndFtraceEvent'migratePfn
           (\ x__ y__ -> x__ {_MmCompactionEndFtraceEvent'migratePfn = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionEndFtraceEvent "freePfn" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionEndFtraceEvent'freePfn
           (\ x__ y__ -> x__ {_MmCompactionEndFtraceEvent'freePfn = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionEndFtraceEvent "maybe'freePfn" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionEndFtraceEvent'freePfn
           (\ x__ y__ -> x__ {_MmCompactionEndFtraceEvent'freePfn = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionEndFtraceEvent "zoneEnd" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionEndFtraceEvent'zoneEnd
           (\ x__ y__ -> x__ {_MmCompactionEndFtraceEvent'zoneEnd = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionEndFtraceEvent "maybe'zoneEnd" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionEndFtraceEvent'zoneEnd
           (\ x__ y__ -> x__ {_MmCompactionEndFtraceEvent'zoneEnd = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionEndFtraceEvent "sync" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionEndFtraceEvent'sync
           (\ x__ y__ -> x__ {_MmCompactionEndFtraceEvent'sync = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionEndFtraceEvent "maybe'sync" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionEndFtraceEvent'sync
           (\ x__ y__ -> x__ {_MmCompactionEndFtraceEvent'sync = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionEndFtraceEvent "status" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionEndFtraceEvent'status
           (\ x__ y__ -> x__ {_MmCompactionEndFtraceEvent'status = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionEndFtraceEvent "maybe'status" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionEndFtraceEvent'status
           (\ x__ y__ -> x__ {_MmCompactionEndFtraceEvent'status = y__}))
        Prelude.id
instance Data.ProtoLens.Message MmCompactionEndFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.MmCompactionEndFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SUBMmCompactionEndFtraceEvent\DC2\GS\n\
      \\n\
      \zone_start\CAN\SOH \SOH(\EOTR\tzoneStart\DC2\US\n\
      \\vmigrate_pfn\CAN\STX \SOH(\EOTR\n\
      \migratePfn\DC2\EM\n\
      \\bfree_pfn\CAN\ETX \SOH(\EOTR\afreePfn\DC2\EM\n\
      \\bzone_end\CAN\EOT \SOH(\EOTR\azoneEnd\DC2\DC2\n\
      \\EOTsync\CAN\ENQ \SOH(\rR\EOTsync\DC2\SYN\n\
      \\ACKstatus\CAN\ACK \SOH(\ENQR\ACKstatus"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        zoneStart__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "zone_start"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'zoneStart")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionEndFtraceEvent
        migratePfn__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "migrate_pfn"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'migratePfn")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionEndFtraceEvent
        freePfn__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "free_pfn"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'freePfn")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionEndFtraceEvent
        zoneEnd__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "zone_end"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'zoneEnd")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionEndFtraceEvent
        sync__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sync"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sync")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionEndFtraceEvent
        status__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'status")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionEndFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, zoneStart__field_descriptor),
           (Data.ProtoLens.Tag 2, migratePfn__field_descriptor),
           (Data.ProtoLens.Tag 3, freePfn__field_descriptor),
           (Data.ProtoLens.Tag 4, zoneEnd__field_descriptor),
           (Data.ProtoLens.Tag 5, sync__field_descriptor),
           (Data.ProtoLens.Tag 6, status__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MmCompactionEndFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_MmCompactionEndFtraceEvent'_unknownFields = y__})
  defMessage
    = MmCompactionEndFtraceEvent'_constructor
        {_MmCompactionEndFtraceEvent'zoneStart = Prelude.Nothing,
         _MmCompactionEndFtraceEvent'migratePfn = Prelude.Nothing,
         _MmCompactionEndFtraceEvent'freePfn = Prelude.Nothing,
         _MmCompactionEndFtraceEvent'zoneEnd = Prelude.Nothing,
         _MmCompactionEndFtraceEvent'sync = Prelude.Nothing,
         _MmCompactionEndFtraceEvent'status = Prelude.Nothing,
         _MmCompactionEndFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MmCompactionEndFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MmCompactionEndFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "zone_start"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"zoneStart") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "migrate_pfn"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"migratePfn") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "free_pfn"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"freePfn") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "zone_end"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"zoneEnd") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "sync"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"sync") y x)
                        48
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
          (do loop Data.ProtoLens.defMessage) "MmCompactionEndFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'zoneStart") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'migratePfn") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'freePfn") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'zoneEnd") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'sync") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'status") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                      ((Prelude..)
                                         Data.ProtoLens.Encoding.Bytes.putVarInt
                                         Prelude.fromIntegral _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData MmCompactionEndFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MmCompactionEndFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MmCompactionEndFtraceEvent'zoneStart x__)
                (Control.DeepSeq.deepseq
                   (_MmCompactionEndFtraceEvent'migratePfn x__)
                   (Control.DeepSeq.deepseq
                      (_MmCompactionEndFtraceEvent'freePfn x__)
                      (Control.DeepSeq.deepseq
                         (_MmCompactionEndFtraceEvent'zoneEnd x__)
                         (Control.DeepSeq.deepseq
                            (_MmCompactionEndFtraceEvent'sync x__)
                            (Control.DeepSeq.deepseq
                               (_MmCompactionEndFtraceEvent'status x__) ()))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.nid' @:: Lens' MmCompactionFinishedFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'nid' @:: Lens' MmCompactionFinishedFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.idx' @:: Lens' MmCompactionFinishedFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'idx' @:: Lens' MmCompactionFinishedFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.order' @:: Lens' MmCompactionFinishedFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'order' @:: Lens' MmCompactionFinishedFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.ret' @:: Lens' MmCompactionFinishedFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'ret' @:: Lens' MmCompactionFinishedFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data MmCompactionFinishedFtraceEvent
  = MmCompactionFinishedFtraceEvent'_constructor {_MmCompactionFinishedFtraceEvent'nid :: !(Prelude.Maybe Data.Int.Int32),
                                                  _MmCompactionFinishedFtraceEvent'idx :: !(Prelude.Maybe Data.Word.Word32),
                                                  _MmCompactionFinishedFtraceEvent'order :: !(Prelude.Maybe Data.Int.Int32),
                                                  _MmCompactionFinishedFtraceEvent'ret :: !(Prelude.Maybe Data.Int.Int32),
                                                  _MmCompactionFinishedFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MmCompactionFinishedFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MmCompactionFinishedFtraceEvent "nid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionFinishedFtraceEvent'nid
           (\ x__ y__ -> x__ {_MmCompactionFinishedFtraceEvent'nid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionFinishedFtraceEvent "maybe'nid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionFinishedFtraceEvent'nid
           (\ x__ y__ -> x__ {_MmCompactionFinishedFtraceEvent'nid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionFinishedFtraceEvent "idx" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionFinishedFtraceEvent'idx
           (\ x__ y__ -> x__ {_MmCompactionFinishedFtraceEvent'idx = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionFinishedFtraceEvent "maybe'idx" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionFinishedFtraceEvent'idx
           (\ x__ y__ -> x__ {_MmCompactionFinishedFtraceEvent'idx = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionFinishedFtraceEvent "order" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionFinishedFtraceEvent'order
           (\ x__ y__ -> x__ {_MmCompactionFinishedFtraceEvent'order = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionFinishedFtraceEvent "maybe'order" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionFinishedFtraceEvent'order
           (\ x__ y__ -> x__ {_MmCompactionFinishedFtraceEvent'order = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionFinishedFtraceEvent "ret" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionFinishedFtraceEvent'ret
           (\ x__ y__ -> x__ {_MmCompactionFinishedFtraceEvent'ret = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionFinishedFtraceEvent "maybe'ret" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionFinishedFtraceEvent'ret
           (\ x__ y__ -> x__ {_MmCompactionFinishedFtraceEvent'ret = y__}))
        Prelude.id
instance Data.ProtoLens.Message MmCompactionFinishedFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.MmCompactionFinishedFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\USMmCompactionFinishedFtraceEvent\DC2\DLE\n\
      \\ETXnid\CAN\SOH \SOH(\ENQR\ETXnid\DC2\DLE\n\
      \\ETXidx\CAN\STX \SOH(\rR\ETXidx\DC2\DC4\n\
      \\ENQorder\CAN\ETX \SOH(\ENQR\ENQorder\DC2\DLE\n\
      \\ETXret\CAN\EOT \SOH(\ENQR\ETXret"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        nid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nid")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionFinishedFtraceEvent
        idx__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "idx"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'idx")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionFinishedFtraceEvent
        order__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "order"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'order")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionFinishedFtraceEvent
        ret__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ret"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ret")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionFinishedFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, nid__field_descriptor),
           (Data.ProtoLens.Tag 2, idx__field_descriptor),
           (Data.ProtoLens.Tag 3, order__field_descriptor),
           (Data.ProtoLens.Tag 4, ret__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MmCompactionFinishedFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_MmCompactionFinishedFtraceEvent'_unknownFields = y__})
  defMessage
    = MmCompactionFinishedFtraceEvent'_constructor
        {_MmCompactionFinishedFtraceEvent'nid = Prelude.Nothing,
         _MmCompactionFinishedFtraceEvent'idx = Prelude.Nothing,
         _MmCompactionFinishedFtraceEvent'order = Prelude.Nothing,
         _MmCompactionFinishedFtraceEvent'ret = Prelude.Nothing,
         _MmCompactionFinishedFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MmCompactionFinishedFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MmCompactionFinishedFtraceEvent
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
                                       "nid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nid") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "idx"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"idx") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "order"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"order") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ret"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ret") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "MmCompactionFinishedFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nid") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'idx") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'order") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ret") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData MmCompactionFinishedFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MmCompactionFinishedFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MmCompactionFinishedFtraceEvent'nid x__)
                (Control.DeepSeq.deepseq
                   (_MmCompactionFinishedFtraceEvent'idx x__)
                   (Control.DeepSeq.deepseq
                      (_MmCompactionFinishedFtraceEvent'order x__)
                      (Control.DeepSeq.deepseq
                         (_MmCompactionFinishedFtraceEvent'ret x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.startPfn' @:: Lens' MmCompactionIsolateFreepagesFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'startPfn' @:: Lens' MmCompactionIsolateFreepagesFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.endPfn' @:: Lens' MmCompactionIsolateFreepagesFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'endPfn' @:: Lens' MmCompactionIsolateFreepagesFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.nrScanned' @:: Lens' MmCompactionIsolateFreepagesFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'nrScanned' @:: Lens' MmCompactionIsolateFreepagesFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.nrTaken' @:: Lens' MmCompactionIsolateFreepagesFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'nrTaken' @:: Lens' MmCompactionIsolateFreepagesFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data MmCompactionIsolateFreepagesFtraceEvent
  = MmCompactionIsolateFreepagesFtraceEvent'_constructor {_MmCompactionIsolateFreepagesFtraceEvent'startPfn :: !(Prelude.Maybe Data.Word.Word64),
                                                          _MmCompactionIsolateFreepagesFtraceEvent'endPfn :: !(Prelude.Maybe Data.Word.Word64),
                                                          _MmCompactionIsolateFreepagesFtraceEvent'nrScanned :: !(Prelude.Maybe Data.Word.Word64),
                                                          _MmCompactionIsolateFreepagesFtraceEvent'nrTaken :: !(Prelude.Maybe Data.Word.Word64),
                                                          _MmCompactionIsolateFreepagesFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MmCompactionIsolateFreepagesFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MmCompactionIsolateFreepagesFtraceEvent "startPfn" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionIsolateFreepagesFtraceEvent'startPfn
           (\ x__ y__
              -> x__ {_MmCompactionIsolateFreepagesFtraceEvent'startPfn = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionIsolateFreepagesFtraceEvent "maybe'startPfn" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionIsolateFreepagesFtraceEvent'startPfn
           (\ x__ y__
              -> x__ {_MmCompactionIsolateFreepagesFtraceEvent'startPfn = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionIsolateFreepagesFtraceEvent "endPfn" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionIsolateFreepagesFtraceEvent'endPfn
           (\ x__ y__
              -> x__ {_MmCompactionIsolateFreepagesFtraceEvent'endPfn = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionIsolateFreepagesFtraceEvent "maybe'endPfn" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionIsolateFreepagesFtraceEvent'endPfn
           (\ x__ y__
              -> x__ {_MmCompactionIsolateFreepagesFtraceEvent'endPfn = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionIsolateFreepagesFtraceEvent "nrScanned" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionIsolateFreepagesFtraceEvent'nrScanned
           (\ x__ y__
              -> x__ {_MmCompactionIsolateFreepagesFtraceEvent'nrScanned = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionIsolateFreepagesFtraceEvent "maybe'nrScanned" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionIsolateFreepagesFtraceEvent'nrScanned
           (\ x__ y__
              -> x__ {_MmCompactionIsolateFreepagesFtraceEvent'nrScanned = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionIsolateFreepagesFtraceEvent "nrTaken" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionIsolateFreepagesFtraceEvent'nrTaken
           (\ x__ y__
              -> x__ {_MmCompactionIsolateFreepagesFtraceEvent'nrTaken = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionIsolateFreepagesFtraceEvent "maybe'nrTaken" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionIsolateFreepagesFtraceEvent'nrTaken
           (\ x__ y__
              -> x__ {_MmCompactionIsolateFreepagesFtraceEvent'nrTaken = y__}))
        Prelude.id
instance Data.ProtoLens.Message MmCompactionIsolateFreepagesFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.MmCompactionIsolateFreepagesFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \'MmCompactionIsolateFreepagesFtraceEvent\DC2\ESC\n\
      \\tstart_pfn\CAN\SOH \SOH(\EOTR\bstartPfn\DC2\ETB\n\
      \\aend_pfn\CAN\STX \SOH(\EOTR\ACKendPfn\DC2\GS\n\
      \\n\
      \nr_scanned\CAN\ETX \SOH(\EOTR\tnrScanned\DC2\EM\n\
      \\bnr_taken\CAN\EOT \SOH(\EOTR\anrTaken"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        startPfn__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_pfn"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'startPfn")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionIsolateFreepagesFtraceEvent
        endPfn__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "end_pfn"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'endPfn")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionIsolateFreepagesFtraceEvent
        nrScanned__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nr_scanned"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nrScanned")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionIsolateFreepagesFtraceEvent
        nrTaken__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nr_taken"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nrTaken")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionIsolateFreepagesFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, startPfn__field_descriptor),
           (Data.ProtoLens.Tag 2, endPfn__field_descriptor),
           (Data.ProtoLens.Tag 3, nrScanned__field_descriptor),
           (Data.ProtoLens.Tag 4, nrTaken__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MmCompactionIsolateFreepagesFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__
                {_MmCompactionIsolateFreepagesFtraceEvent'_unknownFields = y__})
  defMessage
    = MmCompactionIsolateFreepagesFtraceEvent'_constructor
        {_MmCompactionIsolateFreepagesFtraceEvent'startPfn = Prelude.Nothing,
         _MmCompactionIsolateFreepagesFtraceEvent'endPfn = Prelude.Nothing,
         _MmCompactionIsolateFreepagesFtraceEvent'nrScanned = Prelude.Nothing,
         _MmCompactionIsolateFreepagesFtraceEvent'nrTaken = Prelude.Nothing,
         _MmCompactionIsolateFreepagesFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MmCompactionIsolateFreepagesFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MmCompactionIsolateFreepagesFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "start_pfn"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"startPfn") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "end_pfn"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"endPfn") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "nr_scanned"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nrScanned") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "nr_taken"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nrTaken") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "MmCompactionIsolateFreepagesFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'startPfn") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'endPfn") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'nrScanned") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nrTaken") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData MmCompactionIsolateFreepagesFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MmCompactionIsolateFreepagesFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MmCompactionIsolateFreepagesFtraceEvent'startPfn x__)
                (Control.DeepSeq.deepseq
                   (_MmCompactionIsolateFreepagesFtraceEvent'endPfn x__)
                   (Control.DeepSeq.deepseq
                      (_MmCompactionIsolateFreepagesFtraceEvent'nrScanned x__)
                      (Control.DeepSeq.deepseq
                         (_MmCompactionIsolateFreepagesFtraceEvent'nrTaken x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.startPfn' @:: Lens' MmCompactionIsolateMigratepagesFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'startPfn' @:: Lens' MmCompactionIsolateMigratepagesFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.endPfn' @:: Lens' MmCompactionIsolateMigratepagesFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'endPfn' @:: Lens' MmCompactionIsolateMigratepagesFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.nrScanned' @:: Lens' MmCompactionIsolateMigratepagesFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'nrScanned' @:: Lens' MmCompactionIsolateMigratepagesFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.nrTaken' @:: Lens' MmCompactionIsolateMigratepagesFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'nrTaken' @:: Lens' MmCompactionIsolateMigratepagesFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data MmCompactionIsolateMigratepagesFtraceEvent
  = MmCompactionIsolateMigratepagesFtraceEvent'_constructor {_MmCompactionIsolateMigratepagesFtraceEvent'startPfn :: !(Prelude.Maybe Data.Word.Word64),
                                                             _MmCompactionIsolateMigratepagesFtraceEvent'endPfn :: !(Prelude.Maybe Data.Word.Word64),
                                                             _MmCompactionIsolateMigratepagesFtraceEvent'nrScanned :: !(Prelude.Maybe Data.Word.Word64),
                                                             _MmCompactionIsolateMigratepagesFtraceEvent'nrTaken :: !(Prelude.Maybe Data.Word.Word64),
                                                             _MmCompactionIsolateMigratepagesFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MmCompactionIsolateMigratepagesFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MmCompactionIsolateMigratepagesFtraceEvent "startPfn" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionIsolateMigratepagesFtraceEvent'startPfn
           (\ x__ y__
              -> x__
                   {_MmCompactionIsolateMigratepagesFtraceEvent'startPfn = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionIsolateMigratepagesFtraceEvent "maybe'startPfn" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionIsolateMigratepagesFtraceEvent'startPfn
           (\ x__ y__
              -> x__
                   {_MmCompactionIsolateMigratepagesFtraceEvent'startPfn = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionIsolateMigratepagesFtraceEvent "endPfn" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionIsolateMigratepagesFtraceEvent'endPfn
           (\ x__ y__
              -> x__ {_MmCompactionIsolateMigratepagesFtraceEvent'endPfn = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionIsolateMigratepagesFtraceEvent "maybe'endPfn" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionIsolateMigratepagesFtraceEvent'endPfn
           (\ x__ y__
              -> x__ {_MmCompactionIsolateMigratepagesFtraceEvent'endPfn = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionIsolateMigratepagesFtraceEvent "nrScanned" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionIsolateMigratepagesFtraceEvent'nrScanned
           (\ x__ y__
              -> x__
                   {_MmCompactionIsolateMigratepagesFtraceEvent'nrScanned = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionIsolateMigratepagesFtraceEvent "maybe'nrScanned" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionIsolateMigratepagesFtraceEvent'nrScanned
           (\ x__ y__
              -> x__
                   {_MmCompactionIsolateMigratepagesFtraceEvent'nrScanned = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionIsolateMigratepagesFtraceEvent "nrTaken" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionIsolateMigratepagesFtraceEvent'nrTaken
           (\ x__ y__
              -> x__
                   {_MmCompactionIsolateMigratepagesFtraceEvent'nrTaken = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionIsolateMigratepagesFtraceEvent "maybe'nrTaken" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionIsolateMigratepagesFtraceEvent'nrTaken
           (\ x__ y__
              -> x__
                   {_MmCompactionIsolateMigratepagesFtraceEvent'nrTaken = y__}))
        Prelude.id
instance Data.ProtoLens.Message MmCompactionIsolateMigratepagesFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.MmCompactionIsolateMigratepagesFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \*MmCompactionIsolateMigratepagesFtraceEvent\DC2\ESC\n\
      \\tstart_pfn\CAN\SOH \SOH(\EOTR\bstartPfn\DC2\ETB\n\
      \\aend_pfn\CAN\STX \SOH(\EOTR\ACKendPfn\DC2\GS\n\
      \\n\
      \nr_scanned\CAN\ETX \SOH(\EOTR\tnrScanned\DC2\EM\n\
      \\bnr_taken\CAN\EOT \SOH(\EOTR\anrTaken"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        startPfn__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_pfn"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'startPfn")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionIsolateMigratepagesFtraceEvent
        endPfn__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "end_pfn"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'endPfn")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionIsolateMigratepagesFtraceEvent
        nrScanned__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nr_scanned"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nrScanned")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionIsolateMigratepagesFtraceEvent
        nrTaken__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nr_taken"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nrTaken")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionIsolateMigratepagesFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, startPfn__field_descriptor),
           (Data.ProtoLens.Tag 2, endPfn__field_descriptor),
           (Data.ProtoLens.Tag 3, nrScanned__field_descriptor),
           (Data.ProtoLens.Tag 4, nrTaken__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MmCompactionIsolateMigratepagesFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__
                {_MmCompactionIsolateMigratepagesFtraceEvent'_unknownFields = y__})
  defMessage
    = MmCompactionIsolateMigratepagesFtraceEvent'_constructor
        {_MmCompactionIsolateMigratepagesFtraceEvent'startPfn = Prelude.Nothing,
         _MmCompactionIsolateMigratepagesFtraceEvent'endPfn = Prelude.Nothing,
         _MmCompactionIsolateMigratepagesFtraceEvent'nrScanned = Prelude.Nothing,
         _MmCompactionIsolateMigratepagesFtraceEvent'nrTaken = Prelude.Nothing,
         _MmCompactionIsolateMigratepagesFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MmCompactionIsolateMigratepagesFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MmCompactionIsolateMigratepagesFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "start_pfn"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"startPfn") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "end_pfn"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"endPfn") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "nr_scanned"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nrScanned") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "nr_taken"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nrTaken") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "MmCompactionIsolateMigratepagesFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'startPfn") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'endPfn") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'nrScanned") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nrTaken") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData MmCompactionIsolateMigratepagesFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MmCompactionIsolateMigratepagesFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MmCompactionIsolateMigratepagesFtraceEvent'startPfn x__)
                (Control.DeepSeq.deepseq
                   (_MmCompactionIsolateMigratepagesFtraceEvent'endPfn x__)
                   (Control.DeepSeq.deepseq
                      (_MmCompactionIsolateMigratepagesFtraceEvent'nrScanned x__)
                      (Control.DeepSeq.deepseq
                         (_MmCompactionIsolateMigratepagesFtraceEvent'nrTaken x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.nid' @:: Lens' MmCompactionKcompactdSleepFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'nid' @:: Lens' MmCompactionKcompactdSleepFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data MmCompactionKcompactdSleepFtraceEvent
  = MmCompactionKcompactdSleepFtraceEvent'_constructor {_MmCompactionKcompactdSleepFtraceEvent'nid :: !(Prelude.Maybe Data.Int.Int32),
                                                        _MmCompactionKcompactdSleepFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MmCompactionKcompactdSleepFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MmCompactionKcompactdSleepFtraceEvent "nid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionKcompactdSleepFtraceEvent'nid
           (\ x__ y__
              -> x__ {_MmCompactionKcompactdSleepFtraceEvent'nid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionKcompactdSleepFtraceEvent "maybe'nid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionKcompactdSleepFtraceEvent'nid
           (\ x__ y__
              -> x__ {_MmCompactionKcompactdSleepFtraceEvent'nid = y__}))
        Prelude.id
instance Data.ProtoLens.Message MmCompactionKcompactdSleepFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.MmCompactionKcompactdSleepFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \%MmCompactionKcompactdSleepFtraceEvent\DC2\DLE\n\
      \\ETXnid\CAN\SOH \SOH(\ENQR\ETXnid"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        nid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nid")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionKcompactdSleepFtraceEvent
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, nid__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MmCompactionKcompactdSleepFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__
                {_MmCompactionKcompactdSleepFtraceEvent'_unknownFields = y__})
  defMessage
    = MmCompactionKcompactdSleepFtraceEvent'_constructor
        {_MmCompactionKcompactdSleepFtraceEvent'nid = Prelude.Nothing,
         _MmCompactionKcompactdSleepFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MmCompactionKcompactdSleepFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MmCompactionKcompactdSleepFtraceEvent
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
                                       "nid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nid") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "MmCompactionKcompactdSleepFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nid") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData MmCompactionKcompactdSleepFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MmCompactionKcompactdSleepFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MmCompactionKcompactdSleepFtraceEvent'nid x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.nid' @:: Lens' MmCompactionKcompactdWakeFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'nid' @:: Lens' MmCompactionKcompactdWakeFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.order' @:: Lens' MmCompactionKcompactdWakeFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'order' @:: Lens' MmCompactionKcompactdWakeFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.classzoneIdx' @:: Lens' MmCompactionKcompactdWakeFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'classzoneIdx' @:: Lens' MmCompactionKcompactdWakeFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.highestZoneidx' @:: Lens' MmCompactionKcompactdWakeFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'highestZoneidx' @:: Lens' MmCompactionKcompactdWakeFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data MmCompactionKcompactdWakeFtraceEvent
  = MmCompactionKcompactdWakeFtraceEvent'_constructor {_MmCompactionKcompactdWakeFtraceEvent'nid :: !(Prelude.Maybe Data.Int.Int32),
                                                       _MmCompactionKcompactdWakeFtraceEvent'order :: !(Prelude.Maybe Data.Int.Int32),
                                                       _MmCompactionKcompactdWakeFtraceEvent'classzoneIdx :: !(Prelude.Maybe Data.Word.Word32),
                                                       _MmCompactionKcompactdWakeFtraceEvent'highestZoneidx :: !(Prelude.Maybe Data.Word.Word32),
                                                       _MmCompactionKcompactdWakeFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MmCompactionKcompactdWakeFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MmCompactionKcompactdWakeFtraceEvent "nid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionKcompactdWakeFtraceEvent'nid
           (\ x__ y__
              -> x__ {_MmCompactionKcompactdWakeFtraceEvent'nid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionKcompactdWakeFtraceEvent "maybe'nid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionKcompactdWakeFtraceEvent'nid
           (\ x__ y__
              -> x__ {_MmCompactionKcompactdWakeFtraceEvent'nid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionKcompactdWakeFtraceEvent "order" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionKcompactdWakeFtraceEvent'order
           (\ x__ y__
              -> x__ {_MmCompactionKcompactdWakeFtraceEvent'order = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionKcompactdWakeFtraceEvent "maybe'order" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionKcompactdWakeFtraceEvent'order
           (\ x__ y__
              -> x__ {_MmCompactionKcompactdWakeFtraceEvent'order = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionKcompactdWakeFtraceEvent "classzoneIdx" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionKcompactdWakeFtraceEvent'classzoneIdx
           (\ x__ y__
              -> x__ {_MmCompactionKcompactdWakeFtraceEvent'classzoneIdx = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionKcompactdWakeFtraceEvent "maybe'classzoneIdx" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionKcompactdWakeFtraceEvent'classzoneIdx
           (\ x__ y__
              -> x__ {_MmCompactionKcompactdWakeFtraceEvent'classzoneIdx = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionKcompactdWakeFtraceEvent "highestZoneidx" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionKcompactdWakeFtraceEvent'highestZoneidx
           (\ x__ y__
              -> x__
                   {_MmCompactionKcompactdWakeFtraceEvent'highestZoneidx = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionKcompactdWakeFtraceEvent "maybe'highestZoneidx" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionKcompactdWakeFtraceEvent'highestZoneidx
           (\ x__ y__
              -> x__
                   {_MmCompactionKcompactdWakeFtraceEvent'highestZoneidx = y__}))
        Prelude.id
instance Data.ProtoLens.Message MmCompactionKcompactdWakeFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.MmCompactionKcompactdWakeFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \$MmCompactionKcompactdWakeFtraceEvent\DC2\DLE\n\
      \\ETXnid\CAN\SOH \SOH(\ENQR\ETXnid\DC2\DC4\n\
      \\ENQorder\CAN\STX \SOH(\ENQR\ENQorder\DC2#\n\
      \\rclasszone_idx\CAN\ETX \SOH(\rR\fclasszoneIdx\DC2'\n\
      \\SIhighest_zoneidx\CAN\EOT \SOH(\rR\SOhighestZoneidx"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        nid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nid")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionKcompactdWakeFtraceEvent
        order__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "order"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'order")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionKcompactdWakeFtraceEvent
        classzoneIdx__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "classzone_idx"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'classzoneIdx")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionKcompactdWakeFtraceEvent
        highestZoneidx__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "highest_zoneidx"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'highestZoneidx")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionKcompactdWakeFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, nid__field_descriptor),
           (Data.ProtoLens.Tag 2, order__field_descriptor),
           (Data.ProtoLens.Tag 3, classzoneIdx__field_descriptor),
           (Data.ProtoLens.Tag 4, highestZoneidx__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MmCompactionKcompactdWakeFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__
                {_MmCompactionKcompactdWakeFtraceEvent'_unknownFields = y__})
  defMessage
    = MmCompactionKcompactdWakeFtraceEvent'_constructor
        {_MmCompactionKcompactdWakeFtraceEvent'nid = Prelude.Nothing,
         _MmCompactionKcompactdWakeFtraceEvent'order = Prelude.Nothing,
         _MmCompactionKcompactdWakeFtraceEvent'classzoneIdx = Prelude.Nothing,
         _MmCompactionKcompactdWakeFtraceEvent'highestZoneidx = Prelude.Nothing,
         _MmCompactionKcompactdWakeFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MmCompactionKcompactdWakeFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MmCompactionKcompactdWakeFtraceEvent
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
                                       "nid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nid") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "order"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"order") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "classzone_idx"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"classzoneIdx") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "highest_zoneidx"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"highestZoneidx") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "MmCompactionKcompactdWakeFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nid") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'order") _x
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
                          (Data.ProtoLens.Field.field @"maybe'classzoneIdx") _x
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
                             (Data.ProtoLens.Field.field @"maybe'highestZoneidx") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData MmCompactionKcompactdWakeFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MmCompactionKcompactdWakeFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MmCompactionKcompactdWakeFtraceEvent'nid x__)
                (Control.DeepSeq.deepseq
                   (_MmCompactionKcompactdWakeFtraceEvent'order x__)
                   (Control.DeepSeq.deepseq
                      (_MmCompactionKcompactdWakeFtraceEvent'classzoneIdx x__)
                      (Control.DeepSeq.deepseq
                         (_MmCompactionKcompactdWakeFtraceEvent'highestZoneidx x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.nrMigrated' @:: Lens' MmCompactionMigratepagesFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'nrMigrated' @:: Lens' MmCompactionMigratepagesFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.nrFailed' @:: Lens' MmCompactionMigratepagesFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'nrFailed' @:: Lens' MmCompactionMigratepagesFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data MmCompactionMigratepagesFtraceEvent
  = MmCompactionMigratepagesFtraceEvent'_constructor {_MmCompactionMigratepagesFtraceEvent'nrMigrated :: !(Prelude.Maybe Data.Word.Word64),
                                                      _MmCompactionMigratepagesFtraceEvent'nrFailed :: !(Prelude.Maybe Data.Word.Word64),
                                                      _MmCompactionMigratepagesFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MmCompactionMigratepagesFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MmCompactionMigratepagesFtraceEvent "nrMigrated" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionMigratepagesFtraceEvent'nrMigrated
           (\ x__ y__
              -> x__ {_MmCompactionMigratepagesFtraceEvent'nrMigrated = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionMigratepagesFtraceEvent "maybe'nrMigrated" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionMigratepagesFtraceEvent'nrMigrated
           (\ x__ y__
              -> x__ {_MmCompactionMigratepagesFtraceEvent'nrMigrated = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionMigratepagesFtraceEvent "nrFailed" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionMigratepagesFtraceEvent'nrFailed
           (\ x__ y__
              -> x__ {_MmCompactionMigratepagesFtraceEvent'nrFailed = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionMigratepagesFtraceEvent "maybe'nrFailed" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionMigratepagesFtraceEvent'nrFailed
           (\ x__ y__
              -> x__ {_MmCompactionMigratepagesFtraceEvent'nrFailed = y__}))
        Prelude.id
instance Data.ProtoLens.Message MmCompactionMigratepagesFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.MmCompactionMigratepagesFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \#MmCompactionMigratepagesFtraceEvent\DC2\US\n\
      \\vnr_migrated\CAN\SOH \SOH(\EOTR\n\
      \nrMigrated\DC2\ESC\n\
      \\tnr_failed\CAN\STX \SOH(\EOTR\bnrFailed"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        nrMigrated__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nr_migrated"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nrMigrated")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionMigratepagesFtraceEvent
        nrFailed__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nr_failed"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nrFailed")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionMigratepagesFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, nrMigrated__field_descriptor),
           (Data.ProtoLens.Tag 2, nrFailed__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MmCompactionMigratepagesFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_MmCompactionMigratepagesFtraceEvent'_unknownFields = y__})
  defMessage
    = MmCompactionMigratepagesFtraceEvent'_constructor
        {_MmCompactionMigratepagesFtraceEvent'nrMigrated = Prelude.Nothing,
         _MmCompactionMigratepagesFtraceEvent'nrFailed = Prelude.Nothing,
         _MmCompactionMigratepagesFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MmCompactionMigratepagesFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MmCompactionMigratepagesFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "nr_migrated"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nrMigrated") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "nr_failed"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nrFailed") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "MmCompactionMigratepagesFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'nrMigrated") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nrFailed") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData MmCompactionMigratepagesFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MmCompactionMigratepagesFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MmCompactionMigratepagesFtraceEvent'nrMigrated x__)
                (Control.DeepSeq.deepseq
                   (_MmCompactionMigratepagesFtraceEvent'nrFailed x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.nid' @:: Lens' MmCompactionSuitableFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'nid' @:: Lens' MmCompactionSuitableFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.idx' @:: Lens' MmCompactionSuitableFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'idx' @:: Lens' MmCompactionSuitableFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.order' @:: Lens' MmCompactionSuitableFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'order' @:: Lens' MmCompactionSuitableFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.ret' @:: Lens' MmCompactionSuitableFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'ret' @:: Lens' MmCompactionSuitableFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data MmCompactionSuitableFtraceEvent
  = MmCompactionSuitableFtraceEvent'_constructor {_MmCompactionSuitableFtraceEvent'nid :: !(Prelude.Maybe Data.Int.Int32),
                                                  _MmCompactionSuitableFtraceEvent'idx :: !(Prelude.Maybe Data.Word.Word32),
                                                  _MmCompactionSuitableFtraceEvent'order :: !(Prelude.Maybe Data.Int.Int32),
                                                  _MmCompactionSuitableFtraceEvent'ret :: !(Prelude.Maybe Data.Int.Int32),
                                                  _MmCompactionSuitableFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MmCompactionSuitableFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MmCompactionSuitableFtraceEvent "nid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionSuitableFtraceEvent'nid
           (\ x__ y__ -> x__ {_MmCompactionSuitableFtraceEvent'nid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionSuitableFtraceEvent "maybe'nid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionSuitableFtraceEvent'nid
           (\ x__ y__ -> x__ {_MmCompactionSuitableFtraceEvent'nid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionSuitableFtraceEvent "idx" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionSuitableFtraceEvent'idx
           (\ x__ y__ -> x__ {_MmCompactionSuitableFtraceEvent'idx = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionSuitableFtraceEvent "maybe'idx" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionSuitableFtraceEvent'idx
           (\ x__ y__ -> x__ {_MmCompactionSuitableFtraceEvent'idx = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionSuitableFtraceEvent "order" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionSuitableFtraceEvent'order
           (\ x__ y__ -> x__ {_MmCompactionSuitableFtraceEvent'order = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionSuitableFtraceEvent "maybe'order" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionSuitableFtraceEvent'order
           (\ x__ y__ -> x__ {_MmCompactionSuitableFtraceEvent'order = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionSuitableFtraceEvent "ret" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionSuitableFtraceEvent'ret
           (\ x__ y__ -> x__ {_MmCompactionSuitableFtraceEvent'ret = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionSuitableFtraceEvent "maybe'ret" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionSuitableFtraceEvent'ret
           (\ x__ y__ -> x__ {_MmCompactionSuitableFtraceEvent'ret = y__}))
        Prelude.id
instance Data.ProtoLens.Message MmCompactionSuitableFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.MmCompactionSuitableFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\USMmCompactionSuitableFtraceEvent\DC2\DLE\n\
      \\ETXnid\CAN\SOH \SOH(\ENQR\ETXnid\DC2\DLE\n\
      \\ETXidx\CAN\STX \SOH(\rR\ETXidx\DC2\DC4\n\
      \\ENQorder\CAN\ETX \SOH(\ENQR\ENQorder\DC2\DLE\n\
      \\ETXret\CAN\EOT \SOH(\ENQR\ETXret"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        nid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nid")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionSuitableFtraceEvent
        idx__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "idx"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'idx")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionSuitableFtraceEvent
        order__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "order"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'order")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionSuitableFtraceEvent
        ret__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ret"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ret")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionSuitableFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, nid__field_descriptor),
           (Data.ProtoLens.Tag 2, idx__field_descriptor),
           (Data.ProtoLens.Tag 3, order__field_descriptor),
           (Data.ProtoLens.Tag 4, ret__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MmCompactionSuitableFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_MmCompactionSuitableFtraceEvent'_unknownFields = y__})
  defMessage
    = MmCompactionSuitableFtraceEvent'_constructor
        {_MmCompactionSuitableFtraceEvent'nid = Prelude.Nothing,
         _MmCompactionSuitableFtraceEvent'idx = Prelude.Nothing,
         _MmCompactionSuitableFtraceEvent'order = Prelude.Nothing,
         _MmCompactionSuitableFtraceEvent'ret = Prelude.Nothing,
         _MmCompactionSuitableFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MmCompactionSuitableFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MmCompactionSuitableFtraceEvent
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
                                       "nid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nid") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "idx"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"idx") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "order"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"order") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ret"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ret") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "MmCompactionSuitableFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nid") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'idx") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'order") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ret") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData MmCompactionSuitableFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MmCompactionSuitableFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MmCompactionSuitableFtraceEvent'nid x__)
                (Control.DeepSeq.deepseq
                   (_MmCompactionSuitableFtraceEvent'idx x__)
                   (Control.DeepSeq.deepseq
                      (_MmCompactionSuitableFtraceEvent'order x__)
                      (Control.DeepSeq.deepseq
                         (_MmCompactionSuitableFtraceEvent'ret x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.order' @:: Lens' MmCompactionTryToCompactPagesFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'order' @:: Lens' MmCompactionTryToCompactPagesFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.gfpMask' @:: Lens' MmCompactionTryToCompactPagesFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'gfpMask' @:: Lens' MmCompactionTryToCompactPagesFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.mode' @:: Lens' MmCompactionTryToCompactPagesFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'mode' @:: Lens' MmCompactionTryToCompactPagesFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.prio' @:: Lens' MmCompactionTryToCompactPagesFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'prio' @:: Lens' MmCompactionTryToCompactPagesFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data MmCompactionTryToCompactPagesFtraceEvent
  = MmCompactionTryToCompactPagesFtraceEvent'_constructor {_MmCompactionTryToCompactPagesFtraceEvent'order :: !(Prelude.Maybe Data.Int.Int32),
                                                           _MmCompactionTryToCompactPagesFtraceEvent'gfpMask :: !(Prelude.Maybe Data.Word.Word32),
                                                           _MmCompactionTryToCompactPagesFtraceEvent'mode :: !(Prelude.Maybe Data.Word.Word32),
                                                           _MmCompactionTryToCompactPagesFtraceEvent'prio :: !(Prelude.Maybe Data.Int.Int32),
                                                           _MmCompactionTryToCompactPagesFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MmCompactionTryToCompactPagesFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MmCompactionTryToCompactPagesFtraceEvent "order" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionTryToCompactPagesFtraceEvent'order
           (\ x__ y__
              -> x__ {_MmCompactionTryToCompactPagesFtraceEvent'order = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionTryToCompactPagesFtraceEvent "maybe'order" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionTryToCompactPagesFtraceEvent'order
           (\ x__ y__
              -> x__ {_MmCompactionTryToCompactPagesFtraceEvent'order = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionTryToCompactPagesFtraceEvent "gfpMask" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionTryToCompactPagesFtraceEvent'gfpMask
           (\ x__ y__
              -> x__ {_MmCompactionTryToCompactPagesFtraceEvent'gfpMask = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionTryToCompactPagesFtraceEvent "maybe'gfpMask" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionTryToCompactPagesFtraceEvent'gfpMask
           (\ x__ y__
              -> x__ {_MmCompactionTryToCompactPagesFtraceEvent'gfpMask = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionTryToCompactPagesFtraceEvent "mode" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionTryToCompactPagesFtraceEvent'mode
           (\ x__ y__
              -> x__ {_MmCompactionTryToCompactPagesFtraceEvent'mode = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionTryToCompactPagesFtraceEvent "maybe'mode" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionTryToCompactPagesFtraceEvent'mode
           (\ x__ y__
              -> x__ {_MmCompactionTryToCompactPagesFtraceEvent'mode = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionTryToCompactPagesFtraceEvent "prio" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionTryToCompactPagesFtraceEvent'prio
           (\ x__ y__
              -> x__ {_MmCompactionTryToCompactPagesFtraceEvent'prio = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionTryToCompactPagesFtraceEvent "maybe'prio" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionTryToCompactPagesFtraceEvent'prio
           (\ x__ y__
              -> x__ {_MmCompactionTryToCompactPagesFtraceEvent'prio = y__}))
        Prelude.id
instance Data.ProtoLens.Message MmCompactionTryToCompactPagesFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.MmCompactionTryToCompactPagesFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \(MmCompactionTryToCompactPagesFtraceEvent\DC2\DC4\n\
      \\ENQorder\CAN\SOH \SOH(\ENQR\ENQorder\DC2\EM\n\
      \\bgfp_mask\CAN\STX \SOH(\rR\agfpMask\DC2\DC2\n\
      \\EOTmode\CAN\ETX \SOH(\rR\EOTmode\DC2\DC2\n\
      \\EOTprio\CAN\EOT \SOH(\ENQR\EOTprio"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        order__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "order"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'order")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionTryToCompactPagesFtraceEvent
        gfpMask__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gfp_mask"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gfpMask")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionTryToCompactPagesFtraceEvent
        mode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mode"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mode")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionTryToCompactPagesFtraceEvent
        prio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "prio"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'prio")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionTryToCompactPagesFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, order__field_descriptor),
           (Data.ProtoLens.Tag 2, gfpMask__field_descriptor),
           (Data.ProtoLens.Tag 3, mode__field_descriptor),
           (Data.ProtoLens.Tag 4, prio__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MmCompactionTryToCompactPagesFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__
                {_MmCompactionTryToCompactPagesFtraceEvent'_unknownFields = y__})
  defMessage
    = MmCompactionTryToCompactPagesFtraceEvent'_constructor
        {_MmCompactionTryToCompactPagesFtraceEvent'order = Prelude.Nothing,
         _MmCompactionTryToCompactPagesFtraceEvent'gfpMask = Prelude.Nothing,
         _MmCompactionTryToCompactPagesFtraceEvent'mode = Prelude.Nothing,
         _MmCompactionTryToCompactPagesFtraceEvent'prio = Prelude.Nothing,
         _MmCompactionTryToCompactPagesFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MmCompactionTryToCompactPagesFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MmCompactionTryToCompactPagesFtraceEvent
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
                                       "order"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"order") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "gfp_mask"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"gfpMask") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "mode"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"mode") y x)
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
          (do loop Data.ProtoLens.defMessage)
          "MmCompactionTryToCompactPagesFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'order") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gfpMask") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'mode") _x
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
instance Control.DeepSeq.NFData MmCompactionTryToCompactPagesFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MmCompactionTryToCompactPagesFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MmCompactionTryToCompactPagesFtraceEvent'order x__)
                (Control.DeepSeq.deepseq
                   (_MmCompactionTryToCompactPagesFtraceEvent'gfpMask x__)
                   (Control.DeepSeq.deepseq
                      (_MmCompactionTryToCompactPagesFtraceEvent'mode x__)
                      (Control.DeepSeq.deepseq
                         (_MmCompactionTryToCompactPagesFtraceEvent'prio x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.nid' @:: Lens' MmCompactionWakeupKcompactdFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'nid' @:: Lens' MmCompactionWakeupKcompactdFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.order' @:: Lens' MmCompactionWakeupKcompactdFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'order' @:: Lens' MmCompactionWakeupKcompactdFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.classzoneIdx' @:: Lens' MmCompactionWakeupKcompactdFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'classzoneIdx' @:: Lens' MmCompactionWakeupKcompactdFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.highestZoneidx' @:: Lens' MmCompactionWakeupKcompactdFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields.maybe'highestZoneidx' @:: Lens' MmCompactionWakeupKcompactdFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data MmCompactionWakeupKcompactdFtraceEvent
  = MmCompactionWakeupKcompactdFtraceEvent'_constructor {_MmCompactionWakeupKcompactdFtraceEvent'nid :: !(Prelude.Maybe Data.Int.Int32),
                                                         _MmCompactionWakeupKcompactdFtraceEvent'order :: !(Prelude.Maybe Data.Int.Int32),
                                                         _MmCompactionWakeupKcompactdFtraceEvent'classzoneIdx :: !(Prelude.Maybe Data.Word.Word32),
                                                         _MmCompactionWakeupKcompactdFtraceEvent'highestZoneidx :: !(Prelude.Maybe Data.Word.Word32),
                                                         _MmCompactionWakeupKcompactdFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MmCompactionWakeupKcompactdFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MmCompactionWakeupKcompactdFtraceEvent "nid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionWakeupKcompactdFtraceEvent'nid
           (\ x__ y__
              -> x__ {_MmCompactionWakeupKcompactdFtraceEvent'nid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionWakeupKcompactdFtraceEvent "maybe'nid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionWakeupKcompactdFtraceEvent'nid
           (\ x__ y__
              -> x__ {_MmCompactionWakeupKcompactdFtraceEvent'nid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionWakeupKcompactdFtraceEvent "order" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionWakeupKcompactdFtraceEvent'order
           (\ x__ y__
              -> x__ {_MmCompactionWakeupKcompactdFtraceEvent'order = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionWakeupKcompactdFtraceEvent "maybe'order" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionWakeupKcompactdFtraceEvent'order
           (\ x__ y__
              -> x__ {_MmCompactionWakeupKcompactdFtraceEvent'order = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionWakeupKcompactdFtraceEvent "classzoneIdx" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionWakeupKcompactdFtraceEvent'classzoneIdx
           (\ x__ y__
              -> x__
                   {_MmCompactionWakeupKcompactdFtraceEvent'classzoneIdx = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionWakeupKcompactdFtraceEvent "maybe'classzoneIdx" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionWakeupKcompactdFtraceEvent'classzoneIdx
           (\ x__ y__
              -> x__
                   {_MmCompactionWakeupKcompactdFtraceEvent'classzoneIdx = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmCompactionWakeupKcompactdFtraceEvent "highestZoneidx" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionWakeupKcompactdFtraceEvent'highestZoneidx
           (\ x__ y__
              -> x__
                   {_MmCompactionWakeupKcompactdFtraceEvent'highestZoneidx = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmCompactionWakeupKcompactdFtraceEvent "maybe'highestZoneidx" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmCompactionWakeupKcompactdFtraceEvent'highestZoneidx
           (\ x__ y__
              -> x__
                   {_MmCompactionWakeupKcompactdFtraceEvent'highestZoneidx = y__}))
        Prelude.id
instance Data.ProtoLens.Message MmCompactionWakeupKcompactdFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.MmCompactionWakeupKcompactdFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \&MmCompactionWakeupKcompactdFtraceEvent\DC2\DLE\n\
      \\ETXnid\CAN\SOH \SOH(\ENQR\ETXnid\DC2\DC4\n\
      \\ENQorder\CAN\STX \SOH(\ENQR\ENQorder\DC2#\n\
      \\rclasszone_idx\CAN\ETX \SOH(\rR\fclasszoneIdx\DC2'\n\
      \\SIhighest_zoneidx\CAN\EOT \SOH(\rR\SOhighestZoneidx"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        nid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nid")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionWakeupKcompactdFtraceEvent
        order__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "order"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'order")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionWakeupKcompactdFtraceEvent
        classzoneIdx__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "classzone_idx"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'classzoneIdx")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionWakeupKcompactdFtraceEvent
        highestZoneidx__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "highest_zoneidx"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'highestZoneidx")) ::
              Data.ProtoLens.FieldDescriptor MmCompactionWakeupKcompactdFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, nid__field_descriptor),
           (Data.ProtoLens.Tag 2, order__field_descriptor),
           (Data.ProtoLens.Tag 3, classzoneIdx__field_descriptor),
           (Data.ProtoLens.Tag 4, highestZoneidx__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MmCompactionWakeupKcompactdFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__
                {_MmCompactionWakeupKcompactdFtraceEvent'_unknownFields = y__})
  defMessage
    = MmCompactionWakeupKcompactdFtraceEvent'_constructor
        {_MmCompactionWakeupKcompactdFtraceEvent'nid = Prelude.Nothing,
         _MmCompactionWakeupKcompactdFtraceEvent'order = Prelude.Nothing,
         _MmCompactionWakeupKcompactdFtraceEvent'classzoneIdx = Prelude.Nothing,
         _MmCompactionWakeupKcompactdFtraceEvent'highestZoneidx = Prelude.Nothing,
         _MmCompactionWakeupKcompactdFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MmCompactionWakeupKcompactdFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MmCompactionWakeupKcompactdFtraceEvent
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
                                       "nid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nid") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "order"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"order") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "classzone_idx"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"classzoneIdx") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "highest_zoneidx"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"highestZoneidx") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "MmCompactionWakeupKcompactdFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nid") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'order") _x
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
                          (Data.ProtoLens.Field.field @"maybe'classzoneIdx") _x
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
                             (Data.ProtoLens.Field.field @"maybe'highestZoneidx") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData MmCompactionWakeupKcompactdFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MmCompactionWakeupKcompactdFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MmCompactionWakeupKcompactdFtraceEvent'nid x__)
                (Control.DeepSeq.deepseq
                   (_MmCompactionWakeupKcompactdFtraceEvent'order x__)
                   (Control.DeepSeq.deepseq
                      (_MmCompactionWakeupKcompactdFtraceEvent'classzoneIdx x__)
                      (Control.DeepSeq.deepseq
                         (_MmCompactionWakeupKcompactdFtraceEvent'highestZoneidx x__) ()))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \-protos/perfetto/trace/ftrace/compaction.proto\DC2\SIperfetto.protos\"\168\SOH\n\
    \\FSMmCompactionBeginFtraceEvent\DC2\GS\n\
    \\n\
    \zone_start\CAN\SOH \SOH(\EOTR\tzoneStart\DC2\US\n\
    \\vmigrate_pfn\CAN\STX \SOH(\EOTR\n\
    \migratePfn\DC2\EM\n\
    \\bfree_pfn\CAN\ETX \SOH(\EOTR\afreePfn\DC2\EM\n\
    \\bzone_end\CAN\EOT \SOH(\EOTR\azoneEnd\DC2\DC2\n\
    \\EOTsync\CAN\ENQ \SOH(\rR\EOTsync\"\198\SOH\n\
    \&MmCompactionDeferCompactionFtraceEvent\DC2\DLE\n\
    \\ETXnid\CAN\SOH \SOH(\ENQR\ETXnid\DC2\DLE\n\
    \\ETXidx\CAN\STX \SOH(\rR\ETXidx\DC2\DC4\n\
    \\ENQorder\CAN\ETX \SOH(\ENQR\ENQorder\DC2\RS\n\
    \\n\
    \considered\CAN\EOT \SOH(\rR\n\
    \considered\DC2\US\n\
    \\vdefer_shift\CAN\ENQ \SOH(\rR\n\
    \deferShift\DC2!\n\
    \\forder_failed\CAN\ACK \SOH(\ENQR\vorderFailed\"\191\SOH\n\
    \\USMmCompactionDeferredFtraceEvent\DC2\DLE\n\
    \\ETXnid\CAN\SOH \SOH(\ENQR\ETXnid\DC2\DLE\n\
    \\ETXidx\CAN\STX \SOH(\rR\ETXidx\DC2\DC4\n\
    \\ENQorder\CAN\ETX \SOH(\ENQR\ENQorder\DC2\RS\n\
    \\n\
    \considered\CAN\EOT \SOH(\rR\n\
    \considered\DC2\US\n\
    \\vdefer_shift\CAN\ENQ \SOH(\rR\n\
    \deferShift\DC2!\n\
    \\forder_failed\CAN\ACK \SOH(\ENQR\vorderFailed\"\193\SOH\n\
    \!MmCompactionDeferResetFtraceEvent\DC2\DLE\n\
    \\ETXnid\CAN\SOH \SOH(\ENQR\ETXnid\DC2\DLE\n\
    \\ETXidx\CAN\STX \SOH(\rR\ETXidx\DC2\DC4\n\
    \\ENQorder\CAN\ETX \SOH(\ENQR\ENQorder\DC2\RS\n\
    \\n\
    \considered\CAN\EOT \SOH(\rR\n\
    \considered\DC2\US\n\
    \\vdefer_shift\CAN\ENQ \SOH(\rR\n\
    \deferShift\DC2!\n\
    \\forder_failed\CAN\ACK \SOH(\ENQR\vorderFailed\"\190\SOH\n\
    \\SUBMmCompactionEndFtraceEvent\DC2\GS\n\
    \\n\
    \zone_start\CAN\SOH \SOH(\EOTR\tzoneStart\DC2\US\n\
    \\vmigrate_pfn\CAN\STX \SOH(\EOTR\n\
    \migratePfn\DC2\EM\n\
    \\bfree_pfn\CAN\ETX \SOH(\EOTR\afreePfn\DC2\EM\n\
    \\bzone_end\CAN\EOT \SOH(\EOTR\azoneEnd\DC2\DC2\n\
    \\EOTsync\CAN\ENQ \SOH(\rR\EOTsync\DC2\SYN\n\
    \\ACKstatus\CAN\ACK \SOH(\ENQR\ACKstatus\"m\n\
    \\USMmCompactionFinishedFtraceEvent\DC2\DLE\n\
    \\ETXnid\CAN\SOH \SOH(\ENQR\ETXnid\DC2\DLE\n\
    \\ETXidx\CAN\STX \SOH(\rR\ETXidx\DC2\DC4\n\
    \\ENQorder\CAN\ETX \SOH(\ENQR\ENQorder\DC2\DLE\n\
    \\ETXret\CAN\EOT \SOH(\ENQR\ETXret\"\153\SOH\n\
    \'MmCompactionIsolateFreepagesFtraceEvent\DC2\ESC\n\
    \\tstart_pfn\CAN\SOH \SOH(\EOTR\bstartPfn\DC2\ETB\n\
    \\aend_pfn\CAN\STX \SOH(\EOTR\ACKendPfn\DC2\GS\n\
    \\n\
    \nr_scanned\CAN\ETX \SOH(\EOTR\tnrScanned\DC2\EM\n\
    \\bnr_taken\CAN\EOT \SOH(\EOTR\anrTaken\"\156\SOH\n\
    \*MmCompactionIsolateMigratepagesFtraceEvent\DC2\ESC\n\
    \\tstart_pfn\CAN\SOH \SOH(\EOTR\bstartPfn\DC2\ETB\n\
    \\aend_pfn\CAN\STX \SOH(\EOTR\ACKendPfn\DC2\GS\n\
    \\n\
    \nr_scanned\CAN\ETX \SOH(\EOTR\tnrScanned\DC2\EM\n\
    \\bnr_taken\CAN\EOT \SOH(\EOTR\anrTaken\"9\n\
    \%MmCompactionKcompactdSleepFtraceEvent\DC2\DLE\n\
    \\ETXnid\CAN\SOH \SOH(\ENQR\ETXnid\"\156\SOH\n\
    \$MmCompactionKcompactdWakeFtraceEvent\DC2\DLE\n\
    \\ETXnid\CAN\SOH \SOH(\ENQR\ETXnid\DC2\DC4\n\
    \\ENQorder\CAN\STX \SOH(\ENQR\ENQorder\DC2#\n\
    \\rclasszone_idx\CAN\ETX \SOH(\rR\fclasszoneIdx\DC2'\n\
    \\SIhighest_zoneidx\CAN\EOT \SOH(\rR\SOhighestZoneidx\"c\n\
    \#MmCompactionMigratepagesFtraceEvent\DC2\US\n\
    \\vnr_migrated\CAN\SOH \SOH(\EOTR\n\
    \nrMigrated\DC2\ESC\n\
    \\tnr_failed\CAN\STX \SOH(\EOTR\bnrFailed\"m\n\
    \\USMmCompactionSuitableFtraceEvent\DC2\DLE\n\
    \\ETXnid\CAN\SOH \SOH(\ENQR\ETXnid\DC2\DLE\n\
    \\ETXidx\CAN\STX \SOH(\rR\ETXidx\DC2\DC4\n\
    \\ENQorder\CAN\ETX \SOH(\ENQR\ENQorder\DC2\DLE\n\
    \\ETXret\CAN\EOT \SOH(\ENQR\ETXret\"\131\SOH\n\
    \(MmCompactionTryToCompactPagesFtraceEvent\DC2\DC4\n\
    \\ENQorder\CAN\SOH \SOH(\ENQR\ENQorder\DC2\EM\n\
    \\bgfp_mask\CAN\STX \SOH(\rR\agfpMask\DC2\DC2\n\
    \\EOTmode\CAN\ETX \SOH(\rR\EOTmode\DC2\DC2\n\
    \\EOTprio\CAN\EOT \SOH(\ENQR\EOTprio\"\158\SOH\n\
    \&MmCompactionWakeupKcompactdFtraceEvent\DC2\DLE\n\
    \\ETXnid\CAN\SOH \SOH(\ENQR\ETXnid\DC2\DC4\n\
    \\ENQorder\CAN\STX \SOH(\ENQR\ENQorder\DC2#\n\
    \\rclasszone_idx\CAN\ETX \SOH(\rR\fclasszoneIdx\DC2'\n\
    \\SIhighest_zoneidx\CAN\EOT \SOH(\rR\SOhighestZoneidxJ\241#\n\
    \\ACK\DC2\EOT\EOT\NUL^\SOH\n\
    \a\n\
    \\SOH\f\DC2\ETX\EOT\NUL\DC22W Autogenerated by:\n\
    \ ../../src/tools/ftrace_proto_gen/ftrace_proto_gen.cc\n\
    \ Do not edit.\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\ENQ\NUL\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\a\NUL\r\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b$\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\b\STX!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\b\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\b\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\b\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\b\US \n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\t\STX\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\t\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\t\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\t\DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\t !\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\n\
    \\STX\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\n\
    \\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\n\
    \\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\n\
    \\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\n\
    \\GS\RS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\v\STX\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX\v\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\v\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\v\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\v\GS\RS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX\f\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\EOT\DC2\ETX\f\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX\f\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\f\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\f\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\SO\NUL\NAK\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\SO\b.\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\SI\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\SI\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\SI\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\SI\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\SI\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\DLE\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX\DLE\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\DLE\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\DLE\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\DLE\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX\DC1\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\EOT\DC2\ETX\DC1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX\DC1\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX\DC1\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX\DC1\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX\DC2\STX!\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\EOT\DC2\ETX\DC2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX\DC2\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX\DC2\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX\DC2\US \n\
    \\v\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETX\DC3\STX\"\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\EOT\DC2\ETX\DC3\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ENQ\DC2\ETX\DC3\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETX\DC3\DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETX\DC3 !\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\ETX\DC4\STX\"\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\EOT\DC2\ETX\DC4\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ENQ\DC2\ETX\DC4\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\ETX\DC4\DC1\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\ETX\DC4 !\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT\SYN\NUL\GS\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\SYN\b'\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\ETB\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETX\ETB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX\ETB\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\ETB\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\ETB\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX\CAN\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETX\CAN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX\CAN\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX\CAN\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX\CAN\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX\EM\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\EOT\DC2\ETX\EM\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETX\EM\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX\EM\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX\EM\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETX\SUB\STX!\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\EOT\DC2\ETX\SUB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ENQ\DC2\ETX\SUB\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETX\SUB\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETX\SUB\US \n\
    \\v\n\
    \\EOT\EOT\STX\STX\EOT\DC2\ETX\ESC\STX\"\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\EOT\DC2\ETX\ESC\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ENQ\DC2\ETX\ESC\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\ETX\ESC\DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\ETX\ESC !\n\
    \\v\n\
    \\EOT\EOT\STX\STX\ENQ\DC2\ETX\FS\STX\"\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\EOT\DC2\ETX\FS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ENQ\DC2\ETX\FS\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\SOH\DC2\ETX\FS\DC1\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ETX\DC2\ETX\FS !\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOT\RS\NUL%\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX\RS\b)\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX\US\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETX\US\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX\US\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX\US\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX\US\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX \STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\EOT\DC2\ETX \STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETX \v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX \DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX \CAN\EM\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETX!\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\EOT\DC2\ETX!\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\ETX!\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETX!\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETX!\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\ETX\"\STX!\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\EOT\DC2\ETX\"\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ENQ\DC2\ETX\"\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\ETX\"\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\ETX\"\US \n\
    \\v\n\
    \\EOT\EOT\ETX\STX\EOT\DC2\ETX#\STX\"\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\EOT\DC2\ETX#\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ENQ\DC2\ETX#\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\SOH\DC2\ETX#\DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ETX\DC2\ETX# !\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ENQ\DC2\ETX$\STX\"\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\EOT\DC2\ETX$\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\ENQ\DC2\ETX$\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\SOH\DC2\ETX$\DC1\GS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\ETX\DC2\ETX$ !\n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOT&\NUL-\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX&\b\"\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX'\STX!\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\EOT\DC2\ETX'\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX'\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX'\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX'\US \n\
    \\v\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETX(\STX\"\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\EOT\DC2\ETX(\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETX(\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETX(\DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETX( !\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETX)\STX\US\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\EOT\DC2\ETX)\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ENQ\DC2\ETX)\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETX)\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETX)\GS\RS\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\ETX*\STX\US\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\EOT\DC2\ETX*\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ENQ\DC2\ETX*\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\ETX*\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\ETX*\GS\RS\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\EOT\DC2\ETX+\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\EOT\DC2\ETX+\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\ENQ\DC2\ETX+\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\SOH\DC2\ETX+\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\ETX\DC2\ETX+\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\ENQ\DC2\ETX,\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\EOT\DC2\ETX,\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\ENQ\DC2\ETX,\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\SOH\DC2\ETX,\DC1\ETB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\ETX\DC2\ETX,\SUB\ESC\n\
    \\n\
    \\n\
    \\STX\EOT\ENQ\DC2\EOT.\NUL3\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX.\b'\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETX/\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\ETX/\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETX/\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX/\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX/\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ETX0\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\EOT\DC2\ETX0\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\ETX0\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETX0\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETX0\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\ETX1\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\EOT\DC2\ETX1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ENQ\DC2\ETX1\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\ETX1\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\ETX1\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\ETX\DC2\ETX2\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\EOT\DC2\ETX2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\ENQ\DC2\ETX2\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\SOH\DC2\ETX2\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\ETX\DC2\ETX2\ETB\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\ACK\DC2\EOT4\NUL9\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETX4\b/\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETX5\STX \n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\EOT\DC2\ETX5\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETX5\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETX5\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETX5\RS\US\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\ETX6\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\EOT\DC2\ETX6\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\ETX6\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\ETX6\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\ETX6\FS\GS\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\STX\DC2\ETX7\STX!\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\EOT\DC2\ETX7\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ENQ\DC2\ETX7\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\SOH\DC2\ETX7\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ETX\DC2\ETX7\US \n\
    \\v\n\
    \\EOT\EOT\ACK\STX\ETX\DC2\ETX8\STX\US\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\EOT\DC2\ETX8\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\ENQ\DC2\ETX8\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\SOH\DC2\ETX8\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\ETX\DC2\ETX8\GS\RS\n\
    \\n\
    \\n\
    \\STX\EOT\a\DC2\EOT:\NUL?\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETX:\b2\n\
    \\v\n\
    \\EOT\EOT\a\STX\NUL\DC2\ETX;\STX \n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\EOT\DC2\ETX;\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ENQ\DC2\ETX;\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\ETX;\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\ETX;\RS\US\n\
    \\v\n\
    \\EOT\EOT\a\STX\SOH\DC2\ETX<\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\EOT\DC2\ETX<\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ENQ\DC2\ETX<\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\ETX<\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\ETX<\FS\GS\n\
    \\v\n\
    \\EOT\EOT\a\STX\STX\DC2\ETX=\STX!\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\EOT\DC2\ETX=\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\ENQ\DC2\ETX=\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\SOH\DC2\ETX=\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\ETX\DC2\ETX=\US \n\
    \\v\n\
    \\EOT\EOT\a\STX\ETX\DC2\ETX>\STX\US\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ETX\EOT\DC2\ETX>\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ETX\ENQ\DC2\ETX>\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ETX\SOH\DC2\ETX>\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ETX\ETX\DC2\ETX>\GS\RS\n\
    \\n\
    \\n\
    \\STX\EOT\b\DC2\EOT@\NULB\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\b\SOH\DC2\ETX@\b-\n\
    \\v\n\
    \\EOT\EOT\b\STX\NUL\DC2\ETXA\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\EOT\DC2\ETXA\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\ETXA\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\ETXA\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\ETXA\ETB\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\t\DC2\EOTC\NULH\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\t\SOH\DC2\ETXC\b,\n\
    \\v\n\
    \\EOT\EOT\t\STX\NUL\DC2\ETXD\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\EOT\DC2\ETXD\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ENQ\DC2\ETXD\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\ETXD\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\ETXD\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\t\STX\SOH\DC2\ETXE\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\EOT\DC2\ETXE\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\ENQ\DC2\ETXE\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\SOH\DC2\ETXE\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\ETX\DC2\ETXE\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\t\STX\STX\DC2\ETXF\STX$\n\
    \\f\n\
    \\ENQ\EOT\t\STX\STX\EOT\DC2\ETXF\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\STX\ENQ\DC2\ETXF\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\t\STX\STX\SOH\DC2\ETXF\DC2\US\n\
    \\f\n\
    \\ENQ\EOT\t\STX\STX\ETX\DC2\ETXF\"#\n\
    \\v\n\
    \\EOT\EOT\t\STX\ETX\DC2\ETXG\STX&\n\
    \\f\n\
    \\ENQ\EOT\t\STX\ETX\EOT\DC2\ETXG\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\ETX\ENQ\DC2\ETXG\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\t\STX\ETX\SOH\DC2\ETXG\DC2!\n\
    \\f\n\
    \\ENQ\EOT\t\STX\ETX\ETX\DC2\ETXG$%\n\
    \\n\
    \\n\
    \\STX\EOT\n\
    \\DC2\EOTI\NULL\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\n\
    \\SOH\DC2\ETXI\b+\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\ETXJ\STX\"\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\EOT\DC2\ETXJ\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ENQ\DC2\ETXJ\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\ETXJ\DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\ETXJ !\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\SOH\DC2\ETXK\STX \n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\EOT\DC2\ETXK\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ENQ\DC2\ETXK\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\SOH\DC2\ETXK\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ETX\DC2\ETXK\RS\US\n\
    \\n\
    \\n\
    \\STX\EOT\v\DC2\EOTM\NULR\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\v\SOH\DC2\ETXM\b'\n\
    \\v\n\
    \\EOT\EOT\v\STX\NUL\DC2\ETXN\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\EOT\DC2\ETXN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\ENQ\DC2\ETXN\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\ETXN\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\ETXN\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\v\STX\SOH\DC2\ETXO\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\EOT\DC2\ETXO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\ENQ\DC2\ETXO\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\SOH\DC2\ETXO\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\ETX\DC2\ETXO\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\v\STX\STX\DC2\ETXP\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\v\STX\STX\EOT\DC2\ETXP\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\STX\ENQ\DC2\ETXP\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\v\STX\STX\SOH\DC2\ETXP\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\v\STX\STX\ETX\DC2\ETXP\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\v\STX\ETX\DC2\ETXQ\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\v\STX\ETX\EOT\DC2\ETXQ\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\ETX\ENQ\DC2\ETXQ\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\v\STX\ETX\SOH\DC2\ETXQ\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\v\STX\ETX\ETX\DC2\ETXQ\ETB\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\f\DC2\EOTS\NULX\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\f\SOH\DC2\ETXS\b0\n\
    \\v\n\
    \\EOT\EOT\f\STX\NUL\DC2\ETXT\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\EOT\DC2\ETXT\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\ENQ\DC2\ETXT\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\ETXT\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\ETXT\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\f\STX\SOH\DC2\ETXU\STX\US\n\
    \\f\n\
    \\ENQ\EOT\f\STX\SOH\EOT\DC2\ETXU\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\SOH\ENQ\DC2\ETXU\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\f\STX\SOH\SOH\DC2\ETXU\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\f\STX\SOH\ETX\DC2\ETXU\GS\RS\n\
    \\v\n\
    \\EOT\EOT\f\STX\STX\DC2\ETXV\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\f\STX\STX\EOT\DC2\ETXV\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\STX\ENQ\DC2\ETXV\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\f\STX\STX\SOH\DC2\ETXV\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\f\STX\STX\ETX\DC2\ETXV\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\f\STX\ETX\DC2\ETXW\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ETX\EOT\DC2\ETXW\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ETX\ENQ\DC2\ETXW\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ETX\SOH\DC2\ETXW\DC1\NAK\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ETX\ETX\DC2\ETXW\CAN\EM\n\
    \\n\
    \\n\
    \\STX\EOT\r\DC2\EOTY\NUL^\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\r\SOH\DC2\ETXY\b.\n\
    \\v\n\
    \\EOT\EOT\r\STX\NUL\DC2\ETXZ\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\EOT\DC2\ETXZ\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\ENQ\DC2\ETXZ\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\SOH\DC2\ETXZ\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\ETX\DC2\ETXZ\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\r\STX\SOH\DC2\ETX[\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\r\STX\SOH\EOT\DC2\ETX[\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\SOH\ENQ\DC2\ETX[\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\r\STX\SOH\SOH\DC2\ETX[\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\r\STX\SOH\ETX\DC2\ETX[\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\r\STX\STX\DC2\ETX\\\STX$\n\
    \\f\n\
    \\ENQ\EOT\r\STX\STX\EOT\DC2\ETX\\\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\STX\ENQ\DC2\ETX\\\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\r\STX\STX\SOH\DC2\ETX\\\DC2\US\n\
    \\f\n\
    \\ENQ\EOT\r\STX\STX\ETX\DC2\ETX\\\"#\n\
    \\v\n\
    \\EOT\EOT\r\STX\ETX\DC2\ETX]\STX&\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ETX\EOT\DC2\ETX]\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ETX\ENQ\DC2\ETX]\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ETX\SOH\DC2\ETX]\DC2!\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ETX\ETX\DC2\ETX]$%"