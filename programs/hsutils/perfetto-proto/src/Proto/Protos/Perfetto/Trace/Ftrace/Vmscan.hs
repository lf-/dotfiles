{- This file was auto-generated from protos/perfetto/trace/ftrace/vmscan.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Vmscan (
        MmShrinkSlabEndFtraceEvent(), MmShrinkSlabStartFtraceEvent(),
        MmVmscanDirectReclaimBeginFtraceEvent(),
        MmVmscanDirectReclaimEndFtraceEvent(),
        MmVmscanKswapdSleepFtraceEvent(), MmVmscanKswapdWakeFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.newScan' @:: Lens' MmShrinkSlabEndFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.maybe'newScan' @:: Lens' MmShrinkSlabEndFtraceEvent (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.retval' @:: Lens' MmShrinkSlabEndFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.maybe'retval' @:: Lens' MmShrinkSlabEndFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.shr' @:: Lens' MmShrinkSlabEndFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.maybe'shr' @:: Lens' MmShrinkSlabEndFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.shrink' @:: Lens' MmShrinkSlabEndFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.maybe'shrink' @:: Lens' MmShrinkSlabEndFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.totalScan' @:: Lens' MmShrinkSlabEndFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.maybe'totalScan' @:: Lens' MmShrinkSlabEndFtraceEvent (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.unusedScan' @:: Lens' MmShrinkSlabEndFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.maybe'unusedScan' @:: Lens' MmShrinkSlabEndFtraceEvent (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.nid' @:: Lens' MmShrinkSlabEndFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.maybe'nid' @:: Lens' MmShrinkSlabEndFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data MmShrinkSlabEndFtraceEvent
  = MmShrinkSlabEndFtraceEvent'_constructor {_MmShrinkSlabEndFtraceEvent'newScan :: !(Prelude.Maybe Data.Int.Int64),
                                             _MmShrinkSlabEndFtraceEvent'retval :: !(Prelude.Maybe Data.Int.Int32),
                                             _MmShrinkSlabEndFtraceEvent'shr :: !(Prelude.Maybe Data.Word.Word64),
                                             _MmShrinkSlabEndFtraceEvent'shrink :: !(Prelude.Maybe Data.Word.Word64),
                                             _MmShrinkSlabEndFtraceEvent'totalScan :: !(Prelude.Maybe Data.Int.Int64),
                                             _MmShrinkSlabEndFtraceEvent'unusedScan :: !(Prelude.Maybe Data.Int.Int64),
                                             _MmShrinkSlabEndFtraceEvent'nid :: !(Prelude.Maybe Data.Int.Int32),
                                             _MmShrinkSlabEndFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MmShrinkSlabEndFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MmShrinkSlabEndFtraceEvent "newScan" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmShrinkSlabEndFtraceEvent'newScan
           (\ x__ y__ -> x__ {_MmShrinkSlabEndFtraceEvent'newScan = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmShrinkSlabEndFtraceEvent "maybe'newScan" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmShrinkSlabEndFtraceEvent'newScan
           (\ x__ y__ -> x__ {_MmShrinkSlabEndFtraceEvent'newScan = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmShrinkSlabEndFtraceEvent "retval" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmShrinkSlabEndFtraceEvent'retval
           (\ x__ y__ -> x__ {_MmShrinkSlabEndFtraceEvent'retval = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmShrinkSlabEndFtraceEvent "maybe'retval" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmShrinkSlabEndFtraceEvent'retval
           (\ x__ y__ -> x__ {_MmShrinkSlabEndFtraceEvent'retval = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmShrinkSlabEndFtraceEvent "shr" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmShrinkSlabEndFtraceEvent'shr
           (\ x__ y__ -> x__ {_MmShrinkSlabEndFtraceEvent'shr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmShrinkSlabEndFtraceEvent "maybe'shr" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmShrinkSlabEndFtraceEvent'shr
           (\ x__ y__ -> x__ {_MmShrinkSlabEndFtraceEvent'shr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmShrinkSlabEndFtraceEvent "shrink" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmShrinkSlabEndFtraceEvent'shrink
           (\ x__ y__ -> x__ {_MmShrinkSlabEndFtraceEvent'shrink = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmShrinkSlabEndFtraceEvent "maybe'shrink" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmShrinkSlabEndFtraceEvent'shrink
           (\ x__ y__ -> x__ {_MmShrinkSlabEndFtraceEvent'shrink = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmShrinkSlabEndFtraceEvent "totalScan" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmShrinkSlabEndFtraceEvent'totalScan
           (\ x__ y__ -> x__ {_MmShrinkSlabEndFtraceEvent'totalScan = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmShrinkSlabEndFtraceEvent "maybe'totalScan" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmShrinkSlabEndFtraceEvent'totalScan
           (\ x__ y__ -> x__ {_MmShrinkSlabEndFtraceEvent'totalScan = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmShrinkSlabEndFtraceEvent "unusedScan" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmShrinkSlabEndFtraceEvent'unusedScan
           (\ x__ y__ -> x__ {_MmShrinkSlabEndFtraceEvent'unusedScan = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmShrinkSlabEndFtraceEvent "maybe'unusedScan" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmShrinkSlabEndFtraceEvent'unusedScan
           (\ x__ y__ -> x__ {_MmShrinkSlabEndFtraceEvent'unusedScan = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmShrinkSlabEndFtraceEvent "nid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmShrinkSlabEndFtraceEvent'nid
           (\ x__ y__ -> x__ {_MmShrinkSlabEndFtraceEvent'nid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmShrinkSlabEndFtraceEvent "maybe'nid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmShrinkSlabEndFtraceEvent'nid
           (\ x__ y__ -> x__ {_MmShrinkSlabEndFtraceEvent'nid = y__}))
        Prelude.id
instance Data.ProtoLens.Message MmShrinkSlabEndFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.MmShrinkSlabEndFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SUBMmShrinkSlabEndFtraceEvent\DC2\EM\n\
      \\bnew_scan\CAN\SOH \SOH(\ETXR\anewScan\DC2\SYN\n\
      \\ACKretval\CAN\STX \SOH(\ENQR\ACKretval\DC2\DLE\n\
      \\ETXshr\CAN\ETX \SOH(\EOTR\ETXshr\DC2\SYN\n\
      \\ACKshrink\CAN\EOT \SOH(\EOTR\ACKshrink\DC2\GS\n\
      \\n\
      \total_scan\CAN\ENQ \SOH(\ETXR\ttotalScan\DC2\US\n\
      \\vunused_scan\CAN\ACK \SOH(\ETXR\n\
      \unusedScan\DC2\DLE\n\
      \\ETXnid\CAN\a \SOH(\ENQR\ETXnid"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        newScan__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "new_scan"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'newScan")) ::
              Data.ProtoLens.FieldDescriptor MmShrinkSlabEndFtraceEvent
        retval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "retval"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'retval")) ::
              Data.ProtoLens.FieldDescriptor MmShrinkSlabEndFtraceEvent
        shr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "shr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'shr")) ::
              Data.ProtoLens.FieldDescriptor MmShrinkSlabEndFtraceEvent
        shrink__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "shrink"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'shrink")) ::
              Data.ProtoLens.FieldDescriptor MmShrinkSlabEndFtraceEvent
        totalScan__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total_scan"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'totalScan")) ::
              Data.ProtoLens.FieldDescriptor MmShrinkSlabEndFtraceEvent
        unusedScan__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "unused_scan"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'unusedScan")) ::
              Data.ProtoLens.FieldDescriptor MmShrinkSlabEndFtraceEvent
        nid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nid")) ::
              Data.ProtoLens.FieldDescriptor MmShrinkSlabEndFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, newScan__field_descriptor),
           (Data.ProtoLens.Tag 2, retval__field_descriptor),
           (Data.ProtoLens.Tag 3, shr__field_descriptor),
           (Data.ProtoLens.Tag 4, shrink__field_descriptor),
           (Data.ProtoLens.Tag 5, totalScan__field_descriptor),
           (Data.ProtoLens.Tag 6, unusedScan__field_descriptor),
           (Data.ProtoLens.Tag 7, nid__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MmShrinkSlabEndFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_MmShrinkSlabEndFtraceEvent'_unknownFields = y__})
  defMessage
    = MmShrinkSlabEndFtraceEvent'_constructor
        {_MmShrinkSlabEndFtraceEvent'newScan = Prelude.Nothing,
         _MmShrinkSlabEndFtraceEvent'retval = Prelude.Nothing,
         _MmShrinkSlabEndFtraceEvent'shr = Prelude.Nothing,
         _MmShrinkSlabEndFtraceEvent'shrink = Prelude.Nothing,
         _MmShrinkSlabEndFtraceEvent'totalScan = Prelude.Nothing,
         _MmShrinkSlabEndFtraceEvent'unusedScan = Prelude.Nothing,
         _MmShrinkSlabEndFtraceEvent'nid = Prelude.Nothing,
         _MmShrinkSlabEndFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MmShrinkSlabEndFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MmShrinkSlabEndFtraceEvent
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
                                       "new_scan"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"newScan") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "retval"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"retval") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "shr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"shr") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "shrink"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"shrink") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "total_scan"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"totalScan") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "unused_scan"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"unusedScan") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
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
          (do loop Data.ProtoLens.defMessage) "MmShrinkSlabEndFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'newScan") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'retval") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'shr") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'shrink") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'totalScan") _x
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
                                   (Data.ProtoLens.Field.field @"maybe'unusedScan") _x
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
                                    Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nid") _x
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
instance Control.DeepSeq.NFData MmShrinkSlabEndFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MmShrinkSlabEndFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MmShrinkSlabEndFtraceEvent'newScan x__)
                (Control.DeepSeq.deepseq
                   (_MmShrinkSlabEndFtraceEvent'retval x__)
                   (Control.DeepSeq.deepseq
                      (_MmShrinkSlabEndFtraceEvent'shr x__)
                      (Control.DeepSeq.deepseq
                         (_MmShrinkSlabEndFtraceEvent'shrink x__)
                         (Control.DeepSeq.deepseq
                            (_MmShrinkSlabEndFtraceEvent'totalScan x__)
                            (Control.DeepSeq.deepseq
                               (_MmShrinkSlabEndFtraceEvent'unusedScan x__)
                               (Control.DeepSeq.deepseq
                                  (_MmShrinkSlabEndFtraceEvent'nid x__) ())))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.cacheItems' @:: Lens' MmShrinkSlabStartFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.maybe'cacheItems' @:: Lens' MmShrinkSlabStartFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.delta' @:: Lens' MmShrinkSlabStartFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.maybe'delta' @:: Lens' MmShrinkSlabStartFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.gfpFlags' @:: Lens' MmShrinkSlabStartFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.maybe'gfpFlags' @:: Lens' MmShrinkSlabStartFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.lruPgs' @:: Lens' MmShrinkSlabStartFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.maybe'lruPgs' @:: Lens' MmShrinkSlabStartFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.nrObjectsToShrink' @:: Lens' MmShrinkSlabStartFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.maybe'nrObjectsToShrink' @:: Lens' MmShrinkSlabStartFtraceEvent (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.pgsScanned' @:: Lens' MmShrinkSlabStartFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.maybe'pgsScanned' @:: Lens' MmShrinkSlabStartFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.shr' @:: Lens' MmShrinkSlabStartFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.maybe'shr' @:: Lens' MmShrinkSlabStartFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.shrink' @:: Lens' MmShrinkSlabStartFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.maybe'shrink' @:: Lens' MmShrinkSlabStartFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.totalScan' @:: Lens' MmShrinkSlabStartFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.maybe'totalScan' @:: Lens' MmShrinkSlabStartFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.nid' @:: Lens' MmShrinkSlabStartFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.maybe'nid' @:: Lens' MmShrinkSlabStartFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.priority' @:: Lens' MmShrinkSlabStartFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.maybe'priority' @:: Lens' MmShrinkSlabStartFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data MmShrinkSlabStartFtraceEvent
  = MmShrinkSlabStartFtraceEvent'_constructor {_MmShrinkSlabStartFtraceEvent'cacheItems :: !(Prelude.Maybe Data.Word.Word64),
                                               _MmShrinkSlabStartFtraceEvent'delta :: !(Prelude.Maybe Data.Word.Word64),
                                               _MmShrinkSlabStartFtraceEvent'gfpFlags :: !(Prelude.Maybe Data.Word.Word32),
                                               _MmShrinkSlabStartFtraceEvent'lruPgs :: !(Prelude.Maybe Data.Word.Word64),
                                               _MmShrinkSlabStartFtraceEvent'nrObjectsToShrink :: !(Prelude.Maybe Data.Int.Int64),
                                               _MmShrinkSlabStartFtraceEvent'pgsScanned :: !(Prelude.Maybe Data.Word.Word64),
                                               _MmShrinkSlabStartFtraceEvent'shr :: !(Prelude.Maybe Data.Word.Word64),
                                               _MmShrinkSlabStartFtraceEvent'shrink :: !(Prelude.Maybe Data.Word.Word64),
                                               _MmShrinkSlabStartFtraceEvent'totalScan :: !(Prelude.Maybe Data.Word.Word64),
                                               _MmShrinkSlabStartFtraceEvent'nid :: !(Prelude.Maybe Data.Int.Int32),
                                               _MmShrinkSlabStartFtraceEvent'priority :: !(Prelude.Maybe Data.Int.Int32),
                                               _MmShrinkSlabStartFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MmShrinkSlabStartFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MmShrinkSlabStartFtraceEvent "cacheItems" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmShrinkSlabStartFtraceEvent'cacheItems
           (\ x__ y__
              -> x__ {_MmShrinkSlabStartFtraceEvent'cacheItems = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmShrinkSlabStartFtraceEvent "maybe'cacheItems" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmShrinkSlabStartFtraceEvent'cacheItems
           (\ x__ y__
              -> x__ {_MmShrinkSlabStartFtraceEvent'cacheItems = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmShrinkSlabStartFtraceEvent "delta" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmShrinkSlabStartFtraceEvent'delta
           (\ x__ y__ -> x__ {_MmShrinkSlabStartFtraceEvent'delta = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmShrinkSlabStartFtraceEvent "maybe'delta" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmShrinkSlabStartFtraceEvent'delta
           (\ x__ y__ -> x__ {_MmShrinkSlabStartFtraceEvent'delta = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmShrinkSlabStartFtraceEvent "gfpFlags" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmShrinkSlabStartFtraceEvent'gfpFlags
           (\ x__ y__ -> x__ {_MmShrinkSlabStartFtraceEvent'gfpFlags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmShrinkSlabStartFtraceEvent "maybe'gfpFlags" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmShrinkSlabStartFtraceEvent'gfpFlags
           (\ x__ y__ -> x__ {_MmShrinkSlabStartFtraceEvent'gfpFlags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmShrinkSlabStartFtraceEvent "lruPgs" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmShrinkSlabStartFtraceEvent'lruPgs
           (\ x__ y__ -> x__ {_MmShrinkSlabStartFtraceEvent'lruPgs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmShrinkSlabStartFtraceEvent "maybe'lruPgs" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmShrinkSlabStartFtraceEvent'lruPgs
           (\ x__ y__ -> x__ {_MmShrinkSlabStartFtraceEvent'lruPgs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmShrinkSlabStartFtraceEvent "nrObjectsToShrink" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmShrinkSlabStartFtraceEvent'nrObjectsToShrink
           (\ x__ y__
              -> x__ {_MmShrinkSlabStartFtraceEvent'nrObjectsToShrink = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmShrinkSlabStartFtraceEvent "maybe'nrObjectsToShrink" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmShrinkSlabStartFtraceEvent'nrObjectsToShrink
           (\ x__ y__
              -> x__ {_MmShrinkSlabStartFtraceEvent'nrObjectsToShrink = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmShrinkSlabStartFtraceEvent "pgsScanned" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmShrinkSlabStartFtraceEvent'pgsScanned
           (\ x__ y__
              -> x__ {_MmShrinkSlabStartFtraceEvent'pgsScanned = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmShrinkSlabStartFtraceEvent "maybe'pgsScanned" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmShrinkSlabStartFtraceEvent'pgsScanned
           (\ x__ y__
              -> x__ {_MmShrinkSlabStartFtraceEvent'pgsScanned = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmShrinkSlabStartFtraceEvent "shr" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmShrinkSlabStartFtraceEvent'shr
           (\ x__ y__ -> x__ {_MmShrinkSlabStartFtraceEvent'shr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmShrinkSlabStartFtraceEvent "maybe'shr" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmShrinkSlabStartFtraceEvent'shr
           (\ x__ y__ -> x__ {_MmShrinkSlabStartFtraceEvent'shr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmShrinkSlabStartFtraceEvent "shrink" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmShrinkSlabStartFtraceEvent'shrink
           (\ x__ y__ -> x__ {_MmShrinkSlabStartFtraceEvent'shrink = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmShrinkSlabStartFtraceEvent "maybe'shrink" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmShrinkSlabStartFtraceEvent'shrink
           (\ x__ y__ -> x__ {_MmShrinkSlabStartFtraceEvent'shrink = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmShrinkSlabStartFtraceEvent "totalScan" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmShrinkSlabStartFtraceEvent'totalScan
           (\ x__ y__ -> x__ {_MmShrinkSlabStartFtraceEvent'totalScan = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmShrinkSlabStartFtraceEvent "maybe'totalScan" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmShrinkSlabStartFtraceEvent'totalScan
           (\ x__ y__ -> x__ {_MmShrinkSlabStartFtraceEvent'totalScan = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmShrinkSlabStartFtraceEvent "nid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmShrinkSlabStartFtraceEvent'nid
           (\ x__ y__ -> x__ {_MmShrinkSlabStartFtraceEvent'nid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmShrinkSlabStartFtraceEvent "maybe'nid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmShrinkSlabStartFtraceEvent'nid
           (\ x__ y__ -> x__ {_MmShrinkSlabStartFtraceEvent'nid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmShrinkSlabStartFtraceEvent "priority" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmShrinkSlabStartFtraceEvent'priority
           (\ x__ y__ -> x__ {_MmShrinkSlabStartFtraceEvent'priority = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmShrinkSlabStartFtraceEvent "maybe'priority" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmShrinkSlabStartFtraceEvent'priority
           (\ x__ y__ -> x__ {_MmShrinkSlabStartFtraceEvent'priority = y__}))
        Prelude.id
instance Data.ProtoLens.Message MmShrinkSlabStartFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.MmShrinkSlabStartFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\FSMmShrinkSlabStartFtraceEvent\DC2\US\n\
      \\vcache_items\CAN\SOH \SOH(\EOTR\n\
      \cacheItems\DC2\DC4\n\
      \\ENQdelta\CAN\STX \SOH(\EOTR\ENQdelta\DC2\ESC\n\
      \\tgfp_flags\CAN\ETX \SOH(\rR\bgfpFlags\DC2\ETB\n\
      \\alru_pgs\CAN\EOT \SOH(\EOTR\ACKlruPgs\DC2/\n\
      \\DC4nr_objects_to_shrink\CAN\ENQ \SOH(\ETXR\DC1nrObjectsToShrink\DC2\US\n\
      \\vpgs_scanned\CAN\ACK \SOH(\EOTR\n\
      \pgsScanned\DC2\DLE\n\
      \\ETXshr\CAN\a \SOH(\EOTR\ETXshr\DC2\SYN\n\
      \\ACKshrink\CAN\b \SOH(\EOTR\ACKshrink\DC2\GS\n\
      \\n\
      \total_scan\CAN\t \SOH(\EOTR\ttotalScan\DC2\DLE\n\
      \\ETXnid\CAN\n\
      \ \SOH(\ENQR\ETXnid\DC2\SUB\n\
      \\bpriority\CAN\v \SOH(\ENQR\bpriority"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        cacheItems__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cache_items"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cacheItems")) ::
              Data.ProtoLens.FieldDescriptor MmShrinkSlabStartFtraceEvent
        delta__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delta"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'delta")) ::
              Data.ProtoLens.FieldDescriptor MmShrinkSlabStartFtraceEvent
        gfpFlags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gfp_flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gfpFlags")) ::
              Data.ProtoLens.FieldDescriptor MmShrinkSlabStartFtraceEvent
        lruPgs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lru_pgs"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lruPgs")) ::
              Data.ProtoLens.FieldDescriptor MmShrinkSlabStartFtraceEvent
        nrObjectsToShrink__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nr_objects_to_shrink"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nrObjectsToShrink")) ::
              Data.ProtoLens.FieldDescriptor MmShrinkSlabStartFtraceEvent
        pgsScanned__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pgs_scanned"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pgsScanned")) ::
              Data.ProtoLens.FieldDescriptor MmShrinkSlabStartFtraceEvent
        shr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "shr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'shr")) ::
              Data.ProtoLens.FieldDescriptor MmShrinkSlabStartFtraceEvent
        shrink__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "shrink"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'shrink")) ::
              Data.ProtoLens.FieldDescriptor MmShrinkSlabStartFtraceEvent
        totalScan__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total_scan"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'totalScan")) ::
              Data.ProtoLens.FieldDescriptor MmShrinkSlabStartFtraceEvent
        nid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nid")) ::
              Data.ProtoLens.FieldDescriptor MmShrinkSlabStartFtraceEvent
        priority__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "priority"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'priority")) ::
              Data.ProtoLens.FieldDescriptor MmShrinkSlabStartFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, cacheItems__field_descriptor),
           (Data.ProtoLens.Tag 2, delta__field_descriptor),
           (Data.ProtoLens.Tag 3, gfpFlags__field_descriptor),
           (Data.ProtoLens.Tag 4, lruPgs__field_descriptor),
           (Data.ProtoLens.Tag 5, nrObjectsToShrink__field_descriptor),
           (Data.ProtoLens.Tag 6, pgsScanned__field_descriptor),
           (Data.ProtoLens.Tag 7, shr__field_descriptor),
           (Data.ProtoLens.Tag 8, shrink__field_descriptor),
           (Data.ProtoLens.Tag 9, totalScan__field_descriptor),
           (Data.ProtoLens.Tag 10, nid__field_descriptor),
           (Data.ProtoLens.Tag 11, priority__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MmShrinkSlabStartFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_MmShrinkSlabStartFtraceEvent'_unknownFields = y__})
  defMessage
    = MmShrinkSlabStartFtraceEvent'_constructor
        {_MmShrinkSlabStartFtraceEvent'cacheItems = Prelude.Nothing,
         _MmShrinkSlabStartFtraceEvent'delta = Prelude.Nothing,
         _MmShrinkSlabStartFtraceEvent'gfpFlags = Prelude.Nothing,
         _MmShrinkSlabStartFtraceEvent'lruPgs = Prelude.Nothing,
         _MmShrinkSlabStartFtraceEvent'nrObjectsToShrink = Prelude.Nothing,
         _MmShrinkSlabStartFtraceEvent'pgsScanned = Prelude.Nothing,
         _MmShrinkSlabStartFtraceEvent'shr = Prelude.Nothing,
         _MmShrinkSlabStartFtraceEvent'shrink = Prelude.Nothing,
         _MmShrinkSlabStartFtraceEvent'totalScan = Prelude.Nothing,
         _MmShrinkSlabStartFtraceEvent'nid = Prelude.Nothing,
         _MmShrinkSlabStartFtraceEvent'priority = Prelude.Nothing,
         _MmShrinkSlabStartFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MmShrinkSlabStartFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MmShrinkSlabStartFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "cache_items"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"cacheItems") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "delta"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"delta") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "gfp_flags"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gfpFlags") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "lru_pgs"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"lruPgs") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "nr_objects_to_shrink"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"nrObjectsToShrink") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "pgs_scanned"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pgsScanned") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "shr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"shr") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "shrink"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"shrink") y x)
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "total_scan"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"totalScan") y x)
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "nid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nid") y x)
                        88
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "priority"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"priority") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MmShrinkSlabStartFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'cacheItems") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'delta") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gfpFlags") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'lruPgs") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'nrObjectsToShrink") _x
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
                                   (Data.ProtoLens.Field.field @"maybe'pgsScanned") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'shr") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'shrink") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"maybe'totalScan") _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field @"maybe'nid") _x
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
                                                  (Data.ProtoLens.Field.field @"maybe'priority") _x
                                            of
                                              Prelude.Nothing -> Data.Monoid.mempty
                                              (Prelude.Just _v)
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 88)
                                                     ((Prelude..)
                                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                                        Prelude.fromIntegral _v))
                                           (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                              (Lens.Family2.view
                                                 Data.ProtoLens.unknownFields _x))))))))))))
instance Control.DeepSeq.NFData MmShrinkSlabStartFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MmShrinkSlabStartFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MmShrinkSlabStartFtraceEvent'cacheItems x__)
                (Control.DeepSeq.deepseq
                   (_MmShrinkSlabStartFtraceEvent'delta x__)
                   (Control.DeepSeq.deepseq
                      (_MmShrinkSlabStartFtraceEvent'gfpFlags x__)
                      (Control.DeepSeq.deepseq
                         (_MmShrinkSlabStartFtraceEvent'lruPgs x__)
                         (Control.DeepSeq.deepseq
                            (_MmShrinkSlabStartFtraceEvent'nrObjectsToShrink x__)
                            (Control.DeepSeq.deepseq
                               (_MmShrinkSlabStartFtraceEvent'pgsScanned x__)
                               (Control.DeepSeq.deepseq
                                  (_MmShrinkSlabStartFtraceEvent'shr x__)
                                  (Control.DeepSeq.deepseq
                                     (_MmShrinkSlabStartFtraceEvent'shrink x__)
                                     (Control.DeepSeq.deepseq
                                        (_MmShrinkSlabStartFtraceEvent'totalScan x__)
                                        (Control.DeepSeq.deepseq
                                           (_MmShrinkSlabStartFtraceEvent'nid x__)
                                           (Control.DeepSeq.deepseq
                                              (_MmShrinkSlabStartFtraceEvent'priority x__)
                                              ())))))))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.order' @:: Lens' MmVmscanDirectReclaimBeginFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.maybe'order' @:: Lens' MmVmscanDirectReclaimBeginFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.mayWritepage' @:: Lens' MmVmscanDirectReclaimBeginFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.maybe'mayWritepage' @:: Lens' MmVmscanDirectReclaimBeginFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.gfpFlags' @:: Lens' MmVmscanDirectReclaimBeginFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.maybe'gfpFlags' @:: Lens' MmVmscanDirectReclaimBeginFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data MmVmscanDirectReclaimBeginFtraceEvent
  = MmVmscanDirectReclaimBeginFtraceEvent'_constructor {_MmVmscanDirectReclaimBeginFtraceEvent'order :: !(Prelude.Maybe Data.Int.Int32),
                                                        _MmVmscanDirectReclaimBeginFtraceEvent'mayWritepage :: !(Prelude.Maybe Data.Int.Int32),
                                                        _MmVmscanDirectReclaimBeginFtraceEvent'gfpFlags :: !(Prelude.Maybe Data.Word.Word32),
                                                        _MmVmscanDirectReclaimBeginFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MmVmscanDirectReclaimBeginFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MmVmscanDirectReclaimBeginFtraceEvent "order" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmVmscanDirectReclaimBeginFtraceEvent'order
           (\ x__ y__
              -> x__ {_MmVmscanDirectReclaimBeginFtraceEvent'order = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmVmscanDirectReclaimBeginFtraceEvent "maybe'order" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmVmscanDirectReclaimBeginFtraceEvent'order
           (\ x__ y__
              -> x__ {_MmVmscanDirectReclaimBeginFtraceEvent'order = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmVmscanDirectReclaimBeginFtraceEvent "mayWritepage" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmVmscanDirectReclaimBeginFtraceEvent'mayWritepage
           (\ x__ y__
              -> x__
                   {_MmVmscanDirectReclaimBeginFtraceEvent'mayWritepage = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmVmscanDirectReclaimBeginFtraceEvent "maybe'mayWritepage" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmVmscanDirectReclaimBeginFtraceEvent'mayWritepage
           (\ x__ y__
              -> x__
                   {_MmVmscanDirectReclaimBeginFtraceEvent'mayWritepage = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmVmscanDirectReclaimBeginFtraceEvent "gfpFlags" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmVmscanDirectReclaimBeginFtraceEvent'gfpFlags
           (\ x__ y__
              -> x__ {_MmVmscanDirectReclaimBeginFtraceEvent'gfpFlags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmVmscanDirectReclaimBeginFtraceEvent "maybe'gfpFlags" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmVmscanDirectReclaimBeginFtraceEvent'gfpFlags
           (\ x__ y__
              -> x__ {_MmVmscanDirectReclaimBeginFtraceEvent'gfpFlags = y__}))
        Prelude.id
instance Data.ProtoLens.Message MmVmscanDirectReclaimBeginFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.MmVmscanDirectReclaimBeginFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \%MmVmscanDirectReclaimBeginFtraceEvent\DC2\DC4\n\
      \\ENQorder\CAN\SOH \SOH(\ENQR\ENQorder\DC2#\n\
      \\rmay_writepage\CAN\STX \SOH(\ENQR\fmayWritepage\DC2\ESC\n\
      \\tgfp_flags\CAN\ETX \SOH(\rR\bgfpFlags"
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
              Data.ProtoLens.FieldDescriptor MmVmscanDirectReclaimBeginFtraceEvent
        mayWritepage__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "may_writepage"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mayWritepage")) ::
              Data.ProtoLens.FieldDescriptor MmVmscanDirectReclaimBeginFtraceEvent
        gfpFlags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gfp_flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gfpFlags")) ::
              Data.ProtoLens.FieldDescriptor MmVmscanDirectReclaimBeginFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, order__field_descriptor),
           (Data.ProtoLens.Tag 2, mayWritepage__field_descriptor),
           (Data.ProtoLens.Tag 3, gfpFlags__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MmVmscanDirectReclaimBeginFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__
                {_MmVmscanDirectReclaimBeginFtraceEvent'_unknownFields = y__})
  defMessage
    = MmVmscanDirectReclaimBeginFtraceEvent'_constructor
        {_MmVmscanDirectReclaimBeginFtraceEvent'order = Prelude.Nothing,
         _MmVmscanDirectReclaimBeginFtraceEvent'mayWritepage = Prelude.Nothing,
         _MmVmscanDirectReclaimBeginFtraceEvent'gfpFlags = Prelude.Nothing,
         _MmVmscanDirectReclaimBeginFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MmVmscanDirectReclaimBeginFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MmVmscanDirectReclaimBeginFtraceEvent
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
                                       "may_writepage"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"mayWritepage") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "gfp_flags"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gfpFlags") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "MmVmscanDirectReclaimBeginFtraceEvent"
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
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'mayWritepage") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gfpFlags") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData MmVmscanDirectReclaimBeginFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MmVmscanDirectReclaimBeginFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MmVmscanDirectReclaimBeginFtraceEvent'order x__)
                (Control.DeepSeq.deepseq
                   (_MmVmscanDirectReclaimBeginFtraceEvent'mayWritepage x__)
                   (Control.DeepSeq.deepseq
                      (_MmVmscanDirectReclaimBeginFtraceEvent'gfpFlags x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.nrReclaimed' @:: Lens' MmVmscanDirectReclaimEndFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.maybe'nrReclaimed' @:: Lens' MmVmscanDirectReclaimEndFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data MmVmscanDirectReclaimEndFtraceEvent
  = MmVmscanDirectReclaimEndFtraceEvent'_constructor {_MmVmscanDirectReclaimEndFtraceEvent'nrReclaimed :: !(Prelude.Maybe Data.Word.Word64),
                                                      _MmVmscanDirectReclaimEndFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MmVmscanDirectReclaimEndFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MmVmscanDirectReclaimEndFtraceEvent "nrReclaimed" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmVmscanDirectReclaimEndFtraceEvent'nrReclaimed
           (\ x__ y__
              -> x__ {_MmVmscanDirectReclaimEndFtraceEvent'nrReclaimed = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmVmscanDirectReclaimEndFtraceEvent "maybe'nrReclaimed" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmVmscanDirectReclaimEndFtraceEvent'nrReclaimed
           (\ x__ y__
              -> x__ {_MmVmscanDirectReclaimEndFtraceEvent'nrReclaimed = y__}))
        Prelude.id
instance Data.ProtoLens.Message MmVmscanDirectReclaimEndFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.MmVmscanDirectReclaimEndFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \#MmVmscanDirectReclaimEndFtraceEvent\DC2!\n\
      \\fnr_reclaimed\CAN\SOH \SOH(\EOTR\vnrReclaimed"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        nrReclaimed__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nr_reclaimed"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nrReclaimed")) ::
              Data.ProtoLens.FieldDescriptor MmVmscanDirectReclaimEndFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, nrReclaimed__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MmVmscanDirectReclaimEndFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_MmVmscanDirectReclaimEndFtraceEvent'_unknownFields = y__})
  defMessage
    = MmVmscanDirectReclaimEndFtraceEvent'_constructor
        {_MmVmscanDirectReclaimEndFtraceEvent'nrReclaimed = Prelude.Nothing,
         _MmVmscanDirectReclaimEndFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MmVmscanDirectReclaimEndFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MmVmscanDirectReclaimEndFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "nr_reclaimed"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nrReclaimed") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "MmVmscanDirectReclaimEndFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'nrReclaimed") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData MmVmscanDirectReclaimEndFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MmVmscanDirectReclaimEndFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MmVmscanDirectReclaimEndFtraceEvent'nrReclaimed x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.nid' @:: Lens' MmVmscanKswapdSleepFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.maybe'nid' @:: Lens' MmVmscanKswapdSleepFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data MmVmscanKswapdSleepFtraceEvent
  = MmVmscanKswapdSleepFtraceEvent'_constructor {_MmVmscanKswapdSleepFtraceEvent'nid :: !(Prelude.Maybe Data.Int.Int32),
                                                 _MmVmscanKswapdSleepFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MmVmscanKswapdSleepFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MmVmscanKswapdSleepFtraceEvent "nid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmVmscanKswapdSleepFtraceEvent'nid
           (\ x__ y__ -> x__ {_MmVmscanKswapdSleepFtraceEvent'nid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmVmscanKswapdSleepFtraceEvent "maybe'nid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmVmscanKswapdSleepFtraceEvent'nid
           (\ x__ y__ -> x__ {_MmVmscanKswapdSleepFtraceEvent'nid = y__}))
        Prelude.id
instance Data.ProtoLens.Message MmVmscanKswapdSleepFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.MmVmscanKswapdSleepFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\RSMmVmscanKswapdSleepFtraceEvent\DC2\DLE\n\
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
              Data.ProtoLens.FieldDescriptor MmVmscanKswapdSleepFtraceEvent
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, nid__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MmVmscanKswapdSleepFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_MmVmscanKswapdSleepFtraceEvent'_unknownFields = y__})
  defMessage
    = MmVmscanKswapdSleepFtraceEvent'_constructor
        {_MmVmscanKswapdSleepFtraceEvent'nid = Prelude.Nothing,
         _MmVmscanKswapdSleepFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MmVmscanKswapdSleepFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MmVmscanKswapdSleepFtraceEvent
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
          "MmVmscanKswapdSleepFtraceEvent"
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
instance Control.DeepSeq.NFData MmVmscanKswapdSleepFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MmVmscanKswapdSleepFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MmVmscanKswapdSleepFtraceEvent'nid x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.nid' @:: Lens' MmVmscanKswapdWakeFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.maybe'nid' @:: Lens' MmVmscanKswapdWakeFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.order' @:: Lens' MmVmscanKswapdWakeFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.maybe'order' @:: Lens' MmVmscanKswapdWakeFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.zid' @:: Lens' MmVmscanKswapdWakeFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields.maybe'zid' @:: Lens' MmVmscanKswapdWakeFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data MmVmscanKswapdWakeFtraceEvent
  = MmVmscanKswapdWakeFtraceEvent'_constructor {_MmVmscanKswapdWakeFtraceEvent'nid :: !(Prelude.Maybe Data.Int.Int32),
                                                _MmVmscanKswapdWakeFtraceEvent'order :: !(Prelude.Maybe Data.Int.Int32),
                                                _MmVmscanKswapdWakeFtraceEvent'zid :: !(Prelude.Maybe Data.Int.Int32),
                                                _MmVmscanKswapdWakeFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MmVmscanKswapdWakeFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MmVmscanKswapdWakeFtraceEvent "nid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmVmscanKswapdWakeFtraceEvent'nid
           (\ x__ y__ -> x__ {_MmVmscanKswapdWakeFtraceEvent'nid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmVmscanKswapdWakeFtraceEvent "maybe'nid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmVmscanKswapdWakeFtraceEvent'nid
           (\ x__ y__ -> x__ {_MmVmscanKswapdWakeFtraceEvent'nid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmVmscanKswapdWakeFtraceEvent "order" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmVmscanKswapdWakeFtraceEvent'order
           (\ x__ y__ -> x__ {_MmVmscanKswapdWakeFtraceEvent'order = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmVmscanKswapdWakeFtraceEvent "maybe'order" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmVmscanKswapdWakeFtraceEvent'order
           (\ x__ y__ -> x__ {_MmVmscanKswapdWakeFtraceEvent'order = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmVmscanKswapdWakeFtraceEvent "zid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmVmscanKswapdWakeFtraceEvent'zid
           (\ x__ y__ -> x__ {_MmVmscanKswapdWakeFtraceEvent'zid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmVmscanKswapdWakeFtraceEvent "maybe'zid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmVmscanKswapdWakeFtraceEvent'zid
           (\ x__ y__ -> x__ {_MmVmscanKswapdWakeFtraceEvent'zid = y__}))
        Prelude.id
instance Data.ProtoLens.Message MmVmscanKswapdWakeFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.MmVmscanKswapdWakeFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\GSMmVmscanKswapdWakeFtraceEvent\DC2\DLE\n\
      \\ETXnid\CAN\SOH \SOH(\ENQR\ETXnid\DC2\DC4\n\
      \\ENQorder\CAN\STX \SOH(\ENQR\ENQorder\DC2\DLE\n\
      \\ETXzid\CAN\ETX \SOH(\ENQR\ETXzid"
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
              Data.ProtoLens.FieldDescriptor MmVmscanKswapdWakeFtraceEvent
        order__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "order"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'order")) ::
              Data.ProtoLens.FieldDescriptor MmVmscanKswapdWakeFtraceEvent
        zid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "zid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'zid")) ::
              Data.ProtoLens.FieldDescriptor MmVmscanKswapdWakeFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, nid__field_descriptor),
           (Data.ProtoLens.Tag 2, order__field_descriptor),
           (Data.ProtoLens.Tag 3, zid__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MmVmscanKswapdWakeFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_MmVmscanKswapdWakeFtraceEvent'_unknownFields = y__})
  defMessage
    = MmVmscanKswapdWakeFtraceEvent'_constructor
        {_MmVmscanKswapdWakeFtraceEvent'nid = Prelude.Nothing,
         _MmVmscanKswapdWakeFtraceEvent'order = Prelude.Nothing,
         _MmVmscanKswapdWakeFtraceEvent'zid = Prelude.Nothing,
         _MmVmscanKswapdWakeFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MmVmscanKswapdWakeFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MmVmscanKswapdWakeFtraceEvent
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
                                       "zid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"zid") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MmVmscanKswapdWakeFtraceEvent"
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'zid") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData MmVmscanKswapdWakeFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MmVmscanKswapdWakeFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MmVmscanKswapdWakeFtraceEvent'nid x__)
                (Control.DeepSeq.deepseq
                   (_MmVmscanKswapdWakeFtraceEvent'order x__)
                   (Control.DeepSeq.deepseq
                      (_MmVmscanKswapdWakeFtraceEvent'zid x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \)protos/perfetto/trace/ftrace/vmscan.proto\DC2\SIperfetto.protos\"\DEL\n\
    \%MmVmscanDirectReclaimBeginFtraceEvent\DC2\DC4\n\
    \\ENQorder\CAN\SOH \SOH(\ENQR\ENQorder\DC2#\n\
    \\rmay_writepage\CAN\STX \SOH(\ENQR\fmayWritepage\DC2\ESC\n\
    \\tgfp_flags\CAN\ETX \SOH(\rR\bgfpFlags\"H\n\
    \#MmVmscanDirectReclaimEndFtraceEvent\DC2!\n\
    \\fnr_reclaimed\CAN\SOH \SOH(\EOTR\vnrReclaimed\"Y\n\
    \\GSMmVmscanKswapdWakeFtraceEvent\DC2\DLE\n\
    \\ETXnid\CAN\SOH \SOH(\ENQR\ETXnid\DC2\DC4\n\
    \\ENQorder\CAN\STX \SOH(\ENQR\ENQorder\DC2\DLE\n\
    \\ETXzid\CAN\ETX \SOH(\ENQR\ETXzid\"2\n\
    \\RSMmVmscanKswapdSleepFtraceEvent\DC2\DLE\n\
    \\ETXnid\CAN\SOH \SOH(\ENQR\ETXnid\"\212\STX\n\
    \\FSMmShrinkSlabStartFtraceEvent\DC2\US\n\
    \\vcache_items\CAN\SOH \SOH(\EOTR\n\
    \cacheItems\DC2\DC4\n\
    \\ENQdelta\CAN\STX \SOH(\EOTR\ENQdelta\DC2\ESC\n\
    \\tgfp_flags\CAN\ETX \SOH(\rR\bgfpFlags\DC2\ETB\n\
    \\alru_pgs\CAN\EOT \SOH(\EOTR\ACKlruPgs\DC2/\n\
    \\DC4nr_objects_to_shrink\CAN\ENQ \SOH(\ETXR\DC1nrObjectsToShrink\DC2\US\n\
    \\vpgs_scanned\CAN\ACK \SOH(\EOTR\n\
    \pgsScanned\DC2\DLE\n\
    \\ETXshr\CAN\a \SOH(\EOTR\ETXshr\DC2\SYN\n\
    \\ACKshrink\CAN\b \SOH(\EOTR\ACKshrink\DC2\GS\n\
    \\n\
    \total_scan\CAN\t \SOH(\EOTR\ttotalScan\DC2\DLE\n\
    \\ETXnid\CAN\n\
    \ \SOH(\ENQR\ETXnid\DC2\SUB\n\
    \\bpriority\CAN\v \SOH(\ENQR\bpriority\"\203\SOH\n\
    \\SUBMmShrinkSlabEndFtraceEvent\DC2\EM\n\
    \\bnew_scan\CAN\SOH \SOH(\ETXR\anewScan\DC2\SYN\n\
    \\ACKretval\CAN\STX \SOH(\ENQR\ACKretval\DC2\DLE\n\
    \\ETXshr\CAN\ETX \SOH(\EOTR\ETXshr\DC2\SYN\n\
    \\ACKshrink\CAN\EOT \SOH(\EOTR\ACKshrink\DC2\GS\n\
    \\n\
    \total_scan\CAN\ENQ \SOH(\ETXR\ttotalScan\DC2\US\n\
    \\vunused_scan\CAN\ACK \SOH(\ETXR\n\
    \unusedScan\DC2\DLE\n\
    \\ETXnid\CAN\a \SOH(\ENQR\ETXnidJ\135\DLE\n\
    \\ACK\DC2\EOT\EOT\NUL,\SOH\n\
    \a\n\
    \\SOH\f\DC2\ETX\EOT\NUL\DC22W Autogenerated by:\n\
    \ ../../src/tools/ftrace_proto_gen/ftrace_proto_gen.cc\n\
    \ Do not edit.\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\ENQ\NUL\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\a\NUL\v\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b-\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\b\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\b\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\b\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\b\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\b\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\t\STX#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\t\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\t\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\t\DC1\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\t!\"\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\n\
    \\STX \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\n\
    \\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\n\
    \\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\n\
    \\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\n\
    \\RS\US\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\f\NUL\SO\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\f\b+\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\r\STX#\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\r\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\r\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\r\DC2\RS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\r!\"\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT\SI\NUL\DC3\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\SI\b%\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\DLE\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETX\DLE\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX\DLE\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\DLE\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\DLE\ETB\CAN\n\
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
    \\EOT\EOT\STX\STX\STX\DC2\ETX\DC2\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\EOT\DC2\ETX\DC2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETX\DC2\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX\DC2\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX\DC2\ETB\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOT\DC4\NUL\SYN\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX\DC4\b&\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX\NAK\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETX\NAK\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX\NAK\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX\NAK\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX\NAK\ETB\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOT\ETB\NUL#\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX\ETB\b$\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX\CAN\STX\"\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\EOT\DC2\ETX\CAN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX\CAN\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX\CAN\DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX\CAN !\n\
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
    \\v\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETX\SUB\STX \n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\EOT\DC2\ETX\SUB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ENQ\DC2\ETX\SUB\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETX\SUB\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETX\SUB\RS\US\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\ETX\ESC\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\EOT\DC2\ETX\ESC\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ENQ\DC2\ETX\ESC\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\ETX\ESC\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\ETX\ESC\FS\GS\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\EOT\DC2\ETX\FS\STX*\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\EOT\DC2\ETX\FS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\ENQ\DC2\ETX\FS\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\SOH\DC2\ETX\FS\DC1%\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\ETX\DC2\ETX\FS()\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\ENQ\DC2\ETX\GS\STX\"\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\EOT\DC2\ETX\GS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\ENQ\DC2\ETX\GS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\SOH\DC2\ETX\GS\DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\ETX\DC2\ETX\GS !\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\ACK\DC2\ETX\RS\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ACK\EOT\DC2\ETX\RS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ACK\ENQ\DC2\ETX\RS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ACK\SOH\DC2\ETX\RS\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ACK\ETX\DC2\ETX\RS\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\a\DC2\ETX\US\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\a\EOT\DC2\ETX\US\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\a\ENQ\DC2\ETX\US\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\a\SOH\DC2\ETX\US\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\a\ETX\DC2\ETX\US\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\b\DC2\ETX \STX!\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\b\EOT\DC2\ETX \STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\b\ENQ\DC2\ETX \v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\b\SOH\DC2\ETX \DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\b\ETX\DC2\ETX \US \n\
    \\v\n\
    \\EOT\EOT\EOT\STX\t\DC2\ETX!\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\t\EOT\DC2\ETX!\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\t\ENQ\DC2\ETX!\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\t\SOH\DC2\ETX!\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\t\ETX\DC2\ETX!\ETB\EM\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\n\
    \\DC2\ETX\"\STX\US\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\n\
    \\EOT\DC2\ETX\"\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\n\
    \\ENQ\DC2\ETX\"\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\n\
    \\SOH\DC2\ETX\"\DC1\EM\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\n\
    \\ETX\DC2\ETX\"\FS\RS\n\
    \\n\
    \\n\
    \\STX\EOT\ENQ\DC2\EOT$\NUL,\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX$\b\"\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETX%\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\ETX%\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETX%\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX%\DC1\EM\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX%\FS\GS\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ETX&\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\EOT\DC2\ETX&\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\ETX&\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETX&\DC1\ETB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETX&\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\ETX'\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\EOT\DC2\ETX'\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ENQ\DC2\ETX'\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\ETX'\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\ETX'\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\ETX\DC2\ETX(\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\EOT\DC2\ETX(\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\ENQ\DC2\ETX(\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\SOH\DC2\ETX(\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\ETX\DC2\ETX(\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\EOT\DC2\ETX)\STX \n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\EOT\DC2\ETX)\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\ENQ\DC2\ETX)\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\SOH\DC2\ETX)\DC1\ESC\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\ETX\DC2\ETX)\RS\US\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\ENQ\DC2\ETX*\STX!\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ENQ\EOT\DC2\ETX*\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ENQ\ENQ\DC2\ETX*\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ENQ\SOH\DC2\ETX*\DC1\FS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ENQ\ETX\DC2\ETX*\US \n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\ACK\DC2\ETX+\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ACK\EOT\DC2\ETX+\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ACK\ENQ\DC2\ETX+\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ACK\SOH\DC2\ETX+\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ACK\ETX\DC2\ETX+\ETB\CAN"