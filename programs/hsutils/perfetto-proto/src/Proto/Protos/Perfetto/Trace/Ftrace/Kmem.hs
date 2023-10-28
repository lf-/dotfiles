{- This file was auto-generated from protos/perfetto/trace/ftrace/kmem.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Kmem (
        AllocPagesIommuEndFtraceEvent(), AllocPagesIommuFailFtraceEvent(),
        AllocPagesIommuStartFtraceEvent(), AllocPagesSysEndFtraceEvent(),
        AllocPagesSysFailFtraceEvent(), AllocPagesSysStartFtraceEvent(),
        DmaAllocContiguousRetryFtraceEvent(), IommuMapRangeFtraceEvent(),
        IommuSecPtblMapRangeEndFtraceEvent(),
        IommuSecPtblMapRangeStartFtraceEvent(),
        IonAllocBufferEndFtraceEvent(), IonAllocBufferFailFtraceEvent(),
        IonAllocBufferFallbackFtraceEvent(),
        IonAllocBufferStartFtraceEvent(), IonBufferCreateFtraceEvent(),
        IonBufferDestroyFtraceEvent(), IonCpAllocRetryFtraceEvent(),
        IonCpSecureBufferEndFtraceEvent(),
        IonCpSecureBufferStartFtraceEvent(), IonHeapGrowFtraceEvent(),
        IonHeapShrinkFtraceEvent(), IonPrefetchingFtraceEvent(),
        IonSecureCmaAddToPoolEndFtraceEvent(),
        IonSecureCmaAddToPoolStartFtraceEvent(),
        IonSecureCmaAllocateEndFtraceEvent(),
        IonSecureCmaAllocateStartFtraceEvent(),
        IonSecureCmaShrinkPoolEndFtraceEvent(),
        IonSecureCmaShrinkPoolStartFtraceEvent(), KfreeFtraceEvent(),
        KmallocFtraceEvent(), KmallocNodeFtraceEvent(),
        KmemCacheAllocFtraceEvent(), KmemCacheAllocNodeFtraceEvent(),
        KmemCacheFreeFtraceEvent(), MigratePagesEndFtraceEvent(),
        MigratePagesStartFtraceEvent(), MigrateRetryFtraceEvent(),
        MmPageAllocExtfragFtraceEvent(), MmPageAllocFtraceEvent(),
        MmPageAllocZoneLockedFtraceEvent(), MmPageFreeBatchedFtraceEvent(),
        MmPageFreeFtraceEvent(), MmPagePcpuDrainFtraceEvent(),
        RssStatFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.gfpFlags' @:: Lens' AllocPagesIommuEndFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'gfpFlags' @:: Lens' AllocPagesIommuEndFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.order' @:: Lens' AllocPagesIommuEndFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'order' @:: Lens' AllocPagesIommuEndFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data AllocPagesIommuEndFtraceEvent
  = AllocPagesIommuEndFtraceEvent'_constructor {_AllocPagesIommuEndFtraceEvent'gfpFlags :: !(Prelude.Maybe Data.Word.Word32),
                                                _AllocPagesIommuEndFtraceEvent'order :: !(Prelude.Maybe Data.Word.Word32),
                                                _AllocPagesIommuEndFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AllocPagesIommuEndFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AllocPagesIommuEndFtraceEvent "gfpFlags" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AllocPagesIommuEndFtraceEvent'gfpFlags
           (\ x__ y__ -> x__ {_AllocPagesIommuEndFtraceEvent'gfpFlags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AllocPagesIommuEndFtraceEvent "maybe'gfpFlags" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AllocPagesIommuEndFtraceEvent'gfpFlags
           (\ x__ y__ -> x__ {_AllocPagesIommuEndFtraceEvent'gfpFlags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AllocPagesIommuEndFtraceEvent "order" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AllocPagesIommuEndFtraceEvent'order
           (\ x__ y__ -> x__ {_AllocPagesIommuEndFtraceEvent'order = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AllocPagesIommuEndFtraceEvent "maybe'order" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AllocPagesIommuEndFtraceEvent'order
           (\ x__ y__ -> x__ {_AllocPagesIommuEndFtraceEvent'order = y__}))
        Prelude.id
instance Data.ProtoLens.Message AllocPagesIommuEndFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.AllocPagesIommuEndFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\GSAllocPagesIommuEndFtraceEvent\DC2\ESC\n\
      \\tgfp_flags\CAN\SOH \SOH(\rR\bgfpFlags\DC2\DC4\n\
      \\ENQorder\CAN\STX \SOH(\rR\ENQorder"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        gfpFlags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gfp_flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gfpFlags")) ::
              Data.ProtoLens.FieldDescriptor AllocPagesIommuEndFtraceEvent
        order__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "order"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'order")) ::
              Data.ProtoLens.FieldDescriptor AllocPagesIommuEndFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, gfpFlags__field_descriptor),
           (Data.ProtoLens.Tag 2, order__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AllocPagesIommuEndFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_AllocPagesIommuEndFtraceEvent'_unknownFields = y__})
  defMessage
    = AllocPagesIommuEndFtraceEvent'_constructor
        {_AllocPagesIommuEndFtraceEvent'gfpFlags = Prelude.Nothing,
         _AllocPagesIommuEndFtraceEvent'order = Prelude.Nothing,
         _AllocPagesIommuEndFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AllocPagesIommuEndFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser AllocPagesIommuEndFtraceEvent
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
                                       "gfp_flags"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gfpFlags") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "order"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"order") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "AllocPagesIommuEndFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gfpFlags") _x
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData AllocPagesIommuEndFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AllocPagesIommuEndFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AllocPagesIommuEndFtraceEvent'gfpFlags x__)
                (Control.DeepSeq.deepseq
                   (_AllocPagesIommuEndFtraceEvent'order x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.gfpFlags' @:: Lens' AllocPagesIommuFailFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'gfpFlags' @:: Lens' AllocPagesIommuFailFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.order' @:: Lens' AllocPagesIommuFailFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'order' @:: Lens' AllocPagesIommuFailFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data AllocPagesIommuFailFtraceEvent
  = AllocPagesIommuFailFtraceEvent'_constructor {_AllocPagesIommuFailFtraceEvent'gfpFlags :: !(Prelude.Maybe Data.Word.Word32),
                                                 _AllocPagesIommuFailFtraceEvent'order :: !(Prelude.Maybe Data.Word.Word32),
                                                 _AllocPagesIommuFailFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AllocPagesIommuFailFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AllocPagesIommuFailFtraceEvent "gfpFlags" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AllocPagesIommuFailFtraceEvent'gfpFlags
           (\ x__ y__
              -> x__ {_AllocPagesIommuFailFtraceEvent'gfpFlags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AllocPagesIommuFailFtraceEvent "maybe'gfpFlags" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AllocPagesIommuFailFtraceEvent'gfpFlags
           (\ x__ y__
              -> x__ {_AllocPagesIommuFailFtraceEvent'gfpFlags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AllocPagesIommuFailFtraceEvent "order" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AllocPagesIommuFailFtraceEvent'order
           (\ x__ y__ -> x__ {_AllocPagesIommuFailFtraceEvent'order = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AllocPagesIommuFailFtraceEvent "maybe'order" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AllocPagesIommuFailFtraceEvent'order
           (\ x__ y__ -> x__ {_AllocPagesIommuFailFtraceEvent'order = y__}))
        Prelude.id
instance Data.ProtoLens.Message AllocPagesIommuFailFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.AllocPagesIommuFailFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\RSAllocPagesIommuFailFtraceEvent\DC2\ESC\n\
      \\tgfp_flags\CAN\SOH \SOH(\rR\bgfpFlags\DC2\DC4\n\
      \\ENQorder\CAN\STX \SOH(\rR\ENQorder"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        gfpFlags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gfp_flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gfpFlags")) ::
              Data.ProtoLens.FieldDescriptor AllocPagesIommuFailFtraceEvent
        order__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "order"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'order")) ::
              Data.ProtoLens.FieldDescriptor AllocPagesIommuFailFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, gfpFlags__field_descriptor),
           (Data.ProtoLens.Tag 2, order__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AllocPagesIommuFailFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_AllocPagesIommuFailFtraceEvent'_unknownFields = y__})
  defMessage
    = AllocPagesIommuFailFtraceEvent'_constructor
        {_AllocPagesIommuFailFtraceEvent'gfpFlags = Prelude.Nothing,
         _AllocPagesIommuFailFtraceEvent'order = Prelude.Nothing,
         _AllocPagesIommuFailFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AllocPagesIommuFailFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser AllocPagesIommuFailFtraceEvent
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
                                       "gfp_flags"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gfpFlags") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "order"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"order") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "AllocPagesIommuFailFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gfpFlags") _x
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData AllocPagesIommuFailFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AllocPagesIommuFailFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AllocPagesIommuFailFtraceEvent'gfpFlags x__)
                (Control.DeepSeq.deepseq
                   (_AllocPagesIommuFailFtraceEvent'order x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.gfpFlags' @:: Lens' AllocPagesIommuStartFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'gfpFlags' @:: Lens' AllocPagesIommuStartFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.order' @:: Lens' AllocPagesIommuStartFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'order' @:: Lens' AllocPagesIommuStartFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data AllocPagesIommuStartFtraceEvent
  = AllocPagesIommuStartFtraceEvent'_constructor {_AllocPagesIommuStartFtraceEvent'gfpFlags :: !(Prelude.Maybe Data.Word.Word32),
                                                  _AllocPagesIommuStartFtraceEvent'order :: !(Prelude.Maybe Data.Word.Word32),
                                                  _AllocPagesIommuStartFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AllocPagesIommuStartFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AllocPagesIommuStartFtraceEvent "gfpFlags" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AllocPagesIommuStartFtraceEvent'gfpFlags
           (\ x__ y__
              -> x__ {_AllocPagesIommuStartFtraceEvent'gfpFlags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AllocPagesIommuStartFtraceEvent "maybe'gfpFlags" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AllocPagesIommuStartFtraceEvent'gfpFlags
           (\ x__ y__
              -> x__ {_AllocPagesIommuStartFtraceEvent'gfpFlags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AllocPagesIommuStartFtraceEvent "order" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AllocPagesIommuStartFtraceEvent'order
           (\ x__ y__ -> x__ {_AllocPagesIommuStartFtraceEvent'order = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AllocPagesIommuStartFtraceEvent "maybe'order" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AllocPagesIommuStartFtraceEvent'order
           (\ x__ y__ -> x__ {_AllocPagesIommuStartFtraceEvent'order = y__}))
        Prelude.id
instance Data.ProtoLens.Message AllocPagesIommuStartFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.AllocPagesIommuStartFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\USAllocPagesIommuStartFtraceEvent\DC2\ESC\n\
      \\tgfp_flags\CAN\SOH \SOH(\rR\bgfpFlags\DC2\DC4\n\
      \\ENQorder\CAN\STX \SOH(\rR\ENQorder"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        gfpFlags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gfp_flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gfpFlags")) ::
              Data.ProtoLens.FieldDescriptor AllocPagesIommuStartFtraceEvent
        order__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "order"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'order")) ::
              Data.ProtoLens.FieldDescriptor AllocPagesIommuStartFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, gfpFlags__field_descriptor),
           (Data.ProtoLens.Tag 2, order__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AllocPagesIommuStartFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_AllocPagesIommuStartFtraceEvent'_unknownFields = y__})
  defMessage
    = AllocPagesIommuStartFtraceEvent'_constructor
        {_AllocPagesIommuStartFtraceEvent'gfpFlags = Prelude.Nothing,
         _AllocPagesIommuStartFtraceEvent'order = Prelude.Nothing,
         _AllocPagesIommuStartFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AllocPagesIommuStartFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser AllocPagesIommuStartFtraceEvent
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
                                       "gfp_flags"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gfpFlags") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "order"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"order") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "AllocPagesIommuStartFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gfpFlags") _x
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData AllocPagesIommuStartFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AllocPagesIommuStartFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AllocPagesIommuStartFtraceEvent'gfpFlags x__)
                (Control.DeepSeq.deepseq
                   (_AllocPagesIommuStartFtraceEvent'order x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.gfpFlags' @:: Lens' AllocPagesSysEndFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'gfpFlags' @:: Lens' AllocPagesSysEndFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.order' @:: Lens' AllocPagesSysEndFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'order' @:: Lens' AllocPagesSysEndFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data AllocPagesSysEndFtraceEvent
  = AllocPagesSysEndFtraceEvent'_constructor {_AllocPagesSysEndFtraceEvent'gfpFlags :: !(Prelude.Maybe Data.Word.Word32),
                                              _AllocPagesSysEndFtraceEvent'order :: !(Prelude.Maybe Data.Word.Word32),
                                              _AllocPagesSysEndFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AllocPagesSysEndFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AllocPagesSysEndFtraceEvent "gfpFlags" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AllocPagesSysEndFtraceEvent'gfpFlags
           (\ x__ y__ -> x__ {_AllocPagesSysEndFtraceEvent'gfpFlags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AllocPagesSysEndFtraceEvent "maybe'gfpFlags" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AllocPagesSysEndFtraceEvent'gfpFlags
           (\ x__ y__ -> x__ {_AllocPagesSysEndFtraceEvent'gfpFlags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AllocPagesSysEndFtraceEvent "order" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AllocPagesSysEndFtraceEvent'order
           (\ x__ y__ -> x__ {_AllocPagesSysEndFtraceEvent'order = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AllocPagesSysEndFtraceEvent "maybe'order" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AllocPagesSysEndFtraceEvent'order
           (\ x__ y__ -> x__ {_AllocPagesSysEndFtraceEvent'order = y__}))
        Prelude.id
instance Data.ProtoLens.Message AllocPagesSysEndFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.AllocPagesSysEndFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ESCAllocPagesSysEndFtraceEvent\DC2\ESC\n\
      \\tgfp_flags\CAN\SOH \SOH(\rR\bgfpFlags\DC2\DC4\n\
      \\ENQorder\CAN\STX \SOH(\rR\ENQorder"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        gfpFlags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gfp_flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gfpFlags")) ::
              Data.ProtoLens.FieldDescriptor AllocPagesSysEndFtraceEvent
        order__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "order"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'order")) ::
              Data.ProtoLens.FieldDescriptor AllocPagesSysEndFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, gfpFlags__field_descriptor),
           (Data.ProtoLens.Tag 2, order__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AllocPagesSysEndFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_AllocPagesSysEndFtraceEvent'_unknownFields = y__})
  defMessage
    = AllocPagesSysEndFtraceEvent'_constructor
        {_AllocPagesSysEndFtraceEvent'gfpFlags = Prelude.Nothing,
         _AllocPagesSysEndFtraceEvent'order = Prelude.Nothing,
         _AllocPagesSysEndFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AllocPagesSysEndFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser AllocPagesSysEndFtraceEvent
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
                                       "gfp_flags"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gfpFlags") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "order"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"order") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "AllocPagesSysEndFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gfpFlags") _x
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData AllocPagesSysEndFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AllocPagesSysEndFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AllocPagesSysEndFtraceEvent'gfpFlags x__)
                (Control.DeepSeq.deepseq
                   (_AllocPagesSysEndFtraceEvent'order x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.gfpFlags' @:: Lens' AllocPagesSysFailFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'gfpFlags' @:: Lens' AllocPagesSysFailFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.order' @:: Lens' AllocPagesSysFailFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'order' @:: Lens' AllocPagesSysFailFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data AllocPagesSysFailFtraceEvent
  = AllocPagesSysFailFtraceEvent'_constructor {_AllocPagesSysFailFtraceEvent'gfpFlags :: !(Prelude.Maybe Data.Word.Word32),
                                               _AllocPagesSysFailFtraceEvent'order :: !(Prelude.Maybe Data.Word.Word32),
                                               _AllocPagesSysFailFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AllocPagesSysFailFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AllocPagesSysFailFtraceEvent "gfpFlags" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AllocPagesSysFailFtraceEvent'gfpFlags
           (\ x__ y__ -> x__ {_AllocPagesSysFailFtraceEvent'gfpFlags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AllocPagesSysFailFtraceEvent "maybe'gfpFlags" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AllocPagesSysFailFtraceEvent'gfpFlags
           (\ x__ y__ -> x__ {_AllocPagesSysFailFtraceEvent'gfpFlags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AllocPagesSysFailFtraceEvent "order" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AllocPagesSysFailFtraceEvent'order
           (\ x__ y__ -> x__ {_AllocPagesSysFailFtraceEvent'order = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AllocPagesSysFailFtraceEvent "maybe'order" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AllocPagesSysFailFtraceEvent'order
           (\ x__ y__ -> x__ {_AllocPagesSysFailFtraceEvent'order = y__}))
        Prelude.id
instance Data.ProtoLens.Message AllocPagesSysFailFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.AllocPagesSysFailFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\FSAllocPagesSysFailFtraceEvent\DC2\ESC\n\
      \\tgfp_flags\CAN\SOH \SOH(\rR\bgfpFlags\DC2\DC4\n\
      \\ENQorder\CAN\STX \SOH(\rR\ENQorder"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        gfpFlags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gfp_flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gfpFlags")) ::
              Data.ProtoLens.FieldDescriptor AllocPagesSysFailFtraceEvent
        order__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "order"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'order")) ::
              Data.ProtoLens.FieldDescriptor AllocPagesSysFailFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, gfpFlags__field_descriptor),
           (Data.ProtoLens.Tag 2, order__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AllocPagesSysFailFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_AllocPagesSysFailFtraceEvent'_unknownFields = y__})
  defMessage
    = AllocPagesSysFailFtraceEvent'_constructor
        {_AllocPagesSysFailFtraceEvent'gfpFlags = Prelude.Nothing,
         _AllocPagesSysFailFtraceEvent'order = Prelude.Nothing,
         _AllocPagesSysFailFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AllocPagesSysFailFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser AllocPagesSysFailFtraceEvent
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
                                       "gfp_flags"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gfpFlags") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "order"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"order") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "AllocPagesSysFailFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gfpFlags") _x
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData AllocPagesSysFailFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AllocPagesSysFailFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AllocPagesSysFailFtraceEvent'gfpFlags x__)
                (Control.DeepSeq.deepseq
                   (_AllocPagesSysFailFtraceEvent'order x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.gfpFlags' @:: Lens' AllocPagesSysStartFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'gfpFlags' @:: Lens' AllocPagesSysStartFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.order' @:: Lens' AllocPagesSysStartFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'order' @:: Lens' AllocPagesSysStartFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data AllocPagesSysStartFtraceEvent
  = AllocPagesSysStartFtraceEvent'_constructor {_AllocPagesSysStartFtraceEvent'gfpFlags :: !(Prelude.Maybe Data.Word.Word32),
                                                _AllocPagesSysStartFtraceEvent'order :: !(Prelude.Maybe Data.Word.Word32),
                                                _AllocPagesSysStartFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AllocPagesSysStartFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AllocPagesSysStartFtraceEvent "gfpFlags" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AllocPagesSysStartFtraceEvent'gfpFlags
           (\ x__ y__ -> x__ {_AllocPagesSysStartFtraceEvent'gfpFlags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AllocPagesSysStartFtraceEvent "maybe'gfpFlags" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AllocPagesSysStartFtraceEvent'gfpFlags
           (\ x__ y__ -> x__ {_AllocPagesSysStartFtraceEvent'gfpFlags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AllocPagesSysStartFtraceEvent "order" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AllocPagesSysStartFtraceEvent'order
           (\ x__ y__ -> x__ {_AllocPagesSysStartFtraceEvent'order = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AllocPagesSysStartFtraceEvent "maybe'order" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AllocPagesSysStartFtraceEvent'order
           (\ x__ y__ -> x__ {_AllocPagesSysStartFtraceEvent'order = y__}))
        Prelude.id
instance Data.ProtoLens.Message AllocPagesSysStartFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.AllocPagesSysStartFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\GSAllocPagesSysStartFtraceEvent\DC2\ESC\n\
      \\tgfp_flags\CAN\SOH \SOH(\rR\bgfpFlags\DC2\DC4\n\
      \\ENQorder\CAN\STX \SOH(\rR\ENQorder"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        gfpFlags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gfp_flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gfpFlags")) ::
              Data.ProtoLens.FieldDescriptor AllocPagesSysStartFtraceEvent
        order__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "order"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'order")) ::
              Data.ProtoLens.FieldDescriptor AllocPagesSysStartFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, gfpFlags__field_descriptor),
           (Data.ProtoLens.Tag 2, order__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AllocPagesSysStartFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_AllocPagesSysStartFtraceEvent'_unknownFields = y__})
  defMessage
    = AllocPagesSysStartFtraceEvent'_constructor
        {_AllocPagesSysStartFtraceEvent'gfpFlags = Prelude.Nothing,
         _AllocPagesSysStartFtraceEvent'order = Prelude.Nothing,
         _AllocPagesSysStartFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AllocPagesSysStartFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser AllocPagesSysStartFtraceEvent
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
                                       "gfp_flags"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gfpFlags") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "order"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"order") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "AllocPagesSysStartFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gfpFlags") _x
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData AllocPagesSysStartFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AllocPagesSysStartFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AllocPagesSysStartFtraceEvent'gfpFlags x__)
                (Control.DeepSeq.deepseq
                   (_AllocPagesSysStartFtraceEvent'order x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.tries' @:: Lens' DmaAllocContiguousRetryFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'tries' @:: Lens' DmaAllocContiguousRetryFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data DmaAllocContiguousRetryFtraceEvent
  = DmaAllocContiguousRetryFtraceEvent'_constructor {_DmaAllocContiguousRetryFtraceEvent'tries :: !(Prelude.Maybe Data.Int.Int32),
                                                     _DmaAllocContiguousRetryFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DmaAllocContiguousRetryFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DmaAllocContiguousRetryFtraceEvent "tries" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaAllocContiguousRetryFtraceEvent'tries
           (\ x__ y__
              -> x__ {_DmaAllocContiguousRetryFtraceEvent'tries = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DmaAllocContiguousRetryFtraceEvent "maybe'tries" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaAllocContiguousRetryFtraceEvent'tries
           (\ x__ y__
              -> x__ {_DmaAllocContiguousRetryFtraceEvent'tries = y__}))
        Prelude.id
instance Data.ProtoLens.Message DmaAllocContiguousRetryFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.DmaAllocContiguousRetryFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\"DmaAllocContiguousRetryFtraceEvent\DC2\DC4\n\
      \\ENQtries\CAN\SOH \SOH(\ENQR\ENQtries"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        tries__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tries"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tries")) ::
              Data.ProtoLens.FieldDescriptor DmaAllocContiguousRetryFtraceEvent
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, tries__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DmaAllocContiguousRetryFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_DmaAllocContiguousRetryFtraceEvent'_unknownFields = y__})
  defMessage
    = DmaAllocContiguousRetryFtraceEvent'_constructor
        {_DmaAllocContiguousRetryFtraceEvent'tries = Prelude.Nothing,
         _DmaAllocContiguousRetryFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DmaAllocContiguousRetryFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser DmaAllocContiguousRetryFtraceEvent
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
                                       "tries"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"tries") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "DmaAllocContiguousRetryFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'tries") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData DmaAllocContiguousRetryFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DmaAllocContiguousRetryFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DmaAllocContiguousRetryFtraceEvent'tries x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.chunkSize' @:: Lens' IommuMapRangeFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'chunkSize' @:: Lens' IommuMapRangeFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.len' @:: Lens' IommuMapRangeFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'len' @:: Lens' IommuMapRangeFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.pa' @:: Lens' IommuMapRangeFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'pa' @:: Lens' IommuMapRangeFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.va' @:: Lens' IommuMapRangeFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'va' @:: Lens' IommuMapRangeFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data IommuMapRangeFtraceEvent
  = IommuMapRangeFtraceEvent'_constructor {_IommuMapRangeFtraceEvent'chunkSize :: !(Prelude.Maybe Data.Word.Word64),
                                           _IommuMapRangeFtraceEvent'len :: !(Prelude.Maybe Data.Word.Word64),
                                           _IommuMapRangeFtraceEvent'pa :: !(Prelude.Maybe Data.Word.Word64),
                                           _IommuMapRangeFtraceEvent'va :: !(Prelude.Maybe Data.Word.Word64),
                                           _IommuMapRangeFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show IommuMapRangeFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField IommuMapRangeFtraceEvent "chunkSize" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IommuMapRangeFtraceEvent'chunkSize
           (\ x__ y__ -> x__ {_IommuMapRangeFtraceEvent'chunkSize = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IommuMapRangeFtraceEvent "maybe'chunkSize" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IommuMapRangeFtraceEvent'chunkSize
           (\ x__ y__ -> x__ {_IommuMapRangeFtraceEvent'chunkSize = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IommuMapRangeFtraceEvent "len" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IommuMapRangeFtraceEvent'len
           (\ x__ y__ -> x__ {_IommuMapRangeFtraceEvent'len = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IommuMapRangeFtraceEvent "maybe'len" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IommuMapRangeFtraceEvent'len
           (\ x__ y__ -> x__ {_IommuMapRangeFtraceEvent'len = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IommuMapRangeFtraceEvent "pa" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IommuMapRangeFtraceEvent'pa
           (\ x__ y__ -> x__ {_IommuMapRangeFtraceEvent'pa = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IommuMapRangeFtraceEvent "maybe'pa" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IommuMapRangeFtraceEvent'pa
           (\ x__ y__ -> x__ {_IommuMapRangeFtraceEvent'pa = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IommuMapRangeFtraceEvent "va" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IommuMapRangeFtraceEvent'va
           (\ x__ y__ -> x__ {_IommuMapRangeFtraceEvent'va = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IommuMapRangeFtraceEvent "maybe'va" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IommuMapRangeFtraceEvent'va
           (\ x__ y__ -> x__ {_IommuMapRangeFtraceEvent'va = y__}))
        Prelude.id
instance Data.ProtoLens.Message IommuMapRangeFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.IommuMapRangeFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\CANIommuMapRangeFtraceEvent\DC2\GS\n\
      \\n\
      \chunk_size\CAN\SOH \SOH(\EOTR\tchunkSize\DC2\DLE\n\
      \\ETXlen\CAN\STX \SOH(\EOTR\ETXlen\DC2\SO\n\
      \\STXpa\CAN\ETX \SOH(\EOTR\STXpa\DC2\SO\n\
      \\STXva\CAN\EOT \SOH(\EOTR\STXva"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        chunkSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "chunk_size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'chunkSize")) ::
              Data.ProtoLens.FieldDescriptor IommuMapRangeFtraceEvent
        len__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "len"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'len")) ::
              Data.ProtoLens.FieldDescriptor IommuMapRangeFtraceEvent
        pa__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pa"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pa")) ::
              Data.ProtoLens.FieldDescriptor IommuMapRangeFtraceEvent
        va__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "va"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'va")) ::
              Data.ProtoLens.FieldDescriptor IommuMapRangeFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, chunkSize__field_descriptor),
           (Data.ProtoLens.Tag 2, len__field_descriptor),
           (Data.ProtoLens.Tag 3, pa__field_descriptor),
           (Data.ProtoLens.Tag 4, va__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _IommuMapRangeFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_IommuMapRangeFtraceEvent'_unknownFields = y__})
  defMessage
    = IommuMapRangeFtraceEvent'_constructor
        {_IommuMapRangeFtraceEvent'chunkSize = Prelude.Nothing,
         _IommuMapRangeFtraceEvent'len = Prelude.Nothing,
         _IommuMapRangeFtraceEvent'pa = Prelude.Nothing,
         _IommuMapRangeFtraceEvent'va = Prelude.Nothing,
         _IommuMapRangeFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          IommuMapRangeFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser IommuMapRangeFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "chunk_size"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"chunkSize") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "len"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"len") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "pa"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pa") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "va"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"va") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "IommuMapRangeFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'chunkSize") _x
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
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pa") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'va") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData IommuMapRangeFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_IommuMapRangeFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_IommuMapRangeFtraceEvent'chunkSize x__)
                (Control.DeepSeq.deepseq
                   (_IommuMapRangeFtraceEvent'len x__)
                   (Control.DeepSeq.deepseq
                      (_IommuMapRangeFtraceEvent'pa x__)
                      (Control.DeepSeq.deepseq (_IommuMapRangeFtraceEvent'va x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.len' @:: Lens' IommuSecPtblMapRangeEndFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'len' @:: Lens' IommuSecPtblMapRangeEndFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.num' @:: Lens' IommuSecPtblMapRangeEndFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'num' @:: Lens' IommuSecPtblMapRangeEndFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.pa' @:: Lens' IommuSecPtblMapRangeEndFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'pa' @:: Lens' IommuSecPtblMapRangeEndFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.secId' @:: Lens' IommuSecPtblMapRangeEndFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'secId' @:: Lens' IommuSecPtblMapRangeEndFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.va' @:: Lens' IommuSecPtblMapRangeEndFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'va' @:: Lens' IommuSecPtblMapRangeEndFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data IommuSecPtblMapRangeEndFtraceEvent
  = IommuSecPtblMapRangeEndFtraceEvent'_constructor {_IommuSecPtblMapRangeEndFtraceEvent'len :: !(Prelude.Maybe Data.Word.Word64),
                                                     _IommuSecPtblMapRangeEndFtraceEvent'num :: !(Prelude.Maybe Data.Int.Int32),
                                                     _IommuSecPtblMapRangeEndFtraceEvent'pa :: !(Prelude.Maybe Data.Word.Word32),
                                                     _IommuSecPtblMapRangeEndFtraceEvent'secId :: !(Prelude.Maybe Data.Int.Int32),
                                                     _IommuSecPtblMapRangeEndFtraceEvent'va :: !(Prelude.Maybe Data.Word.Word64),
                                                     _IommuSecPtblMapRangeEndFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show IommuSecPtblMapRangeEndFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField IommuSecPtblMapRangeEndFtraceEvent "len" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IommuSecPtblMapRangeEndFtraceEvent'len
           (\ x__ y__ -> x__ {_IommuSecPtblMapRangeEndFtraceEvent'len = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IommuSecPtblMapRangeEndFtraceEvent "maybe'len" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IommuSecPtblMapRangeEndFtraceEvent'len
           (\ x__ y__ -> x__ {_IommuSecPtblMapRangeEndFtraceEvent'len = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IommuSecPtblMapRangeEndFtraceEvent "num" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IommuSecPtblMapRangeEndFtraceEvent'num
           (\ x__ y__ -> x__ {_IommuSecPtblMapRangeEndFtraceEvent'num = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IommuSecPtblMapRangeEndFtraceEvent "maybe'num" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IommuSecPtblMapRangeEndFtraceEvent'num
           (\ x__ y__ -> x__ {_IommuSecPtblMapRangeEndFtraceEvent'num = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IommuSecPtblMapRangeEndFtraceEvent "pa" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IommuSecPtblMapRangeEndFtraceEvent'pa
           (\ x__ y__ -> x__ {_IommuSecPtblMapRangeEndFtraceEvent'pa = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IommuSecPtblMapRangeEndFtraceEvent "maybe'pa" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IommuSecPtblMapRangeEndFtraceEvent'pa
           (\ x__ y__ -> x__ {_IommuSecPtblMapRangeEndFtraceEvent'pa = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IommuSecPtblMapRangeEndFtraceEvent "secId" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IommuSecPtblMapRangeEndFtraceEvent'secId
           (\ x__ y__
              -> x__ {_IommuSecPtblMapRangeEndFtraceEvent'secId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IommuSecPtblMapRangeEndFtraceEvent "maybe'secId" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IommuSecPtblMapRangeEndFtraceEvent'secId
           (\ x__ y__
              -> x__ {_IommuSecPtblMapRangeEndFtraceEvent'secId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IommuSecPtblMapRangeEndFtraceEvent "va" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IommuSecPtblMapRangeEndFtraceEvent'va
           (\ x__ y__ -> x__ {_IommuSecPtblMapRangeEndFtraceEvent'va = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IommuSecPtblMapRangeEndFtraceEvent "maybe'va" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IommuSecPtblMapRangeEndFtraceEvent'va
           (\ x__ y__ -> x__ {_IommuSecPtblMapRangeEndFtraceEvent'va = y__}))
        Prelude.id
instance Data.ProtoLens.Message IommuSecPtblMapRangeEndFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.IommuSecPtblMapRangeEndFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\"IommuSecPtblMapRangeEndFtraceEvent\DC2\DLE\n\
      \\ETXlen\CAN\SOH \SOH(\EOTR\ETXlen\DC2\DLE\n\
      \\ETXnum\CAN\STX \SOH(\ENQR\ETXnum\DC2\SO\n\
      \\STXpa\CAN\ETX \SOH(\rR\STXpa\DC2\NAK\n\
      \\ACKsec_id\CAN\EOT \SOH(\ENQR\ENQsecId\DC2\SO\n\
      \\STXva\CAN\ENQ \SOH(\EOTR\STXva"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        len__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "len"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'len")) ::
              Data.ProtoLens.FieldDescriptor IommuSecPtblMapRangeEndFtraceEvent
        num__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "num"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'num")) ::
              Data.ProtoLens.FieldDescriptor IommuSecPtblMapRangeEndFtraceEvent
        pa__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pa"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pa")) ::
              Data.ProtoLens.FieldDescriptor IommuSecPtblMapRangeEndFtraceEvent
        secId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sec_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'secId")) ::
              Data.ProtoLens.FieldDescriptor IommuSecPtblMapRangeEndFtraceEvent
        va__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "va"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'va")) ::
              Data.ProtoLens.FieldDescriptor IommuSecPtblMapRangeEndFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, len__field_descriptor),
           (Data.ProtoLens.Tag 2, num__field_descriptor),
           (Data.ProtoLens.Tag 3, pa__field_descriptor),
           (Data.ProtoLens.Tag 4, secId__field_descriptor),
           (Data.ProtoLens.Tag 5, va__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _IommuSecPtblMapRangeEndFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_IommuSecPtblMapRangeEndFtraceEvent'_unknownFields = y__})
  defMessage
    = IommuSecPtblMapRangeEndFtraceEvent'_constructor
        {_IommuSecPtblMapRangeEndFtraceEvent'len = Prelude.Nothing,
         _IommuSecPtblMapRangeEndFtraceEvent'num = Prelude.Nothing,
         _IommuSecPtblMapRangeEndFtraceEvent'pa = Prelude.Nothing,
         _IommuSecPtblMapRangeEndFtraceEvent'secId = Prelude.Nothing,
         _IommuSecPtblMapRangeEndFtraceEvent'va = Prelude.Nothing,
         _IommuSecPtblMapRangeEndFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          IommuSecPtblMapRangeEndFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser IommuSecPtblMapRangeEndFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "len"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"len") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "num"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"num") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "pa"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pa") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "sec_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"secId") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "va"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"va") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "IommuSecPtblMapRangeEndFtraceEvent"
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
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'num") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pa") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'secId") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'va") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData IommuSecPtblMapRangeEndFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_IommuSecPtblMapRangeEndFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_IommuSecPtblMapRangeEndFtraceEvent'len x__)
                (Control.DeepSeq.deepseq
                   (_IommuSecPtblMapRangeEndFtraceEvent'num x__)
                   (Control.DeepSeq.deepseq
                      (_IommuSecPtblMapRangeEndFtraceEvent'pa x__)
                      (Control.DeepSeq.deepseq
                         (_IommuSecPtblMapRangeEndFtraceEvent'secId x__)
                         (Control.DeepSeq.deepseq
                            (_IommuSecPtblMapRangeEndFtraceEvent'va x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.len' @:: Lens' IommuSecPtblMapRangeStartFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'len' @:: Lens' IommuSecPtblMapRangeStartFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.num' @:: Lens' IommuSecPtblMapRangeStartFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'num' @:: Lens' IommuSecPtblMapRangeStartFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.pa' @:: Lens' IommuSecPtblMapRangeStartFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'pa' @:: Lens' IommuSecPtblMapRangeStartFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.secId' @:: Lens' IommuSecPtblMapRangeStartFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'secId' @:: Lens' IommuSecPtblMapRangeStartFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.va' @:: Lens' IommuSecPtblMapRangeStartFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'va' @:: Lens' IommuSecPtblMapRangeStartFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data IommuSecPtblMapRangeStartFtraceEvent
  = IommuSecPtblMapRangeStartFtraceEvent'_constructor {_IommuSecPtblMapRangeStartFtraceEvent'len :: !(Prelude.Maybe Data.Word.Word64),
                                                       _IommuSecPtblMapRangeStartFtraceEvent'num :: !(Prelude.Maybe Data.Int.Int32),
                                                       _IommuSecPtblMapRangeStartFtraceEvent'pa :: !(Prelude.Maybe Data.Word.Word32),
                                                       _IommuSecPtblMapRangeStartFtraceEvent'secId :: !(Prelude.Maybe Data.Int.Int32),
                                                       _IommuSecPtblMapRangeStartFtraceEvent'va :: !(Prelude.Maybe Data.Word.Word64),
                                                       _IommuSecPtblMapRangeStartFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show IommuSecPtblMapRangeStartFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField IommuSecPtblMapRangeStartFtraceEvent "len" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IommuSecPtblMapRangeStartFtraceEvent'len
           (\ x__ y__
              -> x__ {_IommuSecPtblMapRangeStartFtraceEvent'len = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IommuSecPtblMapRangeStartFtraceEvent "maybe'len" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IommuSecPtblMapRangeStartFtraceEvent'len
           (\ x__ y__
              -> x__ {_IommuSecPtblMapRangeStartFtraceEvent'len = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IommuSecPtblMapRangeStartFtraceEvent "num" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IommuSecPtblMapRangeStartFtraceEvent'num
           (\ x__ y__
              -> x__ {_IommuSecPtblMapRangeStartFtraceEvent'num = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IommuSecPtblMapRangeStartFtraceEvent "maybe'num" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IommuSecPtblMapRangeStartFtraceEvent'num
           (\ x__ y__
              -> x__ {_IommuSecPtblMapRangeStartFtraceEvent'num = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IommuSecPtblMapRangeStartFtraceEvent "pa" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IommuSecPtblMapRangeStartFtraceEvent'pa
           (\ x__ y__
              -> x__ {_IommuSecPtblMapRangeStartFtraceEvent'pa = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IommuSecPtblMapRangeStartFtraceEvent "maybe'pa" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IommuSecPtblMapRangeStartFtraceEvent'pa
           (\ x__ y__
              -> x__ {_IommuSecPtblMapRangeStartFtraceEvent'pa = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IommuSecPtblMapRangeStartFtraceEvent "secId" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IommuSecPtblMapRangeStartFtraceEvent'secId
           (\ x__ y__
              -> x__ {_IommuSecPtblMapRangeStartFtraceEvent'secId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IommuSecPtblMapRangeStartFtraceEvent "maybe'secId" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IommuSecPtblMapRangeStartFtraceEvent'secId
           (\ x__ y__
              -> x__ {_IommuSecPtblMapRangeStartFtraceEvent'secId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IommuSecPtblMapRangeStartFtraceEvent "va" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IommuSecPtblMapRangeStartFtraceEvent'va
           (\ x__ y__
              -> x__ {_IommuSecPtblMapRangeStartFtraceEvent'va = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IommuSecPtblMapRangeStartFtraceEvent "maybe'va" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IommuSecPtblMapRangeStartFtraceEvent'va
           (\ x__ y__
              -> x__ {_IommuSecPtblMapRangeStartFtraceEvent'va = y__}))
        Prelude.id
instance Data.ProtoLens.Message IommuSecPtblMapRangeStartFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.IommuSecPtblMapRangeStartFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \$IommuSecPtblMapRangeStartFtraceEvent\DC2\DLE\n\
      \\ETXlen\CAN\SOH \SOH(\EOTR\ETXlen\DC2\DLE\n\
      \\ETXnum\CAN\STX \SOH(\ENQR\ETXnum\DC2\SO\n\
      \\STXpa\CAN\ETX \SOH(\rR\STXpa\DC2\NAK\n\
      \\ACKsec_id\CAN\EOT \SOH(\ENQR\ENQsecId\DC2\SO\n\
      \\STXva\CAN\ENQ \SOH(\EOTR\STXva"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        len__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "len"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'len")) ::
              Data.ProtoLens.FieldDescriptor IommuSecPtblMapRangeStartFtraceEvent
        num__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "num"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'num")) ::
              Data.ProtoLens.FieldDescriptor IommuSecPtblMapRangeStartFtraceEvent
        pa__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pa"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pa")) ::
              Data.ProtoLens.FieldDescriptor IommuSecPtblMapRangeStartFtraceEvent
        secId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sec_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'secId")) ::
              Data.ProtoLens.FieldDescriptor IommuSecPtblMapRangeStartFtraceEvent
        va__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "va"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'va")) ::
              Data.ProtoLens.FieldDescriptor IommuSecPtblMapRangeStartFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, len__field_descriptor),
           (Data.ProtoLens.Tag 2, num__field_descriptor),
           (Data.ProtoLens.Tag 3, pa__field_descriptor),
           (Data.ProtoLens.Tag 4, secId__field_descriptor),
           (Data.ProtoLens.Tag 5, va__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _IommuSecPtblMapRangeStartFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__
                {_IommuSecPtblMapRangeStartFtraceEvent'_unknownFields = y__})
  defMessage
    = IommuSecPtblMapRangeStartFtraceEvent'_constructor
        {_IommuSecPtblMapRangeStartFtraceEvent'len = Prelude.Nothing,
         _IommuSecPtblMapRangeStartFtraceEvent'num = Prelude.Nothing,
         _IommuSecPtblMapRangeStartFtraceEvent'pa = Prelude.Nothing,
         _IommuSecPtblMapRangeStartFtraceEvent'secId = Prelude.Nothing,
         _IommuSecPtblMapRangeStartFtraceEvent'va = Prelude.Nothing,
         _IommuSecPtblMapRangeStartFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          IommuSecPtblMapRangeStartFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser IommuSecPtblMapRangeStartFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "len"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"len") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "num"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"num") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "pa"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pa") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "sec_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"secId") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "va"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"va") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "IommuSecPtblMapRangeStartFtraceEvent"
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
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'num") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pa") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'secId") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'va") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData IommuSecPtblMapRangeStartFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_IommuSecPtblMapRangeStartFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_IommuSecPtblMapRangeStartFtraceEvent'len x__)
                (Control.DeepSeq.deepseq
                   (_IommuSecPtblMapRangeStartFtraceEvent'num x__)
                   (Control.DeepSeq.deepseq
                      (_IommuSecPtblMapRangeStartFtraceEvent'pa x__)
                      (Control.DeepSeq.deepseq
                         (_IommuSecPtblMapRangeStartFtraceEvent'secId x__)
                         (Control.DeepSeq.deepseq
                            (_IommuSecPtblMapRangeStartFtraceEvent'va x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.clientName' @:: Lens' IonAllocBufferEndFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'clientName' @:: Lens' IonAllocBufferEndFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.flags' @:: Lens' IonAllocBufferEndFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'flags' @:: Lens' IonAllocBufferEndFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.heapName' @:: Lens' IonAllocBufferEndFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'heapName' @:: Lens' IonAllocBufferEndFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.len' @:: Lens' IonAllocBufferEndFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'len' @:: Lens' IonAllocBufferEndFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.mask' @:: Lens' IonAllocBufferEndFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'mask' @:: Lens' IonAllocBufferEndFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data IonAllocBufferEndFtraceEvent
  = IonAllocBufferEndFtraceEvent'_constructor {_IonAllocBufferEndFtraceEvent'clientName :: !(Prelude.Maybe Data.Text.Text),
                                               _IonAllocBufferEndFtraceEvent'flags :: !(Prelude.Maybe Data.Word.Word32),
                                               _IonAllocBufferEndFtraceEvent'heapName :: !(Prelude.Maybe Data.Text.Text),
                                               _IonAllocBufferEndFtraceEvent'len :: !(Prelude.Maybe Data.Word.Word64),
                                               _IonAllocBufferEndFtraceEvent'mask :: !(Prelude.Maybe Data.Word.Word32),
                                               _IonAllocBufferEndFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show IonAllocBufferEndFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField IonAllocBufferEndFtraceEvent "clientName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonAllocBufferEndFtraceEvent'clientName
           (\ x__ y__
              -> x__ {_IonAllocBufferEndFtraceEvent'clientName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonAllocBufferEndFtraceEvent "maybe'clientName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonAllocBufferEndFtraceEvent'clientName
           (\ x__ y__
              -> x__ {_IonAllocBufferEndFtraceEvent'clientName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IonAllocBufferEndFtraceEvent "flags" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonAllocBufferEndFtraceEvent'flags
           (\ x__ y__ -> x__ {_IonAllocBufferEndFtraceEvent'flags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonAllocBufferEndFtraceEvent "maybe'flags" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonAllocBufferEndFtraceEvent'flags
           (\ x__ y__ -> x__ {_IonAllocBufferEndFtraceEvent'flags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IonAllocBufferEndFtraceEvent "heapName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonAllocBufferEndFtraceEvent'heapName
           (\ x__ y__ -> x__ {_IonAllocBufferEndFtraceEvent'heapName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonAllocBufferEndFtraceEvent "maybe'heapName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonAllocBufferEndFtraceEvent'heapName
           (\ x__ y__ -> x__ {_IonAllocBufferEndFtraceEvent'heapName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IonAllocBufferEndFtraceEvent "len" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonAllocBufferEndFtraceEvent'len
           (\ x__ y__ -> x__ {_IonAllocBufferEndFtraceEvent'len = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonAllocBufferEndFtraceEvent "maybe'len" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonAllocBufferEndFtraceEvent'len
           (\ x__ y__ -> x__ {_IonAllocBufferEndFtraceEvent'len = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IonAllocBufferEndFtraceEvent "mask" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonAllocBufferEndFtraceEvent'mask
           (\ x__ y__ -> x__ {_IonAllocBufferEndFtraceEvent'mask = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonAllocBufferEndFtraceEvent "maybe'mask" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonAllocBufferEndFtraceEvent'mask
           (\ x__ y__ -> x__ {_IonAllocBufferEndFtraceEvent'mask = y__}))
        Prelude.id
instance Data.ProtoLens.Message IonAllocBufferEndFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.IonAllocBufferEndFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\FSIonAllocBufferEndFtraceEvent\DC2\US\n\
      \\vclient_name\CAN\SOH \SOH(\tR\n\
      \clientName\DC2\DC4\n\
      \\ENQflags\CAN\STX \SOH(\rR\ENQflags\DC2\ESC\n\
      \\theap_name\CAN\ETX \SOH(\tR\bheapName\DC2\DLE\n\
      \\ETXlen\CAN\EOT \SOH(\EOTR\ETXlen\DC2\DC2\n\
      \\EOTmask\CAN\ENQ \SOH(\rR\EOTmask"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        clientName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "client_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'clientName")) ::
              Data.ProtoLens.FieldDescriptor IonAllocBufferEndFtraceEvent
        flags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'flags")) ::
              Data.ProtoLens.FieldDescriptor IonAllocBufferEndFtraceEvent
        heapName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "heap_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'heapName")) ::
              Data.ProtoLens.FieldDescriptor IonAllocBufferEndFtraceEvent
        len__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "len"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'len")) ::
              Data.ProtoLens.FieldDescriptor IonAllocBufferEndFtraceEvent
        mask__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mask"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mask")) ::
              Data.ProtoLens.FieldDescriptor IonAllocBufferEndFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, clientName__field_descriptor),
           (Data.ProtoLens.Tag 2, flags__field_descriptor),
           (Data.ProtoLens.Tag 3, heapName__field_descriptor),
           (Data.ProtoLens.Tag 4, len__field_descriptor),
           (Data.ProtoLens.Tag 5, mask__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _IonAllocBufferEndFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_IonAllocBufferEndFtraceEvent'_unknownFields = y__})
  defMessage
    = IonAllocBufferEndFtraceEvent'_constructor
        {_IonAllocBufferEndFtraceEvent'clientName = Prelude.Nothing,
         _IonAllocBufferEndFtraceEvent'flags = Prelude.Nothing,
         _IonAllocBufferEndFtraceEvent'heapName = Prelude.Nothing,
         _IonAllocBufferEndFtraceEvent'len = Prelude.Nothing,
         _IonAllocBufferEndFtraceEvent'mask = Prelude.Nothing,
         _IonAllocBufferEndFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          IonAllocBufferEndFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser IonAllocBufferEndFtraceEvent
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
                                       "client_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"clientName") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "flags"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"flags") y x)
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
                                       "heap_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"heapName") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "len"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"len") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "mask"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"mask") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "IonAllocBufferEndFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'clientName") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'flags") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'heapName") _x
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
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'len") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'mask") _x
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
instance Control.DeepSeq.NFData IonAllocBufferEndFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_IonAllocBufferEndFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_IonAllocBufferEndFtraceEvent'clientName x__)
                (Control.DeepSeq.deepseq
                   (_IonAllocBufferEndFtraceEvent'flags x__)
                   (Control.DeepSeq.deepseq
                      (_IonAllocBufferEndFtraceEvent'heapName x__)
                      (Control.DeepSeq.deepseq
                         (_IonAllocBufferEndFtraceEvent'len x__)
                         (Control.DeepSeq.deepseq
                            (_IonAllocBufferEndFtraceEvent'mask x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.clientName' @:: Lens' IonAllocBufferFailFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'clientName' @:: Lens' IonAllocBufferFailFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.error' @:: Lens' IonAllocBufferFailFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'error' @:: Lens' IonAllocBufferFailFtraceEvent (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.flags' @:: Lens' IonAllocBufferFailFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'flags' @:: Lens' IonAllocBufferFailFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.heapName' @:: Lens' IonAllocBufferFailFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'heapName' @:: Lens' IonAllocBufferFailFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.len' @:: Lens' IonAllocBufferFailFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'len' @:: Lens' IonAllocBufferFailFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.mask' @:: Lens' IonAllocBufferFailFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'mask' @:: Lens' IonAllocBufferFailFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data IonAllocBufferFailFtraceEvent
  = IonAllocBufferFailFtraceEvent'_constructor {_IonAllocBufferFailFtraceEvent'clientName :: !(Prelude.Maybe Data.Text.Text),
                                                _IonAllocBufferFailFtraceEvent'error :: !(Prelude.Maybe Data.Int.Int64),
                                                _IonAllocBufferFailFtraceEvent'flags :: !(Prelude.Maybe Data.Word.Word32),
                                                _IonAllocBufferFailFtraceEvent'heapName :: !(Prelude.Maybe Data.Text.Text),
                                                _IonAllocBufferFailFtraceEvent'len :: !(Prelude.Maybe Data.Word.Word64),
                                                _IonAllocBufferFailFtraceEvent'mask :: !(Prelude.Maybe Data.Word.Word32),
                                                _IonAllocBufferFailFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show IonAllocBufferFailFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField IonAllocBufferFailFtraceEvent "clientName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonAllocBufferFailFtraceEvent'clientName
           (\ x__ y__
              -> x__ {_IonAllocBufferFailFtraceEvent'clientName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonAllocBufferFailFtraceEvent "maybe'clientName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonAllocBufferFailFtraceEvent'clientName
           (\ x__ y__
              -> x__ {_IonAllocBufferFailFtraceEvent'clientName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IonAllocBufferFailFtraceEvent "error" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonAllocBufferFailFtraceEvent'error
           (\ x__ y__ -> x__ {_IonAllocBufferFailFtraceEvent'error = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonAllocBufferFailFtraceEvent "maybe'error" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonAllocBufferFailFtraceEvent'error
           (\ x__ y__ -> x__ {_IonAllocBufferFailFtraceEvent'error = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IonAllocBufferFailFtraceEvent "flags" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonAllocBufferFailFtraceEvent'flags
           (\ x__ y__ -> x__ {_IonAllocBufferFailFtraceEvent'flags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonAllocBufferFailFtraceEvent "maybe'flags" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonAllocBufferFailFtraceEvent'flags
           (\ x__ y__ -> x__ {_IonAllocBufferFailFtraceEvent'flags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IonAllocBufferFailFtraceEvent "heapName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonAllocBufferFailFtraceEvent'heapName
           (\ x__ y__ -> x__ {_IonAllocBufferFailFtraceEvent'heapName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonAllocBufferFailFtraceEvent "maybe'heapName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonAllocBufferFailFtraceEvent'heapName
           (\ x__ y__ -> x__ {_IonAllocBufferFailFtraceEvent'heapName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IonAllocBufferFailFtraceEvent "len" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonAllocBufferFailFtraceEvent'len
           (\ x__ y__ -> x__ {_IonAllocBufferFailFtraceEvent'len = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonAllocBufferFailFtraceEvent "maybe'len" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonAllocBufferFailFtraceEvent'len
           (\ x__ y__ -> x__ {_IonAllocBufferFailFtraceEvent'len = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IonAllocBufferFailFtraceEvent "mask" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonAllocBufferFailFtraceEvent'mask
           (\ x__ y__ -> x__ {_IonAllocBufferFailFtraceEvent'mask = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonAllocBufferFailFtraceEvent "maybe'mask" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonAllocBufferFailFtraceEvent'mask
           (\ x__ y__ -> x__ {_IonAllocBufferFailFtraceEvent'mask = y__}))
        Prelude.id
instance Data.ProtoLens.Message IonAllocBufferFailFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.IonAllocBufferFailFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\GSIonAllocBufferFailFtraceEvent\DC2\US\n\
      \\vclient_name\CAN\SOH \SOH(\tR\n\
      \clientName\DC2\DC4\n\
      \\ENQerror\CAN\STX \SOH(\ETXR\ENQerror\DC2\DC4\n\
      \\ENQflags\CAN\ETX \SOH(\rR\ENQflags\DC2\ESC\n\
      \\theap_name\CAN\EOT \SOH(\tR\bheapName\DC2\DLE\n\
      \\ETXlen\CAN\ENQ \SOH(\EOTR\ETXlen\DC2\DC2\n\
      \\EOTmask\CAN\ACK \SOH(\rR\EOTmask"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        clientName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "client_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'clientName")) ::
              Data.ProtoLens.FieldDescriptor IonAllocBufferFailFtraceEvent
        error__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "error"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'error")) ::
              Data.ProtoLens.FieldDescriptor IonAllocBufferFailFtraceEvent
        flags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'flags")) ::
              Data.ProtoLens.FieldDescriptor IonAllocBufferFailFtraceEvent
        heapName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "heap_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'heapName")) ::
              Data.ProtoLens.FieldDescriptor IonAllocBufferFailFtraceEvent
        len__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "len"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'len")) ::
              Data.ProtoLens.FieldDescriptor IonAllocBufferFailFtraceEvent
        mask__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mask"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mask")) ::
              Data.ProtoLens.FieldDescriptor IonAllocBufferFailFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, clientName__field_descriptor),
           (Data.ProtoLens.Tag 2, error__field_descriptor),
           (Data.ProtoLens.Tag 3, flags__field_descriptor),
           (Data.ProtoLens.Tag 4, heapName__field_descriptor),
           (Data.ProtoLens.Tag 5, len__field_descriptor),
           (Data.ProtoLens.Tag 6, mask__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _IonAllocBufferFailFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_IonAllocBufferFailFtraceEvent'_unknownFields = y__})
  defMessage
    = IonAllocBufferFailFtraceEvent'_constructor
        {_IonAllocBufferFailFtraceEvent'clientName = Prelude.Nothing,
         _IonAllocBufferFailFtraceEvent'error = Prelude.Nothing,
         _IonAllocBufferFailFtraceEvent'flags = Prelude.Nothing,
         _IonAllocBufferFailFtraceEvent'heapName = Prelude.Nothing,
         _IonAllocBufferFailFtraceEvent'len = Prelude.Nothing,
         _IonAllocBufferFailFtraceEvent'mask = Prelude.Nothing,
         _IonAllocBufferFailFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          IonAllocBufferFailFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser IonAllocBufferFailFtraceEvent
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
                                       "client_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"clientName") y x)
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
                                       "flags"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"flags") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "heap_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"heapName") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "len"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"len") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "mask"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"mask") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "IonAllocBufferFailFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'clientName") _x
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'flags") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'heapName") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.Text.Encoding.encodeUtf8 _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'len") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'mask") _x
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
instance Control.DeepSeq.NFData IonAllocBufferFailFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_IonAllocBufferFailFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_IonAllocBufferFailFtraceEvent'clientName x__)
                (Control.DeepSeq.deepseq
                   (_IonAllocBufferFailFtraceEvent'error x__)
                   (Control.DeepSeq.deepseq
                      (_IonAllocBufferFailFtraceEvent'flags x__)
                      (Control.DeepSeq.deepseq
                         (_IonAllocBufferFailFtraceEvent'heapName x__)
                         (Control.DeepSeq.deepseq
                            (_IonAllocBufferFailFtraceEvent'len x__)
                            (Control.DeepSeq.deepseq
                               (_IonAllocBufferFailFtraceEvent'mask x__) ()))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.clientName' @:: Lens' IonAllocBufferFallbackFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'clientName' @:: Lens' IonAllocBufferFallbackFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.error' @:: Lens' IonAllocBufferFallbackFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'error' @:: Lens' IonAllocBufferFallbackFtraceEvent (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.flags' @:: Lens' IonAllocBufferFallbackFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'flags' @:: Lens' IonAllocBufferFallbackFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.heapName' @:: Lens' IonAllocBufferFallbackFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'heapName' @:: Lens' IonAllocBufferFallbackFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.len' @:: Lens' IonAllocBufferFallbackFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'len' @:: Lens' IonAllocBufferFallbackFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.mask' @:: Lens' IonAllocBufferFallbackFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'mask' @:: Lens' IonAllocBufferFallbackFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data IonAllocBufferFallbackFtraceEvent
  = IonAllocBufferFallbackFtraceEvent'_constructor {_IonAllocBufferFallbackFtraceEvent'clientName :: !(Prelude.Maybe Data.Text.Text),
                                                    _IonAllocBufferFallbackFtraceEvent'error :: !(Prelude.Maybe Data.Int.Int64),
                                                    _IonAllocBufferFallbackFtraceEvent'flags :: !(Prelude.Maybe Data.Word.Word32),
                                                    _IonAllocBufferFallbackFtraceEvent'heapName :: !(Prelude.Maybe Data.Text.Text),
                                                    _IonAllocBufferFallbackFtraceEvent'len :: !(Prelude.Maybe Data.Word.Word64),
                                                    _IonAllocBufferFallbackFtraceEvent'mask :: !(Prelude.Maybe Data.Word.Word32),
                                                    _IonAllocBufferFallbackFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show IonAllocBufferFallbackFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField IonAllocBufferFallbackFtraceEvent "clientName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonAllocBufferFallbackFtraceEvent'clientName
           (\ x__ y__
              -> x__ {_IonAllocBufferFallbackFtraceEvent'clientName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonAllocBufferFallbackFtraceEvent "maybe'clientName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonAllocBufferFallbackFtraceEvent'clientName
           (\ x__ y__
              -> x__ {_IonAllocBufferFallbackFtraceEvent'clientName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IonAllocBufferFallbackFtraceEvent "error" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonAllocBufferFallbackFtraceEvent'error
           (\ x__ y__
              -> x__ {_IonAllocBufferFallbackFtraceEvent'error = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonAllocBufferFallbackFtraceEvent "maybe'error" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonAllocBufferFallbackFtraceEvent'error
           (\ x__ y__
              -> x__ {_IonAllocBufferFallbackFtraceEvent'error = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IonAllocBufferFallbackFtraceEvent "flags" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonAllocBufferFallbackFtraceEvent'flags
           (\ x__ y__
              -> x__ {_IonAllocBufferFallbackFtraceEvent'flags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonAllocBufferFallbackFtraceEvent "maybe'flags" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonAllocBufferFallbackFtraceEvent'flags
           (\ x__ y__
              -> x__ {_IonAllocBufferFallbackFtraceEvent'flags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IonAllocBufferFallbackFtraceEvent "heapName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonAllocBufferFallbackFtraceEvent'heapName
           (\ x__ y__
              -> x__ {_IonAllocBufferFallbackFtraceEvent'heapName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonAllocBufferFallbackFtraceEvent "maybe'heapName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonAllocBufferFallbackFtraceEvent'heapName
           (\ x__ y__
              -> x__ {_IonAllocBufferFallbackFtraceEvent'heapName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IonAllocBufferFallbackFtraceEvent "len" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonAllocBufferFallbackFtraceEvent'len
           (\ x__ y__ -> x__ {_IonAllocBufferFallbackFtraceEvent'len = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonAllocBufferFallbackFtraceEvent "maybe'len" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonAllocBufferFallbackFtraceEvent'len
           (\ x__ y__ -> x__ {_IonAllocBufferFallbackFtraceEvent'len = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IonAllocBufferFallbackFtraceEvent "mask" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonAllocBufferFallbackFtraceEvent'mask
           (\ x__ y__ -> x__ {_IonAllocBufferFallbackFtraceEvent'mask = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonAllocBufferFallbackFtraceEvent "maybe'mask" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonAllocBufferFallbackFtraceEvent'mask
           (\ x__ y__ -> x__ {_IonAllocBufferFallbackFtraceEvent'mask = y__}))
        Prelude.id
instance Data.ProtoLens.Message IonAllocBufferFallbackFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.IonAllocBufferFallbackFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \!IonAllocBufferFallbackFtraceEvent\DC2\US\n\
      \\vclient_name\CAN\SOH \SOH(\tR\n\
      \clientName\DC2\DC4\n\
      \\ENQerror\CAN\STX \SOH(\ETXR\ENQerror\DC2\DC4\n\
      \\ENQflags\CAN\ETX \SOH(\rR\ENQflags\DC2\ESC\n\
      \\theap_name\CAN\EOT \SOH(\tR\bheapName\DC2\DLE\n\
      \\ETXlen\CAN\ENQ \SOH(\EOTR\ETXlen\DC2\DC2\n\
      \\EOTmask\CAN\ACK \SOH(\rR\EOTmask"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        clientName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "client_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'clientName")) ::
              Data.ProtoLens.FieldDescriptor IonAllocBufferFallbackFtraceEvent
        error__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "error"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'error")) ::
              Data.ProtoLens.FieldDescriptor IonAllocBufferFallbackFtraceEvent
        flags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'flags")) ::
              Data.ProtoLens.FieldDescriptor IonAllocBufferFallbackFtraceEvent
        heapName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "heap_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'heapName")) ::
              Data.ProtoLens.FieldDescriptor IonAllocBufferFallbackFtraceEvent
        len__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "len"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'len")) ::
              Data.ProtoLens.FieldDescriptor IonAllocBufferFallbackFtraceEvent
        mask__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mask"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mask")) ::
              Data.ProtoLens.FieldDescriptor IonAllocBufferFallbackFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, clientName__field_descriptor),
           (Data.ProtoLens.Tag 2, error__field_descriptor),
           (Data.ProtoLens.Tag 3, flags__field_descriptor),
           (Data.ProtoLens.Tag 4, heapName__field_descriptor),
           (Data.ProtoLens.Tag 5, len__field_descriptor),
           (Data.ProtoLens.Tag 6, mask__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _IonAllocBufferFallbackFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_IonAllocBufferFallbackFtraceEvent'_unknownFields = y__})
  defMessage
    = IonAllocBufferFallbackFtraceEvent'_constructor
        {_IonAllocBufferFallbackFtraceEvent'clientName = Prelude.Nothing,
         _IonAllocBufferFallbackFtraceEvent'error = Prelude.Nothing,
         _IonAllocBufferFallbackFtraceEvent'flags = Prelude.Nothing,
         _IonAllocBufferFallbackFtraceEvent'heapName = Prelude.Nothing,
         _IonAllocBufferFallbackFtraceEvent'len = Prelude.Nothing,
         _IonAllocBufferFallbackFtraceEvent'mask = Prelude.Nothing,
         _IonAllocBufferFallbackFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          IonAllocBufferFallbackFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser IonAllocBufferFallbackFtraceEvent
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
                                       "client_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"clientName") y x)
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
                                       "flags"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"flags") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "heap_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"heapName") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "len"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"len") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "mask"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"mask") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "IonAllocBufferFallbackFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'clientName") _x
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'flags") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'heapName") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.Text.Encoding.encodeUtf8 _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'len") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'mask") _x
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
instance Control.DeepSeq.NFData IonAllocBufferFallbackFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_IonAllocBufferFallbackFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_IonAllocBufferFallbackFtraceEvent'clientName x__)
                (Control.DeepSeq.deepseq
                   (_IonAllocBufferFallbackFtraceEvent'error x__)
                   (Control.DeepSeq.deepseq
                      (_IonAllocBufferFallbackFtraceEvent'flags x__)
                      (Control.DeepSeq.deepseq
                         (_IonAllocBufferFallbackFtraceEvent'heapName x__)
                         (Control.DeepSeq.deepseq
                            (_IonAllocBufferFallbackFtraceEvent'len x__)
                            (Control.DeepSeq.deepseq
                               (_IonAllocBufferFallbackFtraceEvent'mask x__) ()))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.clientName' @:: Lens' IonAllocBufferStartFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'clientName' @:: Lens' IonAllocBufferStartFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.flags' @:: Lens' IonAllocBufferStartFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'flags' @:: Lens' IonAllocBufferStartFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.heapName' @:: Lens' IonAllocBufferStartFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'heapName' @:: Lens' IonAllocBufferStartFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.len' @:: Lens' IonAllocBufferStartFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'len' @:: Lens' IonAllocBufferStartFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.mask' @:: Lens' IonAllocBufferStartFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'mask' @:: Lens' IonAllocBufferStartFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data IonAllocBufferStartFtraceEvent
  = IonAllocBufferStartFtraceEvent'_constructor {_IonAllocBufferStartFtraceEvent'clientName :: !(Prelude.Maybe Data.Text.Text),
                                                 _IonAllocBufferStartFtraceEvent'flags :: !(Prelude.Maybe Data.Word.Word32),
                                                 _IonAllocBufferStartFtraceEvent'heapName :: !(Prelude.Maybe Data.Text.Text),
                                                 _IonAllocBufferStartFtraceEvent'len :: !(Prelude.Maybe Data.Word.Word64),
                                                 _IonAllocBufferStartFtraceEvent'mask :: !(Prelude.Maybe Data.Word.Word32),
                                                 _IonAllocBufferStartFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show IonAllocBufferStartFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField IonAllocBufferStartFtraceEvent "clientName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonAllocBufferStartFtraceEvent'clientName
           (\ x__ y__
              -> x__ {_IonAllocBufferStartFtraceEvent'clientName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonAllocBufferStartFtraceEvent "maybe'clientName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonAllocBufferStartFtraceEvent'clientName
           (\ x__ y__
              -> x__ {_IonAllocBufferStartFtraceEvent'clientName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IonAllocBufferStartFtraceEvent "flags" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonAllocBufferStartFtraceEvent'flags
           (\ x__ y__ -> x__ {_IonAllocBufferStartFtraceEvent'flags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonAllocBufferStartFtraceEvent "maybe'flags" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonAllocBufferStartFtraceEvent'flags
           (\ x__ y__ -> x__ {_IonAllocBufferStartFtraceEvent'flags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IonAllocBufferStartFtraceEvent "heapName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonAllocBufferStartFtraceEvent'heapName
           (\ x__ y__
              -> x__ {_IonAllocBufferStartFtraceEvent'heapName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonAllocBufferStartFtraceEvent "maybe'heapName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonAllocBufferStartFtraceEvent'heapName
           (\ x__ y__
              -> x__ {_IonAllocBufferStartFtraceEvent'heapName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IonAllocBufferStartFtraceEvent "len" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonAllocBufferStartFtraceEvent'len
           (\ x__ y__ -> x__ {_IonAllocBufferStartFtraceEvent'len = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonAllocBufferStartFtraceEvent "maybe'len" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonAllocBufferStartFtraceEvent'len
           (\ x__ y__ -> x__ {_IonAllocBufferStartFtraceEvent'len = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IonAllocBufferStartFtraceEvent "mask" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonAllocBufferStartFtraceEvent'mask
           (\ x__ y__ -> x__ {_IonAllocBufferStartFtraceEvent'mask = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonAllocBufferStartFtraceEvent "maybe'mask" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonAllocBufferStartFtraceEvent'mask
           (\ x__ y__ -> x__ {_IonAllocBufferStartFtraceEvent'mask = y__}))
        Prelude.id
instance Data.ProtoLens.Message IonAllocBufferStartFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.IonAllocBufferStartFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\RSIonAllocBufferStartFtraceEvent\DC2\US\n\
      \\vclient_name\CAN\SOH \SOH(\tR\n\
      \clientName\DC2\DC4\n\
      \\ENQflags\CAN\STX \SOH(\rR\ENQflags\DC2\ESC\n\
      \\theap_name\CAN\ETX \SOH(\tR\bheapName\DC2\DLE\n\
      \\ETXlen\CAN\EOT \SOH(\EOTR\ETXlen\DC2\DC2\n\
      \\EOTmask\CAN\ENQ \SOH(\rR\EOTmask"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        clientName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "client_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'clientName")) ::
              Data.ProtoLens.FieldDescriptor IonAllocBufferStartFtraceEvent
        flags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'flags")) ::
              Data.ProtoLens.FieldDescriptor IonAllocBufferStartFtraceEvent
        heapName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "heap_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'heapName")) ::
              Data.ProtoLens.FieldDescriptor IonAllocBufferStartFtraceEvent
        len__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "len"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'len")) ::
              Data.ProtoLens.FieldDescriptor IonAllocBufferStartFtraceEvent
        mask__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mask"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mask")) ::
              Data.ProtoLens.FieldDescriptor IonAllocBufferStartFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, clientName__field_descriptor),
           (Data.ProtoLens.Tag 2, flags__field_descriptor),
           (Data.ProtoLens.Tag 3, heapName__field_descriptor),
           (Data.ProtoLens.Tag 4, len__field_descriptor),
           (Data.ProtoLens.Tag 5, mask__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _IonAllocBufferStartFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_IonAllocBufferStartFtraceEvent'_unknownFields = y__})
  defMessage
    = IonAllocBufferStartFtraceEvent'_constructor
        {_IonAllocBufferStartFtraceEvent'clientName = Prelude.Nothing,
         _IonAllocBufferStartFtraceEvent'flags = Prelude.Nothing,
         _IonAllocBufferStartFtraceEvent'heapName = Prelude.Nothing,
         _IonAllocBufferStartFtraceEvent'len = Prelude.Nothing,
         _IonAllocBufferStartFtraceEvent'mask = Prelude.Nothing,
         _IonAllocBufferStartFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          IonAllocBufferStartFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser IonAllocBufferStartFtraceEvent
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
                                       "client_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"clientName") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "flags"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"flags") y x)
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
                                       "heap_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"heapName") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "len"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"len") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "mask"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"mask") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "IonAllocBufferStartFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'clientName") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'flags") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'heapName") _x
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
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'len") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'mask") _x
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
instance Control.DeepSeq.NFData IonAllocBufferStartFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_IonAllocBufferStartFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_IonAllocBufferStartFtraceEvent'clientName x__)
                (Control.DeepSeq.deepseq
                   (_IonAllocBufferStartFtraceEvent'flags x__)
                   (Control.DeepSeq.deepseq
                      (_IonAllocBufferStartFtraceEvent'heapName x__)
                      (Control.DeepSeq.deepseq
                         (_IonAllocBufferStartFtraceEvent'len x__)
                         (Control.DeepSeq.deepseq
                            (_IonAllocBufferStartFtraceEvent'mask x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.addr' @:: Lens' IonBufferCreateFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'addr' @:: Lens' IonBufferCreateFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.len' @:: Lens' IonBufferCreateFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'len' @:: Lens' IonBufferCreateFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data IonBufferCreateFtraceEvent
  = IonBufferCreateFtraceEvent'_constructor {_IonBufferCreateFtraceEvent'addr :: !(Prelude.Maybe Data.Word.Word64),
                                             _IonBufferCreateFtraceEvent'len :: !(Prelude.Maybe Data.Word.Word64),
                                             _IonBufferCreateFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show IonBufferCreateFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField IonBufferCreateFtraceEvent "addr" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonBufferCreateFtraceEvent'addr
           (\ x__ y__ -> x__ {_IonBufferCreateFtraceEvent'addr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonBufferCreateFtraceEvent "maybe'addr" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonBufferCreateFtraceEvent'addr
           (\ x__ y__ -> x__ {_IonBufferCreateFtraceEvent'addr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IonBufferCreateFtraceEvent "len" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonBufferCreateFtraceEvent'len
           (\ x__ y__ -> x__ {_IonBufferCreateFtraceEvent'len = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonBufferCreateFtraceEvent "maybe'len" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonBufferCreateFtraceEvent'len
           (\ x__ y__ -> x__ {_IonBufferCreateFtraceEvent'len = y__}))
        Prelude.id
instance Data.ProtoLens.Message IonBufferCreateFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.IonBufferCreateFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SUBIonBufferCreateFtraceEvent\DC2\DC2\n\
      \\EOTaddr\CAN\SOH \SOH(\EOTR\EOTaddr\DC2\DLE\n\
      \\ETXlen\CAN\STX \SOH(\EOTR\ETXlen"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        addr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "addr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'addr")) ::
              Data.ProtoLens.FieldDescriptor IonBufferCreateFtraceEvent
        len__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "len"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'len")) ::
              Data.ProtoLens.FieldDescriptor IonBufferCreateFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, addr__field_descriptor),
           (Data.ProtoLens.Tag 2, len__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _IonBufferCreateFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_IonBufferCreateFtraceEvent'_unknownFields = y__})
  defMessage
    = IonBufferCreateFtraceEvent'_constructor
        {_IonBufferCreateFtraceEvent'addr = Prelude.Nothing,
         _IonBufferCreateFtraceEvent'len = Prelude.Nothing,
         _IonBufferCreateFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          IonBufferCreateFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser IonBufferCreateFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "addr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"addr") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "len"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"len") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "IonBufferCreateFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'addr") _x
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
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData IonBufferCreateFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_IonBufferCreateFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_IonBufferCreateFtraceEvent'addr x__)
                (Control.DeepSeq.deepseq (_IonBufferCreateFtraceEvent'len x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.addr' @:: Lens' IonBufferDestroyFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'addr' @:: Lens' IonBufferDestroyFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.len' @:: Lens' IonBufferDestroyFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'len' @:: Lens' IonBufferDestroyFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data IonBufferDestroyFtraceEvent
  = IonBufferDestroyFtraceEvent'_constructor {_IonBufferDestroyFtraceEvent'addr :: !(Prelude.Maybe Data.Word.Word64),
                                              _IonBufferDestroyFtraceEvent'len :: !(Prelude.Maybe Data.Word.Word64),
                                              _IonBufferDestroyFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show IonBufferDestroyFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField IonBufferDestroyFtraceEvent "addr" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonBufferDestroyFtraceEvent'addr
           (\ x__ y__ -> x__ {_IonBufferDestroyFtraceEvent'addr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonBufferDestroyFtraceEvent "maybe'addr" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonBufferDestroyFtraceEvent'addr
           (\ x__ y__ -> x__ {_IonBufferDestroyFtraceEvent'addr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IonBufferDestroyFtraceEvent "len" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonBufferDestroyFtraceEvent'len
           (\ x__ y__ -> x__ {_IonBufferDestroyFtraceEvent'len = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonBufferDestroyFtraceEvent "maybe'len" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonBufferDestroyFtraceEvent'len
           (\ x__ y__ -> x__ {_IonBufferDestroyFtraceEvent'len = y__}))
        Prelude.id
instance Data.ProtoLens.Message IonBufferDestroyFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.IonBufferDestroyFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ESCIonBufferDestroyFtraceEvent\DC2\DC2\n\
      \\EOTaddr\CAN\SOH \SOH(\EOTR\EOTaddr\DC2\DLE\n\
      \\ETXlen\CAN\STX \SOH(\EOTR\ETXlen"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        addr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "addr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'addr")) ::
              Data.ProtoLens.FieldDescriptor IonBufferDestroyFtraceEvent
        len__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "len"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'len")) ::
              Data.ProtoLens.FieldDescriptor IonBufferDestroyFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, addr__field_descriptor),
           (Data.ProtoLens.Tag 2, len__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _IonBufferDestroyFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_IonBufferDestroyFtraceEvent'_unknownFields = y__})
  defMessage
    = IonBufferDestroyFtraceEvent'_constructor
        {_IonBufferDestroyFtraceEvent'addr = Prelude.Nothing,
         _IonBufferDestroyFtraceEvent'len = Prelude.Nothing,
         _IonBufferDestroyFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          IonBufferDestroyFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser IonBufferDestroyFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "addr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"addr") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "len"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"len") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "IonBufferDestroyFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'addr") _x
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
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData IonBufferDestroyFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_IonBufferDestroyFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_IonBufferDestroyFtraceEvent'addr x__)
                (Control.DeepSeq.deepseq
                   (_IonBufferDestroyFtraceEvent'len x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.tries' @:: Lens' IonCpAllocRetryFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'tries' @:: Lens' IonCpAllocRetryFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data IonCpAllocRetryFtraceEvent
  = IonCpAllocRetryFtraceEvent'_constructor {_IonCpAllocRetryFtraceEvent'tries :: !(Prelude.Maybe Data.Int.Int32),
                                             _IonCpAllocRetryFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show IonCpAllocRetryFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField IonCpAllocRetryFtraceEvent "tries" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonCpAllocRetryFtraceEvent'tries
           (\ x__ y__ -> x__ {_IonCpAllocRetryFtraceEvent'tries = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonCpAllocRetryFtraceEvent "maybe'tries" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonCpAllocRetryFtraceEvent'tries
           (\ x__ y__ -> x__ {_IonCpAllocRetryFtraceEvent'tries = y__}))
        Prelude.id
instance Data.ProtoLens.Message IonCpAllocRetryFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.IonCpAllocRetryFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SUBIonCpAllocRetryFtraceEvent\DC2\DC4\n\
      \\ENQtries\CAN\SOH \SOH(\ENQR\ENQtries"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        tries__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tries"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tries")) ::
              Data.ProtoLens.FieldDescriptor IonCpAllocRetryFtraceEvent
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, tries__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _IonCpAllocRetryFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_IonCpAllocRetryFtraceEvent'_unknownFields = y__})
  defMessage
    = IonCpAllocRetryFtraceEvent'_constructor
        {_IonCpAllocRetryFtraceEvent'tries = Prelude.Nothing,
         _IonCpAllocRetryFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          IonCpAllocRetryFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser IonCpAllocRetryFtraceEvent
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
                                       "tries"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"tries") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "IonCpAllocRetryFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'tries") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData IonCpAllocRetryFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_IonCpAllocRetryFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_IonCpAllocRetryFtraceEvent'tries x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.align' @:: Lens' IonCpSecureBufferEndFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'align' @:: Lens' IonCpSecureBufferEndFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.flags' @:: Lens' IonCpSecureBufferEndFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'flags' @:: Lens' IonCpSecureBufferEndFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.heapName' @:: Lens' IonCpSecureBufferEndFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'heapName' @:: Lens' IonCpSecureBufferEndFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.len' @:: Lens' IonCpSecureBufferEndFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'len' @:: Lens' IonCpSecureBufferEndFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data IonCpSecureBufferEndFtraceEvent
  = IonCpSecureBufferEndFtraceEvent'_constructor {_IonCpSecureBufferEndFtraceEvent'align :: !(Prelude.Maybe Data.Word.Word64),
                                                  _IonCpSecureBufferEndFtraceEvent'flags :: !(Prelude.Maybe Data.Word.Word64),
                                                  _IonCpSecureBufferEndFtraceEvent'heapName :: !(Prelude.Maybe Data.Text.Text),
                                                  _IonCpSecureBufferEndFtraceEvent'len :: !(Prelude.Maybe Data.Word.Word64),
                                                  _IonCpSecureBufferEndFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show IonCpSecureBufferEndFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField IonCpSecureBufferEndFtraceEvent "align" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonCpSecureBufferEndFtraceEvent'align
           (\ x__ y__ -> x__ {_IonCpSecureBufferEndFtraceEvent'align = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonCpSecureBufferEndFtraceEvent "maybe'align" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonCpSecureBufferEndFtraceEvent'align
           (\ x__ y__ -> x__ {_IonCpSecureBufferEndFtraceEvent'align = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IonCpSecureBufferEndFtraceEvent "flags" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonCpSecureBufferEndFtraceEvent'flags
           (\ x__ y__ -> x__ {_IonCpSecureBufferEndFtraceEvent'flags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonCpSecureBufferEndFtraceEvent "maybe'flags" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonCpSecureBufferEndFtraceEvent'flags
           (\ x__ y__ -> x__ {_IonCpSecureBufferEndFtraceEvent'flags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IonCpSecureBufferEndFtraceEvent "heapName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonCpSecureBufferEndFtraceEvent'heapName
           (\ x__ y__
              -> x__ {_IonCpSecureBufferEndFtraceEvent'heapName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonCpSecureBufferEndFtraceEvent "maybe'heapName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonCpSecureBufferEndFtraceEvent'heapName
           (\ x__ y__
              -> x__ {_IonCpSecureBufferEndFtraceEvent'heapName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IonCpSecureBufferEndFtraceEvent "len" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonCpSecureBufferEndFtraceEvent'len
           (\ x__ y__ -> x__ {_IonCpSecureBufferEndFtraceEvent'len = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonCpSecureBufferEndFtraceEvent "maybe'len" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonCpSecureBufferEndFtraceEvent'len
           (\ x__ y__ -> x__ {_IonCpSecureBufferEndFtraceEvent'len = y__}))
        Prelude.id
instance Data.ProtoLens.Message IonCpSecureBufferEndFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.IonCpSecureBufferEndFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\USIonCpSecureBufferEndFtraceEvent\DC2\DC4\n\
      \\ENQalign\CAN\SOH \SOH(\EOTR\ENQalign\DC2\DC4\n\
      \\ENQflags\CAN\STX \SOH(\EOTR\ENQflags\DC2\ESC\n\
      \\theap_name\CAN\ETX \SOH(\tR\bheapName\DC2\DLE\n\
      \\ETXlen\CAN\EOT \SOH(\EOTR\ETXlen"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        align__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "align"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'align")) ::
              Data.ProtoLens.FieldDescriptor IonCpSecureBufferEndFtraceEvent
        flags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'flags")) ::
              Data.ProtoLens.FieldDescriptor IonCpSecureBufferEndFtraceEvent
        heapName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "heap_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'heapName")) ::
              Data.ProtoLens.FieldDescriptor IonCpSecureBufferEndFtraceEvent
        len__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "len"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'len")) ::
              Data.ProtoLens.FieldDescriptor IonCpSecureBufferEndFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, align__field_descriptor),
           (Data.ProtoLens.Tag 2, flags__field_descriptor),
           (Data.ProtoLens.Tag 3, heapName__field_descriptor),
           (Data.ProtoLens.Tag 4, len__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _IonCpSecureBufferEndFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_IonCpSecureBufferEndFtraceEvent'_unknownFields = y__})
  defMessage
    = IonCpSecureBufferEndFtraceEvent'_constructor
        {_IonCpSecureBufferEndFtraceEvent'align = Prelude.Nothing,
         _IonCpSecureBufferEndFtraceEvent'flags = Prelude.Nothing,
         _IonCpSecureBufferEndFtraceEvent'heapName = Prelude.Nothing,
         _IonCpSecureBufferEndFtraceEvent'len = Prelude.Nothing,
         _IonCpSecureBufferEndFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          IonCpSecureBufferEndFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser IonCpSecureBufferEndFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "align"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"align") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "flags"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"flags") y x)
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
                                       "heap_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"heapName") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "len"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"len") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "IonCpSecureBufferEndFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'align") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'flags") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'heapName") _x
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
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'len") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData IonCpSecureBufferEndFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_IonCpSecureBufferEndFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_IonCpSecureBufferEndFtraceEvent'align x__)
                (Control.DeepSeq.deepseq
                   (_IonCpSecureBufferEndFtraceEvent'flags x__)
                   (Control.DeepSeq.deepseq
                      (_IonCpSecureBufferEndFtraceEvent'heapName x__)
                      (Control.DeepSeq.deepseq
                         (_IonCpSecureBufferEndFtraceEvent'len x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.align' @:: Lens' IonCpSecureBufferStartFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'align' @:: Lens' IonCpSecureBufferStartFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.flags' @:: Lens' IonCpSecureBufferStartFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'flags' @:: Lens' IonCpSecureBufferStartFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.heapName' @:: Lens' IonCpSecureBufferStartFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'heapName' @:: Lens' IonCpSecureBufferStartFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.len' @:: Lens' IonCpSecureBufferStartFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'len' @:: Lens' IonCpSecureBufferStartFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data IonCpSecureBufferStartFtraceEvent
  = IonCpSecureBufferStartFtraceEvent'_constructor {_IonCpSecureBufferStartFtraceEvent'align :: !(Prelude.Maybe Data.Word.Word64),
                                                    _IonCpSecureBufferStartFtraceEvent'flags :: !(Prelude.Maybe Data.Word.Word64),
                                                    _IonCpSecureBufferStartFtraceEvent'heapName :: !(Prelude.Maybe Data.Text.Text),
                                                    _IonCpSecureBufferStartFtraceEvent'len :: !(Prelude.Maybe Data.Word.Word64),
                                                    _IonCpSecureBufferStartFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show IonCpSecureBufferStartFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField IonCpSecureBufferStartFtraceEvent "align" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonCpSecureBufferStartFtraceEvent'align
           (\ x__ y__
              -> x__ {_IonCpSecureBufferStartFtraceEvent'align = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonCpSecureBufferStartFtraceEvent "maybe'align" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonCpSecureBufferStartFtraceEvent'align
           (\ x__ y__
              -> x__ {_IonCpSecureBufferStartFtraceEvent'align = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IonCpSecureBufferStartFtraceEvent "flags" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonCpSecureBufferStartFtraceEvent'flags
           (\ x__ y__
              -> x__ {_IonCpSecureBufferStartFtraceEvent'flags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonCpSecureBufferStartFtraceEvent "maybe'flags" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonCpSecureBufferStartFtraceEvent'flags
           (\ x__ y__
              -> x__ {_IonCpSecureBufferStartFtraceEvent'flags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IonCpSecureBufferStartFtraceEvent "heapName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonCpSecureBufferStartFtraceEvent'heapName
           (\ x__ y__
              -> x__ {_IonCpSecureBufferStartFtraceEvent'heapName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonCpSecureBufferStartFtraceEvent "maybe'heapName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonCpSecureBufferStartFtraceEvent'heapName
           (\ x__ y__
              -> x__ {_IonCpSecureBufferStartFtraceEvent'heapName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IonCpSecureBufferStartFtraceEvent "len" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonCpSecureBufferStartFtraceEvent'len
           (\ x__ y__ -> x__ {_IonCpSecureBufferStartFtraceEvent'len = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonCpSecureBufferStartFtraceEvent "maybe'len" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonCpSecureBufferStartFtraceEvent'len
           (\ x__ y__ -> x__ {_IonCpSecureBufferStartFtraceEvent'len = y__}))
        Prelude.id
instance Data.ProtoLens.Message IonCpSecureBufferStartFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.IonCpSecureBufferStartFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \!IonCpSecureBufferStartFtraceEvent\DC2\DC4\n\
      \\ENQalign\CAN\SOH \SOH(\EOTR\ENQalign\DC2\DC4\n\
      \\ENQflags\CAN\STX \SOH(\EOTR\ENQflags\DC2\ESC\n\
      \\theap_name\CAN\ETX \SOH(\tR\bheapName\DC2\DLE\n\
      \\ETXlen\CAN\EOT \SOH(\EOTR\ETXlen"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        align__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "align"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'align")) ::
              Data.ProtoLens.FieldDescriptor IonCpSecureBufferStartFtraceEvent
        flags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'flags")) ::
              Data.ProtoLens.FieldDescriptor IonCpSecureBufferStartFtraceEvent
        heapName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "heap_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'heapName")) ::
              Data.ProtoLens.FieldDescriptor IonCpSecureBufferStartFtraceEvent
        len__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "len"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'len")) ::
              Data.ProtoLens.FieldDescriptor IonCpSecureBufferStartFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, align__field_descriptor),
           (Data.ProtoLens.Tag 2, flags__field_descriptor),
           (Data.ProtoLens.Tag 3, heapName__field_descriptor),
           (Data.ProtoLens.Tag 4, len__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _IonCpSecureBufferStartFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_IonCpSecureBufferStartFtraceEvent'_unknownFields = y__})
  defMessage
    = IonCpSecureBufferStartFtraceEvent'_constructor
        {_IonCpSecureBufferStartFtraceEvent'align = Prelude.Nothing,
         _IonCpSecureBufferStartFtraceEvent'flags = Prelude.Nothing,
         _IonCpSecureBufferStartFtraceEvent'heapName = Prelude.Nothing,
         _IonCpSecureBufferStartFtraceEvent'len = Prelude.Nothing,
         _IonCpSecureBufferStartFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          IonCpSecureBufferStartFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser IonCpSecureBufferStartFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "align"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"align") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "flags"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"flags") y x)
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
                                       "heap_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"heapName") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "len"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"len") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "IonCpSecureBufferStartFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'align") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'flags") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'heapName") _x
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
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'len") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData IonCpSecureBufferStartFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_IonCpSecureBufferStartFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_IonCpSecureBufferStartFtraceEvent'align x__)
                (Control.DeepSeq.deepseq
                   (_IonCpSecureBufferStartFtraceEvent'flags x__)
                   (Control.DeepSeq.deepseq
                      (_IonCpSecureBufferStartFtraceEvent'heapName x__)
                      (Control.DeepSeq.deepseq
                         (_IonCpSecureBufferStartFtraceEvent'len x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.heapName' @:: Lens' IonHeapGrowFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'heapName' @:: Lens' IonHeapGrowFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.len' @:: Lens' IonHeapGrowFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'len' @:: Lens' IonHeapGrowFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.totalAllocated' @:: Lens' IonHeapGrowFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'totalAllocated' @:: Lens' IonHeapGrowFtraceEvent (Prelude.Maybe Data.Int.Int64)@ -}
data IonHeapGrowFtraceEvent
  = IonHeapGrowFtraceEvent'_constructor {_IonHeapGrowFtraceEvent'heapName :: !(Prelude.Maybe Data.Text.Text),
                                         _IonHeapGrowFtraceEvent'len :: !(Prelude.Maybe Data.Word.Word64),
                                         _IonHeapGrowFtraceEvent'totalAllocated :: !(Prelude.Maybe Data.Int.Int64),
                                         _IonHeapGrowFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show IonHeapGrowFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField IonHeapGrowFtraceEvent "heapName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonHeapGrowFtraceEvent'heapName
           (\ x__ y__ -> x__ {_IonHeapGrowFtraceEvent'heapName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonHeapGrowFtraceEvent "maybe'heapName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonHeapGrowFtraceEvent'heapName
           (\ x__ y__ -> x__ {_IonHeapGrowFtraceEvent'heapName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IonHeapGrowFtraceEvent "len" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonHeapGrowFtraceEvent'len
           (\ x__ y__ -> x__ {_IonHeapGrowFtraceEvent'len = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonHeapGrowFtraceEvent "maybe'len" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonHeapGrowFtraceEvent'len
           (\ x__ y__ -> x__ {_IonHeapGrowFtraceEvent'len = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IonHeapGrowFtraceEvent "totalAllocated" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonHeapGrowFtraceEvent'totalAllocated
           (\ x__ y__ -> x__ {_IonHeapGrowFtraceEvent'totalAllocated = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonHeapGrowFtraceEvent "maybe'totalAllocated" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonHeapGrowFtraceEvent'totalAllocated
           (\ x__ y__ -> x__ {_IonHeapGrowFtraceEvent'totalAllocated = y__}))
        Prelude.id
instance Data.ProtoLens.Message IonHeapGrowFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.IonHeapGrowFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SYNIonHeapGrowFtraceEvent\DC2\ESC\n\
      \\theap_name\CAN\SOH \SOH(\tR\bheapName\DC2\DLE\n\
      \\ETXlen\CAN\STX \SOH(\EOTR\ETXlen\DC2'\n\
      \\SItotal_allocated\CAN\ETX \SOH(\ETXR\SOtotalAllocated"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        heapName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "heap_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'heapName")) ::
              Data.ProtoLens.FieldDescriptor IonHeapGrowFtraceEvent
        len__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "len"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'len")) ::
              Data.ProtoLens.FieldDescriptor IonHeapGrowFtraceEvent
        totalAllocated__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total_allocated"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'totalAllocated")) ::
              Data.ProtoLens.FieldDescriptor IonHeapGrowFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, heapName__field_descriptor),
           (Data.ProtoLens.Tag 2, len__field_descriptor),
           (Data.ProtoLens.Tag 3, totalAllocated__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _IonHeapGrowFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_IonHeapGrowFtraceEvent'_unknownFields = y__})
  defMessage
    = IonHeapGrowFtraceEvent'_constructor
        {_IonHeapGrowFtraceEvent'heapName = Prelude.Nothing,
         _IonHeapGrowFtraceEvent'len = Prelude.Nothing,
         _IonHeapGrowFtraceEvent'totalAllocated = Prelude.Nothing,
         _IonHeapGrowFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          IonHeapGrowFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser IonHeapGrowFtraceEvent
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
                                       "heap_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"heapName") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "len"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"len") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "total_allocated"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"totalAllocated") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "IonHeapGrowFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'heapName") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'len") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'totalAllocated") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData IonHeapGrowFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_IonHeapGrowFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_IonHeapGrowFtraceEvent'heapName x__)
                (Control.DeepSeq.deepseq
                   (_IonHeapGrowFtraceEvent'len x__)
                   (Control.DeepSeq.deepseq
                      (_IonHeapGrowFtraceEvent'totalAllocated x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.heapName' @:: Lens' IonHeapShrinkFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'heapName' @:: Lens' IonHeapShrinkFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.len' @:: Lens' IonHeapShrinkFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'len' @:: Lens' IonHeapShrinkFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.totalAllocated' @:: Lens' IonHeapShrinkFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'totalAllocated' @:: Lens' IonHeapShrinkFtraceEvent (Prelude.Maybe Data.Int.Int64)@ -}
data IonHeapShrinkFtraceEvent
  = IonHeapShrinkFtraceEvent'_constructor {_IonHeapShrinkFtraceEvent'heapName :: !(Prelude.Maybe Data.Text.Text),
                                           _IonHeapShrinkFtraceEvent'len :: !(Prelude.Maybe Data.Word.Word64),
                                           _IonHeapShrinkFtraceEvent'totalAllocated :: !(Prelude.Maybe Data.Int.Int64),
                                           _IonHeapShrinkFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show IonHeapShrinkFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField IonHeapShrinkFtraceEvent "heapName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonHeapShrinkFtraceEvent'heapName
           (\ x__ y__ -> x__ {_IonHeapShrinkFtraceEvent'heapName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonHeapShrinkFtraceEvent "maybe'heapName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonHeapShrinkFtraceEvent'heapName
           (\ x__ y__ -> x__ {_IonHeapShrinkFtraceEvent'heapName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IonHeapShrinkFtraceEvent "len" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonHeapShrinkFtraceEvent'len
           (\ x__ y__ -> x__ {_IonHeapShrinkFtraceEvent'len = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonHeapShrinkFtraceEvent "maybe'len" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonHeapShrinkFtraceEvent'len
           (\ x__ y__ -> x__ {_IonHeapShrinkFtraceEvent'len = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IonHeapShrinkFtraceEvent "totalAllocated" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonHeapShrinkFtraceEvent'totalAllocated
           (\ x__ y__
              -> x__ {_IonHeapShrinkFtraceEvent'totalAllocated = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonHeapShrinkFtraceEvent "maybe'totalAllocated" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonHeapShrinkFtraceEvent'totalAllocated
           (\ x__ y__
              -> x__ {_IonHeapShrinkFtraceEvent'totalAllocated = y__}))
        Prelude.id
instance Data.ProtoLens.Message IonHeapShrinkFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.IonHeapShrinkFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\CANIonHeapShrinkFtraceEvent\DC2\ESC\n\
      \\theap_name\CAN\SOH \SOH(\tR\bheapName\DC2\DLE\n\
      \\ETXlen\CAN\STX \SOH(\EOTR\ETXlen\DC2'\n\
      \\SItotal_allocated\CAN\ETX \SOH(\ETXR\SOtotalAllocated"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        heapName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "heap_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'heapName")) ::
              Data.ProtoLens.FieldDescriptor IonHeapShrinkFtraceEvent
        len__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "len"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'len")) ::
              Data.ProtoLens.FieldDescriptor IonHeapShrinkFtraceEvent
        totalAllocated__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total_allocated"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'totalAllocated")) ::
              Data.ProtoLens.FieldDescriptor IonHeapShrinkFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, heapName__field_descriptor),
           (Data.ProtoLens.Tag 2, len__field_descriptor),
           (Data.ProtoLens.Tag 3, totalAllocated__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _IonHeapShrinkFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_IonHeapShrinkFtraceEvent'_unknownFields = y__})
  defMessage
    = IonHeapShrinkFtraceEvent'_constructor
        {_IonHeapShrinkFtraceEvent'heapName = Prelude.Nothing,
         _IonHeapShrinkFtraceEvent'len = Prelude.Nothing,
         _IonHeapShrinkFtraceEvent'totalAllocated = Prelude.Nothing,
         _IonHeapShrinkFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          IonHeapShrinkFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser IonHeapShrinkFtraceEvent
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
                                       "heap_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"heapName") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "len"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"len") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "total_allocated"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"totalAllocated") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "IonHeapShrinkFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'heapName") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'len") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'totalAllocated") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData IonHeapShrinkFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_IonHeapShrinkFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_IonHeapShrinkFtraceEvent'heapName x__)
                (Control.DeepSeq.deepseq
                   (_IonHeapShrinkFtraceEvent'len x__)
                   (Control.DeepSeq.deepseq
                      (_IonHeapShrinkFtraceEvent'totalAllocated x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.len' @:: Lens' IonPrefetchingFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'len' @:: Lens' IonPrefetchingFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data IonPrefetchingFtraceEvent
  = IonPrefetchingFtraceEvent'_constructor {_IonPrefetchingFtraceEvent'len :: !(Prelude.Maybe Data.Word.Word64),
                                            _IonPrefetchingFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show IonPrefetchingFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField IonPrefetchingFtraceEvent "len" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonPrefetchingFtraceEvent'len
           (\ x__ y__ -> x__ {_IonPrefetchingFtraceEvent'len = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonPrefetchingFtraceEvent "maybe'len" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonPrefetchingFtraceEvent'len
           (\ x__ y__ -> x__ {_IonPrefetchingFtraceEvent'len = y__}))
        Prelude.id
instance Data.ProtoLens.Message IonPrefetchingFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.IonPrefetchingFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\EMIonPrefetchingFtraceEvent\DC2\DLE\n\
      \\ETXlen\CAN\SOH \SOH(\EOTR\ETXlen"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        len__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "len"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'len")) ::
              Data.ProtoLens.FieldDescriptor IonPrefetchingFtraceEvent
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, len__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _IonPrefetchingFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_IonPrefetchingFtraceEvent'_unknownFields = y__})
  defMessage
    = IonPrefetchingFtraceEvent'_constructor
        {_IonPrefetchingFtraceEvent'len = Prelude.Nothing,
         _IonPrefetchingFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          IonPrefetchingFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser IonPrefetchingFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "len"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"len") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "IonPrefetchingFtraceEvent"
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
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData IonPrefetchingFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_IonPrefetchingFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq (_IonPrefetchingFtraceEvent'len x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.isPrefetch' @:: Lens' IonSecureCmaAddToPoolEndFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'isPrefetch' @:: Lens' IonSecureCmaAddToPoolEndFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.len' @:: Lens' IonSecureCmaAddToPoolEndFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'len' @:: Lens' IonSecureCmaAddToPoolEndFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.poolTotal' @:: Lens' IonSecureCmaAddToPoolEndFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'poolTotal' @:: Lens' IonSecureCmaAddToPoolEndFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data IonSecureCmaAddToPoolEndFtraceEvent
  = IonSecureCmaAddToPoolEndFtraceEvent'_constructor {_IonSecureCmaAddToPoolEndFtraceEvent'isPrefetch :: !(Prelude.Maybe Data.Word.Word32),
                                                      _IonSecureCmaAddToPoolEndFtraceEvent'len :: !(Prelude.Maybe Data.Word.Word64),
                                                      _IonSecureCmaAddToPoolEndFtraceEvent'poolTotal :: !(Prelude.Maybe Data.Int.Int32),
                                                      _IonSecureCmaAddToPoolEndFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show IonSecureCmaAddToPoolEndFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField IonSecureCmaAddToPoolEndFtraceEvent "isPrefetch" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonSecureCmaAddToPoolEndFtraceEvent'isPrefetch
           (\ x__ y__
              -> x__ {_IonSecureCmaAddToPoolEndFtraceEvent'isPrefetch = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonSecureCmaAddToPoolEndFtraceEvent "maybe'isPrefetch" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonSecureCmaAddToPoolEndFtraceEvent'isPrefetch
           (\ x__ y__
              -> x__ {_IonSecureCmaAddToPoolEndFtraceEvent'isPrefetch = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IonSecureCmaAddToPoolEndFtraceEvent "len" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonSecureCmaAddToPoolEndFtraceEvent'len
           (\ x__ y__
              -> x__ {_IonSecureCmaAddToPoolEndFtraceEvent'len = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonSecureCmaAddToPoolEndFtraceEvent "maybe'len" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonSecureCmaAddToPoolEndFtraceEvent'len
           (\ x__ y__
              -> x__ {_IonSecureCmaAddToPoolEndFtraceEvent'len = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IonSecureCmaAddToPoolEndFtraceEvent "poolTotal" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonSecureCmaAddToPoolEndFtraceEvent'poolTotal
           (\ x__ y__
              -> x__ {_IonSecureCmaAddToPoolEndFtraceEvent'poolTotal = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonSecureCmaAddToPoolEndFtraceEvent "maybe'poolTotal" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonSecureCmaAddToPoolEndFtraceEvent'poolTotal
           (\ x__ y__
              -> x__ {_IonSecureCmaAddToPoolEndFtraceEvent'poolTotal = y__}))
        Prelude.id
instance Data.ProtoLens.Message IonSecureCmaAddToPoolEndFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.IonSecureCmaAddToPoolEndFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \#IonSecureCmaAddToPoolEndFtraceEvent\DC2\US\n\
      \\vis_prefetch\CAN\SOH \SOH(\rR\n\
      \isPrefetch\DC2\DLE\n\
      \\ETXlen\CAN\STX \SOH(\EOTR\ETXlen\DC2\GS\n\
      \\n\
      \pool_total\CAN\ETX \SOH(\ENQR\tpoolTotal"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        isPrefetch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "is_prefetch"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'isPrefetch")) ::
              Data.ProtoLens.FieldDescriptor IonSecureCmaAddToPoolEndFtraceEvent
        len__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "len"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'len")) ::
              Data.ProtoLens.FieldDescriptor IonSecureCmaAddToPoolEndFtraceEvent
        poolTotal__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pool_total"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'poolTotal")) ::
              Data.ProtoLens.FieldDescriptor IonSecureCmaAddToPoolEndFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, isPrefetch__field_descriptor),
           (Data.ProtoLens.Tag 2, len__field_descriptor),
           (Data.ProtoLens.Tag 3, poolTotal__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _IonSecureCmaAddToPoolEndFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_IonSecureCmaAddToPoolEndFtraceEvent'_unknownFields = y__})
  defMessage
    = IonSecureCmaAddToPoolEndFtraceEvent'_constructor
        {_IonSecureCmaAddToPoolEndFtraceEvent'isPrefetch = Prelude.Nothing,
         _IonSecureCmaAddToPoolEndFtraceEvent'len = Prelude.Nothing,
         _IonSecureCmaAddToPoolEndFtraceEvent'poolTotal = Prelude.Nothing,
         _IonSecureCmaAddToPoolEndFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          IonSecureCmaAddToPoolEndFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser IonSecureCmaAddToPoolEndFtraceEvent
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
                                       "is_prefetch"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"isPrefetch") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "len"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"len") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "pool_total"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"poolTotal") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "IonSecureCmaAddToPoolEndFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'isPrefetch") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'len") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'poolTotal") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData IonSecureCmaAddToPoolEndFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_IonSecureCmaAddToPoolEndFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_IonSecureCmaAddToPoolEndFtraceEvent'isPrefetch x__)
                (Control.DeepSeq.deepseq
                   (_IonSecureCmaAddToPoolEndFtraceEvent'len x__)
                   (Control.DeepSeq.deepseq
                      (_IonSecureCmaAddToPoolEndFtraceEvent'poolTotal x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.isPrefetch' @:: Lens' IonSecureCmaAddToPoolStartFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'isPrefetch' @:: Lens' IonSecureCmaAddToPoolStartFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.len' @:: Lens' IonSecureCmaAddToPoolStartFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'len' @:: Lens' IonSecureCmaAddToPoolStartFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.poolTotal' @:: Lens' IonSecureCmaAddToPoolStartFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'poolTotal' @:: Lens' IonSecureCmaAddToPoolStartFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data IonSecureCmaAddToPoolStartFtraceEvent
  = IonSecureCmaAddToPoolStartFtraceEvent'_constructor {_IonSecureCmaAddToPoolStartFtraceEvent'isPrefetch :: !(Prelude.Maybe Data.Word.Word32),
                                                        _IonSecureCmaAddToPoolStartFtraceEvent'len :: !(Prelude.Maybe Data.Word.Word64),
                                                        _IonSecureCmaAddToPoolStartFtraceEvent'poolTotal :: !(Prelude.Maybe Data.Int.Int32),
                                                        _IonSecureCmaAddToPoolStartFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show IonSecureCmaAddToPoolStartFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField IonSecureCmaAddToPoolStartFtraceEvent "isPrefetch" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonSecureCmaAddToPoolStartFtraceEvent'isPrefetch
           (\ x__ y__
              -> x__ {_IonSecureCmaAddToPoolStartFtraceEvent'isPrefetch = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonSecureCmaAddToPoolStartFtraceEvent "maybe'isPrefetch" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonSecureCmaAddToPoolStartFtraceEvent'isPrefetch
           (\ x__ y__
              -> x__ {_IonSecureCmaAddToPoolStartFtraceEvent'isPrefetch = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IonSecureCmaAddToPoolStartFtraceEvent "len" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonSecureCmaAddToPoolStartFtraceEvent'len
           (\ x__ y__
              -> x__ {_IonSecureCmaAddToPoolStartFtraceEvent'len = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonSecureCmaAddToPoolStartFtraceEvent "maybe'len" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonSecureCmaAddToPoolStartFtraceEvent'len
           (\ x__ y__
              -> x__ {_IonSecureCmaAddToPoolStartFtraceEvent'len = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IonSecureCmaAddToPoolStartFtraceEvent "poolTotal" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonSecureCmaAddToPoolStartFtraceEvent'poolTotal
           (\ x__ y__
              -> x__ {_IonSecureCmaAddToPoolStartFtraceEvent'poolTotal = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonSecureCmaAddToPoolStartFtraceEvent "maybe'poolTotal" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonSecureCmaAddToPoolStartFtraceEvent'poolTotal
           (\ x__ y__
              -> x__ {_IonSecureCmaAddToPoolStartFtraceEvent'poolTotal = y__}))
        Prelude.id
instance Data.ProtoLens.Message IonSecureCmaAddToPoolStartFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.IonSecureCmaAddToPoolStartFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \%IonSecureCmaAddToPoolStartFtraceEvent\DC2\US\n\
      \\vis_prefetch\CAN\SOH \SOH(\rR\n\
      \isPrefetch\DC2\DLE\n\
      \\ETXlen\CAN\STX \SOH(\EOTR\ETXlen\DC2\GS\n\
      \\n\
      \pool_total\CAN\ETX \SOH(\ENQR\tpoolTotal"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        isPrefetch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "is_prefetch"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'isPrefetch")) ::
              Data.ProtoLens.FieldDescriptor IonSecureCmaAddToPoolStartFtraceEvent
        len__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "len"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'len")) ::
              Data.ProtoLens.FieldDescriptor IonSecureCmaAddToPoolStartFtraceEvent
        poolTotal__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pool_total"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'poolTotal")) ::
              Data.ProtoLens.FieldDescriptor IonSecureCmaAddToPoolStartFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, isPrefetch__field_descriptor),
           (Data.ProtoLens.Tag 2, len__field_descriptor),
           (Data.ProtoLens.Tag 3, poolTotal__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _IonSecureCmaAddToPoolStartFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__
                {_IonSecureCmaAddToPoolStartFtraceEvent'_unknownFields = y__})
  defMessage
    = IonSecureCmaAddToPoolStartFtraceEvent'_constructor
        {_IonSecureCmaAddToPoolStartFtraceEvent'isPrefetch = Prelude.Nothing,
         _IonSecureCmaAddToPoolStartFtraceEvent'len = Prelude.Nothing,
         _IonSecureCmaAddToPoolStartFtraceEvent'poolTotal = Prelude.Nothing,
         _IonSecureCmaAddToPoolStartFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          IonSecureCmaAddToPoolStartFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser IonSecureCmaAddToPoolStartFtraceEvent
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
                                       "is_prefetch"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"isPrefetch") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "len"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"len") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "pool_total"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"poolTotal") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "IonSecureCmaAddToPoolStartFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'isPrefetch") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'len") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'poolTotal") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData IonSecureCmaAddToPoolStartFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_IonSecureCmaAddToPoolStartFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_IonSecureCmaAddToPoolStartFtraceEvent'isPrefetch x__)
                (Control.DeepSeq.deepseq
                   (_IonSecureCmaAddToPoolStartFtraceEvent'len x__)
                   (Control.DeepSeq.deepseq
                      (_IonSecureCmaAddToPoolStartFtraceEvent'poolTotal x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.align' @:: Lens' IonSecureCmaAllocateEndFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'align' @:: Lens' IonSecureCmaAllocateEndFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.flags' @:: Lens' IonSecureCmaAllocateEndFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'flags' @:: Lens' IonSecureCmaAllocateEndFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.heapName' @:: Lens' IonSecureCmaAllocateEndFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'heapName' @:: Lens' IonSecureCmaAllocateEndFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.len' @:: Lens' IonSecureCmaAllocateEndFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'len' @:: Lens' IonSecureCmaAllocateEndFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data IonSecureCmaAllocateEndFtraceEvent
  = IonSecureCmaAllocateEndFtraceEvent'_constructor {_IonSecureCmaAllocateEndFtraceEvent'align :: !(Prelude.Maybe Data.Word.Word64),
                                                     _IonSecureCmaAllocateEndFtraceEvent'flags :: !(Prelude.Maybe Data.Word.Word64),
                                                     _IonSecureCmaAllocateEndFtraceEvent'heapName :: !(Prelude.Maybe Data.Text.Text),
                                                     _IonSecureCmaAllocateEndFtraceEvent'len :: !(Prelude.Maybe Data.Word.Word64),
                                                     _IonSecureCmaAllocateEndFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show IonSecureCmaAllocateEndFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField IonSecureCmaAllocateEndFtraceEvent "align" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonSecureCmaAllocateEndFtraceEvent'align
           (\ x__ y__
              -> x__ {_IonSecureCmaAllocateEndFtraceEvent'align = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonSecureCmaAllocateEndFtraceEvent "maybe'align" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonSecureCmaAllocateEndFtraceEvent'align
           (\ x__ y__
              -> x__ {_IonSecureCmaAllocateEndFtraceEvent'align = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IonSecureCmaAllocateEndFtraceEvent "flags" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonSecureCmaAllocateEndFtraceEvent'flags
           (\ x__ y__
              -> x__ {_IonSecureCmaAllocateEndFtraceEvent'flags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonSecureCmaAllocateEndFtraceEvent "maybe'flags" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonSecureCmaAllocateEndFtraceEvent'flags
           (\ x__ y__
              -> x__ {_IonSecureCmaAllocateEndFtraceEvent'flags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IonSecureCmaAllocateEndFtraceEvent "heapName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonSecureCmaAllocateEndFtraceEvent'heapName
           (\ x__ y__
              -> x__ {_IonSecureCmaAllocateEndFtraceEvent'heapName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonSecureCmaAllocateEndFtraceEvent "maybe'heapName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonSecureCmaAllocateEndFtraceEvent'heapName
           (\ x__ y__
              -> x__ {_IonSecureCmaAllocateEndFtraceEvent'heapName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IonSecureCmaAllocateEndFtraceEvent "len" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonSecureCmaAllocateEndFtraceEvent'len
           (\ x__ y__ -> x__ {_IonSecureCmaAllocateEndFtraceEvent'len = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonSecureCmaAllocateEndFtraceEvent "maybe'len" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonSecureCmaAllocateEndFtraceEvent'len
           (\ x__ y__ -> x__ {_IonSecureCmaAllocateEndFtraceEvent'len = y__}))
        Prelude.id
instance Data.ProtoLens.Message IonSecureCmaAllocateEndFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.IonSecureCmaAllocateEndFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\"IonSecureCmaAllocateEndFtraceEvent\DC2\DC4\n\
      \\ENQalign\CAN\SOH \SOH(\EOTR\ENQalign\DC2\DC4\n\
      \\ENQflags\CAN\STX \SOH(\EOTR\ENQflags\DC2\ESC\n\
      \\theap_name\CAN\ETX \SOH(\tR\bheapName\DC2\DLE\n\
      \\ETXlen\CAN\EOT \SOH(\EOTR\ETXlen"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        align__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "align"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'align")) ::
              Data.ProtoLens.FieldDescriptor IonSecureCmaAllocateEndFtraceEvent
        flags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'flags")) ::
              Data.ProtoLens.FieldDescriptor IonSecureCmaAllocateEndFtraceEvent
        heapName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "heap_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'heapName")) ::
              Data.ProtoLens.FieldDescriptor IonSecureCmaAllocateEndFtraceEvent
        len__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "len"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'len")) ::
              Data.ProtoLens.FieldDescriptor IonSecureCmaAllocateEndFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, align__field_descriptor),
           (Data.ProtoLens.Tag 2, flags__field_descriptor),
           (Data.ProtoLens.Tag 3, heapName__field_descriptor),
           (Data.ProtoLens.Tag 4, len__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _IonSecureCmaAllocateEndFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_IonSecureCmaAllocateEndFtraceEvent'_unknownFields = y__})
  defMessage
    = IonSecureCmaAllocateEndFtraceEvent'_constructor
        {_IonSecureCmaAllocateEndFtraceEvent'align = Prelude.Nothing,
         _IonSecureCmaAllocateEndFtraceEvent'flags = Prelude.Nothing,
         _IonSecureCmaAllocateEndFtraceEvent'heapName = Prelude.Nothing,
         _IonSecureCmaAllocateEndFtraceEvent'len = Prelude.Nothing,
         _IonSecureCmaAllocateEndFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          IonSecureCmaAllocateEndFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser IonSecureCmaAllocateEndFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "align"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"align") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "flags"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"flags") y x)
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
                                       "heap_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"heapName") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "len"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"len") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "IonSecureCmaAllocateEndFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'align") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'flags") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'heapName") _x
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
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'len") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData IonSecureCmaAllocateEndFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_IonSecureCmaAllocateEndFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_IonSecureCmaAllocateEndFtraceEvent'align x__)
                (Control.DeepSeq.deepseq
                   (_IonSecureCmaAllocateEndFtraceEvent'flags x__)
                   (Control.DeepSeq.deepseq
                      (_IonSecureCmaAllocateEndFtraceEvent'heapName x__)
                      (Control.DeepSeq.deepseq
                         (_IonSecureCmaAllocateEndFtraceEvent'len x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.align' @:: Lens' IonSecureCmaAllocateStartFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'align' @:: Lens' IonSecureCmaAllocateStartFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.flags' @:: Lens' IonSecureCmaAllocateStartFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'flags' @:: Lens' IonSecureCmaAllocateStartFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.heapName' @:: Lens' IonSecureCmaAllocateStartFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'heapName' @:: Lens' IonSecureCmaAllocateStartFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.len' @:: Lens' IonSecureCmaAllocateStartFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'len' @:: Lens' IonSecureCmaAllocateStartFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data IonSecureCmaAllocateStartFtraceEvent
  = IonSecureCmaAllocateStartFtraceEvent'_constructor {_IonSecureCmaAllocateStartFtraceEvent'align :: !(Prelude.Maybe Data.Word.Word64),
                                                       _IonSecureCmaAllocateStartFtraceEvent'flags :: !(Prelude.Maybe Data.Word.Word64),
                                                       _IonSecureCmaAllocateStartFtraceEvent'heapName :: !(Prelude.Maybe Data.Text.Text),
                                                       _IonSecureCmaAllocateStartFtraceEvent'len :: !(Prelude.Maybe Data.Word.Word64),
                                                       _IonSecureCmaAllocateStartFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show IonSecureCmaAllocateStartFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField IonSecureCmaAllocateStartFtraceEvent "align" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonSecureCmaAllocateStartFtraceEvent'align
           (\ x__ y__
              -> x__ {_IonSecureCmaAllocateStartFtraceEvent'align = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonSecureCmaAllocateStartFtraceEvent "maybe'align" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonSecureCmaAllocateStartFtraceEvent'align
           (\ x__ y__
              -> x__ {_IonSecureCmaAllocateStartFtraceEvent'align = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IonSecureCmaAllocateStartFtraceEvent "flags" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonSecureCmaAllocateStartFtraceEvent'flags
           (\ x__ y__
              -> x__ {_IonSecureCmaAllocateStartFtraceEvent'flags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonSecureCmaAllocateStartFtraceEvent "maybe'flags" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonSecureCmaAllocateStartFtraceEvent'flags
           (\ x__ y__
              -> x__ {_IonSecureCmaAllocateStartFtraceEvent'flags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IonSecureCmaAllocateStartFtraceEvent "heapName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonSecureCmaAllocateStartFtraceEvent'heapName
           (\ x__ y__
              -> x__ {_IonSecureCmaAllocateStartFtraceEvent'heapName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonSecureCmaAllocateStartFtraceEvent "maybe'heapName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonSecureCmaAllocateStartFtraceEvent'heapName
           (\ x__ y__
              -> x__ {_IonSecureCmaAllocateStartFtraceEvent'heapName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IonSecureCmaAllocateStartFtraceEvent "len" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonSecureCmaAllocateStartFtraceEvent'len
           (\ x__ y__
              -> x__ {_IonSecureCmaAllocateStartFtraceEvent'len = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonSecureCmaAllocateStartFtraceEvent "maybe'len" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonSecureCmaAllocateStartFtraceEvent'len
           (\ x__ y__
              -> x__ {_IonSecureCmaAllocateStartFtraceEvent'len = y__}))
        Prelude.id
instance Data.ProtoLens.Message IonSecureCmaAllocateStartFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.IonSecureCmaAllocateStartFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \$IonSecureCmaAllocateStartFtraceEvent\DC2\DC4\n\
      \\ENQalign\CAN\SOH \SOH(\EOTR\ENQalign\DC2\DC4\n\
      \\ENQflags\CAN\STX \SOH(\EOTR\ENQflags\DC2\ESC\n\
      \\theap_name\CAN\ETX \SOH(\tR\bheapName\DC2\DLE\n\
      \\ETXlen\CAN\EOT \SOH(\EOTR\ETXlen"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        align__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "align"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'align")) ::
              Data.ProtoLens.FieldDescriptor IonSecureCmaAllocateStartFtraceEvent
        flags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'flags")) ::
              Data.ProtoLens.FieldDescriptor IonSecureCmaAllocateStartFtraceEvent
        heapName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "heap_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'heapName")) ::
              Data.ProtoLens.FieldDescriptor IonSecureCmaAllocateStartFtraceEvent
        len__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "len"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'len")) ::
              Data.ProtoLens.FieldDescriptor IonSecureCmaAllocateStartFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, align__field_descriptor),
           (Data.ProtoLens.Tag 2, flags__field_descriptor),
           (Data.ProtoLens.Tag 3, heapName__field_descriptor),
           (Data.ProtoLens.Tag 4, len__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _IonSecureCmaAllocateStartFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__
                {_IonSecureCmaAllocateStartFtraceEvent'_unknownFields = y__})
  defMessage
    = IonSecureCmaAllocateStartFtraceEvent'_constructor
        {_IonSecureCmaAllocateStartFtraceEvent'align = Prelude.Nothing,
         _IonSecureCmaAllocateStartFtraceEvent'flags = Prelude.Nothing,
         _IonSecureCmaAllocateStartFtraceEvent'heapName = Prelude.Nothing,
         _IonSecureCmaAllocateStartFtraceEvent'len = Prelude.Nothing,
         _IonSecureCmaAllocateStartFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          IonSecureCmaAllocateStartFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser IonSecureCmaAllocateStartFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "align"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"align") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "flags"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"flags") y x)
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
                                       "heap_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"heapName") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "len"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"len") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "IonSecureCmaAllocateStartFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'align") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'flags") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'heapName") _x
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
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'len") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData IonSecureCmaAllocateStartFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_IonSecureCmaAllocateStartFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_IonSecureCmaAllocateStartFtraceEvent'align x__)
                (Control.DeepSeq.deepseq
                   (_IonSecureCmaAllocateStartFtraceEvent'flags x__)
                   (Control.DeepSeq.deepseq
                      (_IonSecureCmaAllocateStartFtraceEvent'heapName x__)
                      (Control.DeepSeq.deepseq
                         (_IonSecureCmaAllocateStartFtraceEvent'len x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.drainedSize' @:: Lens' IonSecureCmaShrinkPoolEndFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'drainedSize' @:: Lens' IonSecureCmaShrinkPoolEndFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.skippedSize' @:: Lens' IonSecureCmaShrinkPoolEndFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'skippedSize' @:: Lens' IonSecureCmaShrinkPoolEndFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data IonSecureCmaShrinkPoolEndFtraceEvent
  = IonSecureCmaShrinkPoolEndFtraceEvent'_constructor {_IonSecureCmaShrinkPoolEndFtraceEvent'drainedSize :: !(Prelude.Maybe Data.Word.Word64),
                                                       _IonSecureCmaShrinkPoolEndFtraceEvent'skippedSize :: !(Prelude.Maybe Data.Word.Word64),
                                                       _IonSecureCmaShrinkPoolEndFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show IonSecureCmaShrinkPoolEndFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField IonSecureCmaShrinkPoolEndFtraceEvent "drainedSize" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonSecureCmaShrinkPoolEndFtraceEvent'drainedSize
           (\ x__ y__
              -> x__ {_IonSecureCmaShrinkPoolEndFtraceEvent'drainedSize = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonSecureCmaShrinkPoolEndFtraceEvent "maybe'drainedSize" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonSecureCmaShrinkPoolEndFtraceEvent'drainedSize
           (\ x__ y__
              -> x__ {_IonSecureCmaShrinkPoolEndFtraceEvent'drainedSize = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IonSecureCmaShrinkPoolEndFtraceEvent "skippedSize" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonSecureCmaShrinkPoolEndFtraceEvent'skippedSize
           (\ x__ y__
              -> x__ {_IonSecureCmaShrinkPoolEndFtraceEvent'skippedSize = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonSecureCmaShrinkPoolEndFtraceEvent "maybe'skippedSize" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonSecureCmaShrinkPoolEndFtraceEvent'skippedSize
           (\ x__ y__
              -> x__ {_IonSecureCmaShrinkPoolEndFtraceEvent'skippedSize = y__}))
        Prelude.id
instance Data.ProtoLens.Message IonSecureCmaShrinkPoolEndFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.IonSecureCmaShrinkPoolEndFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \$IonSecureCmaShrinkPoolEndFtraceEvent\DC2!\n\
      \\fdrained_size\CAN\SOH \SOH(\EOTR\vdrainedSize\DC2!\n\
      \\fskipped_size\CAN\STX \SOH(\EOTR\vskippedSize"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        drainedSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "drained_size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'drainedSize")) ::
              Data.ProtoLens.FieldDescriptor IonSecureCmaShrinkPoolEndFtraceEvent
        skippedSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "skipped_size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'skippedSize")) ::
              Data.ProtoLens.FieldDescriptor IonSecureCmaShrinkPoolEndFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, drainedSize__field_descriptor),
           (Data.ProtoLens.Tag 2, skippedSize__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _IonSecureCmaShrinkPoolEndFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__
                {_IonSecureCmaShrinkPoolEndFtraceEvent'_unknownFields = y__})
  defMessage
    = IonSecureCmaShrinkPoolEndFtraceEvent'_constructor
        {_IonSecureCmaShrinkPoolEndFtraceEvent'drainedSize = Prelude.Nothing,
         _IonSecureCmaShrinkPoolEndFtraceEvent'skippedSize = Prelude.Nothing,
         _IonSecureCmaShrinkPoolEndFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          IonSecureCmaShrinkPoolEndFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser IonSecureCmaShrinkPoolEndFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "drained_size"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"drainedSize") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "skipped_size"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"skippedSize") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "IonSecureCmaShrinkPoolEndFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'drainedSize") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'skippedSize") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData IonSecureCmaShrinkPoolEndFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_IonSecureCmaShrinkPoolEndFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_IonSecureCmaShrinkPoolEndFtraceEvent'drainedSize x__)
                (Control.DeepSeq.deepseq
                   (_IonSecureCmaShrinkPoolEndFtraceEvent'skippedSize x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.drainedSize' @:: Lens' IonSecureCmaShrinkPoolStartFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'drainedSize' @:: Lens' IonSecureCmaShrinkPoolStartFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.skippedSize' @:: Lens' IonSecureCmaShrinkPoolStartFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'skippedSize' @:: Lens' IonSecureCmaShrinkPoolStartFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data IonSecureCmaShrinkPoolStartFtraceEvent
  = IonSecureCmaShrinkPoolStartFtraceEvent'_constructor {_IonSecureCmaShrinkPoolStartFtraceEvent'drainedSize :: !(Prelude.Maybe Data.Word.Word64),
                                                         _IonSecureCmaShrinkPoolStartFtraceEvent'skippedSize :: !(Prelude.Maybe Data.Word.Word64),
                                                         _IonSecureCmaShrinkPoolStartFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show IonSecureCmaShrinkPoolStartFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField IonSecureCmaShrinkPoolStartFtraceEvent "drainedSize" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonSecureCmaShrinkPoolStartFtraceEvent'drainedSize
           (\ x__ y__
              -> x__
                   {_IonSecureCmaShrinkPoolStartFtraceEvent'drainedSize = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonSecureCmaShrinkPoolStartFtraceEvent "maybe'drainedSize" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonSecureCmaShrinkPoolStartFtraceEvent'drainedSize
           (\ x__ y__
              -> x__
                   {_IonSecureCmaShrinkPoolStartFtraceEvent'drainedSize = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IonSecureCmaShrinkPoolStartFtraceEvent "skippedSize" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonSecureCmaShrinkPoolStartFtraceEvent'skippedSize
           (\ x__ y__
              -> x__
                   {_IonSecureCmaShrinkPoolStartFtraceEvent'skippedSize = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IonSecureCmaShrinkPoolStartFtraceEvent "maybe'skippedSize" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IonSecureCmaShrinkPoolStartFtraceEvent'skippedSize
           (\ x__ y__
              -> x__
                   {_IonSecureCmaShrinkPoolStartFtraceEvent'skippedSize = y__}))
        Prelude.id
instance Data.ProtoLens.Message IonSecureCmaShrinkPoolStartFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.IonSecureCmaShrinkPoolStartFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \&IonSecureCmaShrinkPoolStartFtraceEvent\DC2!\n\
      \\fdrained_size\CAN\SOH \SOH(\EOTR\vdrainedSize\DC2!\n\
      \\fskipped_size\CAN\STX \SOH(\EOTR\vskippedSize"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        drainedSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "drained_size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'drainedSize")) ::
              Data.ProtoLens.FieldDescriptor IonSecureCmaShrinkPoolStartFtraceEvent
        skippedSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "skipped_size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'skippedSize")) ::
              Data.ProtoLens.FieldDescriptor IonSecureCmaShrinkPoolStartFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, drainedSize__field_descriptor),
           (Data.ProtoLens.Tag 2, skippedSize__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _IonSecureCmaShrinkPoolStartFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__
                {_IonSecureCmaShrinkPoolStartFtraceEvent'_unknownFields = y__})
  defMessage
    = IonSecureCmaShrinkPoolStartFtraceEvent'_constructor
        {_IonSecureCmaShrinkPoolStartFtraceEvent'drainedSize = Prelude.Nothing,
         _IonSecureCmaShrinkPoolStartFtraceEvent'skippedSize = Prelude.Nothing,
         _IonSecureCmaShrinkPoolStartFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          IonSecureCmaShrinkPoolStartFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser IonSecureCmaShrinkPoolStartFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "drained_size"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"drainedSize") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "skipped_size"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"skippedSize") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "IonSecureCmaShrinkPoolStartFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'drainedSize") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'skippedSize") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData IonSecureCmaShrinkPoolStartFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_IonSecureCmaShrinkPoolStartFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_IonSecureCmaShrinkPoolStartFtraceEvent'drainedSize x__)
                (Control.DeepSeq.deepseq
                   (_IonSecureCmaShrinkPoolStartFtraceEvent'skippedSize x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.callSite' @:: Lens' KfreeFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'callSite' @:: Lens' KfreeFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.ptr' @:: Lens' KfreeFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'ptr' @:: Lens' KfreeFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data KfreeFtraceEvent
  = KfreeFtraceEvent'_constructor {_KfreeFtraceEvent'callSite :: !(Prelude.Maybe Data.Word.Word64),
                                   _KfreeFtraceEvent'ptr :: !(Prelude.Maybe Data.Word.Word64),
                                   _KfreeFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KfreeFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KfreeFtraceEvent "callSite" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KfreeFtraceEvent'callSite
           (\ x__ y__ -> x__ {_KfreeFtraceEvent'callSite = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KfreeFtraceEvent "maybe'callSite" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KfreeFtraceEvent'callSite
           (\ x__ y__ -> x__ {_KfreeFtraceEvent'callSite = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KfreeFtraceEvent "ptr" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KfreeFtraceEvent'ptr
           (\ x__ y__ -> x__ {_KfreeFtraceEvent'ptr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KfreeFtraceEvent "maybe'ptr" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KfreeFtraceEvent'ptr
           (\ x__ y__ -> x__ {_KfreeFtraceEvent'ptr = y__}))
        Prelude.id
instance Data.ProtoLens.Message KfreeFtraceEvent where
  messageName _ = Data.Text.pack "perfetto.protos.KfreeFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\DLEKfreeFtraceEvent\DC2\ESC\n\
      \\tcall_site\CAN\SOH \SOH(\EOTR\bcallSite\DC2\DLE\n\
      \\ETXptr\CAN\STX \SOH(\EOTR\ETXptr"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        callSite__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "call_site"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'callSite")) ::
              Data.ProtoLens.FieldDescriptor KfreeFtraceEvent
        ptr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ptr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ptr")) ::
              Data.ProtoLens.FieldDescriptor KfreeFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, callSite__field_descriptor),
           (Data.ProtoLens.Tag 2, ptr__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KfreeFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_KfreeFtraceEvent'_unknownFields = y__})
  defMessage
    = KfreeFtraceEvent'_constructor
        {_KfreeFtraceEvent'callSite = Prelude.Nothing,
         _KfreeFtraceEvent'ptr = Prelude.Nothing,
         _KfreeFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KfreeFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser KfreeFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "call_site"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"callSite") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ptr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ptr") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "KfreeFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'callSite") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ptr") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData KfreeFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KfreeFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_KfreeFtraceEvent'callSite x__)
                (Control.DeepSeq.deepseq (_KfreeFtraceEvent'ptr x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.bytesAlloc' @:: Lens' KmallocFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'bytesAlloc' @:: Lens' KmallocFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.bytesReq' @:: Lens' KmallocFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'bytesReq' @:: Lens' KmallocFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.callSite' @:: Lens' KmallocFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'callSite' @:: Lens' KmallocFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.gfpFlags' @:: Lens' KmallocFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'gfpFlags' @:: Lens' KmallocFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.ptr' @:: Lens' KmallocFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'ptr' @:: Lens' KmallocFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data KmallocFtraceEvent
  = KmallocFtraceEvent'_constructor {_KmallocFtraceEvent'bytesAlloc :: !(Prelude.Maybe Data.Word.Word64),
                                     _KmallocFtraceEvent'bytesReq :: !(Prelude.Maybe Data.Word.Word64),
                                     _KmallocFtraceEvent'callSite :: !(Prelude.Maybe Data.Word.Word64),
                                     _KmallocFtraceEvent'gfpFlags :: !(Prelude.Maybe Data.Word.Word32),
                                     _KmallocFtraceEvent'ptr :: !(Prelude.Maybe Data.Word.Word64),
                                     _KmallocFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KmallocFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KmallocFtraceEvent "bytesAlloc" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmallocFtraceEvent'bytesAlloc
           (\ x__ y__ -> x__ {_KmallocFtraceEvent'bytesAlloc = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KmallocFtraceEvent "maybe'bytesAlloc" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmallocFtraceEvent'bytesAlloc
           (\ x__ y__ -> x__ {_KmallocFtraceEvent'bytesAlloc = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KmallocFtraceEvent "bytesReq" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmallocFtraceEvent'bytesReq
           (\ x__ y__ -> x__ {_KmallocFtraceEvent'bytesReq = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KmallocFtraceEvent "maybe'bytesReq" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmallocFtraceEvent'bytesReq
           (\ x__ y__ -> x__ {_KmallocFtraceEvent'bytesReq = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KmallocFtraceEvent "callSite" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmallocFtraceEvent'callSite
           (\ x__ y__ -> x__ {_KmallocFtraceEvent'callSite = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KmallocFtraceEvent "maybe'callSite" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmallocFtraceEvent'callSite
           (\ x__ y__ -> x__ {_KmallocFtraceEvent'callSite = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KmallocFtraceEvent "gfpFlags" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmallocFtraceEvent'gfpFlags
           (\ x__ y__ -> x__ {_KmallocFtraceEvent'gfpFlags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KmallocFtraceEvent "maybe'gfpFlags" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmallocFtraceEvent'gfpFlags
           (\ x__ y__ -> x__ {_KmallocFtraceEvent'gfpFlags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KmallocFtraceEvent "ptr" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmallocFtraceEvent'ptr
           (\ x__ y__ -> x__ {_KmallocFtraceEvent'ptr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KmallocFtraceEvent "maybe'ptr" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmallocFtraceEvent'ptr
           (\ x__ y__ -> x__ {_KmallocFtraceEvent'ptr = y__}))
        Prelude.id
instance Data.ProtoLens.Message KmallocFtraceEvent where
  messageName _ = Data.Text.pack "perfetto.protos.KmallocFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\DC2KmallocFtraceEvent\DC2\US\n\
      \\vbytes_alloc\CAN\SOH \SOH(\EOTR\n\
      \bytesAlloc\DC2\ESC\n\
      \\tbytes_req\CAN\STX \SOH(\EOTR\bbytesReq\DC2\ESC\n\
      \\tcall_site\CAN\ETX \SOH(\EOTR\bcallSite\DC2\ESC\n\
      \\tgfp_flags\CAN\EOT \SOH(\rR\bgfpFlags\DC2\DLE\n\
      \\ETXptr\CAN\ENQ \SOH(\EOTR\ETXptr"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        bytesAlloc__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bytes_alloc"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bytesAlloc")) ::
              Data.ProtoLens.FieldDescriptor KmallocFtraceEvent
        bytesReq__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bytes_req"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bytesReq")) ::
              Data.ProtoLens.FieldDescriptor KmallocFtraceEvent
        callSite__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "call_site"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'callSite")) ::
              Data.ProtoLens.FieldDescriptor KmallocFtraceEvent
        gfpFlags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gfp_flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gfpFlags")) ::
              Data.ProtoLens.FieldDescriptor KmallocFtraceEvent
        ptr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ptr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ptr")) ::
              Data.ProtoLens.FieldDescriptor KmallocFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, bytesAlloc__field_descriptor),
           (Data.ProtoLens.Tag 2, bytesReq__field_descriptor),
           (Data.ProtoLens.Tag 3, callSite__field_descriptor),
           (Data.ProtoLens.Tag 4, gfpFlags__field_descriptor),
           (Data.ProtoLens.Tag 5, ptr__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KmallocFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_KmallocFtraceEvent'_unknownFields = y__})
  defMessage
    = KmallocFtraceEvent'_constructor
        {_KmallocFtraceEvent'bytesAlloc = Prelude.Nothing,
         _KmallocFtraceEvent'bytesReq = Prelude.Nothing,
         _KmallocFtraceEvent'callSite = Prelude.Nothing,
         _KmallocFtraceEvent'gfpFlags = Prelude.Nothing,
         _KmallocFtraceEvent'ptr = Prelude.Nothing,
         _KmallocFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KmallocFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser KmallocFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "bytes_alloc"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bytesAlloc") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "bytes_req"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bytesReq") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "call_site"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"callSite") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "gfp_flags"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gfpFlags") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ptr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ptr") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "KmallocFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'bytesAlloc") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'bytesReq") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'callSite") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gfpFlags") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ptr") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData KmallocFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KmallocFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_KmallocFtraceEvent'bytesAlloc x__)
                (Control.DeepSeq.deepseq
                   (_KmallocFtraceEvent'bytesReq x__)
                   (Control.DeepSeq.deepseq
                      (_KmallocFtraceEvent'callSite x__)
                      (Control.DeepSeq.deepseq
                         (_KmallocFtraceEvent'gfpFlags x__)
                         (Control.DeepSeq.deepseq (_KmallocFtraceEvent'ptr x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.bytesAlloc' @:: Lens' KmallocNodeFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'bytesAlloc' @:: Lens' KmallocNodeFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.bytesReq' @:: Lens' KmallocNodeFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'bytesReq' @:: Lens' KmallocNodeFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.callSite' @:: Lens' KmallocNodeFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'callSite' @:: Lens' KmallocNodeFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.gfpFlags' @:: Lens' KmallocNodeFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'gfpFlags' @:: Lens' KmallocNodeFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.node' @:: Lens' KmallocNodeFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'node' @:: Lens' KmallocNodeFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.ptr' @:: Lens' KmallocNodeFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'ptr' @:: Lens' KmallocNodeFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data KmallocNodeFtraceEvent
  = KmallocNodeFtraceEvent'_constructor {_KmallocNodeFtraceEvent'bytesAlloc :: !(Prelude.Maybe Data.Word.Word64),
                                         _KmallocNodeFtraceEvent'bytesReq :: !(Prelude.Maybe Data.Word.Word64),
                                         _KmallocNodeFtraceEvent'callSite :: !(Prelude.Maybe Data.Word.Word64),
                                         _KmallocNodeFtraceEvent'gfpFlags :: !(Prelude.Maybe Data.Word.Word32),
                                         _KmallocNodeFtraceEvent'node :: !(Prelude.Maybe Data.Int.Int32),
                                         _KmallocNodeFtraceEvent'ptr :: !(Prelude.Maybe Data.Word.Word64),
                                         _KmallocNodeFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KmallocNodeFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KmallocNodeFtraceEvent "bytesAlloc" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmallocNodeFtraceEvent'bytesAlloc
           (\ x__ y__ -> x__ {_KmallocNodeFtraceEvent'bytesAlloc = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KmallocNodeFtraceEvent "maybe'bytesAlloc" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmallocNodeFtraceEvent'bytesAlloc
           (\ x__ y__ -> x__ {_KmallocNodeFtraceEvent'bytesAlloc = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KmallocNodeFtraceEvent "bytesReq" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmallocNodeFtraceEvent'bytesReq
           (\ x__ y__ -> x__ {_KmallocNodeFtraceEvent'bytesReq = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KmallocNodeFtraceEvent "maybe'bytesReq" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmallocNodeFtraceEvent'bytesReq
           (\ x__ y__ -> x__ {_KmallocNodeFtraceEvent'bytesReq = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KmallocNodeFtraceEvent "callSite" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmallocNodeFtraceEvent'callSite
           (\ x__ y__ -> x__ {_KmallocNodeFtraceEvent'callSite = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KmallocNodeFtraceEvent "maybe'callSite" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmallocNodeFtraceEvent'callSite
           (\ x__ y__ -> x__ {_KmallocNodeFtraceEvent'callSite = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KmallocNodeFtraceEvent "gfpFlags" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmallocNodeFtraceEvent'gfpFlags
           (\ x__ y__ -> x__ {_KmallocNodeFtraceEvent'gfpFlags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KmallocNodeFtraceEvent "maybe'gfpFlags" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmallocNodeFtraceEvent'gfpFlags
           (\ x__ y__ -> x__ {_KmallocNodeFtraceEvent'gfpFlags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KmallocNodeFtraceEvent "node" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmallocNodeFtraceEvent'node
           (\ x__ y__ -> x__ {_KmallocNodeFtraceEvent'node = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KmallocNodeFtraceEvent "maybe'node" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmallocNodeFtraceEvent'node
           (\ x__ y__ -> x__ {_KmallocNodeFtraceEvent'node = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KmallocNodeFtraceEvent "ptr" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmallocNodeFtraceEvent'ptr
           (\ x__ y__ -> x__ {_KmallocNodeFtraceEvent'ptr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KmallocNodeFtraceEvent "maybe'ptr" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmallocNodeFtraceEvent'ptr
           (\ x__ y__ -> x__ {_KmallocNodeFtraceEvent'ptr = y__}))
        Prelude.id
instance Data.ProtoLens.Message KmallocNodeFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.KmallocNodeFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SYNKmallocNodeFtraceEvent\DC2\US\n\
      \\vbytes_alloc\CAN\SOH \SOH(\EOTR\n\
      \bytesAlloc\DC2\ESC\n\
      \\tbytes_req\CAN\STX \SOH(\EOTR\bbytesReq\DC2\ESC\n\
      \\tcall_site\CAN\ETX \SOH(\EOTR\bcallSite\DC2\ESC\n\
      \\tgfp_flags\CAN\EOT \SOH(\rR\bgfpFlags\DC2\DC2\n\
      \\EOTnode\CAN\ENQ \SOH(\ENQR\EOTnode\DC2\DLE\n\
      \\ETXptr\CAN\ACK \SOH(\EOTR\ETXptr"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        bytesAlloc__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bytes_alloc"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bytesAlloc")) ::
              Data.ProtoLens.FieldDescriptor KmallocNodeFtraceEvent
        bytesReq__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bytes_req"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bytesReq")) ::
              Data.ProtoLens.FieldDescriptor KmallocNodeFtraceEvent
        callSite__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "call_site"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'callSite")) ::
              Data.ProtoLens.FieldDescriptor KmallocNodeFtraceEvent
        gfpFlags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gfp_flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gfpFlags")) ::
              Data.ProtoLens.FieldDescriptor KmallocNodeFtraceEvent
        node__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "node"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'node")) ::
              Data.ProtoLens.FieldDescriptor KmallocNodeFtraceEvent
        ptr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ptr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ptr")) ::
              Data.ProtoLens.FieldDescriptor KmallocNodeFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, bytesAlloc__field_descriptor),
           (Data.ProtoLens.Tag 2, bytesReq__field_descriptor),
           (Data.ProtoLens.Tag 3, callSite__field_descriptor),
           (Data.ProtoLens.Tag 4, gfpFlags__field_descriptor),
           (Data.ProtoLens.Tag 5, node__field_descriptor),
           (Data.ProtoLens.Tag 6, ptr__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KmallocNodeFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_KmallocNodeFtraceEvent'_unknownFields = y__})
  defMessage
    = KmallocNodeFtraceEvent'_constructor
        {_KmallocNodeFtraceEvent'bytesAlloc = Prelude.Nothing,
         _KmallocNodeFtraceEvent'bytesReq = Prelude.Nothing,
         _KmallocNodeFtraceEvent'callSite = Prelude.Nothing,
         _KmallocNodeFtraceEvent'gfpFlags = Prelude.Nothing,
         _KmallocNodeFtraceEvent'node = Prelude.Nothing,
         _KmallocNodeFtraceEvent'ptr = Prelude.Nothing,
         _KmallocNodeFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KmallocNodeFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser KmallocNodeFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "bytes_alloc"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bytesAlloc") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "bytes_req"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bytesReq") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "call_site"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"callSite") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "gfp_flags"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gfpFlags") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "node"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"node") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ptr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ptr") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "KmallocNodeFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'bytesAlloc") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'bytesReq") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'callSite") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gfpFlags") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'node") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ptr") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData KmallocNodeFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KmallocNodeFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_KmallocNodeFtraceEvent'bytesAlloc x__)
                (Control.DeepSeq.deepseq
                   (_KmallocNodeFtraceEvent'bytesReq x__)
                   (Control.DeepSeq.deepseq
                      (_KmallocNodeFtraceEvent'callSite x__)
                      (Control.DeepSeq.deepseq
                         (_KmallocNodeFtraceEvent'gfpFlags x__)
                         (Control.DeepSeq.deepseq
                            (_KmallocNodeFtraceEvent'node x__)
                            (Control.DeepSeq.deepseq (_KmallocNodeFtraceEvent'ptr x__) ()))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.bytesAlloc' @:: Lens' KmemCacheAllocFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'bytesAlloc' @:: Lens' KmemCacheAllocFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.bytesReq' @:: Lens' KmemCacheAllocFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'bytesReq' @:: Lens' KmemCacheAllocFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.callSite' @:: Lens' KmemCacheAllocFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'callSite' @:: Lens' KmemCacheAllocFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.gfpFlags' @:: Lens' KmemCacheAllocFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'gfpFlags' @:: Lens' KmemCacheAllocFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.ptr' @:: Lens' KmemCacheAllocFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'ptr' @:: Lens' KmemCacheAllocFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data KmemCacheAllocFtraceEvent
  = KmemCacheAllocFtraceEvent'_constructor {_KmemCacheAllocFtraceEvent'bytesAlloc :: !(Prelude.Maybe Data.Word.Word64),
                                            _KmemCacheAllocFtraceEvent'bytesReq :: !(Prelude.Maybe Data.Word.Word64),
                                            _KmemCacheAllocFtraceEvent'callSite :: !(Prelude.Maybe Data.Word.Word64),
                                            _KmemCacheAllocFtraceEvent'gfpFlags :: !(Prelude.Maybe Data.Word.Word32),
                                            _KmemCacheAllocFtraceEvent'ptr :: !(Prelude.Maybe Data.Word.Word64),
                                            _KmemCacheAllocFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KmemCacheAllocFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KmemCacheAllocFtraceEvent "bytesAlloc" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmemCacheAllocFtraceEvent'bytesAlloc
           (\ x__ y__ -> x__ {_KmemCacheAllocFtraceEvent'bytesAlloc = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KmemCacheAllocFtraceEvent "maybe'bytesAlloc" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmemCacheAllocFtraceEvent'bytesAlloc
           (\ x__ y__ -> x__ {_KmemCacheAllocFtraceEvent'bytesAlloc = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KmemCacheAllocFtraceEvent "bytesReq" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmemCacheAllocFtraceEvent'bytesReq
           (\ x__ y__ -> x__ {_KmemCacheAllocFtraceEvent'bytesReq = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KmemCacheAllocFtraceEvent "maybe'bytesReq" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmemCacheAllocFtraceEvent'bytesReq
           (\ x__ y__ -> x__ {_KmemCacheAllocFtraceEvent'bytesReq = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KmemCacheAllocFtraceEvent "callSite" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmemCacheAllocFtraceEvent'callSite
           (\ x__ y__ -> x__ {_KmemCacheAllocFtraceEvent'callSite = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KmemCacheAllocFtraceEvent "maybe'callSite" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmemCacheAllocFtraceEvent'callSite
           (\ x__ y__ -> x__ {_KmemCacheAllocFtraceEvent'callSite = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KmemCacheAllocFtraceEvent "gfpFlags" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmemCacheAllocFtraceEvent'gfpFlags
           (\ x__ y__ -> x__ {_KmemCacheAllocFtraceEvent'gfpFlags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KmemCacheAllocFtraceEvent "maybe'gfpFlags" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmemCacheAllocFtraceEvent'gfpFlags
           (\ x__ y__ -> x__ {_KmemCacheAllocFtraceEvent'gfpFlags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KmemCacheAllocFtraceEvent "ptr" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmemCacheAllocFtraceEvent'ptr
           (\ x__ y__ -> x__ {_KmemCacheAllocFtraceEvent'ptr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KmemCacheAllocFtraceEvent "maybe'ptr" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmemCacheAllocFtraceEvent'ptr
           (\ x__ y__ -> x__ {_KmemCacheAllocFtraceEvent'ptr = y__}))
        Prelude.id
instance Data.ProtoLens.Message KmemCacheAllocFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.KmemCacheAllocFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\EMKmemCacheAllocFtraceEvent\DC2\US\n\
      \\vbytes_alloc\CAN\SOH \SOH(\EOTR\n\
      \bytesAlloc\DC2\ESC\n\
      \\tbytes_req\CAN\STX \SOH(\EOTR\bbytesReq\DC2\ESC\n\
      \\tcall_site\CAN\ETX \SOH(\EOTR\bcallSite\DC2\ESC\n\
      \\tgfp_flags\CAN\EOT \SOH(\rR\bgfpFlags\DC2\DLE\n\
      \\ETXptr\CAN\ENQ \SOH(\EOTR\ETXptr"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        bytesAlloc__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bytes_alloc"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bytesAlloc")) ::
              Data.ProtoLens.FieldDescriptor KmemCacheAllocFtraceEvent
        bytesReq__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bytes_req"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bytesReq")) ::
              Data.ProtoLens.FieldDescriptor KmemCacheAllocFtraceEvent
        callSite__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "call_site"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'callSite")) ::
              Data.ProtoLens.FieldDescriptor KmemCacheAllocFtraceEvent
        gfpFlags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gfp_flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gfpFlags")) ::
              Data.ProtoLens.FieldDescriptor KmemCacheAllocFtraceEvent
        ptr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ptr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ptr")) ::
              Data.ProtoLens.FieldDescriptor KmemCacheAllocFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, bytesAlloc__field_descriptor),
           (Data.ProtoLens.Tag 2, bytesReq__field_descriptor),
           (Data.ProtoLens.Tag 3, callSite__field_descriptor),
           (Data.ProtoLens.Tag 4, gfpFlags__field_descriptor),
           (Data.ProtoLens.Tag 5, ptr__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KmemCacheAllocFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_KmemCacheAllocFtraceEvent'_unknownFields = y__})
  defMessage
    = KmemCacheAllocFtraceEvent'_constructor
        {_KmemCacheAllocFtraceEvent'bytesAlloc = Prelude.Nothing,
         _KmemCacheAllocFtraceEvent'bytesReq = Prelude.Nothing,
         _KmemCacheAllocFtraceEvent'callSite = Prelude.Nothing,
         _KmemCacheAllocFtraceEvent'gfpFlags = Prelude.Nothing,
         _KmemCacheAllocFtraceEvent'ptr = Prelude.Nothing,
         _KmemCacheAllocFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KmemCacheAllocFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser KmemCacheAllocFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "bytes_alloc"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bytesAlloc") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "bytes_req"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bytesReq") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "call_site"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"callSite") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "gfp_flags"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gfpFlags") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ptr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ptr") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "KmemCacheAllocFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'bytesAlloc") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'bytesReq") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'callSite") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gfpFlags") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ptr") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData KmemCacheAllocFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KmemCacheAllocFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_KmemCacheAllocFtraceEvent'bytesAlloc x__)
                (Control.DeepSeq.deepseq
                   (_KmemCacheAllocFtraceEvent'bytesReq x__)
                   (Control.DeepSeq.deepseq
                      (_KmemCacheAllocFtraceEvent'callSite x__)
                      (Control.DeepSeq.deepseq
                         (_KmemCacheAllocFtraceEvent'gfpFlags x__)
                         (Control.DeepSeq.deepseq
                            (_KmemCacheAllocFtraceEvent'ptr x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.bytesAlloc' @:: Lens' KmemCacheAllocNodeFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'bytesAlloc' @:: Lens' KmemCacheAllocNodeFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.bytesReq' @:: Lens' KmemCacheAllocNodeFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'bytesReq' @:: Lens' KmemCacheAllocNodeFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.callSite' @:: Lens' KmemCacheAllocNodeFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'callSite' @:: Lens' KmemCacheAllocNodeFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.gfpFlags' @:: Lens' KmemCacheAllocNodeFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'gfpFlags' @:: Lens' KmemCacheAllocNodeFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.node' @:: Lens' KmemCacheAllocNodeFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'node' @:: Lens' KmemCacheAllocNodeFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.ptr' @:: Lens' KmemCacheAllocNodeFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'ptr' @:: Lens' KmemCacheAllocNodeFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data KmemCacheAllocNodeFtraceEvent
  = KmemCacheAllocNodeFtraceEvent'_constructor {_KmemCacheAllocNodeFtraceEvent'bytesAlloc :: !(Prelude.Maybe Data.Word.Word64),
                                                _KmemCacheAllocNodeFtraceEvent'bytesReq :: !(Prelude.Maybe Data.Word.Word64),
                                                _KmemCacheAllocNodeFtraceEvent'callSite :: !(Prelude.Maybe Data.Word.Word64),
                                                _KmemCacheAllocNodeFtraceEvent'gfpFlags :: !(Prelude.Maybe Data.Word.Word32),
                                                _KmemCacheAllocNodeFtraceEvent'node :: !(Prelude.Maybe Data.Int.Int32),
                                                _KmemCacheAllocNodeFtraceEvent'ptr :: !(Prelude.Maybe Data.Word.Word64),
                                                _KmemCacheAllocNodeFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KmemCacheAllocNodeFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KmemCacheAllocNodeFtraceEvent "bytesAlloc" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmemCacheAllocNodeFtraceEvent'bytesAlloc
           (\ x__ y__
              -> x__ {_KmemCacheAllocNodeFtraceEvent'bytesAlloc = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KmemCacheAllocNodeFtraceEvent "maybe'bytesAlloc" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmemCacheAllocNodeFtraceEvent'bytesAlloc
           (\ x__ y__
              -> x__ {_KmemCacheAllocNodeFtraceEvent'bytesAlloc = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KmemCacheAllocNodeFtraceEvent "bytesReq" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmemCacheAllocNodeFtraceEvent'bytesReq
           (\ x__ y__ -> x__ {_KmemCacheAllocNodeFtraceEvent'bytesReq = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KmemCacheAllocNodeFtraceEvent "maybe'bytesReq" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmemCacheAllocNodeFtraceEvent'bytesReq
           (\ x__ y__ -> x__ {_KmemCacheAllocNodeFtraceEvent'bytesReq = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KmemCacheAllocNodeFtraceEvent "callSite" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmemCacheAllocNodeFtraceEvent'callSite
           (\ x__ y__ -> x__ {_KmemCacheAllocNodeFtraceEvent'callSite = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KmemCacheAllocNodeFtraceEvent "maybe'callSite" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmemCacheAllocNodeFtraceEvent'callSite
           (\ x__ y__ -> x__ {_KmemCacheAllocNodeFtraceEvent'callSite = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KmemCacheAllocNodeFtraceEvent "gfpFlags" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmemCacheAllocNodeFtraceEvent'gfpFlags
           (\ x__ y__ -> x__ {_KmemCacheAllocNodeFtraceEvent'gfpFlags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KmemCacheAllocNodeFtraceEvent "maybe'gfpFlags" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmemCacheAllocNodeFtraceEvent'gfpFlags
           (\ x__ y__ -> x__ {_KmemCacheAllocNodeFtraceEvent'gfpFlags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KmemCacheAllocNodeFtraceEvent "node" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmemCacheAllocNodeFtraceEvent'node
           (\ x__ y__ -> x__ {_KmemCacheAllocNodeFtraceEvent'node = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KmemCacheAllocNodeFtraceEvent "maybe'node" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmemCacheAllocNodeFtraceEvent'node
           (\ x__ y__ -> x__ {_KmemCacheAllocNodeFtraceEvent'node = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KmemCacheAllocNodeFtraceEvent "ptr" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmemCacheAllocNodeFtraceEvent'ptr
           (\ x__ y__ -> x__ {_KmemCacheAllocNodeFtraceEvent'ptr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KmemCacheAllocNodeFtraceEvent "maybe'ptr" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmemCacheAllocNodeFtraceEvent'ptr
           (\ x__ y__ -> x__ {_KmemCacheAllocNodeFtraceEvent'ptr = y__}))
        Prelude.id
instance Data.ProtoLens.Message KmemCacheAllocNodeFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.KmemCacheAllocNodeFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\GSKmemCacheAllocNodeFtraceEvent\DC2\US\n\
      \\vbytes_alloc\CAN\SOH \SOH(\EOTR\n\
      \bytesAlloc\DC2\ESC\n\
      \\tbytes_req\CAN\STX \SOH(\EOTR\bbytesReq\DC2\ESC\n\
      \\tcall_site\CAN\ETX \SOH(\EOTR\bcallSite\DC2\ESC\n\
      \\tgfp_flags\CAN\EOT \SOH(\rR\bgfpFlags\DC2\DC2\n\
      \\EOTnode\CAN\ENQ \SOH(\ENQR\EOTnode\DC2\DLE\n\
      \\ETXptr\CAN\ACK \SOH(\EOTR\ETXptr"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        bytesAlloc__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bytes_alloc"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bytesAlloc")) ::
              Data.ProtoLens.FieldDescriptor KmemCacheAllocNodeFtraceEvent
        bytesReq__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bytes_req"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bytesReq")) ::
              Data.ProtoLens.FieldDescriptor KmemCacheAllocNodeFtraceEvent
        callSite__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "call_site"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'callSite")) ::
              Data.ProtoLens.FieldDescriptor KmemCacheAllocNodeFtraceEvent
        gfpFlags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gfp_flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gfpFlags")) ::
              Data.ProtoLens.FieldDescriptor KmemCacheAllocNodeFtraceEvent
        node__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "node"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'node")) ::
              Data.ProtoLens.FieldDescriptor KmemCacheAllocNodeFtraceEvent
        ptr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ptr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ptr")) ::
              Data.ProtoLens.FieldDescriptor KmemCacheAllocNodeFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, bytesAlloc__field_descriptor),
           (Data.ProtoLens.Tag 2, bytesReq__field_descriptor),
           (Data.ProtoLens.Tag 3, callSite__field_descriptor),
           (Data.ProtoLens.Tag 4, gfpFlags__field_descriptor),
           (Data.ProtoLens.Tag 5, node__field_descriptor),
           (Data.ProtoLens.Tag 6, ptr__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KmemCacheAllocNodeFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_KmemCacheAllocNodeFtraceEvent'_unknownFields = y__})
  defMessage
    = KmemCacheAllocNodeFtraceEvent'_constructor
        {_KmemCacheAllocNodeFtraceEvent'bytesAlloc = Prelude.Nothing,
         _KmemCacheAllocNodeFtraceEvent'bytesReq = Prelude.Nothing,
         _KmemCacheAllocNodeFtraceEvent'callSite = Prelude.Nothing,
         _KmemCacheAllocNodeFtraceEvent'gfpFlags = Prelude.Nothing,
         _KmemCacheAllocNodeFtraceEvent'node = Prelude.Nothing,
         _KmemCacheAllocNodeFtraceEvent'ptr = Prelude.Nothing,
         _KmemCacheAllocNodeFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KmemCacheAllocNodeFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser KmemCacheAllocNodeFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "bytes_alloc"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bytesAlloc") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "bytes_req"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bytesReq") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "call_site"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"callSite") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "gfp_flags"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gfpFlags") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "node"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"node") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ptr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ptr") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "KmemCacheAllocNodeFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'bytesAlloc") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'bytesReq") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'callSite") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gfpFlags") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'node") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ptr") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData KmemCacheAllocNodeFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KmemCacheAllocNodeFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_KmemCacheAllocNodeFtraceEvent'bytesAlloc x__)
                (Control.DeepSeq.deepseq
                   (_KmemCacheAllocNodeFtraceEvent'bytesReq x__)
                   (Control.DeepSeq.deepseq
                      (_KmemCacheAllocNodeFtraceEvent'callSite x__)
                      (Control.DeepSeq.deepseq
                         (_KmemCacheAllocNodeFtraceEvent'gfpFlags x__)
                         (Control.DeepSeq.deepseq
                            (_KmemCacheAllocNodeFtraceEvent'node x__)
                            (Control.DeepSeq.deepseq
                               (_KmemCacheAllocNodeFtraceEvent'ptr x__) ()))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.callSite' @:: Lens' KmemCacheFreeFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'callSite' @:: Lens' KmemCacheFreeFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.ptr' @:: Lens' KmemCacheFreeFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'ptr' @:: Lens' KmemCacheFreeFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data KmemCacheFreeFtraceEvent
  = KmemCacheFreeFtraceEvent'_constructor {_KmemCacheFreeFtraceEvent'callSite :: !(Prelude.Maybe Data.Word.Word64),
                                           _KmemCacheFreeFtraceEvent'ptr :: !(Prelude.Maybe Data.Word.Word64),
                                           _KmemCacheFreeFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KmemCacheFreeFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KmemCacheFreeFtraceEvent "callSite" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmemCacheFreeFtraceEvent'callSite
           (\ x__ y__ -> x__ {_KmemCacheFreeFtraceEvent'callSite = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KmemCacheFreeFtraceEvent "maybe'callSite" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmemCacheFreeFtraceEvent'callSite
           (\ x__ y__ -> x__ {_KmemCacheFreeFtraceEvent'callSite = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KmemCacheFreeFtraceEvent "ptr" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmemCacheFreeFtraceEvent'ptr
           (\ x__ y__ -> x__ {_KmemCacheFreeFtraceEvent'ptr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField KmemCacheFreeFtraceEvent "maybe'ptr" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KmemCacheFreeFtraceEvent'ptr
           (\ x__ y__ -> x__ {_KmemCacheFreeFtraceEvent'ptr = y__}))
        Prelude.id
instance Data.ProtoLens.Message KmemCacheFreeFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.KmemCacheFreeFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\CANKmemCacheFreeFtraceEvent\DC2\ESC\n\
      \\tcall_site\CAN\SOH \SOH(\EOTR\bcallSite\DC2\DLE\n\
      \\ETXptr\CAN\STX \SOH(\EOTR\ETXptr"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        callSite__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "call_site"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'callSite")) ::
              Data.ProtoLens.FieldDescriptor KmemCacheFreeFtraceEvent
        ptr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ptr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ptr")) ::
              Data.ProtoLens.FieldDescriptor KmemCacheFreeFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, callSite__field_descriptor),
           (Data.ProtoLens.Tag 2, ptr__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KmemCacheFreeFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_KmemCacheFreeFtraceEvent'_unknownFields = y__})
  defMessage
    = KmemCacheFreeFtraceEvent'_constructor
        {_KmemCacheFreeFtraceEvent'callSite = Prelude.Nothing,
         _KmemCacheFreeFtraceEvent'ptr = Prelude.Nothing,
         _KmemCacheFreeFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KmemCacheFreeFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser KmemCacheFreeFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "call_site"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"callSite") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ptr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ptr") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "KmemCacheFreeFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'callSite") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ptr") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData KmemCacheFreeFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KmemCacheFreeFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_KmemCacheFreeFtraceEvent'callSite x__)
                (Control.DeepSeq.deepseq (_KmemCacheFreeFtraceEvent'ptr x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.mode' @:: Lens' MigratePagesEndFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'mode' @:: Lens' MigratePagesEndFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data MigratePagesEndFtraceEvent
  = MigratePagesEndFtraceEvent'_constructor {_MigratePagesEndFtraceEvent'mode :: !(Prelude.Maybe Data.Int.Int32),
                                             _MigratePagesEndFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MigratePagesEndFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MigratePagesEndFtraceEvent "mode" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MigratePagesEndFtraceEvent'mode
           (\ x__ y__ -> x__ {_MigratePagesEndFtraceEvent'mode = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MigratePagesEndFtraceEvent "maybe'mode" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MigratePagesEndFtraceEvent'mode
           (\ x__ y__ -> x__ {_MigratePagesEndFtraceEvent'mode = y__}))
        Prelude.id
instance Data.ProtoLens.Message MigratePagesEndFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.MigratePagesEndFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SUBMigratePagesEndFtraceEvent\DC2\DC2\n\
      \\EOTmode\CAN\SOH \SOH(\ENQR\EOTmode"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        mode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mode"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mode")) ::
              Data.ProtoLens.FieldDescriptor MigratePagesEndFtraceEvent
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, mode__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MigratePagesEndFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_MigratePagesEndFtraceEvent'_unknownFields = y__})
  defMessage
    = MigratePagesEndFtraceEvent'_constructor
        {_MigratePagesEndFtraceEvent'mode = Prelude.Nothing,
         _MigratePagesEndFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MigratePagesEndFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MigratePagesEndFtraceEvent
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
                                       "mode"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"mode") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MigratePagesEndFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'mode") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData MigratePagesEndFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MigratePagesEndFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq (_MigratePagesEndFtraceEvent'mode x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.mode' @:: Lens' MigratePagesStartFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'mode' @:: Lens' MigratePagesStartFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data MigratePagesStartFtraceEvent
  = MigratePagesStartFtraceEvent'_constructor {_MigratePagesStartFtraceEvent'mode :: !(Prelude.Maybe Data.Int.Int32),
                                               _MigratePagesStartFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MigratePagesStartFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MigratePagesStartFtraceEvent "mode" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MigratePagesStartFtraceEvent'mode
           (\ x__ y__ -> x__ {_MigratePagesStartFtraceEvent'mode = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MigratePagesStartFtraceEvent "maybe'mode" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MigratePagesStartFtraceEvent'mode
           (\ x__ y__ -> x__ {_MigratePagesStartFtraceEvent'mode = y__}))
        Prelude.id
instance Data.ProtoLens.Message MigratePagesStartFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.MigratePagesStartFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\FSMigratePagesStartFtraceEvent\DC2\DC2\n\
      \\EOTmode\CAN\SOH \SOH(\ENQR\EOTmode"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        mode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mode"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mode")) ::
              Data.ProtoLens.FieldDescriptor MigratePagesStartFtraceEvent
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, mode__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MigratePagesStartFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_MigratePagesStartFtraceEvent'_unknownFields = y__})
  defMessage
    = MigratePagesStartFtraceEvent'_constructor
        {_MigratePagesStartFtraceEvent'mode = Prelude.Nothing,
         _MigratePagesStartFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MigratePagesStartFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MigratePagesStartFtraceEvent
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
                                       "mode"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"mode") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MigratePagesStartFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'mode") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData MigratePagesStartFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MigratePagesStartFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MigratePagesStartFtraceEvent'mode x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.tries' @:: Lens' MigrateRetryFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'tries' @:: Lens' MigrateRetryFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data MigrateRetryFtraceEvent
  = MigrateRetryFtraceEvent'_constructor {_MigrateRetryFtraceEvent'tries :: !(Prelude.Maybe Data.Int.Int32),
                                          _MigrateRetryFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MigrateRetryFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MigrateRetryFtraceEvent "tries" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MigrateRetryFtraceEvent'tries
           (\ x__ y__ -> x__ {_MigrateRetryFtraceEvent'tries = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MigrateRetryFtraceEvent "maybe'tries" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MigrateRetryFtraceEvent'tries
           (\ x__ y__ -> x__ {_MigrateRetryFtraceEvent'tries = y__}))
        Prelude.id
instance Data.ProtoLens.Message MigrateRetryFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.MigrateRetryFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ETBMigrateRetryFtraceEvent\DC2\DC4\n\
      \\ENQtries\CAN\SOH \SOH(\ENQR\ENQtries"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        tries__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tries"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tries")) ::
              Data.ProtoLens.FieldDescriptor MigrateRetryFtraceEvent
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, tries__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MigrateRetryFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_MigrateRetryFtraceEvent'_unknownFields = y__})
  defMessage
    = MigrateRetryFtraceEvent'_constructor
        {_MigrateRetryFtraceEvent'tries = Prelude.Nothing,
         _MigrateRetryFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MigrateRetryFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MigrateRetryFtraceEvent
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
                                       "tries"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"tries") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MigrateRetryFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'tries") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData MigrateRetryFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MigrateRetryFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq (_MigrateRetryFtraceEvent'tries x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.allocMigratetype' @:: Lens' MmPageAllocExtfragFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'allocMigratetype' @:: Lens' MmPageAllocExtfragFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.allocOrder' @:: Lens' MmPageAllocExtfragFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'allocOrder' @:: Lens' MmPageAllocExtfragFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.fallbackMigratetype' @:: Lens' MmPageAllocExtfragFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'fallbackMigratetype' @:: Lens' MmPageAllocExtfragFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.fallbackOrder' @:: Lens' MmPageAllocExtfragFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'fallbackOrder' @:: Lens' MmPageAllocExtfragFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.page' @:: Lens' MmPageAllocExtfragFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'page' @:: Lens' MmPageAllocExtfragFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.changeOwnership' @:: Lens' MmPageAllocExtfragFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'changeOwnership' @:: Lens' MmPageAllocExtfragFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.pfn' @:: Lens' MmPageAllocExtfragFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'pfn' @:: Lens' MmPageAllocExtfragFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data MmPageAllocExtfragFtraceEvent
  = MmPageAllocExtfragFtraceEvent'_constructor {_MmPageAllocExtfragFtraceEvent'allocMigratetype :: !(Prelude.Maybe Data.Int.Int32),
                                                _MmPageAllocExtfragFtraceEvent'allocOrder :: !(Prelude.Maybe Data.Int.Int32),
                                                _MmPageAllocExtfragFtraceEvent'fallbackMigratetype :: !(Prelude.Maybe Data.Int.Int32),
                                                _MmPageAllocExtfragFtraceEvent'fallbackOrder :: !(Prelude.Maybe Data.Int.Int32),
                                                _MmPageAllocExtfragFtraceEvent'page :: !(Prelude.Maybe Data.Word.Word64),
                                                _MmPageAllocExtfragFtraceEvent'changeOwnership :: !(Prelude.Maybe Data.Int.Int32),
                                                _MmPageAllocExtfragFtraceEvent'pfn :: !(Prelude.Maybe Data.Word.Word64),
                                                _MmPageAllocExtfragFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MmPageAllocExtfragFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MmPageAllocExtfragFtraceEvent "allocMigratetype" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPageAllocExtfragFtraceEvent'allocMigratetype
           (\ x__ y__
              -> x__ {_MmPageAllocExtfragFtraceEvent'allocMigratetype = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmPageAllocExtfragFtraceEvent "maybe'allocMigratetype" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPageAllocExtfragFtraceEvent'allocMigratetype
           (\ x__ y__
              -> x__ {_MmPageAllocExtfragFtraceEvent'allocMigratetype = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmPageAllocExtfragFtraceEvent "allocOrder" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPageAllocExtfragFtraceEvent'allocOrder
           (\ x__ y__
              -> x__ {_MmPageAllocExtfragFtraceEvent'allocOrder = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmPageAllocExtfragFtraceEvent "maybe'allocOrder" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPageAllocExtfragFtraceEvent'allocOrder
           (\ x__ y__
              -> x__ {_MmPageAllocExtfragFtraceEvent'allocOrder = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmPageAllocExtfragFtraceEvent "fallbackMigratetype" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPageAllocExtfragFtraceEvent'fallbackMigratetype
           (\ x__ y__
              -> x__ {_MmPageAllocExtfragFtraceEvent'fallbackMigratetype = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmPageAllocExtfragFtraceEvent "maybe'fallbackMigratetype" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPageAllocExtfragFtraceEvent'fallbackMigratetype
           (\ x__ y__
              -> x__ {_MmPageAllocExtfragFtraceEvent'fallbackMigratetype = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmPageAllocExtfragFtraceEvent "fallbackOrder" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPageAllocExtfragFtraceEvent'fallbackOrder
           (\ x__ y__
              -> x__ {_MmPageAllocExtfragFtraceEvent'fallbackOrder = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmPageAllocExtfragFtraceEvent "maybe'fallbackOrder" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPageAllocExtfragFtraceEvent'fallbackOrder
           (\ x__ y__
              -> x__ {_MmPageAllocExtfragFtraceEvent'fallbackOrder = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmPageAllocExtfragFtraceEvent "page" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPageAllocExtfragFtraceEvent'page
           (\ x__ y__ -> x__ {_MmPageAllocExtfragFtraceEvent'page = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmPageAllocExtfragFtraceEvent "maybe'page" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPageAllocExtfragFtraceEvent'page
           (\ x__ y__ -> x__ {_MmPageAllocExtfragFtraceEvent'page = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmPageAllocExtfragFtraceEvent "changeOwnership" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPageAllocExtfragFtraceEvent'changeOwnership
           (\ x__ y__
              -> x__ {_MmPageAllocExtfragFtraceEvent'changeOwnership = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmPageAllocExtfragFtraceEvent "maybe'changeOwnership" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPageAllocExtfragFtraceEvent'changeOwnership
           (\ x__ y__
              -> x__ {_MmPageAllocExtfragFtraceEvent'changeOwnership = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmPageAllocExtfragFtraceEvent "pfn" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPageAllocExtfragFtraceEvent'pfn
           (\ x__ y__ -> x__ {_MmPageAllocExtfragFtraceEvent'pfn = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmPageAllocExtfragFtraceEvent "maybe'pfn" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPageAllocExtfragFtraceEvent'pfn
           (\ x__ y__ -> x__ {_MmPageAllocExtfragFtraceEvent'pfn = y__}))
        Prelude.id
instance Data.ProtoLens.Message MmPageAllocExtfragFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.MmPageAllocExtfragFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\GSMmPageAllocExtfragFtraceEvent\DC2+\n\
      \\DC1alloc_migratetype\CAN\SOH \SOH(\ENQR\DLEallocMigratetype\DC2\US\n\
      \\valloc_order\CAN\STX \SOH(\ENQR\n\
      \allocOrder\DC21\n\
      \\DC4fallback_migratetype\CAN\ETX \SOH(\ENQR\DC3fallbackMigratetype\DC2%\n\
      \\SOfallback_order\CAN\EOT \SOH(\ENQR\rfallbackOrder\DC2\DC2\n\
      \\EOTpage\CAN\ENQ \SOH(\EOTR\EOTpage\DC2)\n\
      \\DLEchange_ownership\CAN\ACK \SOH(\ENQR\SIchangeOwnership\DC2\DLE\n\
      \\ETXpfn\CAN\a \SOH(\EOTR\ETXpfn"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        allocMigratetype__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "alloc_migratetype"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'allocMigratetype")) ::
              Data.ProtoLens.FieldDescriptor MmPageAllocExtfragFtraceEvent
        allocOrder__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "alloc_order"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'allocOrder")) ::
              Data.ProtoLens.FieldDescriptor MmPageAllocExtfragFtraceEvent
        fallbackMigratetype__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fallback_migratetype"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fallbackMigratetype")) ::
              Data.ProtoLens.FieldDescriptor MmPageAllocExtfragFtraceEvent
        fallbackOrder__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fallback_order"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fallbackOrder")) ::
              Data.ProtoLens.FieldDescriptor MmPageAllocExtfragFtraceEvent
        page__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "page"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'page")) ::
              Data.ProtoLens.FieldDescriptor MmPageAllocExtfragFtraceEvent
        changeOwnership__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "change_ownership"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'changeOwnership")) ::
              Data.ProtoLens.FieldDescriptor MmPageAllocExtfragFtraceEvent
        pfn__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pfn"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pfn")) ::
              Data.ProtoLens.FieldDescriptor MmPageAllocExtfragFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, allocMigratetype__field_descriptor),
           (Data.ProtoLens.Tag 2, allocOrder__field_descriptor),
           (Data.ProtoLens.Tag 3, fallbackMigratetype__field_descriptor),
           (Data.ProtoLens.Tag 4, fallbackOrder__field_descriptor),
           (Data.ProtoLens.Tag 5, page__field_descriptor),
           (Data.ProtoLens.Tag 6, changeOwnership__field_descriptor),
           (Data.ProtoLens.Tag 7, pfn__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MmPageAllocExtfragFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_MmPageAllocExtfragFtraceEvent'_unknownFields = y__})
  defMessage
    = MmPageAllocExtfragFtraceEvent'_constructor
        {_MmPageAllocExtfragFtraceEvent'allocMigratetype = Prelude.Nothing,
         _MmPageAllocExtfragFtraceEvent'allocOrder = Prelude.Nothing,
         _MmPageAllocExtfragFtraceEvent'fallbackMigratetype = Prelude.Nothing,
         _MmPageAllocExtfragFtraceEvent'fallbackOrder = Prelude.Nothing,
         _MmPageAllocExtfragFtraceEvent'page = Prelude.Nothing,
         _MmPageAllocExtfragFtraceEvent'changeOwnership = Prelude.Nothing,
         _MmPageAllocExtfragFtraceEvent'pfn = Prelude.Nothing,
         _MmPageAllocExtfragFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MmPageAllocExtfragFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MmPageAllocExtfragFtraceEvent
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
                                       "alloc_migratetype"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"allocMigratetype") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "alloc_order"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"allocOrder") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "fallback_migratetype"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"fallbackMigratetype") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "fallback_order"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"fallbackOrder") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "page"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"page") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "change_ownership"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"changeOwnership") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "pfn"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pfn") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MmPageAllocExtfragFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'allocMigratetype") _x
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
                       (Data.ProtoLens.Field.field @"maybe'allocOrder") _x
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
                          (Data.ProtoLens.Field.field @"maybe'fallbackMigratetype") _x
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
                             (Data.ProtoLens.Field.field @"maybe'fallbackOrder") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'page") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'changeOwnership") _x
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
                                    Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pfn") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData MmPageAllocExtfragFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MmPageAllocExtfragFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MmPageAllocExtfragFtraceEvent'allocMigratetype x__)
                (Control.DeepSeq.deepseq
                   (_MmPageAllocExtfragFtraceEvent'allocOrder x__)
                   (Control.DeepSeq.deepseq
                      (_MmPageAllocExtfragFtraceEvent'fallbackMigratetype x__)
                      (Control.DeepSeq.deepseq
                         (_MmPageAllocExtfragFtraceEvent'fallbackOrder x__)
                         (Control.DeepSeq.deepseq
                            (_MmPageAllocExtfragFtraceEvent'page x__)
                            (Control.DeepSeq.deepseq
                               (_MmPageAllocExtfragFtraceEvent'changeOwnership x__)
                               (Control.DeepSeq.deepseq
                                  (_MmPageAllocExtfragFtraceEvent'pfn x__) ())))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.gfpFlags' @:: Lens' MmPageAllocFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'gfpFlags' @:: Lens' MmPageAllocFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.migratetype' @:: Lens' MmPageAllocFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'migratetype' @:: Lens' MmPageAllocFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.order' @:: Lens' MmPageAllocFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'order' @:: Lens' MmPageAllocFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.page' @:: Lens' MmPageAllocFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'page' @:: Lens' MmPageAllocFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.pfn' @:: Lens' MmPageAllocFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'pfn' @:: Lens' MmPageAllocFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data MmPageAllocFtraceEvent
  = MmPageAllocFtraceEvent'_constructor {_MmPageAllocFtraceEvent'gfpFlags :: !(Prelude.Maybe Data.Word.Word32),
                                         _MmPageAllocFtraceEvent'migratetype :: !(Prelude.Maybe Data.Int.Int32),
                                         _MmPageAllocFtraceEvent'order :: !(Prelude.Maybe Data.Word.Word32),
                                         _MmPageAllocFtraceEvent'page :: !(Prelude.Maybe Data.Word.Word64),
                                         _MmPageAllocFtraceEvent'pfn :: !(Prelude.Maybe Data.Word.Word64),
                                         _MmPageAllocFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MmPageAllocFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MmPageAllocFtraceEvent "gfpFlags" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPageAllocFtraceEvent'gfpFlags
           (\ x__ y__ -> x__ {_MmPageAllocFtraceEvent'gfpFlags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmPageAllocFtraceEvent "maybe'gfpFlags" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPageAllocFtraceEvent'gfpFlags
           (\ x__ y__ -> x__ {_MmPageAllocFtraceEvent'gfpFlags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmPageAllocFtraceEvent "migratetype" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPageAllocFtraceEvent'migratetype
           (\ x__ y__ -> x__ {_MmPageAllocFtraceEvent'migratetype = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmPageAllocFtraceEvent "maybe'migratetype" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPageAllocFtraceEvent'migratetype
           (\ x__ y__ -> x__ {_MmPageAllocFtraceEvent'migratetype = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmPageAllocFtraceEvent "order" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPageAllocFtraceEvent'order
           (\ x__ y__ -> x__ {_MmPageAllocFtraceEvent'order = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmPageAllocFtraceEvent "maybe'order" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPageAllocFtraceEvent'order
           (\ x__ y__ -> x__ {_MmPageAllocFtraceEvent'order = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmPageAllocFtraceEvent "page" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPageAllocFtraceEvent'page
           (\ x__ y__ -> x__ {_MmPageAllocFtraceEvent'page = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmPageAllocFtraceEvent "maybe'page" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPageAllocFtraceEvent'page
           (\ x__ y__ -> x__ {_MmPageAllocFtraceEvent'page = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmPageAllocFtraceEvent "pfn" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPageAllocFtraceEvent'pfn
           (\ x__ y__ -> x__ {_MmPageAllocFtraceEvent'pfn = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmPageAllocFtraceEvent "maybe'pfn" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPageAllocFtraceEvent'pfn
           (\ x__ y__ -> x__ {_MmPageAllocFtraceEvent'pfn = y__}))
        Prelude.id
instance Data.ProtoLens.Message MmPageAllocFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.MmPageAllocFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SYNMmPageAllocFtraceEvent\DC2\ESC\n\
      \\tgfp_flags\CAN\SOH \SOH(\rR\bgfpFlags\DC2 \n\
      \\vmigratetype\CAN\STX \SOH(\ENQR\vmigratetype\DC2\DC4\n\
      \\ENQorder\CAN\ETX \SOH(\rR\ENQorder\DC2\DC2\n\
      \\EOTpage\CAN\EOT \SOH(\EOTR\EOTpage\DC2\DLE\n\
      \\ETXpfn\CAN\ENQ \SOH(\EOTR\ETXpfn"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        gfpFlags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gfp_flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gfpFlags")) ::
              Data.ProtoLens.FieldDescriptor MmPageAllocFtraceEvent
        migratetype__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "migratetype"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'migratetype")) ::
              Data.ProtoLens.FieldDescriptor MmPageAllocFtraceEvent
        order__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "order"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'order")) ::
              Data.ProtoLens.FieldDescriptor MmPageAllocFtraceEvent
        page__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "page"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'page")) ::
              Data.ProtoLens.FieldDescriptor MmPageAllocFtraceEvent
        pfn__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pfn"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pfn")) ::
              Data.ProtoLens.FieldDescriptor MmPageAllocFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, gfpFlags__field_descriptor),
           (Data.ProtoLens.Tag 2, migratetype__field_descriptor),
           (Data.ProtoLens.Tag 3, order__field_descriptor),
           (Data.ProtoLens.Tag 4, page__field_descriptor),
           (Data.ProtoLens.Tag 5, pfn__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MmPageAllocFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_MmPageAllocFtraceEvent'_unknownFields = y__})
  defMessage
    = MmPageAllocFtraceEvent'_constructor
        {_MmPageAllocFtraceEvent'gfpFlags = Prelude.Nothing,
         _MmPageAllocFtraceEvent'migratetype = Prelude.Nothing,
         _MmPageAllocFtraceEvent'order = Prelude.Nothing,
         _MmPageAllocFtraceEvent'page = Prelude.Nothing,
         _MmPageAllocFtraceEvent'pfn = Prelude.Nothing,
         _MmPageAllocFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MmPageAllocFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MmPageAllocFtraceEvent
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
                                       "gfp_flags"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gfpFlags") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "migratetype"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"migratetype") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "order"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"order") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "page"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"page") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "pfn"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pfn") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MmPageAllocFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gfpFlags") _x
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
                       (Data.ProtoLens.Field.field @"maybe'migratetype") _x
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
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'page") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pfn") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData MmPageAllocFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MmPageAllocFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MmPageAllocFtraceEvent'gfpFlags x__)
                (Control.DeepSeq.deepseq
                   (_MmPageAllocFtraceEvent'migratetype x__)
                   (Control.DeepSeq.deepseq
                      (_MmPageAllocFtraceEvent'order x__)
                      (Control.DeepSeq.deepseq
                         (_MmPageAllocFtraceEvent'page x__)
                         (Control.DeepSeq.deepseq (_MmPageAllocFtraceEvent'pfn x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.migratetype' @:: Lens' MmPageAllocZoneLockedFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'migratetype' @:: Lens' MmPageAllocZoneLockedFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.order' @:: Lens' MmPageAllocZoneLockedFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'order' @:: Lens' MmPageAllocZoneLockedFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.page' @:: Lens' MmPageAllocZoneLockedFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'page' @:: Lens' MmPageAllocZoneLockedFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.pfn' @:: Lens' MmPageAllocZoneLockedFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'pfn' @:: Lens' MmPageAllocZoneLockedFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data MmPageAllocZoneLockedFtraceEvent
  = MmPageAllocZoneLockedFtraceEvent'_constructor {_MmPageAllocZoneLockedFtraceEvent'migratetype :: !(Prelude.Maybe Data.Int.Int32),
                                                   _MmPageAllocZoneLockedFtraceEvent'order :: !(Prelude.Maybe Data.Word.Word32),
                                                   _MmPageAllocZoneLockedFtraceEvent'page :: !(Prelude.Maybe Data.Word.Word64),
                                                   _MmPageAllocZoneLockedFtraceEvent'pfn :: !(Prelude.Maybe Data.Word.Word64),
                                                   _MmPageAllocZoneLockedFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MmPageAllocZoneLockedFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MmPageAllocZoneLockedFtraceEvent "migratetype" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPageAllocZoneLockedFtraceEvent'migratetype
           (\ x__ y__
              -> x__ {_MmPageAllocZoneLockedFtraceEvent'migratetype = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmPageAllocZoneLockedFtraceEvent "maybe'migratetype" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPageAllocZoneLockedFtraceEvent'migratetype
           (\ x__ y__
              -> x__ {_MmPageAllocZoneLockedFtraceEvent'migratetype = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmPageAllocZoneLockedFtraceEvent "order" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPageAllocZoneLockedFtraceEvent'order
           (\ x__ y__ -> x__ {_MmPageAllocZoneLockedFtraceEvent'order = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmPageAllocZoneLockedFtraceEvent "maybe'order" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPageAllocZoneLockedFtraceEvent'order
           (\ x__ y__ -> x__ {_MmPageAllocZoneLockedFtraceEvent'order = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmPageAllocZoneLockedFtraceEvent "page" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPageAllocZoneLockedFtraceEvent'page
           (\ x__ y__ -> x__ {_MmPageAllocZoneLockedFtraceEvent'page = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmPageAllocZoneLockedFtraceEvent "maybe'page" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPageAllocZoneLockedFtraceEvent'page
           (\ x__ y__ -> x__ {_MmPageAllocZoneLockedFtraceEvent'page = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmPageAllocZoneLockedFtraceEvent "pfn" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPageAllocZoneLockedFtraceEvent'pfn
           (\ x__ y__ -> x__ {_MmPageAllocZoneLockedFtraceEvent'pfn = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmPageAllocZoneLockedFtraceEvent "maybe'pfn" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPageAllocZoneLockedFtraceEvent'pfn
           (\ x__ y__ -> x__ {_MmPageAllocZoneLockedFtraceEvent'pfn = y__}))
        Prelude.id
instance Data.ProtoLens.Message MmPageAllocZoneLockedFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.MmPageAllocZoneLockedFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \ MmPageAllocZoneLockedFtraceEvent\DC2 \n\
      \\vmigratetype\CAN\SOH \SOH(\ENQR\vmigratetype\DC2\DC4\n\
      \\ENQorder\CAN\STX \SOH(\rR\ENQorder\DC2\DC2\n\
      \\EOTpage\CAN\ETX \SOH(\EOTR\EOTpage\DC2\DLE\n\
      \\ETXpfn\CAN\EOT \SOH(\EOTR\ETXpfn"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        migratetype__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "migratetype"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'migratetype")) ::
              Data.ProtoLens.FieldDescriptor MmPageAllocZoneLockedFtraceEvent
        order__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "order"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'order")) ::
              Data.ProtoLens.FieldDescriptor MmPageAllocZoneLockedFtraceEvent
        page__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "page"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'page")) ::
              Data.ProtoLens.FieldDescriptor MmPageAllocZoneLockedFtraceEvent
        pfn__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pfn"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pfn")) ::
              Data.ProtoLens.FieldDescriptor MmPageAllocZoneLockedFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, migratetype__field_descriptor),
           (Data.ProtoLens.Tag 2, order__field_descriptor),
           (Data.ProtoLens.Tag 3, page__field_descriptor),
           (Data.ProtoLens.Tag 4, pfn__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MmPageAllocZoneLockedFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_MmPageAllocZoneLockedFtraceEvent'_unknownFields = y__})
  defMessage
    = MmPageAllocZoneLockedFtraceEvent'_constructor
        {_MmPageAllocZoneLockedFtraceEvent'migratetype = Prelude.Nothing,
         _MmPageAllocZoneLockedFtraceEvent'order = Prelude.Nothing,
         _MmPageAllocZoneLockedFtraceEvent'page = Prelude.Nothing,
         _MmPageAllocZoneLockedFtraceEvent'pfn = Prelude.Nothing,
         _MmPageAllocZoneLockedFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MmPageAllocZoneLockedFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MmPageAllocZoneLockedFtraceEvent
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
                                       "migratetype"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"migratetype") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "order"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"order") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "page"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"page") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "pfn"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pfn") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "MmPageAllocZoneLockedFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'migratetype") _x
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'page") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pfn") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData MmPageAllocZoneLockedFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MmPageAllocZoneLockedFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MmPageAllocZoneLockedFtraceEvent'migratetype x__)
                (Control.DeepSeq.deepseq
                   (_MmPageAllocZoneLockedFtraceEvent'order x__)
                   (Control.DeepSeq.deepseq
                      (_MmPageAllocZoneLockedFtraceEvent'page x__)
                      (Control.DeepSeq.deepseq
                         (_MmPageAllocZoneLockedFtraceEvent'pfn x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.cold' @:: Lens' MmPageFreeBatchedFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'cold' @:: Lens' MmPageFreeBatchedFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.page' @:: Lens' MmPageFreeBatchedFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'page' @:: Lens' MmPageFreeBatchedFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.pfn' @:: Lens' MmPageFreeBatchedFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'pfn' @:: Lens' MmPageFreeBatchedFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data MmPageFreeBatchedFtraceEvent
  = MmPageFreeBatchedFtraceEvent'_constructor {_MmPageFreeBatchedFtraceEvent'cold :: !(Prelude.Maybe Data.Int.Int32),
                                               _MmPageFreeBatchedFtraceEvent'page :: !(Prelude.Maybe Data.Word.Word64),
                                               _MmPageFreeBatchedFtraceEvent'pfn :: !(Prelude.Maybe Data.Word.Word64),
                                               _MmPageFreeBatchedFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MmPageFreeBatchedFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MmPageFreeBatchedFtraceEvent "cold" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPageFreeBatchedFtraceEvent'cold
           (\ x__ y__ -> x__ {_MmPageFreeBatchedFtraceEvent'cold = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmPageFreeBatchedFtraceEvent "maybe'cold" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPageFreeBatchedFtraceEvent'cold
           (\ x__ y__ -> x__ {_MmPageFreeBatchedFtraceEvent'cold = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmPageFreeBatchedFtraceEvent "page" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPageFreeBatchedFtraceEvent'page
           (\ x__ y__ -> x__ {_MmPageFreeBatchedFtraceEvent'page = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmPageFreeBatchedFtraceEvent "maybe'page" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPageFreeBatchedFtraceEvent'page
           (\ x__ y__ -> x__ {_MmPageFreeBatchedFtraceEvent'page = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmPageFreeBatchedFtraceEvent "pfn" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPageFreeBatchedFtraceEvent'pfn
           (\ x__ y__ -> x__ {_MmPageFreeBatchedFtraceEvent'pfn = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmPageFreeBatchedFtraceEvent "maybe'pfn" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPageFreeBatchedFtraceEvent'pfn
           (\ x__ y__ -> x__ {_MmPageFreeBatchedFtraceEvent'pfn = y__}))
        Prelude.id
instance Data.ProtoLens.Message MmPageFreeBatchedFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.MmPageFreeBatchedFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\FSMmPageFreeBatchedFtraceEvent\DC2\DC2\n\
      \\EOTcold\CAN\SOH \SOH(\ENQR\EOTcold\DC2\DC2\n\
      \\EOTpage\CAN\STX \SOH(\EOTR\EOTpage\DC2\DLE\n\
      \\ETXpfn\CAN\ETX \SOH(\EOTR\ETXpfn"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        cold__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cold"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cold")) ::
              Data.ProtoLens.FieldDescriptor MmPageFreeBatchedFtraceEvent
        page__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "page"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'page")) ::
              Data.ProtoLens.FieldDescriptor MmPageFreeBatchedFtraceEvent
        pfn__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pfn"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pfn")) ::
              Data.ProtoLens.FieldDescriptor MmPageFreeBatchedFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, cold__field_descriptor),
           (Data.ProtoLens.Tag 2, page__field_descriptor),
           (Data.ProtoLens.Tag 3, pfn__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MmPageFreeBatchedFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_MmPageFreeBatchedFtraceEvent'_unknownFields = y__})
  defMessage
    = MmPageFreeBatchedFtraceEvent'_constructor
        {_MmPageFreeBatchedFtraceEvent'cold = Prelude.Nothing,
         _MmPageFreeBatchedFtraceEvent'page = Prelude.Nothing,
         _MmPageFreeBatchedFtraceEvent'pfn = Prelude.Nothing,
         _MmPageFreeBatchedFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MmPageFreeBatchedFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MmPageFreeBatchedFtraceEvent
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
                                       "cold"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cold") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "page"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"page") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "pfn"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pfn") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MmPageFreeBatchedFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cold") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'page") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pfn") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData MmPageFreeBatchedFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MmPageFreeBatchedFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MmPageFreeBatchedFtraceEvent'cold x__)
                (Control.DeepSeq.deepseq
                   (_MmPageFreeBatchedFtraceEvent'page x__)
                   (Control.DeepSeq.deepseq
                      (_MmPageFreeBatchedFtraceEvent'pfn x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.order' @:: Lens' MmPageFreeFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'order' @:: Lens' MmPageFreeFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.page' @:: Lens' MmPageFreeFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'page' @:: Lens' MmPageFreeFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.pfn' @:: Lens' MmPageFreeFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'pfn' @:: Lens' MmPageFreeFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data MmPageFreeFtraceEvent
  = MmPageFreeFtraceEvent'_constructor {_MmPageFreeFtraceEvent'order :: !(Prelude.Maybe Data.Word.Word32),
                                        _MmPageFreeFtraceEvent'page :: !(Prelude.Maybe Data.Word.Word64),
                                        _MmPageFreeFtraceEvent'pfn :: !(Prelude.Maybe Data.Word.Word64),
                                        _MmPageFreeFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MmPageFreeFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MmPageFreeFtraceEvent "order" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPageFreeFtraceEvent'order
           (\ x__ y__ -> x__ {_MmPageFreeFtraceEvent'order = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmPageFreeFtraceEvent "maybe'order" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPageFreeFtraceEvent'order
           (\ x__ y__ -> x__ {_MmPageFreeFtraceEvent'order = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmPageFreeFtraceEvent "page" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPageFreeFtraceEvent'page
           (\ x__ y__ -> x__ {_MmPageFreeFtraceEvent'page = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmPageFreeFtraceEvent "maybe'page" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPageFreeFtraceEvent'page
           (\ x__ y__ -> x__ {_MmPageFreeFtraceEvent'page = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmPageFreeFtraceEvent "pfn" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPageFreeFtraceEvent'pfn
           (\ x__ y__ -> x__ {_MmPageFreeFtraceEvent'pfn = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmPageFreeFtraceEvent "maybe'pfn" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPageFreeFtraceEvent'pfn
           (\ x__ y__ -> x__ {_MmPageFreeFtraceEvent'pfn = y__}))
        Prelude.id
instance Data.ProtoLens.Message MmPageFreeFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.MmPageFreeFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\NAKMmPageFreeFtraceEvent\DC2\DC4\n\
      \\ENQorder\CAN\SOH \SOH(\rR\ENQorder\DC2\DC2\n\
      \\EOTpage\CAN\STX \SOH(\EOTR\EOTpage\DC2\DLE\n\
      \\ETXpfn\CAN\ETX \SOH(\EOTR\ETXpfn"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        order__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "order"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'order")) ::
              Data.ProtoLens.FieldDescriptor MmPageFreeFtraceEvent
        page__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "page"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'page")) ::
              Data.ProtoLens.FieldDescriptor MmPageFreeFtraceEvent
        pfn__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pfn"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pfn")) ::
              Data.ProtoLens.FieldDescriptor MmPageFreeFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, order__field_descriptor),
           (Data.ProtoLens.Tag 2, page__field_descriptor),
           (Data.ProtoLens.Tag 3, pfn__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MmPageFreeFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_MmPageFreeFtraceEvent'_unknownFields = y__})
  defMessage
    = MmPageFreeFtraceEvent'_constructor
        {_MmPageFreeFtraceEvent'order = Prelude.Nothing,
         _MmPageFreeFtraceEvent'page = Prelude.Nothing,
         _MmPageFreeFtraceEvent'pfn = Prelude.Nothing,
         _MmPageFreeFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MmPageFreeFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MmPageFreeFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "page"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"page") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "pfn"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pfn") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MmPageFreeFtraceEvent"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'page") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pfn") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData MmPageFreeFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MmPageFreeFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MmPageFreeFtraceEvent'order x__)
                (Control.DeepSeq.deepseq
                   (_MmPageFreeFtraceEvent'page x__)
                   (Control.DeepSeq.deepseq (_MmPageFreeFtraceEvent'pfn x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.migratetype' @:: Lens' MmPagePcpuDrainFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'migratetype' @:: Lens' MmPagePcpuDrainFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.order' @:: Lens' MmPagePcpuDrainFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'order' @:: Lens' MmPagePcpuDrainFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.page' @:: Lens' MmPagePcpuDrainFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'page' @:: Lens' MmPagePcpuDrainFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.pfn' @:: Lens' MmPagePcpuDrainFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'pfn' @:: Lens' MmPagePcpuDrainFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data MmPagePcpuDrainFtraceEvent
  = MmPagePcpuDrainFtraceEvent'_constructor {_MmPagePcpuDrainFtraceEvent'migratetype :: !(Prelude.Maybe Data.Int.Int32),
                                             _MmPagePcpuDrainFtraceEvent'order :: !(Prelude.Maybe Data.Word.Word32),
                                             _MmPagePcpuDrainFtraceEvent'page :: !(Prelude.Maybe Data.Word.Word64),
                                             _MmPagePcpuDrainFtraceEvent'pfn :: !(Prelude.Maybe Data.Word.Word64),
                                             _MmPagePcpuDrainFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MmPagePcpuDrainFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MmPagePcpuDrainFtraceEvent "migratetype" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPagePcpuDrainFtraceEvent'migratetype
           (\ x__ y__ -> x__ {_MmPagePcpuDrainFtraceEvent'migratetype = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmPagePcpuDrainFtraceEvent "maybe'migratetype" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPagePcpuDrainFtraceEvent'migratetype
           (\ x__ y__ -> x__ {_MmPagePcpuDrainFtraceEvent'migratetype = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmPagePcpuDrainFtraceEvent "order" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPagePcpuDrainFtraceEvent'order
           (\ x__ y__ -> x__ {_MmPagePcpuDrainFtraceEvent'order = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmPagePcpuDrainFtraceEvent "maybe'order" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPagePcpuDrainFtraceEvent'order
           (\ x__ y__ -> x__ {_MmPagePcpuDrainFtraceEvent'order = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmPagePcpuDrainFtraceEvent "page" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPagePcpuDrainFtraceEvent'page
           (\ x__ y__ -> x__ {_MmPagePcpuDrainFtraceEvent'page = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmPagePcpuDrainFtraceEvent "maybe'page" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPagePcpuDrainFtraceEvent'page
           (\ x__ y__ -> x__ {_MmPagePcpuDrainFtraceEvent'page = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmPagePcpuDrainFtraceEvent "pfn" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPagePcpuDrainFtraceEvent'pfn
           (\ x__ y__ -> x__ {_MmPagePcpuDrainFtraceEvent'pfn = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmPagePcpuDrainFtraceEvent "maybe'pfn" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmPagePcpuDrainFtraceEvent'pfn
           (\ x__ y__ -> x__ {_MmPagePcpuDrainFtraceEvent'pfn = y__}))
        Prelude.id
instance Data.ProtoLens.Message MmPagePcpuDrainFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.MmPagePcpuDrainFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SUBMmPagePcpuDrainFtraceEvent\DC2 \n\
      \\vmigratetype\CAN\SOH \SOH(\ENQR\vmigratetype\DC2\DC4\n\
      \\ENQorder\CAN\STX \SOH(\rR\ENQorder\DC2\DC2\n\
      \\EOTpage\CAN\ETX \SOH(\EOTR\EOTpage\DC2\DLE\n\
      \\ETXpfn\CAN\EOT \SOH(\EOTR\ETXpfn"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        migratetype__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "migratetype"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'migratetype")) ::
              Data.ProtoLens.FieldDescriptor MmPagePcpuDrainFtraceEvent
        order__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "order"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'order")) ::
              Data.ProtoLens.FieldDescriptor MmPagePcpuDrainFtraceEvent
        page__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "page"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'page")) ::
              Data.ProtoLens.FieldDescriptor MmPagePcpuDrainFtraceEvent
        pfn__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pfn"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pfn")) ::
              Data.ProtoLens.FieldDescriptor MmPagePcpuDrainFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, migratetype__field_descriptor),
           (Data.ProtoLens.Tag 2, order__field_descriptor),
           (Data.ProtoLens.Tag 3, page__field_descriptor),
           (Data.ProtoLens.Tag 4, pfn__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MmPagePcpuDrainFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_MmPagePcpuDrainFtraceEvent'_unknownFields = y__})
  defMessage
    = MmPagePcpuDrainFtraceEvent'_constructor
        {_MmPagePcpuDrainFtraceEvent'migratetype = Prelude.Nothing,
         _MmPagePcpuDrainFtraceEvent'order = Prelude.Nothing,
         _MmPagePcpuDrainFtraceEvent'page = Prelude.Nothing,
         _MmPagePcpuDrainFtraceEvent'pfn = Prelude.Nothing,
         _MmPagePcpuDrainFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MmPagePcpuDrainFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MmPagePcpuDrainFtraceEvent
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
                                       "migratetype"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"migratetype") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "order"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"order") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "page"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"page") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "pfn"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pfn") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MmPagePcpuDrainFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'migratetype") _x
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'page") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pfn") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData MmPagePcpuDrainFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MmPagePcpuDrainFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MmPagePcpuDrainFtraceEvent'migratetype x__)
                (Control.DeepSeq.deepseq
                   (_MmPagePcpuDrainFtraceEvent'order x__)
                   (Control.DeepSeq.deepseq
                      (_MmPagePcpuDrainFtraceEvent'page x__)
                      (Control.DeepSeq.deepseq
                         (_MmPagePcpuDrainFtraceEvent'pfn x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.member' @:: Lens' RssStatFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'member' @:: Lens' RssStatFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.size' @:: Lens' RssStatFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'size' @:: Lens' RssStatFtraceEvent (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.curr' @:: Lens' RssStatFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'curr' @:: Lens' RssStatFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.mmId' @:: Lens' RssStatFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields.maybe'mmId' @:: Lens' RssStatFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data RssStatFtraceEvent
  = RssStatFtraceEvent'_constructor {_RssStatFtraceEvent'member :: !(Prelude.Maybe Data.Int.Int32),
                                     _RssStatFtraceEvent'size :: !(Prelude.Maybe Data.Int.Int64),
                                     _RssStatFtraceEvent'curr :: !(Prelude.Maybe Data.Word.Word32),
                                     _RssStatFtraceEvent'mmId :: !(Prelude.Maybe Data.Word.Word32),
                                     _RssStatFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RssStatFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RssStatFtraceEvent "member" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RssStatFtraceEvent'member
           (\ x__ y__ -> x__ {_RssStatFtraceEvent'member = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField RssStatFtraceEvent "maybe'member" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RssStatFtraceEvent'member
           (\ x__ y__ -> x__ {_RssStatFtraceEvent'member = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RssStatFtraceEvent "size" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RssStatFtraceEvent'size
           (\ x__ y__ -> x__ {_RssStatFtraceEvent'size = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField RssStatFtraceEvent "maybe'size" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RssStatFtraceEvent'size
           (\ x__ y__ -> x__ {_RssStatFtraceEvent'size = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RssStatFtraceEvent "curr" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RssStatFtraceEvent'curr
           (\ x__ y__ -> x__ {_RssStatFtraceEvent'curr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField RssStatFtraceEvent "maybe'curr" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RssStatFtraceEvent'curr
           (\ x__ y__ -> x__ {_RssStatFtraceEvent'curr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RssStatFtraceEvent "mmId" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RssStatFtraceEvent'mmId
           (\ x__ y__ -> x__ {_RssStatFtraceEvent'mmId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField RssStatFtraceEvent "maybe'mmId" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RssStatFtraceEvent'mmId
           (\ x__ y__ -> x__ {_RssStatFtraceEvent'mmId = y__}))
        Prelude.id
instance Data.ProtoLens.Message RssStatFtraceEvent where
  messageName _ = Data.Text.pack "perfetto.protos.RssStatFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\DC2RssStatFtraceEvent\DC2\SYN\n\
      \\ACKmember\CAN\SOH \SOH(\ENQR\ACKmember\DC2\DC2\n\
      \\EOTsize\CAN\STX \SOH(\ETXR\EOTsize\DC2\DC2\n\
      \\EOTcurr\CAN\ETX \SOH(\rR\EOTcurr\DC2\DC3\n\
      \\ENQmm_id\CAN\EOT \SOH(\rR\EOTmmId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        member__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "member"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'member")) ::
              Data.ProtoLens.FieldDescriptor RssStatFtraceEvent
        size__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'size")) ::
              Data.ProtoLens.FieldDescriptor RssStatFtraceEvent
        curr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "curr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'curr")) ::
              Data.ProtoLens.FieldDescriptor RssStatFtraceEvent
        mmId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mm_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mmId")) ::
              Data.ProtoLens.FieldDescriptor RssStatFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, member__field_descriptor),
           (Data.ProtoLens.Tag 2, size__field_descriptor),
           (Data.ProtoLens.Tag 3, curr__field_descriptor),
           (Data.ProtoLens.Tag 4, mmId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RssStatFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_RssStatFtraceEvent'_unknownFields = y__})
  defMessage
    = RssStatFtraceEvent'_constructor
        {_RssStatFtraceEvent'member = Prelude.Nothing,
         _RssStatFtraceEvent'size = Prelude.Nothing,
         _RssStatFtraceEvent'curr = Prelude.Nothing,
         _RssStatFtraceEvent'mmId = Prelude.Nothing,
         _RssStatFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RssStatFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser RssStatFtraceEvent
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
                                       "member"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"member") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "size"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"size") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "curr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"curr") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "mm_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"mmId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RssStatFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'member") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'size") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'curr") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'mmId") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData RssStatFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RssStatFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RssStatFtraceEvent'member x__)
                (Control.DeepSeq.deepseq
                   (_RssStatFtraceEvent'size x__)
                   (Control.DeepSeq.deepseq
                      (_RssStatFtraceEvent'curr x__)
                      (Control.DeepSeq.deepseq (_RssStatFtraceEvent'mmId x__) ()))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \'protos/perfetto/trace/ftrace/kmem.proto\DC2\SIperfetto.protos\"R\n\
    \\GSAllocPagesIommuEndFtraceEvent\DC2\ESC\n\
    \\tgfp_flags\CAN\SOH \SOH(\rR\bgfpFlags\DC2\DC4\n\
    \\ENQorder\CAN\STX \SOH(\rR\ENQorder\"S\n\
    \\RSAllocPagesIommuFailFtraceEvent\DC2\ESC\n\
    \\tgfp_flags\CAN\SOH \SOH(\rR\bgfpFlags\DC2\DC4\n\
    \\ENQorder\CAN\STX \SOH(\rR\ENQorder\"T\n\
    \\USAllocPagesIommuStartFtraceEvent\DC2\ESC\n\
    \\tgfp_flags\CAN\SOH \SOH(\rR\bgfpFlags\DC2\DC4\n\
    \\ENQorder\CAN\STX \SOH(\rR\ENQorder\"P\n\
    \\ESCAllocPagesSysEndFtraceEvent\DC2\ESC\n\
    \\tgfp_flags\CAN\SOH \SOH(\rR\bgfpFlags\DC2\DC4\n\
    \\ENQorder\CAN\STX \SOH(\rR\ENQorder\"Q\n\
    \\FSAllocPagesSysFailFtraceEvent\DC2\ESC\n\
    \\tgfp_flags\CAN\SOH \SOH(\rR\bgfpFlags\DC2\DC4\n\
    \\ENQorder\CAN\STX \SOH(\rR\ENQorder\"R\n\
    \\GSAllocPagesSysStartFtraceEvent\DC2\ESC\n\
    \\tgfp_flags\CAN\SOH \SOH(\rR\bgfpFlags\DC2\DC4\n\
    \\ENQorder\CAN\STX \SOH(\rR\ENQorder\":\n\
    \\"DmaAllocContiguousRetryFtraceEvent\DC2\DC4\n\
    \\ENQtries\CAN\SOH \SOH(\ENQR\ENQtries\"k\n\
    \\CANIommuMapRangeFtraceEvent\DC2\GS\n\
    \\n\
    \chunk_size\CAN\SOH \SOH(\EOTR\tchunkSize\DC2\DLE\n\
    \\ETXlen\CAN\STX \SOH(\EOTR\ETXlen\DC2\SO\n\
    \\STXpa\CAN\ETX \SOH(\EOTR\STXpa\DC2\SO\n\
    \\STXva\CAN\EOT \SOH(\EOTR\STXva\"\DEL\n\
    \\"IommuSecPtblMapRangeEndFtraceEvent\DC2\DLE\n\
    \\ETXlen\CAN\SOH \SOH(\EOTR\ETXlen\DC2\DLE\n\
    \\ETXnum\CAN\STX \SOH(\ENQR\ETXnum\DC2\SO\n\
    \\STXpa\CAN\ETX \SOH(\rR\STXpa\DC2\NAK\n\
    \\ACKsec_id\CAN\EOT \SOH(\ENQR\ENQsecId\DC2\SO\n\
    \\STXva\CAN\ENQ \SOH(\EOTR\STXva\"\129\SOH\n\
    \$IommuSecPtblMapRangeStartFtraceEvent\DC2\DLE\n\
    \\ETXlen\CAN\SOH \SOH(\EOTR\ETXlen\DC2\DLE\n\
    \\ETXnum\CAN\STX \SOH(\ENQR\ETXnum\DC2\SO\n\
    \\STXpa\CAN\ETX \SOH(\rR\STXpa\DC2\NAK\n\
    \\ACKsec_id\CAN\EOT \SOH(\ENQR\ENQsecId\DC2\SO\n\
    \\STXva\CAN\ENQ \SOH(\EOTR\STXva\"\152\SOH\n\
    \\FSIonAllocBufferEndFtraceEvent\DC2\US\n\
    \\vclient_name\CAN\SOH \SOH(\tR\n\
    \clientName\DC2\DC4\n\
    \\ENQflags\CAN\STX \SOH(\rR\ENQflags\DC2\ESC\n\
    \\theap_name\CAN\ETX \SOH(\tR\bheapName\DC2\DLE\n\
    \\ETXlen\CAN\EOT \SOH(\EOTR\ETXlen\DC2\DC2\n\
    \\EOTmask\CAN\ENQ \SOH(\rR\EOTmask\"\175\SOH\n\
    \\GSIonAllocBufferFailFtraceEvent\DC2\US\n\
    \\vclient_name\CAN\SOH \SOH(\tR\n\
    \clientName\DC2\DC4\n\
    \\ENQerror\CAN\STX \SOH(\ETXR\ENQerror\DC2\DC4\n\
    \\ENQflags\CAN\ETX \SOH(\rR\ENQflags\DC2\ESC\n\
    \\theap_name\CAN\EOT \SOH(\tR\bheapName\DC2\DLE\n\
    \\ETXlen\CAN\ENQ \SOH(\EOTR\ETXlen\DC2\DC2\n\
    \\EOTmask\CAN\ACK \SOH(\rR\EOTmask\"\179\SOH\n\
    \!IonAllocBufferFallbackFtraceEvent\DC2\US\n\
    \\vclient_name\CAN\SOH \SOH(\tR\n\
    \clientName\DC2\DC4\n\
    \\ENQerror\CAN\STX \SOH(\ETXR\ENQerror\DC2\DC4\n\
    \\ENQflags\CAN\ETX \SOH(\rR\ENQflags\DC2\ESC\n\
    \\theap_name\CAN\EOT \SOH(\tR\bheapName\DC2\DLE\n\
    \\ETXlen\CAN\ENQ \SOH(\EOTR\ETXlen\DC2\DC2\n\
    \\EOTmask\CAN\ACK \SOH(\rR\EOTmask\"\154\SOH\n\
    \\RSIonAllocBufferStartFtraceEvent\DC2\US\n\
    \\vclient_name\CAN\SOH \SOH(\tR\n\
    \clientName\DC2\DC4\n\
    \\ENQflags\CAN\STX \SOH(\rR\ENQflags\DC2\ESC\n\
    \\theap_name\CAN\ETX \SOH(\tR\bheapName\DC2\DLE\n\
    \\ETXlen\CAN\EOT \SOH(\EOTR\ETXlen\DC2\DC2\n\
    \\EOTmask\CAN\ENQ \SOH(\rR\EOTmask\"2\n\
    \\SUBIonCpAllocRetryFtraceEvent\DC2\DC4\n\
    \\ENQtries\CAN\SOH \SOH(\ENQR\ENQtries\"|\n\
    \\USIonCpSecureBufferEndFtraceEvent\DC2\DC4\n\
    \\ENQalign\CAN\SOH \SOH(\EOTR\ENQalign\DC2\DC4\n\
    \\ENQflags\CAN\STX \SOH(\EOTR\ENQflags\DC2\ESC\n\
    \\theap_name\CAN\ETX \SOH(\tR\bheapName\DC2\DLE\n\
    \\ETXlen\CAN\EOT \SOH(\EOTR\ETXlen\"~\n\
    \!IonCpSecureBufferStartFtraceEvent\DC2\DC4\n\
    \\ENQalign\CAN\SOH \SOH(\EOTR\ENQalign\DC2\DC4\n\
    \\ENQflags\CAN\STX \SOH(\EOTR\ENQflags\DC2\ESC\n\
    \\theap_name\CAN\ETX \SOH(\tR\bheapName\DC2\DLE\n\
    \\ETXlen\CAN\EOT \SOH(\EOTR\ETXlen\"-\n\
    \\EMIonPrefetchingFtraceEvent\DC2\DLE\n\
    \\ETXlen\CAN\SOH \SOH(\EOTR\ETXlen\"w\n\
    \#IonSecureCmaAddToPoolEndFtraceEvent\DC2\US\n\
    \\vis_prefetch\CAN\SOH \SOH(\rR\n\
    \isPrefetch\DC2\DLE\n\
    \\ETXlen\CAN\STX \SOH(\EOTR\ETXlen\DC2\GS\n\
    \\n\
    \pool_total\CAN\ETX \SOH(\ENQR\tpoolTotal\"y\n\
    \%IonSecureCmaAddToPoolStartFtraceEvent\DC2\US\n\
    \\vis_prefetch\CAN\SOH \SOH(\rR\n\
    \isPrefetch\DC2\DLE\n\
    \\ETXlen\CAN\STX \SOH(\EOTR\ETXlen\DC2\GS\n\
    \\n\
    \pool_total\CAN\ETX \SOH(\ENQR\tpoolTotal\"\DEL\n\
    \\"IonSecureCmaAllocateEndFtraceEvent\DC2\DC4\n\
    \\ENQalign\CAN\SOH \SOH(\EOTR\ENQalign\DC2\DC4\n\
    \\ENQflags\CAN\STX \SOH(\EOTR\ENQflags\DC2\ESC\n\
    \\theap_name\CAN\ETX \SOH(\tR\bheapName\DC2\DLE\n\
    \\ETXlen\CAN\EOT \SOH(\EOTR\ETXlen\"\129\SOH\n\
    \$IonSecureCmaAllocateStartFtraceEvent\DC2\DC4\n\
    \\ENQalign\CAN\SOH \SOH(\EOTR\ENQalign\DC2\DC4\n\
    \\ENQflags\CAN\STX \SOH(\EOTR\ENQflags\DC2\ESC\n\
    \\theap_name\CAN\ETX \SOH(\tR\bheapName\DC2\DLE\n\
    \\ETXlen\CAN\EOT \SOH(\EOTR\ETXlen\"l\n\
    \$IonSecureCmaShrinkPoolEndFtraceEvent\DC2!\n\
    \\fdrained_size\CAN\SOH \SOH(\EOTR\vdrainedSize\DC2!\n\
    \\fskipped_size\CAN\STX \SOH(\EOTR\vskippedSize\"n\n\
    \&IonSecureCmaShrinkPoolStartFtraceEvent\DC2!\n\
    \\fdrained_size\CAN\SOH \SOH(\EOTR\vdrainedSize\DC2!\n\
    \\fskipped_size\CAN\STX \SOH(\EOTR\vskippedSize\"A\n\
    \\DLEKfreeFtraceEvent\DC2\ESC\n\
    \\tcall_site\CAN\SOH \SOH(\EOTR\bcallSite\DC2\DLE\n\
    \\ETXptr\CAN\STX \SOH(\EOTR\ETXptr\"\158\SOH\n\
    \\DC2KmallocFtraceEvent\DC2\US\n\
    \\vbytes_alloc\CAN\SOH \SOH(\EOTR\n\
    \bytesAlloc\DC2\ESC\n\
    \\tbytes_req\CAN\STX \SOH(\EOTR\bbytesReq\DC2\ESC\n\
    \\tcall_site\CAN\ETX \SOH(\EOTR\bcallSite\DC2\ESC\n\
    \\tgfp_flags\CAN\EOT \SOH(\rR\bgfpFlags\DC2\DLE\n\
    \\ETXptr\CAN\ENQ \SOH(\EOTR\ETXptr\"\182\SOH\n\
    \\SYNKmallocNodeFtraceEvent\DC2\US\n\
    \\vbytes_alloc\CAN\SOH \SOH(\EOTR\n\
    \bytesAlloc\DC2\ESC\n\
    \\tbytes_req\CAN\STX \SOH(\EOTR\bbytesReq\DC2\ESC\n\
    \\tcall_site\CAN\ETX \SOH(\EOTR\bcallSite\DC2\ESC\n\
    \\tgfp_flags\CAN\EOT \SOH(\rR\bgfpFlags\DC2\DC2\n\
    \\EOTnode\CAN\ENQ \SOH(\ENQR\EOTnode\DC2\DLE\n\
    \\ETXptr\CAN\ACK \SOH(\EOTR\ETXptr\"\165\SOH\n\
    \\EMKmemCacheAllocFtraceEvent\DC2\US\n\
    \\vbytes_alloc\CAN\SOH \SOH(\EOTR\n\
    \bytesAlloc\DC2\ESC\n\
    \\tbytes_req\CAN\STX \SOH(\EOTR\bbytesReq\DC2\ESC\n\
    \\tcall_site\CAN\ETX \SOH(\EOTR\bcallSite\DC2\ESC\n\
    \\tgfp_flags\CAN\EOT \SOH(\rR\bgfpFlags\DC2\DLE\n\
    \\ETXptr\CAN\ENQ \SOH(\EOTR\ETXptr\"\189\SOH\n\
    \\GSKmemCacheAllocNodeFtraceEvent\DC2\US\n\
    \\vbytes_alloc\CAN\SOH \SOH(\EOTR\n\
    \bytesAlloc\DC2\ESC\n\
    \\tbytes_req\CAN\STX \SOH(\EOTR\bbytesReq\DC2\ESC\n\
    \\tcall_site\CAN\ETX \SOH(\EOTR\bcallSite\DC2\ESC\n\
    \\tgfp_flags\CAN\EOT \SOH(\rR\bgfpFlags\DC2\DC2\n\
    \\EOTnode\CAN\ENQ \SOH(\ENQR\EOTnode\DC2\DLE\n\
    \\ETXptr\CAN\ACK \SOH(\EOTR\ETXptr\"I\n\
    \\CANKmemCacheFreeFtraceEvent\DC2\ESC\n\
    \\tcall_site\CAN\SOH \SOH(\EOTR\bcallSite\DC2\DLE\n\
    \\ETXptr\CAN\STX \SOH(\EOTR\ETXptr\"0\n\
    \\SUBMigratePagesEndFtraceEvent\DC2\DC2\n\
    \\EOTmode\CAN\SOH \SOH(\ENQR\EOTmode\"2\n\
    \\FSMigratePagesStartFtraceEvent\DC2\DC2\n\
    \\EOTmode\CAN\SOH \SOH(\ENQR\EOTmode\"/\n\
    \\ETBMigrateRetryFtraceEvent\DC2\DC4\n\
    \\ENQtries\CAN\SOH \SOH(\ENQR\ENQtries\"\147\SOH\n\
    \\SYNMmPageAllocFtraceEvent\DC2\ESC\n\
    \\tgfp_flags\CAN\SOH \SOH(\rR\bgfpFlags\DC2 \n\
    \\vmigratetype\CAN\STX \SOH(\ENQR\vmigratetype\DC2\DC4\n\
    \\ENQorder\CAN\ETX \SOH(\rR\ENQorder\DC2\DC2\n\
    \\EOTpage\CAN\EOT \SOH(\EOTR\EOTpage\DC2\DLE\n\
    \\ETXpfn\CAN\ENQ \SOH(\EOTR\ETXpfn\"\152\STX\n\
    \\GSMmPageAllocExtfragFtraceEvent\DC2+\n\
    \\DC1alloc_migratetype\CAN\SOH \SOH(\ENQR\DLEallocMigratetype\DC2\US\n\
    \\valloc_order\CAN\STX \SOH(\ENQR\n\
    \allocOrder\DC21\n\
    \\DC4fallback_migratetype\CAN\ETX \SOH(\ENQR\DC3fallbackMigratetype\DC2%\n\
    \\SOfallback_order\CAN\EOT \SOH(\ENQR\rfallbackOrder\DC2\DC2\n\
    \\EOTpage\CAN\ENQ \SOH(\EOTR\EOTpage\DC2)\n\
    \\DLEchange_ownership\CAN\ACK \SOH(\ENQR\SIchangeOwnership\DC2\DLE\n\
    \\ETXpfn\CAN\a \SOH(\EOTR\ETXpfn\"\128\SOH\n\
    \ MmPageAllocZoneLockedFtraceEvent\DC2 \n\
    \\vmigratetype\CAN\SOH \SOH(\ENQR\vmigratetype\DC2\DC4\n\
    \\ENQorder\CAN\STX \SOH(\rR\ENQorder\DC2\DC2\n\
    \\EOTpage\CAN\ETX \SOH(\EOTR\EOTpage\DC2\DLE\n\
    \\ETXpfn\CAN\EOT \SOH(\EOTR\ETXpfn\"S\n\
    \\NAKMmPageFreeFtraceEvent\DC2\DC4\n\
    \\ENQorder\CAN\SOH \SOH(\rR\ENQorder\DC2\DC2\n\
    \\EOTpage\CAN\STX \SOH(\EOTR\EOTpage\DC2\DLE\n\
    \\ETXpfn\CAN\ETX \SOH(\EOTR\ETXpfn\"X\n\
    \\FSMmPageFreeBatchedFtraceEvent\DC2\DC2\n\
    \\EOTcold\CAN\SOH \SOH(\ENQR\EOTcold\DC2\DC2\n\
    \\EOTpage\CAN\STX \SOH(\EOTR\EOTpage\DC2\DLE\n\
    \\ETXpfn\CAN\ETX \SOH(\EOTR\ETXpfn\"z\n\
    \\SUBMmPagePcpuDrainFtraceEvent\DC2 \n\
    \\vmigratetype\CAN\SOH \SOH(\ENQR\vmigratetype\DC2\DC4\n\
    \\ENQorder\CAN\STX \SOH(\rR\ENQorder\DC2\DC2\n\
    \\EOTpage\CAN\ETX \SOH(\EOTR\EOTpage\DC2\DLE\n\
    \\ETXpfn\CAN\EOT \SOH(\EOTR\ETXpfn\"i\n\
    \\DC2RssStatFtraceEvent\DC2\SYN\n\
    \\ACKmember\CAN\SOH \SOH(\ENQR\ACKmember\DC2\DC2\n\
    \\EOTsize\CAN\STX \SOH(\ETXR\EOTsize\DC2\DC2\n\
    \\EOTcurr\CAN\ETX \SOH(\rR\EOTcurr\DC2\DC3\n\
    \\ENQmm_id\CAN\EOT \SOH(\rR\EOTmmId\"r\n\
    \\CANIonHeapShrinkFtraceEvent\DC2\ESC\n\
    \\theap_name\CAN\SOH \SOH(\tR\bheapName\DC2\DLE\n\
    \\ETXlen\CAN\STX \SOH(\EOTR\ETXlen\DC2'\n\
    \\SItotal_allocated\CAN\ETX \SOH(\ETXR\SOtotalAllocated\"p\n\
    \\SYNIonHeapGrowFtraceEvent\DC2\ESC\n\
    \\theap_name\CAN\SOH \SOH(\tR\bheapName\DC2\DLE\n\
    \\ETXlen\CAN\STX \SOH(\EOTR\ETXlen\DC2'\n\
    \\SItotal_allocated\CAN\ETX \SOH(\ETXR\SOtotalAllocated\"B\n\
    \\SUBIonBufferCreateFtraceEvent\DC2\DC2\n\
    \\EOTaddr\CAN\SOH \SOH(\EOTR\EOTaddr\DC2\DLE\n\
    \\ETXlen\CAN\STX \SOH(\EOTR\ETXlen\"C\n\
    \\ESCIonBufferDestroyFtraceEvent\DC2\DC2\n\
    \\EOTaddr\CAN\SOH \SOH(\EOTR\EOTaddr\DC2\DLE\n\
    \\ETXlen\CAN\STX \SOH(\EOTR\ETXlenJ\146[\n\
    \\a\DC2\ENQ\EOT\NUL\240\SOH\SOH\n\
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
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b%\n\
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
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\v\NUL\SO\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\v\b&\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\f\STX \n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\f\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\f\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\f\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\f\RS\US\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\r\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX\r\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\r\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\r\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\r\SUB\ESC\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT\SI\NUL\DC2\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\SI\b'\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\DLE\STX \n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETX\DLE\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX\DLE\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\DLE\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\DLE\RS\US\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX\DC1\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETX\DC1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX\DC1\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX\DC1\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX\DC1\SUB\ESC\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOT\DC3\NUL\SYN\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX\DC3\b#\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX\DC4\STX \n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETX\DC4\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX\DC4\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX\DC4\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX\DC4\RS\US\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX\NAK\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\EOT\DC2\ETX\NAK\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETX\NAK\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX\NAK\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX\NAK\SUB\ESC\n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOT\ETB\NUL\SUB\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX\ETB\b$\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX\CAN\STX \n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\EOT\DC2\ETX\CAN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX\CAN\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX\CAN\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX\CAN\RS\US\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETX\EM\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\EOT\DC2\ETX\EM\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETX\EM\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETX\EM\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETX\EM\SUB\ESC\n\
    \\n\
    \\n\
    \\STX\EOT\ENQ\DC2\EOT\ESC\NUL\RS\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX\ESC\b%\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETX\FS\STX \n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\ETX\FS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETX\FS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX\FS\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX\FS\RS\US\n\
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
    \\STX\EOT\ACK\DC2\EOT\US\NUL!\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETX\US\b*\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETX \STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\EOT\DC2\ETX \STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETX \v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETX \DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETX \EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\a\DC2\EOT\"\NUL'\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETX\"\b \n\
    \\v\n\
    \\EOT\EOT\a\STX\NUL\DC2\ETX#\STX!\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\EOT\DC2\ETX#\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ENQ\DC2\ETX#\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\ETX#\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\ETX#\US \n\
    \\v\n\
    \\EOT\EOT\a\STX\SOH\DC2\ETX$\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\EOT\DC2\ETX$\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ENQ\DC2\ETX$\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\ETX$\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\ETX$\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\a\STX\STX\DC2\ETX%\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\EOT\DC2\ETX%\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\ENQ\DC2\ETX%\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\SOH\DC2\ETX%\DC2\DC4\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\ETX\DC2\ETX%\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\a\STX\ETX\DC2\ETX&\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ETX\EOT\DC2\ETX&\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ETX\ENQ\DC2\ETX&\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ETX\SOH\DC2\ETX&\DC2\DC4\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ETX\ETX\DC2\ETX&\ETB\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\b\DC2\EOT(\NUL.\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\b\SOH\DC2\ETX(\b*\n\
    \\v\n\
    \\EOT\EOT\b\STX\NUL\DC2\ETX)\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\EOT\DC2\ETX)\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\ETX)\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\ETX)\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\ETX)\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\b\STX\SOH\DC2\ETX*\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\EOT\DC2\ETX*\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ENQ\DC2\ETX*\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\ETX*\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\ETX*\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\b\STX\STX\DC2\ETX+\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\EOT\DC2\ETX+\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\ENQ\DC2\ETX+\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\SOH\DC2\ETX+\DC2\DC4\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\ETX\DC2\ETX+\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\b\STX\ETX\DC2\ETX,\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ETX\EOT\DC2\ETX,\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ETX\ENQ\DC2\ETX,\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ETX\SOH\DC2\ETX,\DC1\ETB\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ETX\ETX\DC2\ETX,\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\b\STX\EOT\DC2\ETX-\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\b\STX\EOT\EOT\DC2\ETX-\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\EOT\ENQ\DC2\ETX-\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\EOT\SOH\DC2\ETX-\DC2\DC4\n\
    \\f\n\
    \\ENQ\EOT\b\STX\EOT\ETX\DC2\ETX-\ETB\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\t\DC2\EOT/\NUL5\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\t\SOH\DC2\ETX/\b,\n\
    \\v\n\
    \\EOT\EOT\t\STX\NUL\DC2\ETX0\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\EOT\DC2\ETX0\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ENQ\DC2\ETX0\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\ETX0\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\ETX0\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\t\STX\SOH\DC2\ETX1\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\EOT\DC2\ETX1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\ENQ\DC2\ETX1\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\SOH\DC2\ETX1\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\ETX\DC2\ETX1\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\t\STX\STX\DC2\ETX2\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\t\STX\STX\EOT\DC2\ETX2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\STX\ENQ\DC2\ETX2\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\t\STX\STX\SOH\DC2\ETX2\DC2\DC4\n\
    \\f\n\
    \\ENQ\EOT\t\STX\STX\ETX\DC2\ETX2\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\t\STX\ETX\DC2\ETX3\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\t\STX\ETX\EOT\DC2\ETX3\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\ETX\ENQ\DC2\ETX3\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\t\STX\ETX\SOH\DC2\ETX3\DC1\ETB\n\
    \\f\n\
    \\ENQ\EOT\t\STX\ETX\ETX\DC2\ETX3\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\t\STX\EOT\DC2\ETX4\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\t\STX\EOT\EOT\DC2\ETX4\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\EOT\ENQ\DC2\ETX4\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\t\STX\EOT\SOH\DC2\ETX4\DC2\DC4\n\
    \\f\n\
    \\ENQ\EOT\t\STX\EOT\ETX\DC2\ETX4\ETB\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\n\
    \\DC2\EOT6\NUL<\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\n\
    \\SOH\DC2\ETX6\b$\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\ETX7\STX\"\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\EOT\DC2\ETX7\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ENQ\DC2\ETX7\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\ETX7\DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\ETX7 !\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\SOH\DC2\ETX8\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\EOT\DC2\ETX8\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ENQ\DC2\ETX8\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\SOH\DC2\ETX8\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ETX\DC2\ETX8\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\STX\DC2\ETX9\STX \n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\STX\EOT\DC2\ETX9\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\STX\ENQ\DC2\ETX9\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\STX\SOH\DC2\ETX9\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\STX\ETX\DC2\ETX9\RS\US\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\ETX\DC2\ETX:\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ETX\EOT\DC2\ETX:\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ETX\ENQ\DC2\ETX:\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ETX\SOH\DC2\ETX:\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ETX\ETX\DC2\ETX:\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\EOT\DC2\ETX;\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\EOT\EOT\DC2\ETX;\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\EOT\ENQ\DC2\ETX;\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\EOT\SOH\DC2\ETX;\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\EOT\ETX\DC2\ETX;\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\v\DC2\EOT=\NULD\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\v\SOH\DC2\ETX=\b%\n\
    \\v\n\
    \\EOT\EOT\v\STX\NUL\DC2\ETX>\STX\"\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\EOT\DC2\ETX>\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\ENQ\DC2\ETX>\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\ETX>\DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\ETX> !\n\
    \\v\n\
    \\EOT\EOT\v\STX\SOH\DC2\ETX?\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\EOT\DC2\ETX?\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\ENQ\DC2\ETX?\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\SOH\DC2\ETX?\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\ETX\DC2\ETX?\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\v\STX\STX\DC2\ETX@\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\v\STX\STX\EOT\DC2\ETX@\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\STX\ENQ\DC2\ETX@\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\v\STX\STX\SOH\DC2\ETX@\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\v\STX\STX\ETX\DC2\ETX@\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\v\STX\ETX\DC2\ETXA\STX \n\
    \\f\n\
    \\ENQ\EOT\v\STX\ETX\EOT\DC2\ETXA\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\ETX\ENQ\DC2\ETXA\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\v\STX\ETX\SOH\DC2\ETXA\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\v\STX\ETX\ETX\DC2\ETXA\RS\US\n\
    \\v\n\
    \\EOT\EOT\v\STX\EOT\DC2\ETXB\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\v\STX\EOT\EOT\DC2\ETXB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\EOT\ENQ\DC2\ETXB\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\v\STX\EOT\SOH\DC2\ETXB\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\v\STX\EOT\ETX\DC2\ETXB\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\v\STX\ENQ\DC2\ETXC\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\v\STX\ENQ\EOT\DC2\ETXC\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\ENQ\ENQ\DC2\ETXC\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\v\STX\ENQ\SOH\DC2\ETXC\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\v\STX\ENQ\ETX\DC2\ETXC\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\f\DC2\EOTE\NULL\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\f\SOH\DC2\ETXE\b)\n\
    \\v\n\
    \\EOT\EOT\f\STX\NUL\DC2\ETXF\STX\"\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\EOT\DC2\ETXF\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\ENQ\DC2\ETXF\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\ETXF\DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\ETXF !\n\
    \\v\n\
    \\EOT\EOT\f\STX\SOH\DC2\ETXG\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\f\STX\SOH\EOT\DC2\ETXG\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\SOH\ENQ\DC2\ETXG\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\f\STX\SOH\SOH\DC2\ETXG\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\f\STX\SOH\ETX\DC2\ETXG\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\f\STX\STX\DC2\ETXH\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\f\STX\STX\EOT\DC2\ETXH\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\STX\ENQ\DC2\ETXH\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\f\STX\STX\SOH\DC2\ETXH\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\f\STX\STX\ETX\DC2\ETXH\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\f\STX\ETX\DC2\ETXI\STX \n\
    \\f\n\
    \\ENQ\EOT\f\STX\ETX\EOT\DC2\ETXI\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ETX\ENQ\DC2\ETXI\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ETX\SOH\DC2\ETXI\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ETX\ETX\DC2\ETXI\RS\US\n\
    \\v\n\
    \\EOT\EOT\f\STX\EOT\DC2\ETXJ\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\f\STX\EOT\EOT\DC2\ETXJ\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\EOT\ENQ\DC2\ETXJ\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\f\STX\EOT\SOH\DC2\ETXJ\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\f\STX\EOT\ETX\DC2\ETXJ\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\f\STX\ENQ\DC2\ETXK\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ENQ\EOT\DC2\ETXK\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ENQ\ENQ\DC2\ETXK\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ENQ\SOH\DC2\ETXK\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ENQ\ETX\DC2\ETXK\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\r\DC2\EOTM\NULS\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\r\SOH\DC2\ETXM\b&\n\
    \\v\n\
    \\EOT\EOT\r\STX\NUL\DC2\ETXN\STX\"\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\EOT\DC2\ETXN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\ENQ\DC2\ETXN\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\SOH\DC2\ETXN\DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\ETX\DC2\ETXN !\n\
    \\v\n\
    \\EOT\EOT\r\STX\SOH\DC2\ETXO\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\r\STX\SOH\EOT\DC2\ETXO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\SOH\ENQ\DC2\ETXO\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\r\STX\SOH\SOH\DC2\ETXO\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\r\STX\SOH\ETX\DC2\ETXO\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\r\STX\STX\DC2\ETXP\STX \n\
    \\f\n\
    \\ENQ\EOT\r\STX\STX\EOT\DC2\ETXP\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\STX\ENQ\DC2\ETXP\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\r\STX\STX\SOH\DC2\ETXP\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\r\STX\STX\ETX\DC2\ETXP\RS\US\n\
    \\v\n\
    \\EOT\EOT\r\STX\ETX\DC2\ETXQ\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ETX\EOT\DC2\ETXQ\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ETX\ENQ\DC2\ETXQ\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ETX\SOH\DC2\ETXQ\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ETX\ETX\DC2\ETXQ\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\r\STX\EOT\DC2\ETXR\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\r\STX\EOT\EOT\DC2\ETXR\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\EOT\ENQ\DC2\ETXR\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\r\STX\EOT\SOH\DC2\ETXR\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\r\STX\EOT\ETX\DC2\ETXR\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\SO\DC2\EOTT\NULV\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SO\SOH\DC2\ETXT\b\"\n\
    \\v\n\
    \\EOT\EOT\SO\STX\NUL\DC2\ETXU\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\NUL\EOT\DC2\ETXU\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\NUL\ENQ\DC2\ETXU\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\NUL\SOH\DC2\ETXU\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\NUL\ETX\DC2\ETXU\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\SI\DC2\EOTW\NUL\\\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SI\SOH\DC2\ETXW\b'\n\
    \\v\n\
    \\EOT\EOT\SI\STX\NUL\DC2\ETXX\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\NUL\EOT\DC2\ETXX\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\NUL\ENQ\DC2\ETXX\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\NUL\SOH\DC2\ETXX\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\NUL\ETX\DC2\ETXX\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\SI\STX\SOH\DC2\ETXY\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\SOH\EOT\DC2\ETXY\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\SOH\ENQ\DC2\ETXY\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\SOH\SOH\DC2\ETXY\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\SOH\ETX\DC2\ETXY\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\SI\STX\STX\DC2\ETXZ\STX \n\
    \\f\n\
    \\ENQ\EOT\SI\STX\STX\EOT\DC2\ETXZ\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\STX\ENQ\DC2\ETXZ\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\STX\SOH\DC2\ETXZ\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\STX\ETX\DC2\ETXZ\RS\US\n\
    \\v\n\
    \\EOT\EOT\SI\STX\ETX\DC2\ETX[\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\ETX\EOT\DC2\ETX[\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\ETX\ENQ\DC2\ETX[\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\ETX\SOH\DC2\ETX[\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\ETX\ETX\DC2\ETX[\CAN\EM\n\
    \\n\
    \\n\
    \\STX\EOT\DLE\DC2\EOT]\NULb\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\DLE\SOH\DC2\ETX]\b)\n\
    \\v\n\
    \\EOT\EOT\DLE\STX\NUL\DC2\ETX^\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\NUL\EOT\DC2\ETX^\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\NUL\ENQ\DC2\ETX^\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\NUL\SOH\DC2\ETX^\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\NUL\ETX\DC2\ETX^\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\DLE\STX\SOH\DC2\ETX_\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\SOH\EOT\DC2\ETX_\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\SOH\ENQ\DC2\ETX_\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\SOH\SOH\DC2\ETX_\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\SOH\ETX\DC2\ETX_\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\DLE\STX\STX\DC2\ETX`\STX \n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\STX\EOT\DC2\ETX`\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\STX\ENQ\DC2\ETX`\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\STX\SOH\DC2\ETX`\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\STX\ETX\DC2\ETX`\RS\US\n\
    \\v\n\
    \\EOT\EOT\DLE\STX\ETX\DC2\ETXa\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\ETX\EOT\DC2\ETXa\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\ETX\ENQ\DC2\ETXa\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\ETX\SOH\DC2\ETXa\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\ETX\ETX\DC2\ETXa\CAN\EM\n\
    \\n\
    \\n\
    \\STX\EOT\DC1\DC2\EOTc\NULe\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\DC1\SOH\DC2\ETXc\b!\n\
    \\v\n\
    \\EOT\EOT\DC1\STX\NUL\DC2\ETXd\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\DC1\STX\NUL\EOT\DC2\ETXd\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\DC1\STX\NUL\ENQ\DC2\ETXd\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\DC1\STX\NUL\SOH\DC2\ETXd\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\DC1\STX\NUL\ETX\DC2\ETXd\CAN\EM\n\
    \\n\
    \\n\
    \\STX\EOT\DC2\DC2\EOTf\NULj\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\DC2\SOH\DC2\ETXf\b+\n\
    \\v\n\
    \\EOT\EOT\DC2\STX\NUL\DC2\ETXg\STX\"\n\
    \\f\n\
    \\ENQ\EOT\DC2\STX\NUL\EOT\DC2\ETXg\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\DC2\STX\NUL\ENQ\DC2\ETXg\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\DC2\STX\NUL\SOH\DC2\ETXg\DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\DC2\STX\NUL\ETX\DC2\ETXg !\n\
    \\v\n\
    \\EOT\EOT\DC2\STX\SOH\DC2\ETXh\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\DC2\STX\SOH\EOT\DC2\ETXh\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\DC2\STX\SOH\ENQ\DC2\ETXh\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\DC2\STX\SOH\SOH\DC2\ETXh\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\DC2\STX\SOH\ETX\DC2\ETXh\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\DC2\STX\STX\DC2\ETXi\STX \n\
    \\f\n\
    \\ENQ\EOT\DC2\STX\STX\EOT\DC2\ETXi\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\DC2\STX\STX\ENQ\DC2\ETXi\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\DC2\STX\STX\SOH\DC2\ETXi\DC1\ESC\n\
    \\f\n\
    \\ENQ\EOT\DC2\STX\STX\ETX\DC2\ETXi\RS\US\n\
    \\n\
    \\n\
    \\STX\EOT\DC3\DC2\EOTk\NULo\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\DC3\SOH\DC2\ETXk\b-\n\
    \\v\n\
    \\EOT\EOT\DC3\STX\NUL\DC2\ETXl\STX\"\n\
    \\f\n\
    \\ENQ\EOT\DC3\STX\NUL\EOT\DC2\ETXl\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\DC3\STX\NUL\ENQ\DC2\ETXl\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\DC3\STX\NUL\SOH\DC2\ETXl\DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\DC3\STX\NUL\ETX\DC2\ETXl !\n\
    \\v\n\
    \\EOT\EOT\DC3\STX\SOH\DC2\ETXm\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\DC3\STX\SOH\EOT\DC2\ETXm\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\DC3\STX\SOH\ENQ\DC2\ETXm\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\DC3\STX\SOH\SOH\DC2\ETXm\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\DC3\STX\SOH\ETX\DC2\ETXm\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\DC3\STX\STX\DC2\ETXn\STX \n\
    \\f\n\
    \\ENQ\EOT\DC3\STX\STX\EOT\DC2\ETXn\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\DC3\STX\STX\ENQ\DC2\ETXn\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\DC3\STX\STX\SOH\DC2\ETXn\DC1\ESC\n\
    \\f\n\
    \\ENQ\EOT\DC3\STX\STX\ETX\DC2\ETXn\RS\US\n\
    \\n\
    \\n\
    \\STX\EOT\DC4\DC2\EOTp\NULu\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\DC4\SOH\DC2\ETXp\b*\n\
    \\v\n\
    \\EOT\EOT\DC4\STX\NUL\DC2\ETXq\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\DC4\STX\NUL\EOT\DC2\ETXq\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\DC4\STX\NUL\ENQ\DC2\ETXq\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\DC4\STX\NUL\SOH\DC2\ETXq\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\DC4\STX\NUL\ETX\DC2\ETXq\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\DC4\STX\SOH\DC2\ETXr\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\DC4\STX\SOH\EOT\DC2\ETXr\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\DC4\STX\SOH\ENQ\DC2\ETXr\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\DC4\STX\SOH\SOH\DC2\ETXr\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\DC4\STX\SOH\ETX\DC2\ETXr\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\DC4\STX\STX\DC2\ETXs\STX \n\
    \\f\n\
    \\ENQ\EOT\DC4\STX\STX\EOT\DC2\ETXs\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\DC4\STX\STX\ENQ\DC2\ETXs\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\DC4\STX\STX\SOH\DC2\ETXs\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\DC4\STX\STX\ETX\DC2\ETXs\RS\US\n\
    \\v\n\
    \\EOT\EOT\DC4\STX\ETX\DC2\ETXt\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\DC4\STX\ETX\EOT\DC2\ETXt\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\DC4\STX\ETX\ENQ\DC2\ETXt\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\DC4\STX\ETX\SOH\DC2\ETXt\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\DC4\STX\ETX\ETX\DC2\ETXt\CAN\EM\n\
    \\n\
    \\n\
    \\STX\EOT\NAK\DC2\EOTv\NUL{\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NAK\SOH\DC2\ETXv\b,\n\
    \\v\n\
    \\EOT\EOT\NAK\STX\NUL\DC2\ETXw\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\NAK\STX\NUL\EOT\DC2\ETXw\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NAK\STX\NUL\ENQ\DC2\ETXw\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NAK\STX\NUL\SOH\DC2\ETXw\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\NAK\STX\NUL\ETX\DC2\ETXw\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\NAK\STX\SOH\DC2\ETXx\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\NAK\STX\SOH\EOT\DC2\ETXx\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NAK\STX\SOH\ENQ\DC2\ETXx\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NAK\STX\SOH\SOH\DC2\ETXx\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\NAK\STX\SOH\ETX\DC2\ETXx\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\NAK\STX\STX\DC2\ETXy\STX \n\
    \\f\n\
    \\ENQ\EOT\NAK\STX\STX\EOT\DC2\ETXy\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NAK\STX\STX\ENQ\DC2\ETXy\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NAK\STX\STX\SOH\DC2\ETXy\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\NAK\STX\STX\ETX\DC2\ETXy\RS\US\n\
    \\v\n\
    \\EOT\EOT\NAK\STX\ETX\DC2\ETXz\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NAK\STX\ETX\EOT\DC2\ETXz\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NAK\STX\ETX\ENQ\DC2\ETXz\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NAK\STX\ETX\SOH\DC2\ETXz\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\NAK\STX\ETX\ETX\DC2\ETXz\CAN\EM\n\
    \\n\
    \\n\
    \\STX\EOT\SYN\DC2\EOT|\NUL\DEL\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SYN\SOH\DC2\ETX|\b,\n\
    \\v\n\
    \\EOT\EOT\SYN\STX\NUL\DC2\ETX}\STX#\n\
    \\f\n\
    \\ENQ\EOT\SYN\STX\NUL\EOT\DC2\ETX}\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SYN\STX\NUL\ENQ\DC2\ETX}\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SYN\STX\NUL\SOH\DC2\ETX}\DC2\RS\n\
    \\f\n\
    \\ENQ\EOT\SYN\STX\NUL\ETX\DC2\ETX}!\"\n\
    \\v\n\
    \\EOT\EOT\SYN\STX\SOH\DC2\ETX~\STX#\n\
    \\f\n\
    \\ENQ\EOT\SYN\STX\SOH\EOT\DC2\ETX~\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SYN\STX\SOH\ENQ\DC2\ETX~\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SYN\STX\SOH\SOH\DC2\ETX~\DC2\RS\n\
    \\f\n\
    \\ENQ\EOT\SYN\STX\SOH\ETX\DC2\ETX~!\"\n\
    \\f\n\
    \\STX\EOT\ETB\DC2\ACK\128\SOH\NUL\131\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\ETB\SOH\DC2\EOT\128\SOH\b.\n\
    \\f\n\
    \\EOT\EOT\ETB\STX\NUL\DC2\EOT\129\SOH\STX#\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\NUL\EOT\DC2\EOT\129\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\NUL\ENQ\DC2\EOT\129\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\NUL\SOH\DC2\EOT\129\SOH\DC2\RS\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\NUL\ETX\DC2\EOT\129\SOH!\"\n\
    \\f\n\
    \\EOT\EOT\ETB\STX\SOH\DC2\EOT\130\SOH\STX#\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\SOH\EOT\DC2\EOT\130\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\SOH\ENQ\DC2\EOT\130\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\SOH\SOH\DC2\EOT\130\SOH\DC2\RS\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\SOH\ETX\DC2\EOT\130\SOH!\"\n\
    \\f\n\
    \\STX\EOT\CAN\DC2\ACK\132\SOH\NUL\135\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\CAN\SOH\DC2\EOT\132\SOH\b\CAN\n\
    \\f\n\
    \\EOT\EOT\CAN\STX\NUL\DC2\EOT\133\SOH\STX \n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\NUL\EOT\DC2\EOT\133\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\NUL\ENQ\DC2\EOT\133\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\NUL\SOH\DC2\EOT\133\SOH\DC2\ESC\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\NUL\ETX\DC2\EOT\133\SOH\RS\US\n\
    \\f\n\
    \\EOT\EOT\CAN\STX\SOH\DC2\EOT\134\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\SOH\EOT\DC2\EOT\134\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\SOH\ENQ\DC2\EOT\134\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\SOH\SOH\DC2\EOT\134\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\SOH\ETX\DC2\EOT\134\SOH\CAN\EM\n\
    \\f\n\
    \\STX\EOT\EM\DC2\ACK\136\SOH\NUL\142\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\EM\SOH\DC2\EOT\136\SOH\b\SUB\n\
    \\f\n\
    \\EOT\EOT\EM\STX\NUL\DC2\EOT\137\SOH\STX\"\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\NUL\EOT\DC2\EOT\137\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\NUL\ENQ\DC2\EOT\137\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\NUL\SOH\DC2\EOT\137\SOH\DC2\GS\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\NUL\ETX\DC2\EOT\137\SOH !\n\
    \\f\n\
    \\EOT\EOT\EM\STX\SOH\DC2\EOT\138\SOH\STX \n\
    \\r\n\
    \\ENQ\EOT\EM\STX\SOH\EOT\DC2\EOT\138\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\SOH\ENQ\DC2\EOT\138\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\SOH\SOH\DC2\EOT\138\SOH\DC2\ESC\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\SOH\ETX\DC2\EOT\138\SOH\RS\US\n\
    \\f\n\
    \\EOT\EOT\EM\STX\STX\DC2\EOT\139\SOH\STX \n\
    \\r\n\
    \\ENQ\EOT\EM\STX\STX\EOT\DC2\EOT\139\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\STX\ENQ\DC2\EOT\139\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\STX\SOH\DC2\EOT\139\SOH\DC2\ESC\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\STX\ETX\DC2\EOT\139\SOH\RS\US\n\
    \\f\n\
    \\EOT\EOT\EM\STX\ETX\DC2\EOT\140\SOH\STX \n\
    \\r\n\
    \\ENQ\EOT\EM\STX\ETX\EOT\DC2\EOT\140\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\ETX\ENQ\DC2\EOT\140\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\ETX\SOH\DC2\EOT\140\SOH\DC2\ESC\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\ETX\ETX\DC2\EOT\140\SOH\RS\US\n\
    \\f\n\
    \\EOT\EOT\EM\STX\EOT\DC2\EOT\141\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\EOT\EOT\DC2\EOT\141\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\EOT\ENQ\DC2\EOT\141\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\EOT\SOH\DC2\EOT\141\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\EOT\ETX\DC2\EOT\141\SOH\CAN\EM\n\
    \\f\n\
    \\STX\EOT\SUB\DC2\ACK\143\SOH\NUL\150\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\SUB\SOH\DC2\EOT\143\SOH\b\RS\n\
    \\f\n\
    \\EOT\EOT\SUB\STX\NUL\DC2\EOT\144\SOH\STX\"\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\NUL\EOT\DC2\EOT\144\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\NUL\ENQ\DC2\EOT\144\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\NUL\SOH\DC2\EOT\144\SOH\DC2\GS\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\NUL\ETX\DC2\EOT\144\SOH !\n\
    \\f\n\
    \\EOT\EOT\SUB\STX\SOH\DC2\EOT\145\SOH\STX \n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\SOH\EOT\DC2\EOT\145\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\SOH\ENQ\DC2\EOT\145\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\SOH\SOH\DC2\EOT\145\SOH\DC2\ESC\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\SOH\ETX\DC2\EOT\145\SOH\RS\US\n\
    \\f\n\
    \\EOT\EOT\SUB\STX\STX\DC2\EOT\146\SOH\STX \n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\STX\EOT\DC2\EOT\146\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\STX\ENQ\DC2\EOT\146\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\STX\SOH\DC2\EOT\146\SOH\DC2\ESC\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\STX\ETX\DC2\EOT\146\SOH\RS\US\n\
    \\f\n\
    \\EOT\EOT\SUB\STX\ETX\DC2\EOT\147\SOH\STX \n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\ETX\EOT\DC2\EOT\147\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\ETX\ENQ\DC2\EOT\147\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\ETX\SOH\DC2\EOT\147\SOH\DC2\ESC\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\ETX\ETX\DC2\EOT\147\SOH\RS\US\n\
    \\f\n\
    \\EOT\EOT\SUB\STX\EOT\DC2\EOT\148\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\EOT\EOT\DC2\EOT\148\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\EOT\ENQ\DC2\EOT\148\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\EOT\SOH\DC2\EOT\148\SOH\DC1\NAK\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\EOT\ETX\DC2\EOT\148\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\SUB\STX\ENQ\DC2\EOT\149\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\ENQ\EOT\DC2\EOT\149\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\ENQ\ENQ\DC2\EOT\149\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\ENQ\SOH\DC2\EOT\149\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\ENQ\ETX\DC2\EOT\149\SOH\CAN\EM\n\
    \\f\n\
    \\STX\EOT\ESC\DC2\ACK\151\SOH\NUL\157\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\ESC\SOH\DC2\EOT\151\SOH\b!\n\
    \\f\n\
    \\EOT\EOT\ESC\STX\NUL\DC2\EOT\152\SOH\STX\"\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\NUL\EOT\DC2\EOT\152\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\NUL\ENQ\DC2\EOT\152\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\NUL\SOH\DC2\EOT\152\SOH\DC2\GS\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\NUL\ETX\DC2\EOT\152\SOH !\n\
    \\f\n\
    \\EOT\EOT\ESC\STX\SOH\DC2\EOT\153\SOH\STX \n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\SOH\EOT\DC2\EOT\153\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\SOH\ENQ\DC2\EOT\153\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\SOH\SOH\DC2\EOT\153\SOH\DC2\ESC\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\SOH\ETX\DC2\EOT\153\SOH\RS\US\n\
    \\f\n\
    \\EOT\EOT\ESC\STX\STX\DC2\EOT\154\SOH\STX \n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\STX\EOT\DC2\EOT\154\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\STX\ENQ\DC2\EOT\154\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\STX\SOH\DC2\EOT\154\SOH\DC2\ESC\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\STX\ETX\DC2\EOT\154\SOH\RS\US\n\
    \\f\n\
    \\EOT\EOT\ESC\STX\ETX\DC2\EOT\155\SOH\STX \n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\ETX\EOT\DC2\EOT\155\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\ETX\ENQ\DC2\EOT\155\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\ETX\SOH\DC2\EOT\155\SOH\DC2\ESC\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\ETX\ETX\DC2\EOT\155\SOH\RS\US\n\
    \\f\n\
    \\EOT\EOT\ESC\STX\EOT\DC2\EOT\156\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\EOT\EOT\DC2\EOT\156\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\EOT\ENQ\DC2\EOT\156\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\EOT\SOH\DC2\EOT\156\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\EOT\ETX\DC2\EOT\156\SOH\CAN\EM\n\
    \\f\n\
    \\STX\EOT\FS\DC2\ACK\158\SOH\NUL\165\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\FS\SOH\DC2\EOT\158\SOH\b%\n\
    \\f\n\
    \\EOT\EOT\FS\STX\NUL\DC2\EOT\159\SOH\STX\"\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\NUL\EOT\DC2\EOT\159\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\NUL\ENQ\DC2\EOT\159\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\NUL\SOH\DC2\EOT\159\SOH\DC2\GS\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\NUL\ETX\DC2\EOT\159\SOH !\n\
    \\f\n\
    \\EOT\EOT\FS\STX\SOH\DC2\EOT\160\SOH\STX \n\
    \\r\n\
    \\ENQ\EOT\FS\STX\SOH\EOT\DC2\EOT\160\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\SOH\ENQ\DC2\EOT\160\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\SOH\SOH\DC2\EOT\160\SOH\DC2\ESC\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\SOH\ETX\DC2\EOT\160\SOH\RS\US\n\
    \\f\n\
    \\EOT\EOT\FS\STX\STX\DC2\EOT\161\SOH\STX \n\
    \\r\n\
    \\ENQ\EOT\FS\STX\STX\EOT\DC2\EOT\161\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\STX\ENQ\DC2\EOT\161\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\STX\SOH\DC2\EOT\161\SOH\DC2\ESC\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\STX\ETX\DC2\EOT\161\SOH\RS\US\n\
    \\f\n\
    \\EOT\EOT\FS\STX\ETX\DC2\EOT\162\SOH\STX \n\
    \\r\n\
    \\ENQ\EOT\FS\STX\ETX\EOT\DC2\EOT\162\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\ETX\ENQ\DC2\EOT\162\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\ETX\SOH\DC2\EOT\162\SOH\DC2\ESC\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\ETX\ETX\DC2\EOT\162\SOH\RS\US\n\
    \\f\n\
    \\EOT\EOT\FS\STX\EOT\DC2\EOT\163\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\EOT\EOT\DC2\EOT\163\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\EOT\ENQ\DC2\EOT\163\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\EOT\SOH\DC2\EOT\163\SOH\DC1\NAK\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\EOT\ETX\DC2\EOT\163\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\FS\STX\ENQ\DC2\EOT\164\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\ENQ\EOT\DC2\EOT\164\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\ENQ\ENQ\DC2\EOT\164\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\ENQ\SOH\DC2\EOT\164\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\ENQ\ETX\DC2\EOT\164\SOH\CAN\EM\n\
    \\f\n\
    \\STX\EOT\GS\DC2\ACK\166\SOH\NUL\169\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\GS\SOH\DC2\EOT\166\SOH\b \n\
    \\f\n\
    \\EOT\EOT\GS\STX\NUL\DC2\EOT\167\SOH\STX \n\
    \\r\n\
    \\ENQ\EOT\GS\STX\NUL\EOT\DC2\EOT\167\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\NUL\ENQ\DC2\EOT\167\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\NUL\SOH\DC2\EOT\167\SOH\DC2\ESC\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\NUL\ETX\DC2\EOT\167\SOH\RS\US\n\
    \\f\n\
    \\EOT\EOT\GS\STX\SOH\DC2\EOT\168\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\SOH\EOT\DC2\EOT\168\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\SOH\ENQ\DC2\EOT\168\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\SOH\SOH\DC2\EOT\168\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\SOH\ETX\DC2\EOT\168\SOH\CAN\EM\n\
    \\f\n\
    \\STX\EOT\RS\DC2\ACK\170\SOH\NUL\172\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\RS\SOH\DC2\EOT\170\SOH\b\"\n\
    \\f\n\
    \\EOT\EOT\RS\STX\NUL\DC2\EOT\171\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\NUL\EOT\DC2\EOT\171\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\NUL\ENQ\DC2\EOT\171\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\NUL\SOH\DC2\EOT\171\SOH\DC1\NAK\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\NUL\ETX\DC2\EOT\171\SOH\CAN\EM\n\
    \\f\n\
    \\STX\EOT\US\DC2\ACK\173\SOH\NUL\175\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\US\SOH\DC2\EOT\173\SOH\b$\n\
    \\f\n\
    \\EOT\EOT\US\STX\NUL\DC2\EOT\174\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\US\STX\NUL\EOT\DC2\EOT\174\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\US\STX\NUL\ENQ\DC2\EOT\174\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\US\STX\NUL\SOH\DC2\EOT\174\SOH\DC1\NAK\n\
    \\r\n\
    \\ENQ\EOT\US\STX\NUL\ETX\DC2\EOT\174\SOH\CAN\EM\n\
    \\f\n\
    \\STX\EOT \DC2\ACK\176\SOH\NUL\178\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT \SOH\DC2\EOT\176\SOH\b\US\n\
    \\f\n\
    \\EOT\EOT \STX\NUL\DC2\EOT\177\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT \STX\NUL\EOT\DC2\EOT\177\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT \STX\NUL\ENQ\DC2\EOT\177\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT \STX\NUL\SOH\DC2\EOT\177\SOH\DC1\SYN\n\
    \\r\n\
    \\ENQ\EOT \STX\NUL\ETX\DC2\EOT\177\SOH\EM\SUB\n\
    \\f\n\
    \\STX\EOT!\DC2\ACK\179\SOH\NUL\185\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT!\SOH\DC2\EOT\179\SOH\b\RS\n\
    \\f\n\
    \\EOT\EOT!\STX\NUL\DC2\EOT\180\SOH\STX \n\
    \\r\n\
    \\ENQ\EOT!\STX\NUL\EOT\DC2\EOT\180\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT!\STX\NUL\ENQ\DC2\EOT\180\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT!\STX\NUL\SOH\DC2\EOT\180\SOH\DC2\ESC\n\
    \\r\n\
    \\ENQ\EOT!\STX\NUL\ETX\DC2\EOT\180\SOH\RS\US\n\
    \\f\n\
    \\EOT\EOT!\STX\SOH\DC2\EOT\181\SOH\STX!\n\
    \\r\n\
    \\ENQ\EOT!\STX\SOH\EOT\DC2\EOT\181\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT!\STX\SOH\ENQ\DC2\EOT\181\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT!\STX\SOH\SOH\DC2\EOT\181\SOH\DC1\FS\n\
    \\r\n\
    \\ENQ\EOT!\STX\SOH\ETX\DC2\EOT\181\SOH\US \n\
    \\f\n\
    \\EOT\EOT!\STX\STX\DC2\EOT\182\SOH\STX\FS\n\
    \\r\n\
    \\ENQ\EOT!\STX\STX\EOT\DC2\EOT\182\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT!\STX\STX\ENQ\DC2\EOT\182\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT!\STX\STX\SOH\DC2\EOT\182\SOH\DC2\ETB\n\
    \\r\n\
    \\ENQ\EOT!\STX\STX\ETX\DC2\EOT\182\SOH\SUB\ESC\n\
    \\f\n\
    \\EOT\EOT!\STX\ETX\DC2\EOT\183\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT!\STX\ETX\EOT\DC2\EOT\183\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT!\STX\ETX\ENQ\DC2\EOT\183\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT!\STX\ETX\SOH\DC2\EOT\183\SOH\DC2\SYN\n\
    \\r\n\
    \\ENQ\EOT!\STX\ETX\ETX\DC2\EOT\183\SOH\EM\SUB\n\
    \\f\n\
    \\EOT\EOT!\STX\EOT\DC2\EOT\184\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT!\STX\EOT\EOT\DC2\EOT\184\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT!\STX\EOT\ENQ\DC2\EOT\184\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT!\STX\EOT\SOH\DC2\EOT\184\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT!\STX\EOT\ETX\DC2\EOT\184\SOH\CAN\EM\n\
    \\f\n\
    \\STX\EOT\"\DC2\ACK\186\SOH\NUL\194\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\"\SOH\DC2\EOT\186\SOH\b%\n\
    \\f\n\
    \\EOT\EOT\"\STX\NUL\DC2\EOT\187\SOH\STX'\n\
    \\r\n\
    \\ENQ\EOT\"\STX\NUL\EOT\DC2\EOT\187\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\"\STX\NUL\ENQ\DC2\EOT\187\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\"\STX\NUL\SOH\DC2\EOT\187\SOH\DC1\"\n\
    \\r\n\
    \\ENQ\EOT\"\STX\NUL\ETX\DC2\EOT\187\SOH%&\n\
    \\f\n\
    \\EOT\EOT\"\STX\SOH\DC2\EOT\188\SOH\STX!\n\
    \\r\n\
    \\ENQ\EOT\"\STX\SOH\EOT\DC2\EOT\188\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\"\STX\SOH\ENQ\DC2\EOT\188\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\"\STX\SOH\SOH\DC2\EOT\188\SOH\DC1\FS\n\
    \\r\n\
    \\ENQ\EOT\"\STX\SOH\ETX\DC2\EOT\188\SOH\US \n\
    \\f\n\
    \\EOT\EOT\"\STX\STX\DC2\EOT\189\SOH\STX*\n\
    \\r\n\
    \\ENQ\EOT\"\STX\STX\EOT\DC2\EOT\189\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\"\STX\STX\ENQ\DC2\EOT\189\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\"\STX\STX\SOH\DC2\EOT\189\SOH\DC1%\n\
    \\r\n\
    \\ENQ\EOT\"\STX\STX\ETX\DC2\EOT\189\SOH()\n\
    \\f\n\
    \\EOT\EOT\"\STX\ETX\DC2\EOT\190\SOH\STX$\n\
    \\r\n\
    \\ENQ\EOT\"\STX\ETX\EOT\DC2\EOT\190\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\"\STX\ETX\ENQ\DC2\EOT\190\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\"\STX\ETX\SOH\DC2\EOT\190\SOH\DC1\US\n\
    \\r\n\
    \\ENQ\EOT\"\STX\ETX\ETX\DC2\EOT\190\SOH\"#\n\
    \\f\n\
    \\EOT\EOT\"\STX\EOT\DC2\EOT\191\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\"\STX\EOT\EOT\DC2\EOT\191\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\"\STX\EOT\ENQ\DC2\EOT\191\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\"\STX\EOT\SOH\DC2\EOT\191\SOH\DC2\SYN\n\
    \\r\n\
    \\ENQ\EOT\"\STX\EOT\ETX\DC2\EOT\191\SOH\EM\SUB\n\
    \\f\n\
    \\EOT\EOT\"\STX\ENQ\DC2\EOT\192\SOH\STX&\n\
    \\r\n\
    \\ENQ\EOT\"\STX\ENQ\EOT\DC2\EOT\192\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\"\STX\ENQ\ENQ\DC2\EOT\192\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\"\STX\ENQ\SOH\DC2\EOT\192\SOH\DC1!\n\
    \\r\n\
    \\ENQ\EOT\"\STX\ENQ\ETX\DC2\EOT\192\SOH$%\n\
    \\f\n\
    \\EOT\EOT\"\STX\ACK\DC2\EOT\193\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\"\STX\ACK\EOT\DC2\EOT\193\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\"\STX\ACK\ENQ\DC2\EOT\193\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\"\STX\ACK\SOH\DC2\EOT\193\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\"\STX\ACK\ETX\DC2\EOT\193\SOH\CAN\EM\n\
    \\f\n\
    \\STX\EOT#\DC2\ACK\195\SOH\NUL\200\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT#\SOH\DC2\EOT\195\SOH\b(\n\
    \\f\n\
    \\EOT\EOT#\STX\NUL\DC2\EOT\196\SOH\STX!\n\
    \\r\n\
    \\ENQ\EOT#\STX\NUL\EOT\DC2\EOT\196\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT#\STX\NUL\ENQ\DC2\EOT\196\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT#\STX\NUL\SOH\DC2\EOT\196\SOH\DC1\FS\n\
    \\r\n\
    \\ENQ\EOT#\STX\NUL\ETX\DC2\EOT\196\SOH\US \n\
    \\f\n\
    \\EOT\EOT#\STX\SOH\DC2\EOT\197\SOH\STX\FS\n\
    \\r\n\
    \\ENQ\EOT#\STX\SOH\EOT\DC2\EOT\197\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT#\STX\SOH\ENQ\DC2\EOT\197\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT#\STX\SOH\SOH\DC2\EOT\197\SOH\DC2\ETB\n\
    \\r\n\
    \\ENQ\EOT#\STX\SOH\ETX\DC2\EOT\197\SOH\SUB\ESC\n\
    \\f\n\
    \\EOT\EOT#\STX\STX\DC2\EOT\198\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT#\STX\STX\EOT\DC2\EOT\198\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT#\STX\STX\ENQ\DC2\EOT\198\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT#\STX\STX\SOH\DC2\EOT\198\SOH\DC2\SYN\n\
    \\r\n\
    \\ENQ\EOT#\STX\STX\ETX\DC2\EOT\198\SOH\EM\SUB\n\
    \\f\n\
    \\EOT\EOT#\STX\ETX\DC2\EOT\199\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT#\STX\ETX\EOT\DC2\EOT\199\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT#\STX\ETX\ENQ\DC2\EOT\199\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT#\STX\ETX\SOH\DC2\EOT\199\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT#\STX\ETX\ETX\DC2\EOT\199\SOH\CAN\EM\n\
    \\f\n\
    \\STX\EOT$\DC2\ACK\201\SOH\NUL\205\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT$\SOH\DC2\EOT\201\SOH\b\GS\n\
    \\f\n\
    \\EOT\EOT$\STX\NUL\DC2\EOT\202\SOH\STX\FS\n\
    \\r\n\
    \\ENQ\EOT$\STX\NUL\EOT\DC2\EOT\202\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT$\STX\NUL\ENQ\DC2\EOT\202\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT$\STX\NUL\SOH\DC2\EOT\202\SOH\DC2\ETB\n\
    \\r\n\
    \\ENQ\EOT$\STX\NUL\ETX\DC2\EOT\202\SOH\SUB\ESC\n\
    \\f\n\
    \\EOT\EOT$\STX\SOH\DC2\EOT\203\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT$\STX\SOH\EOT\DC2\EOT\203\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT$\STX\SOH\ENQ\DC2\EOT\203\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT$\STX\SOH\SOH\DC2\EOT\203\SOH\DC2\SYN\n\
    \\r\n\
    \\ENQ\EOT$\STX\SOH\ETX\DC2\EOT\203\SOH\EM\SUB\n\
    \\f\n\
    \\EOT\EOT$\STX\STX\DC2\EOT\204\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT$\STX\STX\EOT\DC2\EOT\204\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT$\STX\STX\ENQ\DC2\EOT\204\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT$\STX\STX\SOH\DC2\EOT\204\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT$\STX\STX\ETX\DC2\EOT\204\SOH\CAN\EM\n\
    \\f\n\
    \\STX\EOT%\DC2\ACK\206\SOH\NUL\210\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT%\SOH\DC2\EOT\206\SOH\b$\n\
    \\f\n\
    \\EOT\EOT%\STX\NUL\DC2\EOT\207\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT%\STX\NUL\EOT\DC2\EOT\207\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT%\STX\NUL\ENQ\DC2\EOT\207\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT%\STX\NUL\SOH\DC2\EOT\207\SOH\DC1\NAK\n\
    \\r\n\
    \\ENQ\EOT%\STX\NUL\ETX\DC2\EOT\207\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT%\STX\SOH\DC2\EOT\208\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT%\STX\SOH\EOT\DC2\EOT\208\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT%\STX\SOH\ENQ\DC2\EOT\208\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT%\STX\SOH\SOH\DC2\EOT\208\SOH\DC2\SYN\n\
    \\r\n\
    \\ENQ\EOT%\STX\SOH\ETX\DC2\EOT\208\SOH\EM\SUB\n\
    \\f\n\
    \\EOT\EOT%\STX\STX\DC2\EOT\209\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT%\STX\STX\EOT\DC2\EOT\209\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT%\STX\STX\ENQ\DC2\EOT\209\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT%\STX\STX\SOH\DC2\EOT\209\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT%\STX\STX\ETX\DC2\EOT\209\SOH\CAN\EM\n\
    \\f\n\
    \\STX\EOT&\DC2\ACK\211\SOH\NUL\216\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT&\SOH\DC2\EOT\211\SOH\b\"\n\
    \\f\n\
    \\EOT\EOT&\STX\NUL\DC2\EOT\212\SOH\STX!\n\
    \\r\n\
    \\ENQ\EOT&\STX\NUL\EOT\DC2\EOT\212\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT&\STX\NUL\ENQ\DC2\EOT\212\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT&\STX\NUL\SOH\DC2\EOT\212\SOH\DC1\FS\n\
    \\r\n\
    \\ENQ\EOT&\STX\NUL\ETX\DC2\EOT\212\SOH\US \n\
    \\f\n\
    \\EOT\EOT&\STX\SOH\DC2\EOT\213\SOH\STX\FS\n\
    \\r\n\
    \\ENQ\EOT&\STX\SOH\EOT\DC2\EOT\213\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT&\STX\SOH\ENQ\DC2\EOT\213\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT&\STX\SOH\SOH\DC2\EOT\213\SOH\DC2\ETB\n\
    \\r\n\
    \\ENQ\EOT&\STX\SOH\ETX\DC2\EOT\213\SOH\SUB\ESC\n\
    \\f\n\
    \\EOT\EOT&\STX\STX\DC2\EOT\214\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT&\STX\STX\EOT\DC2\EOT\214\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT&\STX\STX\ENQ\DC2\EOT\214\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT&\STX\STX\SOH\DC2\EOT\214\SOH\DC2\SYN\n\
    \\r\n\
    \\ENQ\EOT&\STX\STX\ETX\DC2\EOT\214\SOH\EM\SUB\n\
    \\f\n\
    \\EOT\EOT&\STX\ETX\DC2\EOT\215\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT&\STX\ETX\EOT\DC2\EOT\215\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT&\STX\ETX\ENQ\DC2\EOT\215\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT&\STX\ETX\SOH\DC2\EOT\215\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT&\STX\ETX\ETX\DC2\EOT\215\SOH\CAN\EM\n\
    \\f\n\
    \\STX\EOT'\DC2\ACK\217\SOH\NUL\222\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT'\SOH\DC2\EOT\217\SOH\b\SUB\n\
    \\f\n\
    \\EOT\EOT'\STX\NUL\DC2\EOT\218\SOH\STX\FS\n\
    \\r\n\
    \\ENQ\EOT'\STX\NUL\EOT\DC2\EOT\218\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT'\STX\NUL\ENQ\DC2\EOT\218\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT'\STX\NUL\SOH\DC2\EOT\218\SOH\DC1\ETB\n\
    \\r\n\
    \\ENQ\EOT'\STX\NUL\ETX\DC2\EOT\218\SOH\SUB\ESC\n\
    \\f\n\
    \\EOT\EOT'\STX\SOH\DC2\EOT\219\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT'\STX\SOH\EOT\DC2\EOT\219\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT'\STX\SOH\ENQ\DC2\EOT\219\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT'\STX\SOH\SOH\DC2\EOT\219\SOH\DC1\NAK\n\
    \\r\n\
    \\ENQ\EOT'\STX\SOH\ETX\DC2\EOT\219\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT'\STX\STX\DC2\EOT\220\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT'\STX\STX\EOT\DC2\EOT\220\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT'\STX\STX\ENQ\DC2\EOT\220\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT'\STX\STX\SOH\DC2\EOT\220\SOH\DC2\SYN\n\
    \\r\n\
    \\ENQ\EOT'\STX\STX\ETX\DC2\EOT\220\SOH\EM\SUB\n\
    \\f\n\
    \\EOT\EOT'\STX\ETX\DC2\EOT\221\SOH\STX\FS\n\
    \\r\n\
    \\ENQ\EOT'\STX\ETX\EOT\DC2\EOT\221\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT'\STX\ETX\ENQ\DC2\EOT\221\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT'\STX\ETX\SOH\DC2\EOT\221\SOH\DC2\ETB\n\
    \\r\n\
    \\ENQ\EOT'\STX\ETX\ETX\DC2\EOT\221\SOH\SUB\ESC\n\
    \\f\n\
    \\STX\EOT(\DC2\ACK\223\SOH\NUL\227\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT(\SOH\DC2\EOT\223\SOH\b \n\
    \\f\n\
    \\EOT\EOT(\STX\NUL\DC2\EOT\224\SOH\STX \n\
    \\r\n\
    \\ENQ\EOT(\STX\NUL\EOT\DC2\EOT\224\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT(\STX\NUL\ENQ\DC2\EOT\224\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT(\STX\NUL\SOH\DC2\EOT\224\SOH\DC2\ESC\n\
    \\r\n\
    \\ENQ\EOT(\STX\NUL\ETX\DC2\EOT\224\SOH\RS\US\n\
    \\f\n\
    \\EOT\EOT(\STX\SOH\DC2\EOT\225\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT(\STX\SOH\EOT\DC2\EOT\225\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT(\STX\SOH\ENQ\DC2\EOT\225\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT(\STX\SOH\SOH\DC2\EOT\225\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT(\STX\SOH\ETX\DC2\EOT\225\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT(\STX\STX\DC2\EOT\226\SOH\STX%\n\
    \\r\n\
    \\ENQ\EOT(\STX\STX\EOT\DC2\EOT\226\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT(\STX\STX\ENQ\DC2\EOT\226\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT(\STX\STX\SOH\DC2\EOT\226\SOH\DC1 \n\
    \\r\n\
    \\ENQ\EOT(\STX\STX\ETX\DC2\EOT\226\SOH#$\n\
    \\f\n\
    \\STX\EOT)\DC2\ACK\228\SOH\NUL\232\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT)\SOH\DC2\EOT\228\SOH\b\RS\n\
    \\f\n\
    \\EOT\EOT)\STX\NUL\DC2\EOT\229\SOH\STX \n\
    \\r\n\
    \\ENQ\EOT)\STX\NUL\EOT\DC2\EOT\229\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT)\STX\NUL\ENQ\DC2\EOT\229\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT)\STX\NUL\SOH\DC2\EOT\229\SOH\DC2\ESC\n\
    \\r\n\
    \\ENQ\EOT)\STX\NUL\ETX\DC2\EOT\229\SOH\RS\US\n\
    \\f\n\
    \\EOT\EOT)\STX\SOH\DC2\EOT\230\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT)\STX\SOH\EOT\DC2\EOT\230\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT)\STX\SOH\ENQ\DC2\EOT\230\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT)\STX\SOH\SOH\DC2\EOT\230\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT)\STX\SOH\ETX\DC2\EOT\230\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT)\STX\STX\DC2\EOT\231\SOH\STX%\n\
    \\r\n\
    \\ENQ\EOT)\STX\STX\EOT\DC2\EOT\231\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT)\STX\STX\ENQ\DC2\EOT\231\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT)\STX\STX\SOH\DC2\EOT\231\SOH\DC1 \n\
    \\r\n\
    \\ENQ\EOT)\STX\STX\ETX\DC2\EOT\231\SOH#$\n\
    \\f\n\
    \\STX\EOT*\DC2\ACK\233\SOH\NUL\236\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT*\SOH\DC2\EOT\233\SOH\b\"\n\
    \\f\n\
    \\EOT\EOT*\STX\NUL\DC2\EOT\234\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT*\STX\NUL\EOT\DC2\EOT\234\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT*\STX\NUL\ENQ\DC2\EOT\234\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT*\STX\NUL\SOH\DC2\EOT\234\SOH\DC2\SYN\n\
    \\r\n\
    \\ENQ\EOT*\STX\NUL\ETX\DC2\EOT\234\SOH\EM\SUB\n\
    \\f\n\
    \\EOT\EOT*\STX\SOH\DC2\EOT\235\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT*\STX\SOH\EOT\DC2\EOT\235\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT*\STX\SOH\ENQ\DC2\EOT\235\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT*\STX\SOH\SOH\DC2\EOT\235\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT*\STX\SOH\ETX\DC2\EOT\235\SOH\CAN\EM\n\
    \\f\n\
    \\STX\EOT+\DC2\ACK\237\SOH\NUL\240\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT+\SOH\DC2\EOT\237\SOH\b#\n\
    \\f\n\
    \\EOT\EOT+\STX\NUL\DC2\EOT\238\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT+\STX\NUL\EOT\DC2\EOT\238\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT+\STX\NUL\ENQ\DC2\EOT\238\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT+\STX\NUL\SOH\DC2\EOT\238\SOH\DC2\SYN\n\
    \\r\n\
    \\ENQ\EOT+\STX\NUL\ETX\DC2\EOT\238\SOH\EM\SUB\n\
    \\f\n\
    \\EOT\EOT+\STX\SOH\DC2\EOT\239\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT+\STX\SOH\EOT\DC2\EOT\239\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT+\STX\SOH\ENQ\DC2\EOT\239\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT+\STX\SOH\SOH\DC2\EOT\239\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT+\STX\SOH\ETX\DC2\EOT\239\SOH\CAN\EM"