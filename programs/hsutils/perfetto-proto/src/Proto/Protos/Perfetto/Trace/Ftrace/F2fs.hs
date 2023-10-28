{- This file was auto-generated from protos/perfetto/trace/ftrace/f2fs.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.F2fs (
        F2fsDoSubmitBioFtraceEvent(), F2fsEvictInodeFtraceEvent(),
        F2fsFallocateFtraceEvent(), F2fsGetDataBlockFtraceEvent(),
        F2fsGetVictimFtraceEvent(), F2fsIgetExitFtraceEvent(),
        F2fsIgetFtraceEvent(), F2fsIostatFtraceEvent(),
        F2fsIostatLatencyFtraceEvent(), F2fsNewInodeFtraceEvent(),
        F2fsReadpageFtraceEvent(), F2fsReserveNewBlockFtraceEvent(),
        F2fsSetPageDirtyFtraceEvent(), F2fsSubmitWritePageFtraceEvent(),
        F2fsSyncFileEnterFtraceEvent(), F2fsSyncFileExitFtraceEvent(),
        F2fsSyncFsFtraceEvent(), F2fsTruncateBlocksEnterFtraceEvent(),
        F2fsTruncateBlocksExitFtraceEvent(),
        F2fsTruncateDataBlocksRangeFtraceEvent(),
        F2fsTruncateFtraceEvent(),
        F2fsTruncateInodeBlocksEnterFtraceEvent(),
        F2fsTruncateInodeBlocksExitFtraceEvent(),
        F2fsTruncateNodeFtraceEvent(), F2fsTruncateNodesEnterFtraceEvent(),
        F2fsTruncateNodesExitFtraceEvent(),
        F2fsTruncatePartialNodesFtraceEvent(),
        F2fsUnlinkEnterFtraceEvent(), F2fsUnlinkExitFtraceEvent(),
        F2fsVmPageMkwriteFtraceEvent(), F2fsWriteBeginFtraceEvent(),
        F2fsWriteCheckpointFtraceEvent(), F2fsWriteEndFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dev' @:: Lens' F2fsDoSubmitBioFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dev' @:: Lens' F2fsDoSubmitBioFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.btype' @:: Lens' F2fsDoSubmitBioFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'btype' @:: Lens' F2fsDoSubmitBioFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.sync' @:: Lens' F2fsDoSubmitBioFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'sync' @:: Lens' F2fsDoSubmitBioFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.sector' @:: Lens' F2fsDoSubmitBioFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'sector' @:: Lens' F2fsDoSubmitBioFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.size' @:: Lens' F2fsDoSubmitBioFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'size' @:: Lens' F2fsDoSubmitBioFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data F2fsDoSubmitBioFtraceEvent
  = F2fsDoSubmitBioFtraceEvent'_constructor {_F2fsDoSubmitBioFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                             _F2fsDoSubmitBioFtraceEvent'btype :: !(Prelude.Maybe Data.Int.Int32),
                                             _F2fsDoSubmitBioFtraceEvent'sync :: !(Prelude.Maybe Data.Word.Word32),
                                             _F2fsDoSubmitBioFtraceEvent'sector :: !(Prelude.Maybe Data.Word.Word64),
                                             _F2fsDoSubmitBioFtraceEvent'size :: !(Prelude.Maybe Data.Word.Word32),
                                             _F2fsDoSubmitBioFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show F2fsDoSubmitBioFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField F2fsDoSubmitBioFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsDoSubmitBioFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsDoSubmitBioFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsDoSubmitBioFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsDoSubmitBioFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsDoSubmitBioFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsDoSubmitBioFtraceEvent "btype" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsDoSubmitBioFtraceEvent'btype
           (\ x__ y__ -> x__ {_F2fsDoSubmitBioFtraceEvent'btype = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsDoSubmitBioFtraceEvent "maybe'btype" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsDoSubmitBioFtraceEvent'btype
           (\ x__ y__ -> x__ {_F2fsDoSubmitBioFtraceEvent'btype = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsDoSubmitBioFtraceEvent "sync" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsDoSubmitBioFtraceEvent'sync
           (\ x__ y__ -> x__ {_F2fsDoSubmitBioFtraceEvent'sync = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsDoSubmitBioFtraceEvent "maybe'sync" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsDoSubmitBioFtraceEvent'sync
           (\ x__ y__ -> x__ {_F2fsDoSubmitBioFtraceEvent'sync = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsDoSubmitBioFtraceEvent "sector" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsDoSubmitBioFtraceEvent'sector
           (\ x__ y__ -> x__ {_F2fsDoSubmitBioFtraceEvent'sector = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsDoSubmitBioFtraceEvent "maybe'sector" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsDoSubmitBioFtraceEvent'sector
           (\ x__ y__ -> x__ {_F2fsDoSubmitBioFtraceEvent'sector = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsDoSubmitBioFtraceEvent "size" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsDoSubmitBioFtraceEvent'size
           (\ x__ y__ -> x__ {_F2fsDoSubmitBioFtraceEvent'size = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsDoSubmitBioFtraceEvent "maybe'size" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsDoSubmitBioFtraceEvent'size
           (\ x__ y__ -> x__ {_F2fsDoSubmitBioFtraceEvent'size = y__}))
        Prelude.id
instance Data.ProtoLens.Message F2fsDoSubmitBioFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.F2fsDoSubmitBioFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SUBF2fsDoSubmitBioFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DC4\n\
      \\ENQbtype\CAN\STX \SOH(\ENQR\ENQbtype\DC2\DC2\n\
      \\EOTsync\CAN\ETX \SOH(\rR\EOTsync\DC2\SYN\n\
      \\ACKsector\CAN\EOT \SOH(\EOTR\ACKsector\DC2\DC2\n\
      \\EOTsize\CAN\ENQ \SOH(\rR\EOTsize"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dev__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dev"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dev")) ::
              Data.ProtoLens.FieldDescriptor F2fsDoSubmitBioFtraceEvent
        btype__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "btype"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'btype")) ::
              Data.ProtoLens.FieldDescriptor F2fsDoSubmitBioFtraceEvent
        sync__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sync"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sync")) ::
              Data.ProtoLens.FieldDescriptor F2fsDoSubmitBioFtraceEvent
        sector__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sector"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sector")) ::
              Data.ProtoLens.FieldDescriptor F2fsDoSubmitBioFtraceEvent
        size__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'size")) ::
              Data.ProtoLens.FieldDescriptor F2fsDoSubmitBioFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, btype__field_descriptor),
           (Data.ProtoLens.Tag 3, sync__field_descriptor),
           (Data.ProtoLens.Tag 4, sector__field_descriptor),
           (Data.ProtoLens.Tag 5, size__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _F2fsDoSubmitBioFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_F2fsDoSubmitBioFtraceEvent'_unknownFields = y__})
  defMessage
    = F2fsDoSubmitBioFtraceEvent'_constructor
        {_F2fsDoSubmitBioFtraceEvent'dev = Prelude.Nothing,
         _F2fsDoSubmitBioFtraceEvent'btype = Prelude.Nothing,
         _F2fsDoSubmitBioFtraceEvent'sync = Prelude.Nothing,
         _F2fsDoSubmitBioFtraceEvent'sector = Prelude.Nothing,
         _F2fsDoSubmitBioFtraceEvent'size = Prelude.Nothing,
         _F2fsDoSubmitBioFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          F2fsDoSubmitBioFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser F2fsDoSubmitBioFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "dev"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dev") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "btype"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"btype") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "sync"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"sync") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "sector"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"sector") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "size"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"size") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "F2fsDoSubmitBioFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dev") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'btype") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'sync") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'sector") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'size") _x
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
instance Control.DeepSeq.NFData F2fsDoSubmitBioFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_F2fsDoSubmitBioFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_F2fsDoSubmitBioFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_F2fsDoSubmitBioFtraceEvent'btype x__)
                   (Control.DeepSeq.deepseq
                      (_F2fsDoSubmitBioFtraceEvent'sync x__)
                      (Control.DeepSeq.deepseq
                         (_F2fsDoSubmitBioFtraceEvent'sector x__)
                         (Control.DeepSeq.deepseq
                            (_F2fsDoSubmitBioFtraceEvent'size x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dev' @:: Lens' F2fsEvictInodeFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dev' @:: Lens' F2fsEvictInodeFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.ino' @:: Lens' F2fsEvictInodeFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'ino' @:: Lens' F2fsEvictInodeFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.pino' @:: Lens' F2fsEvictInodeFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'pino' @:: Lens' F2fsEvictInodeFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.mode' @:: Lens' F2fsEvictInodeFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'mode' @:: Lens' F2fsEvictInodeFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.size' @:: Lens' F2fsEvictInodeFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'size' @:: Lens' F2fsEvictInodeFtraceEvent (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.nlink' @:: Lens' F2fsEvictInodeFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'nlink' @:: Lens' F2fsEvictInodeFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.blocks' @:: Lens' F2fsEvictInodeFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'blocks' @:: Lens' F2fsEvictInodeFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.advise' @:: Lens' F2fsEvictInodeFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'advise' @:: Lens' F2fsEvictInodeFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data F2fsEvictInodeFtraceEvent
  = F2fsEvictInodeFtraceEvent'_constructor {_F2fsEvictInodeFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                            _F2fsEvictInodeFtraceEvent'ino :: !(Prelude.Maybe Data.Word.Word64),
                                            _F2fsEvictInodeFtraceEvent'pino :: !(Prelude.Maybe Data.Word.Word64),
                                            _F2fsEvictInodeFtraceEvent'mode :: !(Prelude.Maybe Data.Word.Word32),
                                            _F2fsEvictInodeFtraceEvent'size :: !(Prelude.Maybe Data.Int.Int64),
                                            _F2fsEvictInodeFtraceEvent'nlink :: !(Prelude.Maybe Data.Word.Word32),
                                            _F2fsEvictInodeFtraceEvent'blocks :: !(Prelude.Maybe Data.Word.Word64),
                                            _F2fsEvictInodeFtraceEvent'advise :: !(Prelude.Maybe Data.Word.Word32),
                                            _F2fsEvictInodeFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show F2fsEvictInodeFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField F2fsEvictInodeFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsEvictInodeFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsEvictInodeFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsEvictInodeFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsEvictInodeFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsEvictInodeFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsEvictInodeFtraceEvent "ino" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsEvictInodeFtraceEvent'ino
           (\ x__ y__ -> x__ {_F2fsEvictInodeFtraceEvent'ino = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsEvictInodeFtraceEvent "maybe'ino" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsEvictInodeFtraceEvent'ino
           (\ x__ y__ -> x__ {_F2fsEvictInodeFtraceEvent'ino = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsEvictInodeFtraceEvent "pino" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsEvictInodeFtraceEvent'pino
           (\ x__ y__ -> x__ {_F2fsEvictInodeFtraceEvent'pino = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsEvictInodeFtraceEvent "maybe'pino" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsEvictInodeFtraceEvent'pino
           (\ x__ y__ -> x__ {_F2fsEvictInodeFtraceEvent'pino = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsEvictInodeFtraceEvent "mode" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsEvictInodeFtraceEvent'mode
           (\ x__ y__ -> x__ {_F2fsEvictInodeFtraceEvent'mode = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsEvictInodeFtraceEvent "maybe'mode" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsEvictInodeFtraceEvent'mode
           (\ x__ y__ -> x__ {_F2fsEvictInodeFtraceEvent'mode = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsEvictInodeFtraceEvent "size" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsEvictInodeFtraceEvent'size
           (\ x__ y__ -> x__ {_F2fsEvictInodeFtraceEvent'size = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsEvictInodeFtraceEvent "maybe'size" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsEvictInodeFtraceEvent'size
           (\ x__ y__ -> x__ {_F2fsEvictInodeFtraceEvent'size = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsEvictInodeFtraceEvent "nlink" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsEvictInodeFtraceEvent'nlink
           (\ x__ y__ -> x__ {_F2fsEvictInodeFtraceEvent'nlink = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsEvictInodeFtraceEvent "maybe'nlink" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsEvictInodeFtraceEvent'nlink
           (\ x__ y__ -> x__ {_F2fsEvictInodeFtraceEvent'nlink = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsEvictInodeFtraceEvent "blocks" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsEvictInodeFtraceEvent'blocks
           (\ x__ y__ -> x__ {_F2fsEvictInodeFtraceEvent'blocks = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsEvictInodeFtraceEvent "maybe'blocks" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsEvictInodeFtraceEvent'blocks
           (\ x__ y__ -> x__ {_F2fsEvictInodeFtraceEvent'blocks = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsEvictInodeFtraceEvent "advise" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsEvictInodeFtraceEvent'advise
           (\ x__ y__ -> x__ {_F2fsEvictInodeFtraceEvent'advise = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsEvictInodeFtraceEvent "maybe'advise" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsEvictInodeFtraceEvent'advise
           (\ x__ y__ -> x__ {_F2fsEvictInodeFtraceEvent'advise = y__}))
        Prelude.id
instance Data.ProtoLens.Message F2fsEvictInodeFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.F2fsEvictInodeFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\EMF2fsEvictInodeFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
      \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DC2\n\
      \\EOTpino\CAN\ETX \SOH(\EOTR\EOTpino\DC2\DC2\n\
      \\EOTmode\CAN\EOT \SOH(\rR\EOTmode\DC2\DC2\n\
      \\EOTsize\CAN\ENQ \SOH(\ETXR\EOTsize\DC2\DC4\n\
      \\ENQnlink\CAN\ACK \SOH(\rR\ENQnlink\DC2\SYN\n\
      \\ACKblocks\CAN\a \SOH(\EOTR\ACKblocks\DC2\SYN\n\
      \\ACKadvise\CAN\b \SOH(\rR\ACKadvise"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dev__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dev"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dev")) ::
              Data.ProtoLens.FieldDescriptor F2fsEvictInodeFtraceEvent
        ino__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ino"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ino")) ::
              Data.ProtoLens.FieldDescriptor F2fsEvictInodeFtraceEvent
        pino__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pino"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pino")) ::
              Data.ProtoLens.FieldDescriptor F2fsEvictInodeFtraceEvent
        mode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mode"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mode")) ::
              Data.ProtoLens.FieldDescriptor F2fsEvictInodeFtraceEvent
        size__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'size")) ::
              Data.ProtoLens.FieldDescriptor F2fsEvictInodeFtraceEvent
        nlink__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nlink"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nlink")) ::
              Data.ProtoLens.FieldDescriptor F2fsEvictInodeFtraceEvent
        blocks__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "blocks"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'blocks")) ::
              Data.ProtoLens.FieldDescriptor F2fsEvictInodeFtraceEvent
        advise__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "advise"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'advise")) ::
              Data.ProtoLens.FieldDescriptor F2fsEvictInodeFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, ino__field_descriptor),
           (Data.ProtoLens.Tag 3, pino__field_descriptor),
           (Data.ProtoLens.Tag 4, mode__field_descriptor),
           (Data.ProtoLens.Tag 5, size__field_descriptor),
           (Data.ProtoLens.Tag 6, nlink__field_descriptor),
           (Data.ProtoLens.Tag 7, blocks__field_descriptor),
           (Data.ProtoLens.Tag 8, advise__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _F2fsEvictInodeFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_F2fsEvictInodeFtraceEvent'_unknownFields = y__})
  defMessage
    = F2fsEvictInodeFtraceEvent'_constructor
        {_F2fsEvictInodeFtraceEvent'dev = Prelude.Nothing,
         _F2fsEvictInodeFtraceEvent'ino = Prelude.Nothing,
         _F2fsEvictInodeFtraceEvent'pino = Prelude.Nothing,
         _F2fsEvictInodeFtraceEvent'mode = Prelude.Nothing,
         _F2fsEvictInodeFtraceEvent'size = Prelude.Nothing,
         _F2fsEvictInodeFtraceEvent'nlink = Prelude.Nothing,
         _F2fsEvictInodeFtraceEvent'blocks = Prelude.Nothing,
         _F2fsEvictInodeFtraceEvent'advise = Prelude.Nothing,
         _F2fsEvictInodeFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          F2fsEvictInodeFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser F2fsEvictInodeFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "dev"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dev") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ino"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ino") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "pino"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pino") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "mode"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"mode") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "size"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"size") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "nlink"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nlink") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "blocks"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"blocks") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "advise"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"advise") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "F2fsEvictInodeFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dev") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ino") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pino") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'mode") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'size") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nlink") _x
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
                                      (Data.ProtoLens.Field.field @"maybe'blocks") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'advise") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            ((Prelude..)
                                               Data.ProtoLens.Encoding.Bytes.putVarInt
                                               Prelude.fromIntegral _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData F2fsEvictInodeFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_F2fsEvictInodeFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_F2fsEvictInodeFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_F2fsEvictInodeFtraceEvent'ino x__)
                   (Control.DeepSeq.deepseq
                      (_F2fsEvictInodeFtraceEvent'pino x__)
                      (Control.DeepSeq.deepseq
                         (_F2fsEvictInodeFtraceEvent'mode x__)
                         (Control.DeepSeq.deepseq
                            (_F2fsEvictInodeFtraceEvent'size x__)
                            (Control.DeepSeq.deepseq
                               (_F2fsEvictInodeFtraceEvent'nlink x__)
                               (Control.DeepSeq.deepseq
                                  (_F2fsEvictInodeFtraceEvent'blocks x__)
                                  (Control.DeepSeq.deepseq
                                     (_F2fsEvictInodeFtraceEvent'advise x__) ()))))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dev' @:: Lens' F2fsFallocateFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dev' @:: Lens' F2fsFallocateFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.ino' @:: Lens' F2fsFallocateFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'ino' @:: Lens' F2fsFallocateFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.mode' @:: Lens' F2fsFallocateFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'mode' @:: Lens' F2fsFallocateFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.offset' @:: Lens' F2fsFallocateFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'offset' @:: Lens' F2fsFallocateFtraceEvent (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.len' @:: Lens' F2fsFallocateFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'len' @:: Lens' F2fsFallocateFtraceEvent (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.size' @:: Lens' F2fsFallocateFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'size' @:: Lens' F2fsFallocateFtraceEvent (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.blocks' @:: Lens' F2fsFallocateFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'blocks' @:: Lens' F2fsFallocateFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.ret' @:: Lens' F2fsFallocateFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'ret' @:: Lens' F2fsFallocateFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data F2fsFallocateFtraceEvent
  = F2fsFallocateFtraceEvent'_constructor {_F2fsFallocateFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                           _F2fsFallocateFtraceEvent'ino :: !(Prelude.Maybe Data.Word.Word64),
                                           _F2fsFallocateFtraceEvent'mode :: !(Prelude.Maybe Data.Int.Int32),
                                           _F2fsFallocateFtraceEvent'offset :: !(Prelude.Maybe Data.Int.Int64),
                                           _F2fsFallocateFtraceEvent'len :: !(Prelude.Maybe Data.Int.Int64),
                                           _F2fsFallocateFtraceEvent'size :: !(Prelude.Maybe Data.Int.Int64),
                                           _F2fsFallocateFtraceEvent'blocks :: !(Prelude.Maybe Data.Word.Word64),
                                           _F2fsFallocateFtraceEvent'ret :: !(Prelude.Maybe Data.Int.Int32),
                                           _F2fsFallocateFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show F2fsFallocateFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField F2fsFallocateFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsFallocateFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsFallocateFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsFallocateFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsFallocateFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsFallocateFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsFallocateFtraceEvent "ino" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsFallocateFtraceEvent'ino
           (\ x__ y__ -> x__ {_F2fsFallocateFtraceEvent'ino = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsFallocateFtraceEvent "maybe'ino" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsFallocateFtraceEvent'ino
           (\ x__ y__ -> x__ {_F2fsFallocateFtraceEvent'ino = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsFallocateFtraceEvent "mode" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsFallocateFtraceEvent'mode
           (\ x__ y__ -> x__ {_F2fsFallocateFtraceEvent'mode = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsFallocateFtraceEvent "maybe'mode" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsFallocateFtraceEvent'mode
           (\ x__ y__ -> x__ {_F2fsFallocateFtraceEvent'mode = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsFallocateFtraceEvent "offset" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsFallocateFtraceEvent'offset
           (\ x__ y__ -> x__ {_F2fsFallocateFtraceEvent'offset = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsFallocateFtraceEvent "maybe'offset" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsFallocateFtraceEvent'offset
           (\ x__ y__ -> x__ {_F2fsFallocateFtraceEvent'offset = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsFallocateFtraceEvent "len" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsFallocateFtraceEvent'len
           (\ x__ y__ -> x__ {_F2fsFallocateFtraceEvent'len = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsFallocateFtraceEvent "maybe'len" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsFallocateFtraceEvent'len
           (\ x__ y__ -> x__ {_F2fsFallocateFtraceEvent'len = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsFallocateFtraceEvent "size" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsFallocateFtraceEvent'size
           (\ x__ y__ -> x__ {_F2fsFallocateFtraceEvent'size = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsFallocateFtraceEvent "maybe'size" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsFallocateFtraceEvent'size
           (\ x__ y__ -> x__ {_F2fsFallocateFtraceEvent'size = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsFallocateFtraceEvent "blocks" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsFallocateFtraceEvent'blocks
           (\ x__ y__ -> x__ {_F2fsFallocateFtraceEvent'blocks = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsFallocateFtraceEvent "maybe'blocks" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsFallocateFtraceEvent'blocks
           (\ x__ y__ -> x__ {_F2fsFallocateFtraceEvent'blocks = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsFallocateFtraceEvent "ret" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsFallocateFtraceEvent'ret
           (\ x__ y__ -> x__ {_F2fsFallocateFtraceEvent'ret = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsFallocateFtraceEvent "maybe'ret" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsFallocateFtraceEvent'ret
           (\ x__ y__ -> x__ {_F2fsFallocateFtraceEvent'ret = y__}))
        Prelude.id
instance Data.ProtoLens.Message F2fsFallocateFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.F2fsFallocateFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\CANF2fsFallocateFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
      \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DC2\n\
      \\EOTmode\CAN\ETX \SOH(\ENQR\EOTmode\DC2\SYN\n\
      \\ACKoffset\CAN\EOT \SOH(\ETXR\ACKoffset\DC2\DLE\n\
      \\ETXlen\CAN\ENQ \SOH(\ETXR\ETXlen\DC2\DC2\n\
      \\EOTsize\CAN\ACK \SOH(\ETXR\EOTsize\DC2\SYN\n\
      \\ACKblocks\CAN\a \SOH(\EOTR\ACKblocks\DC2\DLE\n\
      \\ETXret\CAN\b \SOH(\ENQR\ETXret"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dev__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dev"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dev")) ::
              Data.ProtoLens.FieldDescriptor F2fsFallocateFtraceEvent
        ino__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ino"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ino")) ::
              Data.ProtoLens.FieldDescriptor F2fsFallocateFtraceEvent
        mode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mode"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mode")) ::
              Data.ProtoLens.FieldDescriptor F2fsFallocateFtraceEvent
        offset__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "offset"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'offset")) ::
              Data.ProtoLens.FieldDescriptor F2fsFallocateFtraceEvent
        len__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "len"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'len")) ::
              Data.ProtoLens.FieldDescriptor F2fsFallocateFtraceEvent
        size__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'size")) ::
              Data.ProtoLens.FieldDescriptor F2fsFallocateFtraceEvent
        blocks__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "blocks"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'blocks")) ::
              Data.ProtoLens.FieldDescriptor F2fsFallocateFtraceEvent
        ret__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ret"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ret")) ::
              Data.ProtoLens.FieldDescriptor F2fsFallocateFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, ino__field_descriptor),
           (Data.ProtoLens.Tag 3, mode__field_descriptor),
           (Data.ProtoLens.Tag 4, offset__field_descriptor),
           (Data.ProtoLens.Tag 5, len__field_descriptor),
           (Data.ProtoLens.Tag 6, size__field_descriptor),
           (Data.ProtoLens.Tag 7, blocks__field_descriptor),
           (Data.ProtoLens.Tag 8, ret__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _F2fsFallocateFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_F2fsFallocateFtraceEvent'_unknownFields = y__})
  defMessage
    = F2fsFallocateFtraceEvent'_constructor
        {_F2fsFallocateFtraceEvent'dev = Prelude.Nothing,
         _F2fsFallocateFtraceEvent'ino = Prelude.Nothing,
         _F2fsFallocateFtraceEvent'mode = Prelude.Nothing,
         _F2fsFallocateFtraceEvent'offset = Prelude.Nothing,
         _F2fsFallocateFtraceEvent'len = Prelude.Nothing,
         _F2fsFallocateFtraceEvent'size = Prelude.Nothing,
         _F2fsFallocateFtraceEvent'blocks = Prelude.Nothing,
         _F2fsFallocateFtraceEvent'ret = Prelude.Nothing,
         _F2fsFallocateFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          F2fsFallocateFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser F2fsFallocateFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "dev"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dev") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ino"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ino") y x)
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
                                       "offset"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"offset") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "len"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"len") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "size"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"size") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "blocks"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"blocks") y x)
                        64
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
          (do loop Data.ProtoLens.defMessage) "F2fsFallocateFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dev") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ino") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
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
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'offset") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'len") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'size") _x
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
                                      (Data.ProtoLens.Field.field @"maybe'blocks") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'ret") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            ((Prelude..)
                                               Data.ProtoLens.Encoding.Bytes.putVarInt
                                               Prelude.fromIntegral _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData F2fsFallocateFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_F2fsFallocateFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_F2fsFallocateFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_F2fsFallocateFtraceEvent'ino x__)
                   (Control.DeepSeq.deepseq
                      (_F2fsFallocateFtraceEvent'mode x__)
                      (Control.DeepSeq.deepseq
                         (_F2fsFallocateFtraceEvent'offset x__)
                         (Control.DeepSeq.deepseq
                            (_F2fsFallocateFtraceEvent'len x__)
                            (Control.DeepSeq.deepseq
                               (_F2fsFallocateFtraceEvent'size x__)
                               (Control.DeepSeq.deepseq
                                  (_F2fsFallocateFtraceEvent'blocks x__)
                                  (Control.DeepSeq.deepseq
                                     (_F2fsFallocateFtraceEvent'ret x__) ()))))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dev' @:: Lens' F2fsGetDataBlockFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dev' @:: Lens' F2fsGetDataBlockFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.ino' @:: Lens' F2fsGetDataBlockFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'ino' @:: Lens' F2fsGetDataBlockFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.iblock' @:: Lens' F2fsGetDataBlockFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'iblock' @:: Lens' F2fsGetDataBlockFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.bhStart' @:: Lens' F2fsGetDataBlockFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'bhStart' @:: Lens' F2fsGetDataBlockFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.bhSize' @:: Lens' F2fsGetDataBlockFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'bhSize' @:: Lens' F2fsGetDataBlockFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.ret' @:: Lens' F2fsGetDataBlockFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'ret' @:: Lens' F2fsGetDataBlockFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data F2fsGetDataBlockFtraceEvent
  = F2fsGetDataBlockFtraceEvent'_constructor {_F2fsGetDataBlockFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                              _F2fsGetDataBlockFtraceEvent'ino :: !(Prelude.Maybe Data.Word.Word64),
                                              _F2fsGetDataBlockFtraceEvent'iblock :: !(Prelude.Maybe Data.Word.Word64),
                                              _F2fsGetDataBlockFtraceEvent'bhStart :: !(Prelude.Maybe Data.Word.Word64),
                                              _F2fsGetDataBlockFtraceEvent'bhSize :: !(Prelude.Maybe Data.Word.Word64),
                                              _F2fsGetDataBlockFtraceEvent'ret :: !(Prelude.Maybe Data.Int.Int32),
                                              _F2fsGetDataBlockFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show F2fsGetDataBlockFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField F2fsGetDataBlockFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsGetDataBlockFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsGetDataBlockFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsGetDataBlockFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsGetDataBlockFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsGetDataBlockFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsGetDataBlockFtraceEvent "ino" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsGetDataBlockFtraceEvent'ino
           (\ x__ y__ -> x__ {_F2fsGetDataBlockFtraceEvent'ino = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsGetDataBlockFtraceEvent "maybe'ino" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsGetDataBlockFtraceEvent'ino
           (\ x__ y__ -> x__ {_F2fsGetDataBlockFtraceEvent'ino = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsGetDataBlockFtraceEvent "iblock" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsGetDataBlockFtraceEvent'iblock
           (\ x__ y__ -> x__ {_F2fsGetDataBlockFtraceEvent'iblock = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsGetDataBlockFtraceEvent "maybe'iblock" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsGetDataBlockFtraceEvent'iblock
           (\ x__ y__ -> x__ {_F2fsGetDataBlockFtraceEvent'iblock = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsGetDataBlockFtraceEvent "bhStart" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsGetDataBlockFtraceEvent'bhStart
           (\ x__ y__ -> x__ {_F2fsGetDataBlockFtraceEvent'bhStart = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsGetDataBlockFtraceEvent "maybe'bhStart" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsGetDataBlockFtraceEvent'bhStart
           (\ x__ y__ -> x__ {_F2fsGetDataBlockFtraceEvent'bhStart = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsGetDataBlockFtraceEvent "bhSize" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsGetDataBlockFtraceEvent'bhSize
           (\ x__ y__ -> x__ {_F2fsGetDataBlockFtraceEvent'bhSize = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsGetDataBlockFtraceEvent "maybe'bhSize" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsGetDataBlockFtraceEvent'bhSize
           (\ x__ y__ -> x__ {_F2fsGetDataBlockFtraceEvent'bhSize = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsGetDataBlockFtraceEvent "ret" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsGetDataBlockFtraceEvent'ret
           (\ x__ y__ -> x__ {_F2fsGetDataBlockFtraceEvent'ret = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsGetDataBlockFtraceEvent "maybe'ret" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsGetDataBlockFtraceEvent'ret
           (\ x__ y__ -> x__ {_F2fsGetDataBlockFtraceEvent'ret = y__}))
        Prelude.id
instance Data.ProtoLens.Message F2fsGetDataBlockFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.F2fsGetDataBlockFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ESCF2fsGetDataBlockFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
      \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\SYN\n\
      \\ACKiblock\CAN\ETX \SOH(\EOTR\ACKiblock\DC2\EM\n\
      \\bbh_start\CAN\EOT \SOH(\EOTR\abhStart\DC2\ETB\n\
      \\abh_size\CAN\ENQ \SOH(\EOTR\ACKbhSize\DC2\DLE\n\
      \\ETXret\CAN\ACK \SOH(\ENQR\ETXret"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dev__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dev"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dev")) ::
              Data.ProtoLens.FieldDescriptor F2fsGetDataBlockFtraceEvent
        ino__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ino"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ino")) ::
              Data.ProtoLens.FieldDescriptor F2fsGetDataBlockFtraceEvent
        iblock__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "iblock"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'iblock")) ::
              Data.ProtoLens.FieldDescriptor F2fsGetDataBlockFtraceEvent
        bhStart__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bh_start"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bhStart")) ::
              Data.ProtoLens.FieldDescriptor F2fsGetDataBlockFtraceEvent
        bhSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bh_size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bhSize")) ::
              Data.ProtoLens.FieldDescriptor F2fsGetDataBlockFtraceEvent
        ret__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ret"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ret")) ::
              Data.ProtoLens.FieldDescriptor F2fsGetDataBlockFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, ino__field_descriptor),
           (Data.ProtoLens.Tag 3, iblock__field_descriptor),
           (Data.ProtoLens.Tag 4, bhStart__field_descriptor),
           (Data.ProtoLens.Tag 5, bhSize__field_descriptor),
           (Data.ProtoLens.Tag 6, ret__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _F2fsGetDataBlockFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_F2fsGetDataBlockFtraceEvent'_unknownFields = y__})
  defMessage
    = F2fsGetDataBlockFtraceEvent'_constructor
        {_F2fsGetDataBlockFtraceEvent'dev = Prelude.Nothing,
         _F2fsGetDataBlockFtraceEvent'ino = Prelude.Nothing,
         _F2fsGetDataBlockFtraceEvent'iblock = Prelude.Nothing,
         _F2fsGetDataBlockFtraceEvent'bhStart = Prelude.Nothing,
         _F2fsGetDataBlockFtraceEvent'bhSize = Prelude.Nothing,
         _F2fsGetDataBlockFtraceEvent'ret = Prelude.Nothing,
         _F2fsGetDataBlockFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          F2fsGetDataBlockFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser F2fsGetDataBlockFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "dev"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dev") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ino"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ino") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "iblock"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"iblock") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "bh_start"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"bhStart") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "bh_size"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"bhSize") y x)
                        48
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
          (do loop Data.ProtoLens.defMessage) "F2fsGetDataBlockFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dev") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ino") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'iblock") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'bhStart") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'bhSize") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ret") _x
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
instance Control.DeepSeq.NFData F2fsGetDataBlockFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_F2fsGetDataBlockFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_F2fsGetDataBlockFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_F2fsGetDataBlockFtraceEvent'ino x__)
                   (Control.DeepSeq.deepseq
                      (_F2fsGetDataBlockFtraceEvent'iblock x__)
                      (Control.DeepSeq.deepseq
                         (_F2fsGetDataBlockFtraceEvent'bhStart x__)
                         (Control.DeepSeq.deepseq
                            (_F2fsGetDataBlockFtraceEvent'bhSize x__)
                            (Control.DeepSeq.deepseq
                               (_F2fsGetDataBlockFtraceEvent'ret x__) ()))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dev' @:: Lens' F2fsGetVictimFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dev' @:: Lens' F2fsGetVictimFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.type'' @:: Lens' F2fsGetVictimFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'type'' @:: Lens' F2fsGetVictimFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.gcType' @:: Lens' F2fsGetVictimFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'gcType' @:: Lens' F2fsGetVictimFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.allocMode' @:: Lens' F2fsGetVictimFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'allocMode' @:: Lens' F2fsGetVictimFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.gcMode' @:: Lens' F2fsGetVictimFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'gcMode' @:: Lens' F2fsGetVictimFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.victim' @:: Lens' F2fsGetVictimFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'victim' @:: Lens' F2fsGetVictimFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.ofsUnit' @:: Lens' F2fsGetVictimFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'ofsUnit' @:: Lens' F2fsGetVictimFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.preVictim' @:: Lens' F2fsGetVictimFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'preVictim' @:: Lens' F2fsGetVictimFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.prefree' @:: Lens' F2fsGetVictimFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'prefree' @:: Lens' F2fsGetVictimFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.free' @:: Lens' F2fsGetVictimFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'free' @:: Lens' F2fsGetVictimFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.cost' @:: Lens' F2fsGetVictimFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'cost' @:: Lens' F2fsGetVictimFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data F2fsGetVictimFtraceEvent
  = F2fsGetVictimFtraceEvent'_constructor {_F2fsGetVictimFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                           _F2fsGetVictimFtraceEvent'type' :: !(Prelude.Maybe Data.Int.Int32),
                                           _F2fsGetVictimFtraceEvent'gcType :: !(Prelude.Maybe Data.Int.Int32),
                                           _F2fsGetVictimFtraceEvent'allocMode :: !(Prelude.Maybe Data.Int.Int32),
                                           _F2fsGetVictimFtraceEvent'gcMode :: !(Prelude.Maybe Data.Int.Int32),
                                           _F2fsGetVictimFtraceEvent'victim :: !(Prelude.Maybe Data.Word.Word32),
                                           _F2fsGetVictimFtraceEvent'ofsUnit :: !(Prelude.Maybe Data.Word.Word32),
                                           _F2fsGetVictimFtraceEvent'preVictim :: !(Prelude.Maybe Data.Word.Word32),
                                           _F2fsGetVictimFtraceEvent'prefree :: !(Prelude.Maybe Data.Word.Word32),
                                           _F2fsGetVictimFtraceEvent'free :: !(Prelude.Maybe Data.Word.Word32),
                                           _F2fsGetVictimFtraceEvent'cost :: !(Prelude.Maybe Data.Word.Word32),
                                           _F2fsGetVictimFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show F2fsGetVictimFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField F2fsGetVictimFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsGetVictimFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsGetVictimFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsGetVictimFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsGetVictimFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsGetVictimFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsGetVictimFtraceEvent "type'" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsGetVictimFtraceEvent'type'
           (\ x__ y__ -> x__ {_F2fsGetVictimFtraceEvent'type' = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsGetVictimFtraceEvent "maybe'type'" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsGetVictimFtraceEvent'type'
           (\ x__ y__ -> x__ {_F2fsGetVictimFtraceEvent'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsGetVictimFtraceEvent "gcType" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsGetVictimFtraceEvent'gcType
           (\ x__ y__ -> x__ {_F2fsGetVictimFtraceEvent'gcType = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsGetVictimFtraceEvent "maybe'gcType" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsGetVictimFtraceEvent'gcType
           (\ x__ y__ -> x__ {_F2fsGetVictimFtraceEvent'gcType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsGetVictimFtraceEvent "allocMode" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsGetVictimFtraceEvent'allocMode
           (\ x__ y__ -> x__ {_F2fsGetVictimFtraceEvent'allocMode = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsGetVictimFtraceEvent "maybe'allocMode" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsGetVictimFtraceEvent'allocMode
           (\ x__ y__ -> x__ {_F2fsGetVictimFtraceEvent'allocMode = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsGetVictimFtraceEvent "gcMode" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsGetVictimFtraceEvent'gcMode
           (\ x__ y__ -> x__ {_F2fsGetVictimFtraceEvent'gcMode = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsGetVictimFtraceEvent "maybe'gcMode" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsGetVictimFtraceEvent'gcMode
           (\ x__ y__ -> x__ {_F2fsGetVictimFtraceEvent'gcMode = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsGetVictimFtraceEvent "victim" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsGetVictimFtraceEvent'victim
           (\ x__ y__ -> x__ {_F2fsGetVictimFtraceEvent'victim = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsGetVictimFtraceEvent "maybe'victim" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsGetVictimFtraceEvent'victim
           (\ x__ y__ -> x__ {_F2fsGetVictimFtraceEvent'victim = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsGetVictimFtraceEvent "ofsUnit" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsGetVictimFtraceEvent'ofsUnit
           (\ x__ y__ -> x__ {_F2fsGetVictimFtraceEvent'ofsUnit = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsGetVictimFtraceEvent "maybe'ofsUnit" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsGetVictimFtraceEvent'ofsUnit
           (\ x__ y__ -> x__ {_F2fsGetVictimFtraceEvent'ofsUnit = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsGetVictimFtraceEvent "preVictim" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsGetVictimFtraceEvent'preVictim
           (\ x__ y__ -> x__ {_F2fsGetVictimFtraceEvent'preVictim = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsGetVictimFtraceEvent "maybe'preVictim" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsGetVictimFtraceEvent'preVictim
           (\ x__ y__ -> x__ {_F2fsGetVictimFtraceEvent'preVictim = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsGetVictimFtraceEvent "prefree" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsGetVictimFtraceEvent'prefree
           (\ x__ y__ -> x__ {_F2fsGetVictimFtraceEvent'prefree = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsGetVictimFtraceEvent "maybe'prefree" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsGetVictimFtraceEvent'prefree
           (\ x__ y__ -> x__ {_F2fsGetVictimFtraceEvent'prefree = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsGetVictimFtraceEvent "free" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsGetVictimFtraceEvent'free
           (\ x__ y__ -> x__ {_F2fsGetVictimFtraceEvent'free = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsGetVictimFtraceEvent "maybe'free" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsGetVictimFtraceEvent'free
           (\ x__ y__ -> x__ {_F2fsGetVictimFtraceEvent'free = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsGetVictimFtraceEvent "cost" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsGetVictimFtraceEvent'cost
           (\ x__ y__ -> x__ {_F2fsGetVictimFtraceEvent'cost = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsGetVictimFtraceEvent "maybe'cost" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsGetVictimFtraceEvent'cost
           (\ x__ y__ -> x__ {_F2fsGetVictimFtraceEvent'cost = y__}))
        Prelude.id
instance Data.ProtoLens.Message F2fsGetVictimFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.F2fsGetVictimFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\CANF2fsGetVictimFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DC2\n\
      \\EOTtype\CAN\STX \SOH(\ENQR\EOTtype\DC2\ETB\n\
      \\agc_type\CAN\ETX \SOH(\ENQR\ACKgcType\DC2\GS\n\
      \\n\
      \alloc_mode\CAN\EOT \SOH(\ENQR\tallocMode\DC2\ETB\n\
      \\agc_mode\CAN\ENQ \SOH(\ENQR\ACKgcMode\DC2\SYN\n\
      \\ACKvictim\CAN\ACK \SOH(\rR\ACKvictim\DC2\EM\n\
      \\bofs_unit\CAN\a \SOH(\rR\aofsUnit\DC2\GS\n\
      \\n\
      \pre_victim\CAN\b \SOH(\rR\tpreVictim\DC2\CAN\n\
      \\aprefree\CAN\t \SOH(\rR\aprefree\DC2\DC2\n\
      \\EOTfree\CAN\n\
      \ \SOH(\rR\EOTfree\DC2\DC2\n\
      \\EOTcost\CAN\v \SOH(\rR\EOTcost"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dev__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dev"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dev")) ::
              Data.ProtoLens.FieldDescriptor F2fsGetVictimFtraceEvent
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'type'")) ::
              Data.ProtoLens.FieldDescriptor F2fsGetVictimFtraceEvent
        gcType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gc_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gcType")) ::
              Data.ProtoLens.FieldDescriptor F2fsGetVictimFtraceEvent
        allocMode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "alloc_mode"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'allocMode")) ::
              Data.ProtoLens.FieldDescriptor F2fsGetVictimFtraceEvent
        gcMode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gc_mode"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gcMode")) ::
              Data.ProtoLens.FieldDescriptor F2fsGetVictimFtraceEvent
        victim__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "victim"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'victim")) ::
              Data.ProtoLens.FieldDescriptor F2fsGetVictimFtraceEvent
        ofsUnit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ofs_unit"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ofsUnit")) ::
              Data.ProtoLens.FieldDescriptor F2fsGetVictimFtraceEvent
        preVictim__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pre_victim"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'preVictim")) ::
              Data.ProtoLens.FieldDescriptor F2fsGetVictimFtraceEvent
        prefree__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "prefree"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'prefree")) ::
              Data.ProtoLens.FieldDescriptor F2fsGetVictimFtraceEvent
        free__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "free"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'free")) ::
              Data.ProtoLens.FieldDescriptor F2fsGetVictimFtraceEvent
        cost__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cost"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cost")) ::
              Data.ProtoLens.FieldDescriptor F2fsGetVictimFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, type'__field_descriptor),
           (Data.ProtoLens.Tag 3, gcType__field_descriptor),
           (Data.ProtoLens.Tag 4, allocMode__field_descriptor),
           (Data.ProtoLens.Tag 5, gcMode__field_descriptor),
           (Data.ProtoLens.Tag 6, victim__field_descriptor),
           (Data.ProtoLens.Tag 7, ofsUnit__field_descriptor),
           (Data.ProtoLens.Tag 8, preVictim__field_descriptor),
           (Data.ProtoLens.Tag 9, prefree__field_descriptor),
           (Data.ProtoLens.Tag 10, free__field_descriptor),
           (Data.ProtoLens.Tag 11, cost__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _F2fsGetVictimFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_F2fsGetVictimFtraceEvent'_unknownFields = y__})
  defMessage
    = F2fsGetVictimFtraceEvent'_constructor
        {_F2fsGetVictimFtraceEvent'dev = Prelude.Nothing,
         _F2fsGetVictimFtraceEvent'type' = Prelude.Nothing,
         _F2fsGetVictimFtraceEvent'gcType = Prelude.Nothing,
         _F2fsGetVictimFtraceEvent'allocMode = Prelude.Nothing,
         _F2fsGetVictimFtraceEvent'gcMode = Prelude.Nothing,
         _F2fsGetVictimFtraceEvent'victim = Prelude.Nothing,
         _F2fsGetVictimFtraceEvent'ofsUnit = Prelude.Nothing,
         _F2fsGetVictimFtraceEvent'preVictim = Prelude.Nothing,
         _F2fsGetVictimFtraceEvent'prefree = Prelude.Nothing,
         _F2fsGetVictimFtraceEvent'free = Prelude.Nothing,
         _F2fsGetVictimFtraceEvent'cost = Prelude.Nothing,
         _F2fsGetVictimFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          F2fsGetVictimFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser F2fsGetVictimFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "dev"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dev") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "gc_type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"gcType") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "alloc_mode"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"allocMode") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "gc_mode"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"gcMode") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "victim"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"victim") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ofs_unit"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ofsUnit") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "pre_victim"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"preVictim") y x)
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "prefree"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"prefree") y x)
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "free"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"free") y x)
                        88
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "cost"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cost") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "F2fsGetVictimFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dev") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'type'") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gcType") _x
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
                             (Data.ProtoLens.Field.field @"maybe'allocMode") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gcMode") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'victim") _x
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
                                      (Data.ProtoLens.Field.field @"maybe'ofsUnit") _x
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
                                         (Data.ProtoLens.Field.field @"maybe'preVictim") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            ((Prelude..)
                                               Data.ProtoLens.Encoding.Bytes.putVarInt
                                               Prelude.fromIntegral _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"maybe'prefree") _x
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
                                               (Data.ProtoLens.Field.field @"maybe'free") _x
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
                                                  (Data.ProtoLens.Field.field @"maybe'cost") _x
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
instance Control.DeepSeq.NFData F2fsGetVictimFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_F2fsGetVictimFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_F2fsGetVictimFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_F2fsGetVictimFtraceEvent'type' x__)
                   (Control.DeepSeq.deepseq
                      (_F2fsGetVictimFtraceEvent'gcType x__)
                      (Control.DeepSeq.deepseq
                         (_F2fsGetVictimFtraceEvent'allocMode x__)
                         (Control.DeepSeq.deepseq
                            (_F2fsGetVictimFtraceEvent'gcMode x__)
                            (Control.DeepSeq.deepseq
                               (_F2fsGetVictimFtraceEvent'victim x__)
                               (Control.DeepSeq.deepseq
                                  (_F2fsGetVictimFtraceEvent'ofsUnit x__)
                                  (Control.DeepSeq.deepseq
                                     (_F2fsGetVictimFtraceEvent'preVictim x__)
                                     (Control.DeepSeq.deepseq
                                        (_F2fsGetVictimFtraceEvent'prefree x__)
                                        (Control.DeepSeq.deepseq
                                           (_F2fsGetVictimFtraceEvent'free x__)
                                           (Control.DeepSeq.deepseq
                                              (_F2fsGetVictimFtraceEvent'cost x__) ())))))))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dev' @:: Lens' F2fsIgetExitFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dev' @:: Lens' F2fsIgetExitFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.ino' @:: Lens' F2fsIgetExitFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'ino' @:: Lens' F2fsIgetExitFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.ret' @:: Lens' F2fsIgetExitFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'ret' @:: Lens' F2fsIgetExitFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data F2fsIgetExitFtraceEvent
  = F2fsIgetExitFtraceEvent'_constructor {_F2fsIgetExitFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                          _F2fsIgetExitFtraceEvent'ino :: !(Prelude.Maybe Data.Word.Word64),
                                          _F2fsIgetExitFtraceEvent'ret :: !(Prelude.Maybe Data.Int.Int32),
                                          _F2fsIgetExitFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show F2fsIgetExitFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField F2fsIgetExitFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIgetExitFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsIgetExitFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIgetExitFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIgetExitFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsIgetExitFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIgetExitFtraceEvent "ino" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIgetExitFtraceEvent'ino
           (\ x__ y__ -> x__ {_F2fsIgetExitFtraceEvent'ino = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIgetExitFtraceEvent "maybe'ino" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIgetExitFtraceEvent'ino
           (\ x__ y__ -> x__ {_F2fsIgetExitFtraceEvent'ino = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIgetExitFtraceEvent "ret" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIgetExitFtraceEvent'ret
           (\ x__ y__ -> x__ {_F2fsIgetExitFtraceEvent'ret = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIgetExitFtraceEvent "maybe'ret" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIgetExitFtraceEvent'ret
           (\ x__ y__ -> x__ {_F2fsIgetExitFtraceEvent'ret = y__}))
        Prelude.id
instance Data.ProtoLens.Message F2fsIgetExitFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.F2fsIgetExitFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ETBF2fsIgetExitFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
      \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DLE\n\
      \\ETXret\CAN\ETX \SOH(\ENQR\ETXret"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dev__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dev"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dev")) ::
              Data.ProtoLens.FieldDescriptor F2fsIgetExitFtraceEvent
        ino__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ino"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ino")) ::
              Data.ProtoLens.FieldDescriptor F2fsIgetExitFtraceEvent
        ret__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ret"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ret")) ::
              Data.ProtoLens.FieldDescriptor F2fsIgetExitFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, ino__field_descriptor),
           (Data.ProtoLens.Tag 3, ret__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _F2fsIgetExitFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_F2fsIgetExitFtraceEvent'_unknownFields = y__})
  defMessage
    = F2fsIgetExitFtraceEvent'_constructor
        {_F2fsIgetExitFtraceEvent'dev = Prelude.Nothing,
         _F2fsIgetExitFtraceEvent'ino = Prelude.Nothing,
         _F2fsIgetExitFtraceEvent'ret = Prelude.Nothing,
         _F2fsIgetExitFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          F2fsIgetExitFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser F2fsIgetExitFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "dev"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dev") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ino"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ino") y x)
                        24
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
          (do loop Data.ProtoLens.defMessage) "F2fsIgetExitFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dev") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ino") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ret") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData F2fsIgetExitFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_F2fsIgetExitFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_F2fsIgetExitFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_F2fsIgetExitFtraceEvent'ino x__)
                   (Control.DeepSeq.deepseq (_F2fsIgetExitFtraceEvent'ret x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dev' @:: Lens' F2fsIgetFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dev' @:: Lens' F2fsIgetFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.ino' @:: Lens' F2fsIgetFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'ino' @:: Lens' F2fsIgetFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.pino' @:: Lens' F2fsIgetFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'pino' @:: Lens' F2fsIgetFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.mode' @:: Lens' F2fsIgetFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'mode' @:: Lens' F2fsIgetFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.size' @:: Lens' F2fsIgetFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'size' @:: Lens' F2fsIgetFtraceEvent (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.nlink' @:: Lens' F2fsIgetFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'nlink' @:: Lens' F2fsIgetFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.blocks' @:: Lens' F2fsIgetFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'blocks' @:: Lens' F2fsIgetFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.advise' @:: Lens' F2fsIgetFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'advise' @:: Lens' F2fsIgetFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data F2fsIgetFtraceEvent
  = F2fsIgetFtraceEvent'_constructor {_F2fsIgetFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                      _F2fsIgetFtraceEvent'ino :: !(Prelude.Maybe Data.Word.Word64),
                                      _F2fsIgetFtraceEvent'pino :: !(Prelude.Maybe Data.Word.Word64),
                                      _F2fsIgetFtraceEvent'mode :: !(Prelude.Maybe Data.Word.Word32),
                                      _F2fsIgetFtraceEvent'size :: !(Prelude.Maybe Data.Int.Int64),
                                      _F2fsIgetFtraceEvent'nlink :: !(Prelude.Maybe Data.Word.Word32),
                                      _F2fsIgetFtraceEvent'blocks :: !(Prelude.Maybe Data.Word.Word64),
                                      _F2fsIgetFtraceEvent'advise :: !(Prelude.Maybe Data.Word.Word32),
                                      _F2fsIgetFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show F2fsIgetFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField F2fsIgetFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIgetFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsIgetFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIgetFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIgetFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsIgetFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIgetFtraceEvent "ino" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIgetFtraceEvent'ino
           (\ x__ y__ -> x__ {_F2fsIgetFtraceEvent'ino = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIgetFtraceEvent "maybe'ino" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIgetFtraceEvent'ino
           (\ x__ y__ -> x__ {_F2fsIgetFtraceEvent'ino = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIgetFtraceEvent "pino" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIgetFtraceEvent'pino
           (\ x__ y__ -> x__ {_F2fsIgetFtraceEvent'pino = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIgetFtraceEvent "maybe'pino" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIgetFtraceEvent'pino
           (\ x__ y__ -> x__ {_F2fsIgetFtraceEvent'pino = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIgetFtraceEvent "mode" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIgetFtraceEvent'mode
           (\ x__ y__ -> x__ {_F2fsIgetFtraceEvent'mode = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIgetFtraceEvent "maybe'mode" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIgetFtraceEvent'mode
           (\ x__ y__ -> x__ {_F2fsIgetFtraceEvent'mode = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIgetFtraceEvent "size" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIgetFtraceEvent'size
           (\ x__ y__ -> x__ {_F2fsIgetFtraceEvent'size = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIgetFtraceEvent "maybe'size" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIgetFtraceEvent'size
           (\ x__ y__ -> x__ {_F2fsIgetFtraceEvent'size = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIgetFtraceEvent "nlink" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIgetFtraceEvent'nlink
           (\ x__ y__ -> x__ {_F2fsIgetFtraceEvent'nlink = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIgetFtraceEvent "maybe'nlink" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIgetFtraceEvent'nlink
           (\ x__ y__ -> x__ {_F2fsIgetFtraceEvent'nlink = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIgetFtraceEvent "blocks" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIgetFtraceEvent'blocks
           (\ x__ y__ -> x__ {_F2fsIgetFtraceEvent'blocks = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIgetFtraceEvent "maybe'blocks" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIgetFtraceEvent'blocks
           (\ x__ y__ -> x__ {_F2fsIgetFtraceEvent'blocks = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIgetFtraceEvent "advise" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIgetFtraceEvent'advise
           (\ x__ y__ -> x__ {_F2fsIgetFtraceEvent'advise = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIgetFtraceEvent "maybe'advise" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIgetFtraceEvent'advise
           (\ x__ y__ -> x__ {_F2fsIgetFtraceEvent'advise = y__}))
        Prelude.id
instance Data.ProtoLens.Message F2fsIgetFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.F2fsIgetFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\DC3F2fsIgetFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
      \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DC2\n\
      \\EOTpino\CAN\ETX \SOH(\EOTR\EOTpino\DC2\DC2\n\
      \\EOTmode\CAN\EOT \SOH(\rR\EOTmode\DC2\DC2\n\
      \\EOTsize\CAN\ENQ \SOH(\ETXR\EOTsize\DC2\DC4\n\
      \\ENQnlink\CAN\ACK \SOH(\rR\ENQnlink\DC2\SYN\n\
      \\ACKblocks\CAN\a \SOH(\EOTR\ACKblocks\DC2\SYN\n\
      \\ACKadvise\CAN\b \SOH(\rR\ACKadvise"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dev__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dev"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dev")) ::
              Data.ProtoLens.FieldDescriptor F2fsIgetFtraceEvent
        ino__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ino"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ino")) ::
              Data.ProtoLens.FieldDescriptor F2fsIgetFtraceEvent
        pino__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pino"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pino")) ::
              Data.ProtoLens.FieldDescriptor F2fsIgetFtraceEvent
        mode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mode"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mode")) ::
              Data.ProtoLens.FieldDescriptor F2fsIgetFtraceEvent
        size__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'size")) ::
              Data.ProtoLens.FieldDescriptor F2fsIgetFtraceEvent
        nlink__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nlink"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nlink")) ::
              Data.ProtoLens.FieldDescriptor F2fsIgetFtraceEvent
        blocks__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "blocks"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'blocks")) ::
              Data.ProtoLens.FieldDescriptor F2fsIgetFtraceEvent
        advise__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "advise"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'advise")) ::
              Data.ProtoLens.FieldDescriptor F2fsIgetFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, ino__field_descriptor),
           (Data.ProtoLens.Tag 3, pino__field_descriptor),
           (Data.ProtoLens.Tag 4, mode__field_descriptor),
           (Data.ProtoLens.Tag 5, size__field_descriptor),
           (Data.ProtoLens.Tag 6, nlink__field_descriptor),
           (Data.ProtoLens.Tag 7, blocks__field_descriptor),
           (Data.ProtoLens.Tag 8, advise__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _F2fsIgetFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_F2fsIgetFtraceEvent'_unknownFields = y__})
  defMessage
    = F2fsIgetFtraceEvent'_constructor
        {_F2fsIgetFtraceEvent'dev = Prelude.Nothing,
         _F2fsIgetFtraceEvent'ino = Prelude.Nothing,
         _F2fsIgetFtraceEvent'pino = Prelude.Nothing,
         _F2fsIgetFtraceEvent'mode = Prelude.Nothing,
         _F2fsIgetFtraceEvent'size = Prelude.Nothing,
         _F2fsIgetFtraceEvent'nlink = Prelude.Nothing,
         _F2fsIgetFtraceEvent'blocks = Prelude.Nothing,
         _F2fsIgetFtraceEvent'advise = Prelude.Nothing,
         _F2fsIgetFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          F2fsIgetFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser F2fsIgetFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "dev"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dev") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ino"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ino") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "pino"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pino") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "mode"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"mode") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "size"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"size") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "nlink"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nlink") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "blocks"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"blocks") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "advise"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"advise") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "F2fsIgetFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dev") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ino") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pino") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'mode") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'size") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nlink") _x
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
                                      (Data.ProtoLens.Field.field @"maybe'blocks") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'advise") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            ((Prelude..)
                                               Data.ProtoLens.Encoding.Bytes.putVarInt
                                               Prelude.fromIntegral _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData F2fsIgetFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_F2fsIgetFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_F2fsIgetFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_F2fsIgetFtraceEvent'ino x__)
                   (Control.DeepSeq.deepseq
                      (_F2fsIgetFtraceEvent'pino x__)
                      (Control.DeepSeq.deepseq
                         (_F2fsIgetFtraceEvent'mode x__)
                         (Control.DeepSeq.deepseq
                            (_F2fsIgetFtraceEvent'size x__)
                            (Control.DeepSeq.deepseq
                               (_F2fsIgetFtraceEvent'nlink x__)
                               (Control.DeepSeq.deepseq
                                  (_F2fsIgetFtraceEvent'blocks x__)
                                  (Control.DeepSeq.deepseq
                                     (_F2fsIgetFtraceEvent'advise x__) ()))))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.appBio' @:: Lens' F2fsIostatFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'appBio' @:: Lens' F2fsIostatFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.appBrio' @:: Lens' F2fsIostatFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'appBrio' @:: Lens' F2fsIostatFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.appDio' @:: Lens' F2fsIostatFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'appDio' @:: Lens' F2fsIostatFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.appDrio' @:: Lens' F2fsIostatFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'appDrio' @:: Lens' F2fsIostatFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.appMio' @:: Lens' F2fsIostatFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'appMio' @:: Lens' F2fsIostatFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.appMrio' @:: Lens' F2fsIostatFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'appMrio' @:: Lens' F2fsIostatFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.appRio' @:: Lens' F2fsIostatFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'appRio' @:: Lens' F2fsIostatFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.appWio' @:: Lens' F2fsIostatFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'appWio' @:: Lens' F2fsIostatFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dev' @:: Lens' F2fsIostatFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dev' @:: Lens' F2fsIostatFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.fsCdrio' @:: Lens' F2fsIostatFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'fsCdrio' @:: Lens' F2fsIostatFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.fsCpDio' @:: Lens' F2fsIostatFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'fsCpDio' @:: Lens' F2fsIostatFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.fsCpMio' @:: Lens' F2fsIostatFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'fsCpMio' @:: Lens' F2fsIostatFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.fsCpNio' @:: Lens' F2fsIostatFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'fsCpNio' @:: Lens' F2fsIostatFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.fsDio' @:: Lens' F2fsIostatFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'fsDio' @:: Lens' F2fsIostatFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.fsDiscard' @:: Lens' F2fsIostatFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'fsDiscard' @:: Lens' F2fsIostatFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.fsDrio' @:: Lens' F2fsIostatFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'fsDrio' @:: Lens' F2fsIostatFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.fsGcDio' @:: Lens' F2fsIostatFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'fsGcDio' @:: Lens' F2fsIostatFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.fsGcNio' @:: Lens' F2fsIostatFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'fsGcNio' @:: Lens' F2fsIostatFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.fsGdrio' @:: Lens' F2fsIostatFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'fsGdrio' @:: Lens' F2fsIostatFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.fsMio' @:: Lens' F2fsIostatFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'fsMio' @:: Lens' F2fsIostatFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.fsMrio' @:: Lens' F2fsIostatFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'fsMrio' @:: Lens' F2fsIostatFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.fsNio' @:: Lens' F2fsIostatFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'fsNio' @:: Lens' F2fsIostatFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.fsNrio' @:: Lens' F2fsIostatFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'fsNrio' @:: Lens' F2fsIostatFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data F2fsIostatFtraceEvent
  = F2fsIostatFtraceEvent'_constructor {_F2fsIostatFtraceEvent'appBio :: !(Prelude.Maybe Data.Word.Word64),
                                        _F2fsIostatFtraceEvent'appBrio :: !(Prelude.Maybe Data.Word.Word64),
                                        _F2fsIostatFtraceEvent'appDio :: !(Prelude.Maybe Data.Word.Word64),
                                        _F2fsIostatFtraceEvent'appDrio :: !(Prelude.Maybe Data.Word.Word64),
                                        _F2fsIostatFtraceEvent'appMio :: !(Prelude.Maybe Data.Word.Word64),
                                        _F2fsIostatFtraceEvent'appMrio :: !(Prelude.Maybe Data.Word.Word64),
                                        _F2fsIostatFtraceEvent'appRio :: !(Prelude.Maybe Data.Word.Word64),
                                        _F2fsIostatFtraceEvent'appWio :: !(Prelude.Maybe Data.Word.Word64),
                                        _F2fsIostatFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                        _F2fsIostatFtraceEvent'fsCdrio :: !(Prelude.Maybe Data.Word.Word64),
                                        _F2fsIostatFtraceEvent'fsCpDio :: !(Prelude.Maybe Data.Word.Word64),
                                        _F2fsIostatFtraceEvent'fsCpMio :: !(Prelude.Maybe Data.Word.Word64),
                                        _F2fsIostatFtraceEvent'fsCpNio :: !(Prelude.Maybe Data.Word.Word64),
                                        _F2fsIostatFtraceEvent'fsDio :: !(Prelude.Maybe Data.Word.Word64),
                                        _F2fsIostatFtraceEvent'fsDiscard :: !(Prelude.Maybe Data.Word.Word64),
                                        _F2fsIostatFtraceEvent'fsDrio :: !(Prelude.Maybe Data.Word.Word64),
                                        _F2fsIostatFtraceEvent'fsGcDio :: !(Prelude.Maybe Data.Word.Word64),
                                        _F2fsIostatFtraceEvent'fsGcNio :: !(Prelude.Maybe Data.Word.Word64),
                                        _F2fsIostatFtraceEvent'fsGdrio :: !(Prelude.Maybe Data.Word.Word64),
                                        _F2fsIostatFtraceEvent'fsMio :: !(Prelude.Maybe Data.Word.Word64),
                                        _F2fsIostatFtraceEvent'fsMrio :: !(Prelude.Maybe Data.Word.Word64),
                                        _F2fsIostatFtraceEvent'fsNio :: !(Prelude.Maybe Data.Word.Word64),
                                        _F2fsIostatFtraceEvent'fsNrio :: !(Prelude.Maybe Data.Word.Word64),
                                        _F2fsIostatFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show F2fsIostatFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "appBio" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'appBio
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'appBio = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "maybe'appBio" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'appBio
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'appBio = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "appBrio" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'appBrio
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'appBrio = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "maybe'appBrio" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'appBrio
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'appBrio = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "appDio" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'appDio
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'appDio = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "maybe'appDio" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'appDio
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'appDio = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "appDrio" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'appDrio
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'appDrio = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "maybe'appDrio" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'appDrio
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'appDrio = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "appMio" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'appMio
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'appMio = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "maybe'appMio" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'appMio
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'appMio = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "appMrio" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'appMrio
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'appMrio = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "maybe'appMrio" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'appMrio
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'appMrio = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "appRio" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'appRio
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'appRio = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "maybe'appRio" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'appRio
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'appRio = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "appWio" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'appWio
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'appWio = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "maybe'appWio" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'appWio
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'appWio = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "fsCdrio" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'fsCdrio
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'fsCdrio = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "maybe'fsCdrio" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'fsCdrio
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'fsCdrio = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "fsCpDio" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'fsCpDio
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'fsCpDio = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "maybe'fsCpDio" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'fsCpDio
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'fsCpDio = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "fsCpMio" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'fsCpMio
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'fsCpMio = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "maybe'fsCpMio" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'fsCpMio
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'fsCpMio = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "fsCpNio" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'fsCpNio
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'fsCpNio = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "maybe'fsCpNio" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'fsCpNio
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'fsCpNio = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "fsDio" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'fsDio
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'fsDio = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "maybe'fsDio" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'fsDio
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'fsDio = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "fsDiscard" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'fsDiscard
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'fsDiscard = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "maybe'fsDiscard" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'fsDiscard
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'fsDiscard = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "fsDrio" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'fsDrio
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'fsDrio = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "maybe'fsDrio" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'fsDrio
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'fsDrio = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "fsGcDio" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'fsGcDio
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'fsGcDio = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "maybe'fsGcDio" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'fsGcDio
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'fsGcDio = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "fsGcNio" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'fsGcNio
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'fsGcNio = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "maybe'fsGcNio" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'fsGcNio
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'fsGcNio = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "fsGdrio" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'fsGdrio
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'fsGdrio = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "maybe'fsGdrio" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'fsGdrio
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'fsGdrio = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "fsMio" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'fsMio
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'fsMio = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "maybe'fsMio" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'fsMio
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'fsMio = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "fsMrio" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'fsMrio
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'fsMrio = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "maybe'fsMrio" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'fsMrio
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'fsMrio = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "fsNio" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'fsNio
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'fsNio = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "maybe'fsNio" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'fsNio
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'fsNio = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "fsNrio" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'fsNrio
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'fsNrio = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatFtraceEvent "maybe'fsNrio" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatFtraceEvent'fsNrio
           (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'fsNrio = y__}))
        Prelude.id
instance Data.ProtoLens.Message F2fsIostatFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.F2fsIostatFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\NAKF2fsIostatFtraceEvent\DC2\ETB\n\
      \\aapp_bio\CAN\SOH \SOH(\EOTR\ACKappBio\DC2\EM\n\
      \\bapp_brio\CAN\STX \SOH(\EOTR\aappBrio\DC2\ETB\n\
      \\aapp_dio\CAN\ETX \SOH(\EOTR\ACKappDio\DC2\EM\n\
      \\bapp_drio\CAN\EOT \SOH(\EOTR\aappDrio\DC2\ETB\n\
      \\aapp_mio\CAN\ENQ \SOH(\EOTR\ACKappMio\DC2\EM\n\
      \\bapp_mrio\CAN\ACK \SOH(\EOTR\aappMrio\DC2\ETB\n\
      \\aapp_rio\CAN\a \SOH(\EOTR\ACKappRio\DC2\ETB\n\
      \\aapp_wio\CAN\b \SOH(\EOTR\ACKappWio\DC2\DLE\n\
      \\ETXdev\CAN\t \SOH(\EOTR\ETXdev\DC2\EM\n\
      \\bfs_cdrio\CAN\n\
      \ \SOH(\EOTR\afsCdrio\DC2\SUB\n\
      \\tfs_cp_dio\CAN\v \SOH(\EOTR\afsCpDio\DC2\SUB\n\
      \\tfs_cp_mio\CAN\f \SOH(\EOTR\afsCpMio\DC2\SUB\n\
      \\tfs_cp_nio\CAN\r \SOH(\EOTR\afsCpNio\DC2\NAK\n\
      \\ACKfs_dio\CAN\SO \SOH(\EOTR\ENQfsDio\DC2\GS\n\
      \\n\
      \fs_discard\CAN\SI \SOH(\EOTR\tfsDiscard\DC2\ETB\n\
      \\afs_drio\CAN\DLE \SOH(\EOTR\ACKfsDrio\DC2\SUB\n\
      \\tfs_gc_dio\CAN\DC1 \SOH(\EOTR\afsGcDio\DC2\SUB\n\
      \\tfs_gc_nio\CAN\DC2 \SOH(\EOTR\afsGcNio\DC2\EM\n\
      \\bfs_gdrio\CAN\DC3 \SOH(\EOTR\afsGdrio\DC2\NAK\n\
      \\ACKfs_mio\CAN\DC4 \SOH(\EOTR\ENQfsMio\DC2\ETB\n\
      \\afs_mrio\CAN\NAK \SOH(\EOTR\ACKfsMrio\DC2\NAK\n\
      \\ACKfs_nio\CAN\SYN \SOH(\EOTR\ENQfsNio\DC2\ETB\n\
      \\afs_nrio\CAN\ETB \SOH(\EOTR\ACKfsNrio"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        appBio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "app_bio"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'appBio")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatFtraceEvent
        appBrio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "app_brio"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'appBrio")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatFtraceEvent
        appDio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "app_dio"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'appDio")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatFtraceEvent
        appDrio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "app_drio"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'appDrio")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatFtraceEvent
        appMio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "app_mio"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'appMio")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatFtraceEvent
        appMrio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "app_mrio"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'appMrio")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatFtraceEvent
        appRio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "app_rio"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'appRio")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatFtraceEvent
        appWio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "app_wio"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'appWio")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatFtraceEvent
        dev__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dev"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dev")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatFtraceEvent
        fsCdrio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fs_cdrio"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fsCdrio")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatFtraceEvent
        fsCpDio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fs_cp_dio"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fsCpDio")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatFtraceEvent
        fsCpMio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fs_cp_mio"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fsCpMio")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatFtraceEvent
        fsCpNio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fs_cp_nio"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fsCpNio")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatFtraceEvent
        fsDio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fs_dio"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fsDio")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatFtraceEvent
        fsDiscard__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fs_discard"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fsDiscard")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatFtraceEvent
        fsDrio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fs_drio"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fsDrio")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatFtraceEvent
        fsGcDio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fs_gc_dio"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fsGcDio")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatFtraceEvent
        fsGcNio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fs_gc_nio"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fsGcNio")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatFtraceEvent
        fsGdrio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fs_gdrio"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fsGdrio")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatFtraceEvent
        fsMio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fs_mio"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fsMio")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatFtraceEvent
        fsMrio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fs_mrio"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fsMrio")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatFtraceEvent
        fsNio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fs_nio"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fsNio")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatFtraceEvent
        fsNrio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fs_nrio"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fsNrio")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, appBio__field_descriptor),
           (Data.ProtoLens.Tag 2, appBrio__field_descriptor),
           (Data.ProtoLens.Tag 3, appDio__field_descriptor),
           (Data.ProtoLens.Tag 4, appDrio__field_descriptor),
           (Data.ProtoLens.Tag 5, appMio__field_descriptor),
           (Data.ProtoLens.Tag 6, appMrio__field_descriptor),
           (Data.ProtoLens.Tag 7, appRio__field_descriptor),
           (Data.ProtoLens.Tag 8, appWio__field_descriptor),
           (Data.ProtoLens.Tag 9, dev__field_descriptor),
           (Data.ProtoLens.Tag 10, fsCdrio__field_descriptor),
           (Data.ProtoLens.Tag 11, fsCpDio__field_descriptor),
           (Data.ProtoLens.Tag 12, fsCpMio__field_descriptor),
           (Data.ProtoLens.Tag 13, fsCpNio__field_descriptor),
           (Data.ProtoLens.Tag 14, fsDio__field_descriptor),
           (Data.ProtoLens.Tag 15, fsDiscard__field_descriptor),
           (Data.ProtoLens.Tag 16, fsDrio__field_descriptor),
           (Data.ProtoLens.Tag 17, fsGcDio__field_descriptor),
           (Data.ProtoLens.Tag 18, fsGcNio__field_descriptor),
           (Data.ProtoLens.Tag 19, fsGdrio__field_descriptor),
           (Data.ProtoLens.Tag 20, fsMio__field_descriptor),
           (Data.ProtoLens.Tag 21, fsMrio__field_descriptor),
           (Data.ProtoLens.Tag 22, fsNio__field_descriptor),
           (Data.ProtoLens.Tag 23, fsNrio__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _F2fsIostatFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_F2fsIostatFtraceEvent'_unknownFields = y__})
  defMessage
    = F2fsIostatFtraceEvent'_constructor
        {_F2fsIostatFtraceEvent'appBio = Prelude.Nothing,
         _F2fsIostatFtraceEvent'appBrio = Prelude.Nothing,
         _F2fsIostatFtraceEvent'appDio = Prelude.Nothing,
         _F2fsIostatFtraceEvent'appDrio = Prelude.Nothing,
         _F2fsIostatFtraceEvent'appMio = Prelude.Nothing,
         _F2fsIostatFtraceEvent'appMrio = Prelude.Nothing,
         _F2fsIostatFtraceEvent'appRio = Prelude.Nothing,
         _F2fsIostatFtraceEvent'appWio = Prelude.Nothing,
         _F2fsIostatFtraceEvent'dev = Prelude.Nothing,
         _F2fsIostatFtraceEvent'fsCdrio = Prelude.Nothing,
         _F2fsIostatFtraceEvent'fsCpDio = Prelude.Nothing,
         _F2fsIostatFtraceEvent'fsCpMio = Prelude.Nothing,
         _F2fsIostatFtraceEvent'fsCpNio = Prelude.Nothing,
         _F2fsIostatFtraceEvent'fsDio = Prelude.Nothing,
         _F2fsIostatFtraceEvent'fsDiscard = Prelude.Nothing,
         _F2fsIostatFtraceEvent'fsDrio = Prelude.Nothing,
         _F2fsIostatFtraceEvent'fsGcDio = Prelude.Nothing,
         _F2fsIostatFtraceEvent'fsGcNio = Prelude.Nothing,
         _F2fsIostatFtraceEvent'fsGdrio = Prelude.Nothing,
         _F2fsIostatFtraceEvent'fsMio = Prelude.Nothing,
         _F2fsIostatFtraceEvent'fsMrio = Prelude.Nothing,
         _F2fsIostatFtraceEvent'fsNio = Prelude.Nothing,
         _F2fsIostatFtraceEvent'fsNrio = Prelude.Nothing,
         _F2fsIostatFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          F2fsIostatFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser F2fsIostatFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "app_bio"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"appBio") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "app_brio"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"appBrio") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "app_dio"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"appDio") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "app_drio"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"appDrio") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "app_mio"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"appMio") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "app_mrio"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"appMrio") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "app_rio"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"appRio") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "app_wio"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"appWio") y x)
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "dev"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dev") y x)
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "fs_cdrio"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"fsCdrio") y x)
                        88
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "fs_cp_dio"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"fsCpDio") y x)
                        96
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "fs_cp_mio"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"fsCpMio") y x)
                        104
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "fs_cp_nio"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"fsCpNio") y x)
                        112
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "fs_dio"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"fsDio") y x)
                        120
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "fs_discard"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"fsDiscard") y x)
                        128
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "fs_drio"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"fsDrio") y x)
                        136
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "fs_gc_dio"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"fsGcDio") y x)
                        144
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "fs_gc_nio"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"fsGcNio") y x)
                        152
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "fs_gdrio"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"fsGdrio") y x)
                        160
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "fs_mio"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"fsMio") y x)
                        168
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "fs_mrio"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"fsMrio") y x)
                        176
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "fs_nio"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"fsNio") y x)
                        184
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "fs_nrio"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"fsNrio") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "F2fsIostatFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'appBio") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'appBrio") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'appDio") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'appDrio") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'appMio") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'appMrio") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'appRio") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'appWio") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"maybe'dev") _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field @"maybe'fsCdrio") _x
                                         of
                                           Prelude.Nothing -> Data.Monoid.mempty
                                           (Prelude.Just _v)
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 80)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                        ((Data.Monoid.<>)
                                           (case
                                                Lens.Family2.view
                                                  (Data.ProtoLens.Field.field @"maybe'fsCpDio") _x
                                            of
                                              Prelude.Nothing -> Data.Monoid.mempty
                                              (Prelude.Just _v)
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 88)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                           ((Data.Monoid.<>)
                                              (case
                                                   Lens.Family2.view
                                                     (Data.ProtoLens.Field.field @"maybe'fsCpMio")
                                                     _x
                                               of
                                                 Prelude.Nothing -> Data.Monoid.mempty
                                                 (Prelude.Just _v)
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 96)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           _v))
                                              ((Data.Monoid.<>)
                                                 (case
                                                      Lens.Family2.view
                                                        (Data.ProtoLens.Field.field
                                                           @"maybe'fsCpNio")
                                                        _x
                                                  of
                                                    Prelude.Nothing -> Data.Monoid.mempty
                                                    (Prelude.Just _v)
                                                      -> (Data.Monoid.<>)
                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              104)
                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              _v))
                                                 ((Data.Monoid.<>)
                                                    (case
                                                         Lens.Family2.view
                                                           (Data.ProtoLens.Field.field
                                                              @"maybe'fsDio")
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
                                                                 @"maybe'fsDiscard")
                                                              _x
                                                        of
                                                          Prelude.Nothing -> Data.Monoid.mempty
                                                          (Prelude.Just _v)
                                                            -> (Data.Monoid.<>)
                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    120)
                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    _v))
                                                       ((Data.Monoid.<>)
                                                          (case
                                                               Lens.Family2.view
                                                                 (Data.ProtoLens.Field.field
                                                                    @"maybe'fsDrio")
                                                                 _x
                                                           of
                                                             Prelude.Nothing -> Data.Monoid.mempty
                                                             (Prelude.Just _v)
                                                               -> (Data.Monoid.<>)
                                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                       128)
                                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                       _v))
                                                          ((Data.Monoid.<>)
                                                             (case
                                                                  Lens.Family2.view
                                                                    (Data.ProtoLens.Field.field
                                                                       @"maybe'fsGcDio")
                                                                    _x
                                                              of
                                                                Prelude.Nothing
                                                                  -> Data.Monoid.mempty
                                                                (Prelude.Just _v)
                                                                  -> (Data.Monoid.<>)
                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          136)
                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          _v))
                                                             ((Data.Monoid.<>)
                                                                (case
                                                                     Lens.Family2.view
                                                                       (Data.ProtoLens.Field.field
                                                                          @"maybe'fsGcNio")
                                                                       _x
                                                                 of
                                                                   Prelude.Nothing
                                                                     -> Data.Monoid.mempty
                                                                   (Prelude.Just _v)
                                                                     -> (Data.Monoid.<>)
                                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                             144)
                                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                             _v))
                                                                ((Data.Monoid.<>)
                                                                   (case
                                                                        Lens.Family2.view
                                                                          (Data.ProtoLens.Field.field
                                                                             @"maybe'fsGdrio")
                                                                          _x
                                                                    of
                                                                      Prelude.Nothing
                                                                        -> Data.Monoid.mempty
                                                                      (Prelude.Just _v)
                                                                        -> (Data.Monoid.<>)
                                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                152)
                                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                _v))
                                                                   ((Data.Monoid.<>)
                                                                      (case
                                                                           Lens.Family2.view
                                                                             (Data.ProtoLens.Field.field
                                                                                @"maybe'fsMio")
                                                                             _x
                                                                       of
                                                                         Prelude.Nothing
                                                                           -> Data.Monoid.mempty
                                                                         (Prelude.Just _v)
                                                                           -> (Data.Monoid.<>)
                                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                   160)
                                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                   _v))
                                                                      ((Data.Monoid.<>)
                                                                         (case
                                                                              Lens.Family2.view
                                                                                (Data.ProtoLens.Field.field
                                                                                   @"maybe'fsMrio")
                                                                                _x
                                                                          of
                                                                            Prelude.Nothing
                                                                              -> Data.Monoid.mempty
                                                                            (Prelude.Just _v)
                                                                              -> (Data.Monoid.<>)
                                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                      168)
                                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                      _v))
                                                                         ((Data.Monoid.<>)
                                                                            (case
                                                                                 Lens.Family2.view
                                                                                   (Data.ProtoLens.Field.field
                                                                                      @"maybe'fsNio")
                                                                                   _x
                                                                             of
                                                                               Prelude.Nothing
                                                                                 -> Data.Monoid.mempty
                                                                               (Prelude.Just _v)
                                                                                 -> (Data.Monoid.<>)
                                                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                         176)
                                                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                         _v))
                                                                            ((Data.Monoid.<>)
                                                                               (case
                                                                                    Lens.Family2.view
                                                                                      (Data.ProtoLens.Field.field
                                                                                         @"maybe'fsNrio")
                                                                                      _x
                                                                                of
                                                                                  Prelude.Nothing
                                                                                    -> Data.Monoid.mempty
                                                                                  (Prelude.Just _v)
                                                                                    -> (Data.Monoid.<>)
                                                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                            184)
                                                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                            _v))
                                                                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                                                  (Lens.Family2.view
                                                                                     Data.ProtoLens.unknownFields
                                                                                     _x))))))))))))))))))))))))
instance Control.DeepSeq.NFData F2fsIostatFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_F2fsIostatFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_F2fsIostatFtraceEvent'appBio x__)
                (Control.DeepSeq.deepseq
                   (_F2fsIostatFtraceEvent'appBrio x__)
                   (Control.DeepSeq.deepseq
                      (_F2fsIostatFtraceEvent'appDio x__)
                      (Control.DeepSeq.deepseq
                         (_F2fsIostatFtraceEvent'appDrio x__)
                         (Control.DeepSeq.deepseq
                            (_F2fsIostatFtraceEvent'appMio x__)
                            (Control.DeepSeq.deepseq
                               (_F2fsIostatFtraceEvent'appMrio x__)
                               (Control.DeepSeq.deepseq
                                  (_F2fsIostatFtraceEvent'appRio x__)
                                  (Control.DeepSeq.deepseq
                                     (_F2fsIostatFtraceEvent'appWio x__)
                                     (Control.DeepSeq.deepseq
                                        (_F2fsIostatFtraceEvent'dev x__)
                                        (Control.DeepSeq.deepseq
                                           (_F2fsIostatFtraceEvent'fsCdrio x__)
                                           (Control.DeepSeq.deepseq
                                              (_F2fsIostatFtraceEvent'fsCpDio x__)
                                              (Control.DeepSeq.deepseq
                                                 (_F2fsIostatFtraceEvent'fsCpMio x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_F2fsIostatFtraceEvent'fsCpNio x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_F2fsIostatFtraceEvent'fsDio x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_F2fsIostatFtraceEvent'fsDiscard x__)
                                                          (Control.DeepSeq.deepseq
                                                             (_F2fsIostatFtraceEvent'fsDrio x__)
                                                             (Control.DeepSeq.deepseq
                                                                (_F2fsIostatFtraceEvent'fsGcDio x__)
                                                                (Control.DeepSeq.deepseq
                                                                   (_F2fsIostatFtraceEvent'fsGcNio
                                                                      x__)
                                                                   (Control.DeepSeq.deepseq
                                                                      (_F2fsIostatFtraceEvent'fsGdrio
                                                                         x__)
                                                                      (Control.DeepSeq.deepseq
                                                                         (_F2fsIostatFtraceEvent'fsMio
                                                                            x__)
                                                                         (Control.DeepSeq.deepseq
                                                                            (_F2fsIostatFtraceEvent'fsMrio
                                                                               x__)
                                                                            (Control.DeepSeq.deepseq
                                                                               (_F2fsIostatFtraceEvent'fsNio
                                                                                  x__)
                                                                               (Control.DeepSeq.deepseq
                                                                                  (_F2fsIostatFtraceEvent'fsNrio
                                                                                     x__)
                                                                                  ())))))))))))))))))))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dRdAvg' @:: Lens' F2fsIostatLatencyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dRdAvg' @:: Lens' F2fsIostatLatencyFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dRdCnt' @:: Lens' F2fsIostatLatencyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dRdCnt' @:: Lens' F2fsIostatLatencyFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dRdPeak' @:: Lens' F2fsIostatLatencyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dRdPeak' @:: Lens' F2fsIostatLatencyFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dWrAsAvg' @:: Lens' F2fsIostatLatencyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dWrAsAvg' @:: Lens' F2fsIostatLatencyFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dWrAsCnt' @:: Lens' F2fsIostatLatencyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dWrAsCnt' @:: Lens' F2fsIostatLatencyFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dWrAsPeak' @:: Lens' F2fsIostatLatencyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dWrAsPeak' @:: Lens' F2fsIostatLatencyFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dWrSAvg' @:: Lens' F2fsIostatLatencyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dWrSAvg' @:: Lens' F2fsIostatLatencyFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dWrSCnt' @:: Lens' F2fsIostatLatencyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dWrSCnt' @:: Lens' F2fsIostatLatencyFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dWrSPeak' @:: Lens' F2fsIostatLatencyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dWrSPeak' @:: Lens' F2fsIostatLatencyFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dev' @:: Lens' F2fsIostatLatencyFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dev' @:: Lens' F2fsIostatLatencyFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.mRdAvg' @:: Lens' F2fsIostatLatencyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'mRdAvg' @:: Lens' F2fsIostatLatencyFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.mRdCnt' @:: Lens' F2fsIostatLatencyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'mRdCnt' @:: Lens' F2fsIostatLatencyFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.mRdPeak' @:: Lens' F2fsIostatLatencyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'mRdPeak' @:: Lens' F2fsIostatLatencyFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.mWrAsAvg' @:: Lens' F2fsIostatLatencyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'mWrAsAvg' @:: Lens' F2fsIostatLatencyFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.mWrAsCnt' @:: Lens' F2fsIostatLatencyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'mWrAsCnt' @:: Lens' F2fsIostatLatencyFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.mWrAsPeak' @:: Lens' F2fsIostatLatencyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'mWrAsPeak' @:: Lens' F2fsIostatLatencyFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.mWrSAvg' @:: Lens' F2fsIostatLatencyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'mWrSAvg' @:: Lens' F2fsIostatLatencyFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.mWrSCnt' @:: Lens' F2fsIostatLatencyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'mWrSCnt' @:: Lens' F2fsIostatLatencyFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.mWrSPeak' @:: Lens' F2fsIostatLatencyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'mWrSPeak' @:: Lens' F2fsIostatLatencyFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.nRdAvg' @:: Lens' F2fsIostatLatencyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'nRdAvg' @:: Lens' F2fsIostatLatencyFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.nRdCnt' @:: Lens' F2fsIostatLatencyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'nRdCnt' @:: Lens' F2fsIostatLatencyFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.nRdPeak' @:: Lens' F2fsIostatLatencyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'nRdPeak' @:: Lens' F2fsIostatLatencyFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.nWrAsAvg' @:: Lens' F2fsIostatLatencyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'nWrAsAvg' @:: Lens' F2fsIostatLatencyFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.nWrAsCnt' @:: Lens' F2fsIostatLatencyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'nWrAsCnt' @:: Lens' F2fsIostatLatencyFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.nWrAsPeak' @:: Lens' F2fsIostatLatencyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'nWrAsPeak' @:: Lens' F2fsIostatLatencyFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.nWrSAvg' @:: Lens' F2fsIostatLatencyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'nWrSAvg' @:: Lens' F2fsIostatLatencyFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.nWrSCnt' @:: Lens' F2fsIostatLatencyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'nWrSCnt' @:: Lens' F2fsIostatLatencyFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.nWrSPeak' @:: Lens' F2fsIostatLatencyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'nWrSPeak' @:: Lens' F2fsIostatLatencyFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data F2fsIostatLatencyFtraceEvent
  = F2fsIostatLatencyFtraceEvent'_constructor {_F2fsIostatLatencyFtraceEvent'dRdAvg :: !(Prelude.Maybe Data.Word.Word32),
                                               _F2fsIostatLatencyFtraceEvent'dRdCnt :: !(Prelude.Maybe Data.Word.Word32),
                                               _F2fsIostatLatencyFtraceEvent'dRdPeak :: !(Prelude.Maybe Data.Word.Word32),
                                               _F2fsIostatLatencyFtraceEvent'dWrAsAvg :: !(Prelude.Maybe Data.Word.Word32),
                                               _F2fsIostatLatencyFtraceEvent'dWrAsCnt :: !(Prelude.Maybe Data.Word.Word32),
                                               _F2fsIostatLatencyFtraceEvent'dWrAsPeak :: !(Prelude.Maybe Data.Word.Word32),
                                               _F2fsIostatLatencyFtraceEvent'dWrSAvg :: !(Prelude.Maybe Data.Word.Word32),
                                               _F2fsIostatLatencyFtraceEvent'dWrSCnt :: !(Prelude.Maybe Data.Word.Word32),
                                               _F2fsIostatLatencyFtraceEvent'dWrSPeak :: !(Prelude.Maybe Data.Word.Word32),
                                               _F2fsIostatLatencyFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                               _F2fsIostatLatencyFtraceEvent'mRdAvg :: !(Prelude.Maybe Data.Word.Word32),
                                               _F2fsIostatLatencyFtraceEvent'mRdCnt :: !(Prelude.Maybe Data.Word.Word32),
                                               _F2fsIostatLatencyFtraceEvent'mRdPeak :: !(Prelude.Maybe Data.Word.Word32),
                                               _F2fsIostatLatencyFtraceEvent'mWrAsAvg :: !(Prelude.Maybe Data.Word.Word32),
                                               _F2fsIostatLatencyFtraceEvent'mWrAsCnt :: !(Prelude.Maybe Data.Word.Word32),
                                               _F2fsIostatLatencyFtraceEvent'mWrAsPeak :: !(Prelude.Maybe Data.Word.Word32),
                                               _F2fsIostatLatencyFtraceEvent'mWrSAvg :: !(Prelude.Maybe Data.Word.Word32),
                                               _F2fsIostatLatencyFtraceEvent'mWrSCnt :: !(Prelude.Maybe Data.Word.Word32),
                                               _F2fsIostatLatencyFtraceEvent'mWrSPeak :: !(Prelude.Maybe Data.Word.Word32),
                                               _F2fsIostatLatencyFtraceEvent'nRdAvg :: !(Prelude.Maybe Data.Word.Word32),
                                               _F2fsIostatLatencyFtraceEvent'nRdCnt :: !(Prelude.Maybe Data.Word.Word32),
                                               _F2fsIostatLatencyFtraceEvent'nRdPeak :: !(Prelude.Maybe Data.Word.Word32),
                                               _F2fsIostatLatencyFtraceEvent'nWrAsAvg :: !(Prelude.Maybe Data.Word.Word32),
                                               _F2fsIostatLatencyFtraceEvent'nWrAsCnt :: !(Prelude.Maybe Data.Word.Word32),
                                               _F2fsIostatLatencyFtraceEvent'nWrAsPeak :: !(Prelude.Maybe Data.Word.Word32),
                                               _F2fsIostatLatencyFtraceEvent'nWrSAvg :: !(Prelude.Maybe Data.Word.Word32),
                                               _F2fsIostatLatencyFtraceEvent'nWrSCnt :: !(Prelude.Maybe Data.Word.Word32),
                                               _F2fsIostatLatencyFtraceEvent'nWrSPeak :: !(Prelude.Maybe Data.Word.Word32),
                                               _F2fsIostatLatencyFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show F2fsIostatLatencyFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "dRdAvg" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'dRdAvg
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'dRdAvg = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "maybe'dRdAvg" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'dRdAvg
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'dRdAvg = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "dRdCnt" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'dRdCnt
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'dRdCnt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "maybe'dRdCnt" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'dRdCnt
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'dRdCnt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "dRdPeak" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'dRdPeak
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'dRdPeak = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "maybe'dRdPeak" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'dRdPeak
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'dRdPeak = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "dWrAsAvg" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'dWrAsAvg
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'dWrAsAvg = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "maybe'dWrAsAvg" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'dWrAsAvg
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'dWrAsAvg = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "dWrAsCnt" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'dWrAsCnt
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'dWrAsCnt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "maybe'dWrAsCnt" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'dWrAsCnt
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'dWrAsCnt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "dWrAsPeak" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'dWrAsPeak
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'dWrAsPeak = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "maybe'dWrAsPeak" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'dWrAsPeak
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'dWrAsPeak = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "dWrSAvg" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'dWrSAvg
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'dWrSAvg = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "maybe'dWrSAvg" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'dWrSAvg
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'dWrSAvg = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "dWrSCnt" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'dWrSCnt
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'dWrSCnt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "maybe'dWrSCnt" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'dWrSCnt
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'dWrSCnt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "dWrSPeak" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'dWrSPeak
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'dWrSPeak = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "maybe'dWrSPeak" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'dWrSPeak
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'dWrSPeak = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "mRdAvg" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'mRdAvg
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'mRdAvg = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "maybe'mRdAvg" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'mRdAvg
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'mRdAvg = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "mRdCnt" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'mRdCnt
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'mRdCnt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "maybe'mRdCnt" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'mRdCnt
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'mRdCnt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "mRdPeak" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'mRdPeak
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'mRdPeak = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "maybe'mRdPeak" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'mRdPeak
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'mRdPeak = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "mWrAsAvg" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'mWrAsAvg
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'mWrAsAvg = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "maybe'mWrAsAvg" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'mWrAsAvg
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'mWrAsAvg = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "mWrAsCnt" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'mWrAsCnt
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'mWrAsCnt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "maybe'mWrAsCnt" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'mWrAsCnt
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'mWrAsCnt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "mWrAsPeak" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'mWrAsPeak
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'mWrAsPeak = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "maybe'mWrAsPeak" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'mWrAsPeak
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'mWrAsPeak = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "mWrSAvg" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'mWrSAvg
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'mWrSAvg = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "maybe'mWrSAvg" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'mWrSAvg
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'mWrSAvg = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "mWrSCnt" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'mWrSCnt
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'mWrSCnt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "maybe'mWrSCnt" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'mWrSCnt
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'mWrSCnt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "mWrSPeak" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'mWrSPeak
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'mWrSPeak = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "maybe'mWrSPeak" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'mWrSPeak
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'mWrSPeak = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "nRdAvg" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'nRdAvg
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'nRdAvg = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "maybe'nRdAvg" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'nRdAvg
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'nRdAvg = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "nRdCnt" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'nRdCnt
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'nRdCnt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "maybe'nRdCnt" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'nRdCnt
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'nRdCnt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "nRdPeak" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'nRdPeak
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'nRdPeak = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "maybe'nRdPeak" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'nRdPeak
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'nRdPeak = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "nWrAsAvg" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'nWrAsAvg
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'nWrAsAvg = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "maybe'nWrAsAvg" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'nWrAsAvg
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'nWrAsAvg = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "nWrAsCnt" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'nWrAsCnt
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'nWrAsCnt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "maybe'nWrAsCnt" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'nWrAsCnt
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'nWrAsCnt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "nWrAsPeak" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'nWrAsPeak
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'nWrAsPeak = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "maybe'nWrAsPeak" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'nWrAsPeak
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'nWrAsPeak = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "nWrSAvg" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'nWrSAvg
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'nWrSAvg = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "maybe'nWrSAvg" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'nWrSAvg
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'nWrSAvg = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "nWrSCnt" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'nWrSCnt
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'nWrSCnt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "maybe'nWrSCnt" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'nWrSCnt
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'nWrSCnt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "nWrSPeak" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'nWrSPeak
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'nWrSPeak = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsIostatLatencyFtraceEvent "maybe'nWrSPeak" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsIostatLatencyFtraceEvent'nWrSPeak
           (\ x__ y__ -> x__ {_F2fsIostatLatencyFtraceEvent'nWrSPeak = y__}))
        Prelude.id
instance Data.ProtoLens.Message F2fsIostatLatencyFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.F2fsIostatLatencyFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\FSF2fsIostatLatencyFtraceEvent\DC2\CAN\n\
      \\bd_rd_avg\CAN\SOH \SOH(\rR\ACKdRdAvg\DC2\CAN\n\
      \\bd_rd_cnt\CAN\STX \SOH(\rR\ACKdRdCnt\DC2\SUB\n\
      \\td_rd_peak\CAN\ETX \SOH(\rR\adRdPeak\DC2\GS\n\
      \\vd_wr_as_avg\CAN\EOT \SOH(\rR\bdWrAsAvg\DC2\GS\n\
      \\vd_wr_as_cnt\CAN\ENQ \SOH(\rR\bdWrAsCnt\DC2\US\n\
      \\fd_wr_as_peak\CAN\ACK \SOH(\rR\tdWrAsPeak\DC2\ESC\n\
      \\n\
      \d_wr_s_avg\CAN\a \SOH(\rR\adWrSAvg\DC2\ESC\n\
      \\n\
      \d_wr_s_cnt\CAN\b \SOH(\rR\adWrSCnt\DC2\GS\n\
      \\vd_wr_s_peak\CAN\t \SOH(\rR\bdWrSPeak\DC2\DLE\n\
      \\ETXdev\CAN\n\
      \ \SOH(\EOTR\ETXdev\DC2\CAN\n\
      \\bm_rd_avg\CAN\v \SOH(\rR\ACKmRdAvg\DC2\CAN\n\
      \\bm_rd_cnt\CAN\f \SOH(\rR\ACKmRdCnt\DC2\SUB\n\
      \\tm_rd_peak\CAN\r \SOH(\rR\amRdPeak\DC2\GS\n\
      \\vm_wr_as_avg\CAN\SO \SOH(\rR\bmWrAsAvg\DC2\GS\n\
      \\vm_wr_as_cnt\CAN\SI \SOH(\rR\bmWrAsCnt\DC2\US\n\
      \\fm_wr_as_peak\CAN\DLE \SOH(\rR\tmWrAsPeak\DC2\ESC\n\
      \\n\
      \m_wr_s_avg\CAN\DC1 \SOH(\rR\amWrSAvg\DC2\ESC\n\
      \\n\
      \m_wr_s_cnt\CAN\DC2 \SOH(\rR\amWrSCnt\DC2\GS\n\
      \\vm_wr_s_peak\CAN\DC3 \SOH(\rR\bmWrSPeak\DC2\CAN\n\
      \\bn_rd_avg\CAN\DC4 \SOH(\rR\ACKnRdAvg\DC2\CAN\n\
      \\bn_rd_cnt\CAN\NAK \SOH(\rR\ACKnRdCnt\DC2\SUB\n\
      \\tn_rd_peak\CAN\SYN \SOH(\rR\anRdPeak\DC2\GS\n\
      \\vn_wr_as_avg\CAN\ETB \SOH(\rR\bnWrAsAvg\DC2\GS\n\
      \\vn_wr_as_cnt\CAN\CAN \SOH(\rR\bnWrAsCnt\DC2\US\n\
      \\fn_wr_as_peak\CAN\EM \SOH(\rR\tnWrAsPeak\DC2\ESC\n\
      \\n\
      \n_wr_s_avg\CAN\SUB \SOH(\rR\anWrSAvg\DC2\ESC\n\
      \\n\
      \n_wr_s_cnt\CAN\ESC \SOH(\rR\anWrSCnt\DC2\GS\n\
      \\vn_wr_s_peak\CAN\FS \SOH(\rR\bnWrSPeak"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dRdAvg__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "d_rd_avg"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dRdAvg")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatLatencyFtraceEvent
        dRdCnt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "d_rd_cnt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dRdCnt")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatLatencyFtraceEvent
        dRdPeak__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "d_rd_peak"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dRdPeak")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatLatencyFtraceEvent
        dWrAsAvg__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "d_wr_as_avg"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dWrAsAvg")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatLatencyFtraceEvent
        dWrAsCnt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "d_wr_as_cnt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dWrAsCnt")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatLatencyFtraceEvent
        dWrAsPeak__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "d_wr_as_peak"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dWrAsPeak")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatLatencyFtraceEvent
        dWrSAvg__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "d_wr_s_avg"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dWrSAvg")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatLatencyFtraceEvent
        dWrSCnt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "d_wr_s_cnt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dWrSCnt")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatLatencyFtraceEvent
        dWrSPeak__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "d_wr_s_peak"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dWrSPeak")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatLatencyFtraceEvent
        dev__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dev"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dev")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatLatencyFtraceEvent
        mRdAvg__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "m_rd_avg"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mRdAvg")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatLatencyFtraceEvent
        mRdCnt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "m_rd_cnt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mRdCnt")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatLatencyFtraceEvent
        mRdPeak__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "m_rd_peak"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mRdPeak")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatLatencyFtraceEvent
        mWrAsAvg__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "m_wr_as_avg"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mWrAsAvg")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatLatencyFtraceEvent
        mWrAsCnt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "m_wr_as_cnt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mWrAsCnt")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatLatencyFtraceEvent
        mWrAsPeak__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "m_wr_as_peak"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mWrAsPeak")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatLatencyFtraceEvent
        mWrSAvg__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "m_wr_s_avg"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mWrSAvg")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatLatencyFtraceEvent
        mWrSCnt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "m_wr_s_cnt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mWrSCnt")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatLatencyFtraceEvent
        mWrSPeak__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "m_wr_s_peak"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mWrSPeak")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatLatencyFtraceEvent
        nRdAvg__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "n_rd_avg"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nRdAvg")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatLatencyFtraceEvent
        nRdCnt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "n_rd_cnt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nRdCnt")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatLatencyFtraceEvent
        nRdPeak__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "n_rd_peak"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nRdPeak")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatLatencyFtraceEvent
        nWrAsAvg__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "n_wr_as_avg"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nWrAsAvg")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatLatencyFtraceEvent
        nWrAsCnt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "n_wr_as_cnt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nWrAsCnt")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatLatencyFtraceEvent
        nWrAsPeak__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "n_wr_as_peak"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nWrAsPeak")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatLatencyFtraceEvent
        nWrSAvg__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "n_wr_s_avg"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nWrSAvg")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatLatencyFtraceEvent
        nWrSCnt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "n_wr_s_cnt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nWrSCnt")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatLatencyFtraceEvent
        nWrSPeak__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "n_wr_s_peak"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nWrSPeak")) ::
              Data.ProtoLens.FieldDescriptor F2fsIostatLatencyFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dRdAvg__field_descriptor),
           (Data.ProtoLens.Tag 2, dRdCnt__field_descriptor),
           (Data.ProtoLens.Tag 3, dRdPeak__field_descriptor),
           (Data.ProtoLens.Tag 4, dWrAsAvg__field_descriptor),
           (Data.ProtoLens.Tag 5, dWrAsCnt__field_descriptor),
           (Data.ProtoLens.Tag 6, dWrAsPeak__field_descriptor),
           (Data.ProtoLens.Tag 7, dWrSAvg__field_descriptor),
           (Data.ProtoLens.Tag 8, dWrSCnt__field_descriptor),
           (Data.ProtoLens.Tag 9, dWrSPeak__field_descriptor),
           (Data.ProtoLens.Tag 10, dev__field_descriptor),
           (Data.ProtoLens.Tag 11, mRdAvg__field_descriptor),
           (Data.ProtoLens.Tag 12, mRdCnt__field_descriptor),
           (Data.ProtoLens.Tag 13, mRdPeak__field_descriptor),
           (Data.ProtoLens.Tag 14, mWrAsAvg__field_descriptor),
           (Data.ProtoLens.Tag 15, mWrAsCnt__field_descriptor),
           (Data.ProtoLens.Tag 16, mWrAsPeak__field_descriptor),
           (Data.ProtoLens.Tag 17, mWrSAvg__field_descriptor),
           (Data.ProtoLens.Tag 18, mWrSCnt__field_descriptor),
           (Data.ProtoLens.Tag 19, mWrSPeak__field_descriptor),
           (Data.ProtoLens.Tag 20, nRdAvg__field_descriptor),
           (Data.ProtoLens.Tag 21, nRdCnt__field_descriptor),
           (Data.ProtoLens.Tag 22, nRdPeak__field_descriptor),
           (Data.ProtoLens.Tag 23, nWrAsAvg__field_descriptor),
           (Data.ProtoLens.Tag 24, nWrAsCnt__field_descriptor),
           (Data.ProtoLens.Tag 25, nWrAsPeak__field_descriptor),
           (Data.ProtoLens.Tag 26, nWrSAvg__field_descriptor),
           (Data.ProtoLens.Tag 27, nWrSCnt__field_descriptor),
           (Data.ProtoLens.Tag 28, nWrSPeak__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _F2fsIostatLatencyFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_F2fsIostatLatencyFtraceEvent'_unknownFields = y__})
  defMessage
    = F2fsIostatLatencyFtraceEvent'_constructor
        {_F2fsIostatLatencyFtraceEvent'dRdAvg = Prelude.Nothing,
         _F2fsIostatLatencyFtraceEvent'dRdCnt = Prelude.Nothing,
         _F2fsIostatLatencyFtraceEvent'dRdPeak = Prelude.Nothing,
         _F2fsIostatLatencyFtraceEvent'dWrAsAvg = Prelude.Nothing,
         _F2fsIostatLatencyFtraceEvent'dWrAsCnt = Prelude.Nothing,
         _F2fsIostatLatencyFtraceEvent'dWrAsPeak = Prelude.Nothing,
         _F2fsIostatLatencyFtraceEvent'dWrSAvg = Prelude.Nothing,
         _F2fsIostatLatencyFtraceEvent'dWrSCnt = Prelude.Nothing,
         _F2fsIostatLatencyFtraceEvent'dWrSPeak = Prelude.Nothing,
         _F2fsIostatLatencyFtraceEvent'dev = Prelude.Nothing,
         _F2fsIostatLatencyFtraceEvent'mRdAvg = Prelude.Nothing,
         _F2fsIostatLatencyFtraceEvent'mRdCnt = Prelude.Nothing,
         _F2fsIostatLatencyFtraceEvent'mRdPeak = Prelude.Nothing,
         _F2fsIostatLatencyFtraceEvent'mWrAsAvg = Prelude.Nothing,
         _F2fsIostatLatencyFtraceEvent'mWrAsCnt = Prelude.Nothing,
         _F2fsIostatLatencyFtraceEvent'mWrAsPeak = Prelude.Nothing,
         _F2fsIostatLatencyFtraceEvent'mWrSAvg = Prelude.Nothing,
         _F2fsIostatLatencyFtraceEvent'mWrSCnt = Prelude.Nothing,
         _F2fsIostatLatencyFtraceEvent'mWrSPeak = Prelude.Nothing,
         _F2fsIostatLatencyFtraceEvent'nRdAvg = Prelude.Nothing,
         _F2fsIostatLatencyFtraceEvent'nRdCnt = Prelude.Nothing,
         _F2fsIostatLatencyFtraceEvent'nRdPeak = Prelude.Nothing,
         _F2fsIostatLatencyFtraceEvent'nWrAsAvg = Prelude.Nothing,
         _F2fsIostatLatencyFtraceEvent'nWrAsCnt = Prelude.Nothing,
         _F2fsIostatLatencyFtraceEvent'nWrAsPeak = Prelude.Nothing,
         _F2fsIostatLatencyFtraceEvent'nWrSAvg = Prelude.Nothing,
         _F2fsIostatLatencyFtraceEvent'nWrSCnt = Prelude.Nothing,
         _F2fsIostatLatencyFtraceEvent'nWrSPeak = Prelude.Nothing,
         _F2fsIostatLatencyFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          F2fsIostatLatencyFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser F2fsIostatLatencyFtraceEvent
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
                                       "d_rd_avg"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dRdAvg") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "d_rd_cnt"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dRdCnt") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "d_rd_peak"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dRdPeak") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "d_wr_as_avg"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"dWrAsAvg") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "d_wr_as_cnt"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"dWrAsCnt") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "d_wr_as_peak"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"dWrAsPeak") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "d_wr_s_avg"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dWrSAvg") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "d_wr_s_cnt"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dWrSCnt") y x)
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "d_wr_s_peak"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"dWrSPeak") y x)
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "dev"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dev") y x)
                        88
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "m_rd_avg"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"mRdAvg") y x)
                        96
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "m_rd_cnt"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"mRdCnt") y x)
                        104
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "m_rd_peak"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"mRdPeak") y x)
                        112
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "m_wr_as_avg"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"mWrAsAvg") y x)
                        120
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "m_wr_as_cnt"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"mWrAsCnt") y x)
                        128
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "m_wr_as_peak"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"mWrAsPeak") y x)
                        136
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "m_wr_s_avg"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"mWrSAvg") y x)
                        144
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "m_wr_s_cnt"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"mWrSCnt") y x)
                        152
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "m_wr_s_peak"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"mWrSPeak") y x)
                        160
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "n_rd_avg"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nRdAvg") y x)
                        168
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "n_rd_cnt"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nRdCnt") y x)
                        176
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "n_rd_peak"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nRdPeak") y x)
                        184
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "n_wr_as_avg"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nWrAsAvg") y x)
                        192
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "n_wr_as_cnt"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nWrAsCnt") y x)
                        200
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "n_wr_as_peak"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nWrAsPeak") y x)
                        208
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "n_wr_s_avg"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nWrSAvg") y x)
                        216
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "n_wr_s_cnt"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nWrSCnt") y x)
                        224
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "n_wr_s_peak"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nWrSPeak") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "F2fsIostatLatencyFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dRdAvg") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dRdCnt") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dRdPeak") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dWrAsAvg") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dWrAsCnt") _x
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
                                   (Data.ProtoLens.Field.field @"maybe'dWrAsPeak") _x
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
                                      (Data.ProtoLens.Field.field @"maybe'dWrSAvg") _x
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
                                         (Data.ProtoLens.Field.field @"maybe'dWrSCnt") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            ((Prelude..)
                                               Data.ProtoLens.Encoding.Bytes.putVarInt
                                               Prelude.fromIntegral _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"maybe'dWrSPeak") _x
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
                                               (Data.ProtoLens.Field.field @"maybe'dev") _x
                                         of
                                           Prelude.Nothing -> Data.Monoid.mempty
                                           (Prelude.Just _v)
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 80)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                        ((Data.Monoid.<>)
                                           (case
                                                Lens.Family2.view
                                                  (Data.ProtoLens.Field.field @"maybe'mRdAvg") _x
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
                                                     (Data.ProtoLens.Field.field @"maybe'mRdCnt") _x
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
                                                           @"maybe'mRdPeak")
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
                                                              @"maybe'mWrAsAvg")
                                                           _x
                                                     of
                                                       Prelude.Nothing -> Data.Monoid.mempty
                                                       (Prelude.Just _v)
                                                         -> (Data.Monoid.<>)
                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 112)
                                                              ((Prelude..)
                                                                 Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 Prelude.fromIntegral _v))
                                                    ((Data.Monoid.<>)
                                                       (case
                                                            Lens.Family2.view
                                                              (Data.ProtoLens.Field.field
                                                                 @"maybe'mWrAsCnt")
                                                              _x
                                                        of
                                                          Prelude.Nothing -> Data.Monoid.mempty
                                                          (Prelude.Just _v)
                                                            -> (Data.Monoid.<>)
                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    120)
                                                                 ((Prelude..)
                                                                    Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    Prelude.fromIntegral _v))
                                                       ((Data.Monoid.<>)
                                                          (case
                                                               Lens.Family2.view
                                                                 (Data.ProtoLens.Field.field
                                                                    @"maybe'mWrAsPeak")
                                                                 _x
                                                           of
                                                             Prelude.Nothing -> Data.Monoid.mempty
                                                             (Prelude.Just _v)
                                                               -> (Data.Monoid.<>)
                                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                       128)
                                                                    ((Prelude..)
                                                                       Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                       Prelude.fromIntegral _v))
                                                          ((Data.Monoid.<>)
                                                             (case
                                                                  Lens.Family2.view
                                                                    (Data.ProtoLens.Field.field
                                                                       @"maybe'mWrSAvg")
                                                                    _x
                                                              of
                                                                Prelude.Nothing
                                                                  -> Data.Monoid.mempty
                                                                (Prelude.Just _v)
                                                                  -> (Data.Monoid.<>)
                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          136)
                                                                       ((Prelude..)
                                                                          Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          Prelude.fromIntegral _v))
                                                             ((Data.Monoid.<>)
                                                                (case
                                                                     Lens.Family2.view
                                                                       (Data.ProtoLens.Field.field
                                                                          @"maybe'mWrSCnt")
                                                                       _x
                                                                 of
                                                                   Prelude.Nothing
                                                                     -> Data.Monoid.mempty
                                                                   (Prelude.Just _v)
                                                                     -> (Data.Monoid.<>)
                                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                             144)
                                                                          ((Prelude..)
                                                                             Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                             Prelude.fromIntegral
                                                                             _v))
                                                                ((Data.Monoid.<>)
                                                                   (case
                                                                        Lens.Family2.view
                                                                          (Data.ProtoLens.Field.field
                                                                             @"maybe'mWrSPeak")
                                                                          _x
                                                                    of
                                                                      Prelude.Nothing
                                                                        -> Data.Monoid.mempty
                                                                      (Prelude.Just _v)
                                                                        -> (Data.Monoid.<>)
                                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                152)
                                                                             ((Prelude..)
                                                                                Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                Prelude.fromIntegral
                                                                                _v))
                                                                   ((Data.Monoid.<>)
                                                                      (case
                                                                           Lens.Family2.view
                                                                             (Data.ProtoLens.Field.field
                                                                                @"maybe'nRdAvg")
                                                                             _x
                                                                       of
                                                                         Prelude.Nothing
                                                                           -> Data.Monoid.mempty
                                                                         (Prelude.Just _v)
                                                                           -> (Data.Monoid.<>)
                                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                   160)
                                                                                ((Prelude..)
                                                                                   Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                   Prelude.fromIntegral
                                                                                   _v))
                                                                      ((Data.Monoid.<>)
                                                                         (case
                                                                              Lens.Family2.view
                                                                                (Data.ProtoLens.Field.field
                                                                                   @"maybe'nRdCnt")
                                                                                _x
                                                                          of
                                                                            Prelude.Nothing
                                                                              -> Data.Monoid.mempty
                                                                            (Prelude.Just _v)
                                                                              -> (Data.Monoid.<>)
                                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                      168)
                                                                                   ((Prelude..)
                                                                                      Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                      Prelude.fromIntegral
                                                                                      _v))
                                                                         ((Data.Monoid.<>)
                                                                            (case
                                                                                 Lens.Family2.view
                                                                                   (Data.ProtoLens.Field.field
                                                                                      @"maybe'nRdPeak")
                                                                                   _x
                                                                             of
                                                                               Prelude.Nothing
                                                                                 -> Data.Monoid.mempty
                                                                               (Prelude.Just _v)
                                                                                 -> (Data.Monoid.<>)
                                                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                         176)
                                                                                      ((Prelude..)
                                                                                         Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                         Prelude.fromIntegral
                                                                                         _v))
                                                                            ((Data.Monoid.<>)
                                                                               (case
                                                                                    Lens.Family2.view
                                                                                      (Data.ProtoLens.Field.field
                                                                                         @"maybe'nWrAsAvg")
                                                                                      _x
                                                                                of
                                                                                  Prelude.Nothing
                                                                                    -> Data.Monoid.mempty
                                                                                  (Prelude.Just _v)
                                                                                    -> (Data.Monoid.<>)
                                                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                            184)
                                                                                         ((Prelude..)
                                                                                            Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                            Prelude.fromIntegral
                                                                                            _v))
                                                                               ((Data.Monoid.<>)
                                                                                  (case
                                                                                       Lens.Family2.view
                                                                                         (Data.ProtoLens.Field.field
                                                                                            @"maybe'nWrAsCnt")
                                                                                         _x
                                                                                   of
                                                                                     Prelude.Nothing
                                                                                       -> Data.Monoid.mempty
                                                                                     (Prelude.Just _v)
                                                                                       -> (Data.Monoid.<>)
                                                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                               192)
                                                                                            ((Prelude..)
                                                                                               Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                               Prelude.fromIntegral
                                                                                               _v))
                                                                                  ((Data.Monoid.<>)
                                                                                     (case
                                                                                          Lens.Family2.view
                                                                                            (Data.ProtoLens.Field.field
                                                                                               @"maybe'nWrAsPeak")
                                                                                            _x
                                                                                      of
                                                                                        Prelude.Nothing
                                                                                          -> Data.Monoid.mempty
                                                                                        (Prelude.Just _v)
                                                                                          -> (Data.Monoid.<>)
                                                                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                  200)
                                                                                               ((Prelude..)
                                                                                                  Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                  Prelude.fromIntegral
                                                                                                  _v))
                                                                                     ((Data.Monoid.<>)
                                                                                        (case
                                                                                             Lens.Family2.view
                                                                                               (Data.ProtoLens.Field.field
                                                                                                  @"maybe'nWrSAvg")
                                                                                               _x
                                                                                         of
                                                                                           Prelude.Nothing
                                                                                             -> Data.Monoid.mempty
                                                                                           (Prelude.Just _v)
                                                                                             -> (Data.Monoid.<>)
                                                                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                     208)
                                                                                                  ((Prelude..)
                                                                                                     Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                     Prelude.fromIntegral
                                                                                                     _v))
                                                                                        ((Data.Monoid.<>)
                                                                                           (case
                                                                                                Lens.Family2.view
                                                                                                  (Data.ProtoLens.Field.field
                                                                                                     @"maybe'nWrSCnt")
                                                                                                  _x
                                                                                            of
                                                                                              Prelude.Nothing
                                                                                                -> Data.Monoid.mempty
                                                                                              (Prelude.Just _v)
                                                                                                -> (Data.Monoid.<>)
                                                                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                        216)
                                                                                                     ((Prelude..)
                                                                                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                        Prelude.fromIntegral
                                                                                                        _v))
                                                                                           ((Data.Monoid.<>)
                                                                                              (case
                                                                                                   Lens.Family2.view
                                                                                                     (Data.ProtoLens.Field.field
                                                                                                        @"maybe'nWrSPeak")
                                                                                                     _x
                                                                                               of
                                                                                                 Prelude.Nothing
                                                                                                   -> Data.Monoid.mempty
                                                                                                 (Prelude.Just _v)
                                                                                                   -> (Data.Monoid.<>)
                                                                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                           224)
                                                                                                        ((Prelude..)
                                                                                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                           Prelude.fromIntegral
                                                                                                           _v))
                                                                                              (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                                                                 (Lens.Family2.view
                                                                                                    Data.ProtoLens.unknownFields
                                                                                                    _x)))))))))))))))))))))))))))))
instance Control.DeepSeq.NFData F2fsIostatLatencyFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_F2fsIostatLatencyFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_F2fsIostatLatencyFtraceEvent'dRdAvg x__)
                (Control.DeepSeq.deepseq
                   (_F2fsIostatLatencyFtraceEvent'dRdCnt x__)
                   (Control.DeepSeq.deepseq
                      (_F2fsIostatLatencyFtraceEvent'dRdPeak x__)
                      (Control.DeepSeq.deepseq
                         (_F2fsIostatLatencyFtraceEvent'dWrAsAvg x__)
                         (Control.DeepSeq.deepseq
                            (_F2fsIostatLatencyFtraceEvent'dWrAsCnt x__)
                            (Control.DeepSeq.deepseq
                               (_F2fsIostatLatencyFtraceEvent'dWrAsPeak x__)
                               (Control.DeepSeq.deepseq
                                  (_F2fsIostatLatencyFtraceEvent'dWrSAvg x__)
                                  (Control.DeepSeq.deepseq
                                     (_F2fsIostatLatencyFtraceEvent'dWrSCnt x__)
                                     (Control.DeepSeq.deepseq
                                        (_F2fsIostatLatencyFtraceEvent'dWrSPeak x__)
                                        (Control.DeepSeq.deepseq
                                           (_F2fsIostatLatencyFtraceEvent'dev x__)
                                           (Control.DeepSeq.deepseq
                                              (_F2fsIostatLatencyFtraceEvent'mRdAvg x__)
                                              (Control.DeepSeq.deepseq
                                                 (_F2fsIostatLatencyFtraceEvent'mRdCnt x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_F2fsIostatLatencyFtraceEvent'mRdPeak x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_F2fsIostatLatencyFtraceEvent'mWrAsAvg x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_F2fsIostatLatencyFtraceEvent'mWrAsCnt
                                                             x__)
                                                          (Control.DeepSeq.deepseq
                                                             (_F2fsIostatLatencyFtraceEvent'mWrAsPeak
                                                                x__)
                                                             (Control.DeepSeq.deepseq
                                                                (_F2fsIostatLatencyFtraceEvent'mWrSAvg
                                                                   x__)
                                                                (Control.DeepSeq.deepseq
                                                                   (_F2fsIostatLatencyFtraceEvent'mWrSCnt
                                                                      x__)
                                                                   (Control.DeepSeq.deepseq
                                                                      (_F2fsIostatLatencyFtraceEvent'mWrSPeak
                                                                         x__)
                                                                      (Control.DeepSeq.deepseq
                                                                         (_F2fsIostatLatencyFtraceEvent'nRdAvg
                                                                            x__)
                                                                         (Control.DeepSeq.deepseq
                                                                            (_F2fsIostatLatencyFtraceEvent'nRdCnt
                                                                               x__)
                                                                            (Control.DeepSeq.deepseq
                                                                               (_F2fsIostatLatencyFtraceEvent'nRdPeak
                                                                                  x__)
                                                                               (Control.DeepSeq.deepseq
                                                                                  (_F2fsIostatLatencyFtraceEvent'nWrAsAvg
                                                                                     x__)
                                                                                  (Control.DeepSeq.deepseq
                                                                                     (_F2fsIostatLatencyFtraceEvent'nWrAsCnt
                                                                                        x__)
                                                                                     (Control.DeepSeq.deepseq
                                                                                        (_F2fsIostatLatencyFtraceEvent'nWrAsPeak
                                                                                           x__)
                                                                                        (Control.DeepSeq.deepseq
                                                                                           (_F2fsIostatLatencyFtraceEvent'nWrSAvg
                                                                                              x__)
                                                                                           (Control.DeepSeq.deepseq
                                                                                              (_F2fsIostatLatencyFtraceEvent'nWrSCnt
                                                                                                 x__)
                                                                                              (Control.DeepSeq.deepseq
                                                                                                 (_F2fsIostatLatencyFtraceEvent'nWrSPeak
                                                                                                    x__)
                                                                                                 ()))))))))))))))))))))))))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dev' @:: Lens' F2fsNewInodeFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dev' @:: Lens' F2fsNewInodeFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.ino' @:: Lens' F2fsNewInodeFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'ino' @:: Lens' F2fsNewInodeFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.ret' @:: Lens' F2fsNewInodeFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'ret' @:: Lens' F2fsNewInodeFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data F2fsNewInodeFtraceEvent
  = F2fsNewInodeFtraceEvent'_constructor {_F2fsNewInodeFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                          _F2fsNewInodeFtraceEvent'ino :: !(Prelude.Maybe Data.Word.Word64),
                                          _F2fsNewInodeFtraceEvent'ret :: !(Prelude.Maybe Data.Int.Int32),
                                          _F2fsNewInodeFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show F2fsNewInodeFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField F2fsNewInodeFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsNewInodeFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsNewInodeFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsNewInodeFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsNewInodeFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsNewInodeFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsNewInodeFtraceEvent "ino" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsNewInodeFtraceEvent'ino
           (\ x__ y__ -> x__ {_F2fsNewInodeFtraceEvent'ino = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsNewInodeFtraceEvent "maybe'ino" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsNewInodeFtraceEvent'ino
           (\ x__ y__ -> x__ {_F2fsNewInodeFtraceEvent'ino = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsNewInodeFtraceEvent "ret" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsNewInodeFtraceEvent'ret
           (\ x__ y__ -> x__ {_F2fsNewInodeFtraceEvent'ret = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsNewInodeFtraceEvent "maybe'ret" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsNewInodeFtraceEvent'ret
           (\ x__ y__ -> x__ {_F2fsNewInodeFtraceEvent'ret = y__}))
        Prelude.id
instance Data.ProtoLens.Message F2fsNewInodeFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.F2fsNewInodeFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ETBF2fsNewInodeFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
      \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DLE\n\
      \\ETXret\CAN\ETX \SOH(\ENQR\ETXret"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dev__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dev"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dev")) ::
              Data.ProtoLens.FieldDescriptor F2fsNewInodeFtraceEvent
        ino__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ino"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ino")) ::
              Data.ProtoLens.FieldDescriptor F2fsNewInodeFtraceEvent
        ret__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ret"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ret")) ::
              Data.ProtoLens.FieldDescriptor F2fsNewInodeFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, ino__field_descriptor),
           (Data.ProtoLens.Tag 3, ret__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _F2fsNewInodeFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_F2fsNewInodeFtraceEvent'_unknownFields = y__})
  defMessage
    = F2fsNewInodeFtraceEvent'_constructor
        {_F2fsNewInodeFtraceEvent'dev = Prelude.Nothing,
         _F2fsNewInodeFtraceEvent'ino = Prelude.Nothing,
         _F2fsNewInodeFtraceEvent'ret = Prelude.Nothing,
         _F2fsNewInodeFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          F2fsNewInodeFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser F2fsNewInodeFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "dev"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dev") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ino"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ino") y x)
                        24
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
          (do loop Data.ProtoLens.defMessage) "F2fsNewInodeFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dev") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ino") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ret") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData F2fsNewInodeFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_F2fsNewInodeFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_F2fsNewInodeFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_F2fsNewInodeFtraceEvent'ino x__)
                   (Control.DeepSeq.deepseq (_F2fsNewInodeFtraceEvent'ret x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dev' @:: Lens' F2fsReadpageFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dev' @:: Lens' F2fsReadpageFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.ino' @:: Lens' F2fsReadpageFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'ino' @:: Lens' F2fsReadpageFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.index' @:: Lens' F2fsReadpageFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'index' @:: Lens' F2fsReadpageFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.blkaddr' @:: Lens' F2fsReadpageFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'blkaddr' @:: Lens' F2fsReadpageFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.type'' @:: Lens' F2fsReadpageFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'type'' @:: Lens' F2fsReadpageFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dir' @:: Lens' F2fsReadpageFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dir' @:: Lens' F2fsReadpageFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dirty' @:: Lens' F2fsReadpageFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dirty' @:: Lens' F2fsReadpageFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.uptodate' @:: Lens' F2fsReadpageFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'uptodate' @:: Lens' F2fsReadpageFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data F2fsReadpageFtraceEvent
  = F2fsReadpageFtraceEvent'_constructor {_F2fsReadpageFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                          _F2fsReadpageFtraceEvent'ino :: !(Prelude.Maybe Data.Word.Word64),
                                          _F2fsReadpageFtraceEvent'index :: !(Prelude.Maybe Data.Word.Word64),
                                          _F2fsReadpageFtraceEvent'blkaddr :: !(Prelude.Maybe Data.Word.Word64),
                                          _F2fsReadpageFtraceEvent'type' :: !(Prelude.Maybe Data.Int.Int32),
                                          _F2fsReadpageFtraceEvent'dir :: !(Prelude.Maybe Data.Int.Int32),
                                          _F2fsReadpageFtraceEvent'dirty :: !(Prelude.Maybe Data.Int.Int32),
                                          _F2fsReadpageFtraceEvent'uptodate :: !(Prelude.Maybe Data.Int.Int32),
                                          _F2fsReadpageFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show F2fsReadpageFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField F2fsReadpageFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsReadpageFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsReadpageFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsReadpageFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsReadpageFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsReadpageFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsReadpageFtraceEvent "ino" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsReadpageFtraceEvent'ino
           (\ x__ y__ -> x__ {_F2fsReadpageFtraceEvent'ino = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsReadpageFtraceEvent "maybe'ino" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsReadpageFtraceEvent'ino
           (\ x__ y__ -> x__ {_F2fsReadpageFtraceEvent'ino = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsReadpageFtraceEvent "index" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsReadpageFtraceEvent'index
           (\ x__ y__ -> x__ {_F2fsReadpageFtraceEvent'index = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsReadpageFtraceEvent "maybe'index" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsReadpageFtraceEvent'index
           (\ x__ y__ -> x__ {_F2fsReadpageFtraceEvent'index = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsReadpageFtraceEvent "blkaddr" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsReadpageFtraceEvent'blkaddr
           (\ x__ y__ -> x__ {_F2fsReadpageFtraceEvent'blkaddr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsReadpageFtraceEvent "maybe'blkaddr" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsReadpageFtraceEvent'blkaddr
           (\ x__ y__ -> x__ {_F2fsReadpageFtraceEvent'blkaddr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsReadpageFtraceEvent "type'" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsReadpageFtraceEvent'type'
           (\ x__ y__ -> x__ {_F2fsReadpageFtraceEvent'type' = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsReadpageFtraceEvent "maybe'type'" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsReadpageFtraceEvent'type'
           (\ x__ y__ -> x__ {_F2fsReadpageFtraceEvent'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsReadpageFtraceEvent "dir" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsReadpageFtraceEvent'dir
           (\ x__ y__ -> x__ {_F2fsReadpageFtraceEvent'dir = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsReadpageFtraceEvent "maybe'dir" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsReadpageFtraceEvent'dir
           (\ x__ y__ -> x__ {_F2fsReadpageFtraceEvent'dir = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsReadpageFtraceEvent "dirty" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsReadpageFtraceEvent'dirty
           (\ x__ y__ -> x__ {_F2fsReadpageFtraceEvent'dirty = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsReadpageFtraceEvent "maybe'dirty" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsReadpageFtraceEvent'dirty
           (\ x__ y__ -> x__ {_F2fsReadpageFtraceEvent'dirty = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsReadpageFtraceEvent "uptodate" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsReadpageFtraceEvent'uptodate
           (\ x__ y__ -> x__ {_F2fsReadpageFtraceEvent'uptodate = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsReadpageFtraceEvent "maybe'uptodate" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsReadpageFtraceEvent'uptodate
           (\ x__ y__ -> x__ {_F2fsReadpageFtraceEvent'uptodate = y__}))
        Prelude.id
instance Data.ProtoLens.Message F2fsReadpageFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.F2fsReadpageFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ETBF2fsReadpageFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
      \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DC4\n\
      \\ENQindex\CAN\ETX \SOH(\EOTR\ENQindex\DC2\CAN\n\
      \\ablkaddr\CAN\EOT \SOH(\EOTR\ablkaddr\DC2\DC2\n\
      \\EOTtype\CAN\ENQ \SOH(\ENQR\EOTtype\DC2\DLE\n\
      \\ETXdir\CAN\ACK \SOH(\ENQR\ETXdir\DC2\DC4\n\
      \\ENQdirty\CAN\a \SOH(\ENQR\ENQdirty\DC2\SUB\n\
      \\buptodate\CAN\b \SOH(\ENQR\buptodate"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dev__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dev"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dev")) ::
              Data.ProtoLens.FieldDescriptor F2fsReadpageFtraceEvent
        ino__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ino"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ino")) ::
              Data.ProtoLens.FieldDescriptor F2fsReadpageFtraceEvent
        index__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'index")) ::
              Data.ProtoLens.FieldDescriptor F2fsReadpageFtraceEvent
        blkaddr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "blkaddr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'blkaddr")) ::
              Data.ProtoLens.FieldDescriptor F2fsReadpageFtraceEvent
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'type'")) ::
              Data.ProtoLens.FieldDescriptor F2fsReadpageFtraceEvent
        dir__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dir"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dir")) ::
              Data.ProtoLens.FieldDescriptor F2fsReadpageFtraceEvent
        dirty__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dirty"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dirty")) ::
              Data.ProtoLens.FieldDescriptor F2fsReadpageFtraceEvent
        uptodate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "uptodate"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'uptodate")) ::
              Data.ProtoLens.FieldDescriptor F2fsReadpageFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, ino__field_descriptor),
           (Data.ProtoLens.Tag 3, index__field_descriptor),
           (Data.ProtoLens.Tag 4, blkaddr__field_descriptor),
           (Data.ProtoLens.Tag 5, type'__field_descriptor),
           (Data.ProtoLens.Tag 6, dir__field_descriptor),
           (Data.ProtoLens.Tag 7, dirty__field_descriptor),
           (Data.ProtoLens.Tag 8, uptodate__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _F2fsReadpageFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_F2fsReadpageFtraceEvent'_unknownFields = y__})
  defMessage
    = F2fsReadpageFtraceEvent'_constructor
        {_F2fsReadpageFtraceEvent'dev = Prelude.Nothing,
         _F2fsReadpageFtraceEvent'ino = Prelude.Nothing,
         _F2fsReadpageFtraceEvent'index = Prelude.Nothing,
         _F2fsReadpageFtraceEvent'blkaddr = Prelude.Nothing,
         _F2fsReadpageFtraceEvent'type' = Prelude.Nothing,
         _F2fsReadpageFtraceEvent'dir = Prelude.Nothing,
         _F2fsReadpageFtraceEvent'dirty = Prelude.Nothing,
         _F2fsReadpageFtraceEvent'uptodate = Prelude.Nothing,
         _F2fsReadpageFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          F2fsReadpageFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser F2fsReadpageFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "dev"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dev") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ino"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ino") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "index"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"index") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "blkaddr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"blkaddr") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "dir"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dir") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "dirty"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dirty") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "uptodate"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"uptodate") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "F2fsReadpageFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dev") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ino") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'index") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'blkaddr") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'type'") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dir") _x
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
                                    Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dirty") _x
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
                                         (Data.ProtoLens.Field.field @"maybe'uptodate") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            ((Prelude..)
                                               Data.ProtoLens.Encoding.Bytes.putVarInt
                                               Prelude.fromIntegral _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData F2fsReadpageFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_F2fsReadpageFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_F2fsReadpageFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_F2fsReadpageFtraceEvent'ino x__)
                   (Control.DeepSeq.deepseq
                      (_F2fsReadpageFtraceEvent'index x__)
                      (Control.DeepSeq.deepseq
                         (_F2fsReadpageFtraceEvent'blkaddr x__)
                         (Control.DeepSeq.deepseq
                            (_F2fsReadpageFtraceEvent'type' x__)
                            (Control.DeepSeq.deepseq
                               (_F2fsReadpageFtraceEvent'dir x__)
                               (Control.DeepSeq.deepseq
                                  (_F2fsReadpageFtraceEvent'dirty x__)
                                  (Control.DeepSeq.deepseq
                                     (_F2fsReadpageFtraceEvent'uptodate x__) ()))))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dev' @:: Lens' F2fsReserveNewBlockFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dev' @:: Lens' F2fsReserveNewBlockFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.nid' @:: Lens' F2fsReserveNewBlockFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'nid' @:: Lens' F2fsReserveNewBlockFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.ofsInNode' @:: Lens' F2fsReserveNewBlockFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'ofsInNode' @:: Lens' F2fsReserveNewBlockFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data F2fsReserveNewBlockFtraceEvent
  = F2fsReserveNewBlockFtraceEvent'_constructor {_F2fsReserveNewBlockFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                                 _F2fsReserveNewBlockFtraceEvent'nid :: !(Prelude.Maybe Data.Word.Word32),
                                                 _F2fsReserveNewBlockFtraceEvent'ofsInNode :: !(Prelude.Maybe Data.Word.Word32),
                                                 _F2fsReserveNewBlockFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show F2fsReserveNewBlockFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField F2fsReserveNewBlockFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsReserveNewBlockFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsReserveNewBlockFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsReserveNewBlockFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsReserveNewBlockFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsReserveNewBlockFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsReserveNewBlockFtraceEvent "nid" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsReserveNewBlockFtraceEvent'nid
           (\ x__ y__ -> x__ {_F2fsReserveNewBlockFtraceEvent'nid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsReserveNewBlockFtraceEvent "maybe'nid" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsReserveNewBlockFtraceEvent'nid
           (\ x__ y__ -> x__ {_F2fsReserveNewBlockFtraceEvent'nid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsReserveNewBlockFtraceEvent "ofsInNode" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsReserveNewBlockFtraceEvent'ofsInNode
           (\ x__ y__
              -> x__ {_F2fsReserveNewBlockFtraceEvent'ofsInNode = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsReserveNewBlockFtraceEvent "maybe'ofsInNode" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsReserveNewBlockFtraceEvent'ofsInNode
           (\ x__ y__
              -> x__ {_F2fsReserveNewBlockFtraceEvent'ofsInNode = y__}))
        Prelude.id
instance Data.ProtoLens.Message F2fsReserveNewBlockFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.F2fsReserveNewBlockFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\RSF2fsReserveNewBlockFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
      \\ETXnid\CAN\STX \SOH(\rR\ETXnid\DC2\RS\n\
      \\vofs_in_node\CAN\ETX \SOH(\rR\tofsInNode"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dev__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dev"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dev")) ::
              Data.ProtoLens.FieldDescriptor F2fsReserveNewBlockFtraceEvent
        nid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nid")) ::
              Data.ProtoLens.FieldDescriptor F2fsReserveNewBlockFtraceEvent
        ofsInNode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ofs_in_node"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ofsInNode")) ::
              Data.ProtoLens.FieldDescriptor F2fsReserveNewBlockFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, nid__field_descriptor),
           (Data.ProtoLens.Tag 3, ofsInNode__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _F2fsReserveNewBlockFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_F2fsReserveNewBlockFtraceEvent'_unknownFields = y__})
  defMessage
    = F2fsReserveNewBlockFtraceEvent'_constructor
        {_F2fsReserveNewBlockFtraceEvent'dev = Prelude.Nothing,
         _F2fsReserveNewBlockFtraceEvent'nid = Prelude.Nothing,
         _F2fsReserveNewBlockFtraceEvent'ofsInNode = Prelude.Nothing,
         _F2fsReserveNewBlockFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          F2fsReserveNewBlockFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser F2fsReserveNewBlockFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "dev"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dev") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "nid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nid") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ofs_in_node"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"ofsInNode") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "F2fsReserveNewBlockFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dev") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nid") _x
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
                          (Data.ProtoLens.Field.field @"maybe'ofsInNode") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData F2fsReserveNewBlockFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_F2fsReserveNewBlockFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_F2fsReserveNewBlockFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_F2fsReserveNewBlockFtraceEvent'nid x__)
                   (Control.DeepSeq.deepseq
                      (_F2fsReserveNewBlockFtraceEvent'ofsInNode x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dev' @:: Lens' F2fsSetPageDirtyFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dev' @:: Lens' F2fsSetPageDirtyFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.ino' @:: Lens' F2fsSetPageDirtyFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'ino' @:: Lens' F2fsSetPageDirtyFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.type'' @:: Lens' F2fsSetPageDirtyFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'type'' @:: Lens' F2fsSetPageDirtyFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dir' @:: Lens' F2fsSetPageDirtyFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dir' @:: Lens' F2fsSetPageDirtyFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.index' @:: Lens' F2fsSetPageDirtyFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'index' @:: Lens' F2fsSetPageDirtyFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dirty' @:: Lens' F2fsSetPageDirtyFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dirty' @:: Lens' F2fsSetPageDirtyFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.uptodate' @:: Lens' F2fsSetPageDirtyFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'uptodate' @:: Lens' F2fsSetPageDirtyFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data F2fsSetPageDirtyFtraceEvent
  = F2fsSetPageDirtyFtraceEvent'_constructor {_F2fsSetPageDirtyFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                              _F2fsSetPageDirtyFtraceEvent'ino :: !(Prelude.Maybe Data.Word.Word64),
                                              _F2fsSetPageDirtyFtraceEvent'type' :: !(Prelude.Maybe Data.Int.Int32),
                                              _F2fsSetPageDirtyFtraceEvent'dir :: !(Prelude.Maybe Data.Int.Int32),
                                              _F2fsSetPageDirtyFtraceEvent'index :: !(Prelude.Maybe Data.Word.Word64),
                                              _F2fsSetPageDirtyFtraceEvent'dirty :: !(Prelude.Maybe Data.Int.Int32),
                                              _F2fsSetPageDirtyFtraceEvent'uptodate :: !(Prelude.Maybe Data.Int.Int32),
                                              _F2fsSetPageDirtyFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show F2fsSetPageDirtyFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField F2fsSetPageDirtyFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSetPageDirtyFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsSetPageDirtyFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsSetPageDirtyFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSetPageDirtyFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsSetPageDirtyFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsSetPageDirtyFtraceEvent "ino" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSetPageDirtyFtraceEvent'ino
           (\ x__ y__ -> x__ {_F2fsSetPageDirtyFtraceEvent'ino = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsSetPageDirtyFtraceEvent "maybe'ino" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSetPageDirtyFtraceEvent'ino
           (\ x__ y__ -> x__ {_F2fsSetPageDirtyFtraceEvent'ino = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsSetPageDirtyFtraceEvent "type'" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSetPageDirtyFtraceEvent'type'
           (\ x__ y__ -> x__ {_F2fsSetPageDirtyFtraceEvent'type' = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsSetPageDirtyFtraceEvent "maybe'type'" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSetPageDirtyFtraceEvent'type'
           (\ x__ y__ -> x__ {_F2fsSetPageDirtyFtraceEvent'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsSetPageDirtyFtraceEvent "dir" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSetPageDirtyFtraceEvent'dir
           (\ x__ y__ -> x__ {_F2fsSetPageDirtyFtraceEvent'dir = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsSetPageDirtyFtraceEvent "maybe'dir" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSetPageDirtyFtraceEvent'dir
           (\ x__ y__ -> x__ {_F2fsSetPageDirtyFtraceEvent'dir = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsSetPageDirtyFtraceEvent "index" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSetPageDirtyFtraceEvent'index
           (\ x__ y__ -> x__ {_F2fsSetPageDirtyFtraceEvent'index = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsSetPageDirtyFtraceEvent "maybe'index" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSetPageDirtyFtraceEvent'index
           (\ x__ y__ -> x__ {_F2fsSetPageDirtyFtraceEvent'index = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsSetPageDirtyFtraceEvent "dirty" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSetPageDirtyFtraceEvent'dirty
           (\ x__ y__ -> x__ {_F2fsSetPageDirtyFtraceEvent'dirty = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsSetPageDirtyFtraceEvent "maybe'dirty" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSetPageDirtyFtraceEvent'dirty
           (\ x__ y__ -> x__ {_F2fsSetPageDirtyFtraceEvent'dirty = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsSetPageDirtyFtraceEvent "uptodate" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSetPageDirtyFtraceEvent'uptodate
           (\ x__ y__ -> x__ {_F2fsSetPageDirtyFtraceEvent'uptodate = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsSetPageDirtyFtraceEvent "maybe'uptodate" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSetPageDirtyFtraceEvent'uptodate
           (\ x__ y__ -> x__ {_F2fsSetPageDirtyFtraceEvent'uptodate = y__}))
        Prelude.id
instance Data.ProtoLens.Message F2fsSetPageDirtyFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.F2fsSetPageDirtyFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ESCF2fsSetPageDirtyFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
      \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DC2\n\
      \\EOTtype\CAN\ETX \SOH(\ENQR\EOTtype\DC2\DLE\n\
      \\ETXdir\CAN\EOT \SOH(\ENQR\ETXdir\DC2\DC4\n\
      \\ENQindex\CAN\ENQ \SOH(\EOTR\ENQindex\DC2\DC4\n\
      \\ENQdirty\CAN\ACK \SOH(\ENQR\ENQdirty\DC2\SUB\n\
      \\buptodate\CAN\a \SOH(\ENQR\buptodate"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dev__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dev"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dev")) ::
              Data.ProtoLens.FieldDescriptor F2fsSetPageDirtyFtraceEvent
        ino__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ino"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ino")) ::
              Data.ProtoLens.FieldDescriptor F2fsSetPageDirtyFtraceEvent
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'type'")) ::
              Data.ProtoLens.FieldDescriptor F2fsSetPageDirtyFtraceEvent
        dir__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dir"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dir")) ::
              Data.ProtoLens.FieldDescriptor F2fsSetPageDirtyFtraceEvent
        index__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'index")) ::
              Data.ProtoLens.FieldDescriptor F2fsSetPageDirtyFtraceEvent
        dirty__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dirty"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dirty")) ::
              Data.ProtoLens.FieldDescriptor F2fsSetPageDirtyFtraceEvent
        uptodate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "uptodate"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'uptodate")) ::
              Data.ProtoLens.FieldDescriptor F2fsSetPageDirtyFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, ino__field_descriptor),
           (Data.ProtoLens.Tag 3, type'__field_descriptor),
           (Data.ProtoLens.Tag 4, dir__field_descriptor),
           (Data.ProtoLens.Tag 5, index__field_descriptor),
           (Data.ProtoLens.Tag 6, dirty__field_descriptor),
           (Data.ProtoLens.Tag 7, uptodate__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _F2fsSetPageDirtyFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_F2fsSetPageDirtyFtraceEvent'_unknownFields = y__})
  defMessage
    = F2fsSetPageDirtyFtraceEvent'_constructor
        {_F2fsSetPageDirtyFtraceEvent'dev = Prelude.Nothing,
         _F2fsSetPageDirtyFtraceEvent'ino = Prelude.Nothing,
         _F2fsSetPageDirtyFtraceEvent'type' = Prelude.Nothing,
         _F2fsSetPageDirtyFtraceEvent'dir = Prelude.Nothing,
         _F2fsSetPageDirtyFtraceEvent'index = Prelude.Nothing,
         _F2fsSetPageDirtyFtraceEvent'dirty = Prelude.Nothing,
         _F2fsSetPageDirtyFtraceEvent'uptodate = Prelude.Nothing,
         _F2fsSetPageDirtyFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          F2fsSetPageDirtyFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser F2fsSetPageDirtyFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "dev"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dev") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ino"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ino") y x)
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
                                       "dir"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dir") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "index"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"index") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "dirty"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dirty") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "uptodate"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"uptodate") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "F2fsSetPageDirtyFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dev") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ino") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
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
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dir") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'index") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dirty") _x
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
                                      (Data.ProtoLens.Field.field @"maybe'uptodate") _x
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
instance Control.DeepSeq.NFData F2fsSetPageDirtyFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_F2fsSetPageDirtyFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_F2fsSetPageDirtyFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_F2fsSetPageDirtyFtraceEvent'ino x__)
                   (Control.DeepSeq.deepseq
                      (_F2fsSetPageDirtyFtraceEvent'type' x__)
                      (Control.DeepSeq.deepseq
                         (_F2fsSetPageDirtyFtraceEvent'dir x__)
                         (Control.DeepSeq.deepseq
                            (_F2fsSetPageDirtyFtraceEvent'index x__)
                            (Control.DeepSeq.deepseq
                               (_F2fsSetPageDirtyFtraceEvent'dirty x__)
                               (Control.DeepSeq.deepseq
                                  (_F2fsSetPageDirtyFtraceEvent'uptodate x__) ())))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dev' @:: Lens' F2fsSubmitWritePageFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dev' @:: Lens' F2fsSubmitWritePageFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.ino' @:: Lens' F2fsSubmitWritePageFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'ino' @:: Lens' F2fsSubmitWritePageFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.type'' @:: Lens' F2fsSubmitWritePageFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'type'' @:: Lens' F2fsSubmitWritePageFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.index' @:: Lens' F2fsSubmitWritePageFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'index' @:: Lens' F2fsSubmitWritePageFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.block' @:: Lens' F2fsSubmitWritePageFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'block' @:: Lens' F2fsSubmitWritePageFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data F2fsSubmitWritePageFtraceEvent
  = F2fsSubmitWritePageFtraceEvent'_constructor {_F2fsSubmitWritePageFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                                 _F2fsSubmitWritePageFtraceEvent'ino :: !(Prelude.Maybe Data.Word.Word64),
                                                 _F2fsSubmitWritePageFtraceEvent'type' :: !(Prelude.Maybe Data.Int.Int32),
                                                 _F2fsSubmitWritePageFtraceEvent'index :: !(Prelude.Maybe Data.Word.Word64),
                                                 _F2fsSubmitWritePageFtraceEvent'block :: !(Prelude.Maybe Data.Word.Word32),
                                                 _F2fsSubmitWritePageFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show F2fsSubmitWritePageFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField F2fsSubmitWritePageFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSubmitWritePageFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsSubmitWritePageFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsSubmitWritePageFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSubmitWritePageFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsSubmitWritePageFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsSubmitWritePageFtraceEvent "ino" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSubmitWritePageFtraceEvent'ino
           (\ x__ y__ -> x__ {_F2fsSubmitWritePageFtraceEvent'ino = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsSubmitWritePageFtraceEvent "maybe'ino" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSubmitWritePageFtraceEvent'ino
           (\ x__ y__ -> x__ {_F2fsSubmitWritePageFtraceEvent'ino = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsSubmitWritePageFtraceEvent "type'" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSubmitWritePageFtraceEvent'type'
           (\ x__ y__ -> x__ {_F2fsSubmitWritePageFtraceEvent'type' = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsSubmitWritePageFtraceEvent "maybe'type'" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSubmitWritePageFtraceEvent'type'
           (\ x__ y__ -> x__ {_F2fsSubmitWritePageFtraceEvent'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsSubmitWritePageFtraceEvent "index" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSubmitWritePageFtraceEvent'index
           (\ x__ y__ -> x__ {_F2fsSubmitWritePageFtraceEvent'index = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsSubmitWritePageFtraceEvent "maybe'index" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSubmitWritePageFtraceEvent'index
           (\ x__ y__ -> x__ {_F2fsSubmitWritePageFtraceEvent'index = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsSubmitWritePageFtraceEvent "block" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSubmitWritePageFtraceEvent'block
           (\ x__ y__ -> x__ {_F2fsSubmitWritePageFtraceEvent'block = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsSubmitWritePageFtraceEvent "maybe'block" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSubmitWritePageFtraceEvent'block
           (\ x__ y__ -> x__ {_F2fsSubmitWritePageFtraceEvent'block = y__}))
        Prelude.id
instance Data.ProtoLens.Message F2fsSubmitWritePageFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.F2fsSubmitWritePageFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\RSF2fsSubmitWritePageFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
      \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DC2\n\
      \\EOTtype\CAN\ETX \SOH(\ENQR\EOTtype\DC2\DC4\n\
      \\ENQindex\CAN\EOT \SOH(\EOTR\ENQindex\DC2\DC4\n\
      \\ENQblock\CAN\ENQ \SOH(\rR\ENQblock"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dev__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dev"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dev")) ::
              Data.ProtoLens.FieldDescriptor F2fsSubmitWritePageFtraceEvent
        ino__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ino"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ino")) ::
              Data.ProtoLens.FieldDescriptor F2fsSubmitWritePageFtraceEvent
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'type'")) ::
              Data.ProtoLens.FieldDescriptor F2fsSubmitWritePageFtraceEvent
        index__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'index")) ::
              Data.ProtoLens.FieldDescriptor F2fsSubmitWritePageFtraceEvent
        block__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "block"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'block")) ::
              Data.ProtoLens.FieldDescriptor F2fsSubmitWritePageFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, ino__field_descriptor),
           (Data.ProtoLens.Tag 3, type'__field_descriptor),
           (Data.ProtoLens.Tag 4, index__field_descriptor),
           (Data.ProtoLens.Tag 5, block__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _F2fsSubmitWritePageFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_F2fsSubmitWritePageFtraceEvent'_unknownFields = y__})
  defMessage
    = F2fsSubmitWritePageFtraceEvent'_constructor
        {_F2fsSubmitWritePageFtraceEvent'dev = Prelude.Nothing,
         _F2fsSubmitWritePageFtraceEvent'ino = Prelude.Nothing,
         _F2fsSubmitWritePageFtraceEvent'type' = Prelude.Nothing,
         _F2fsSubmitWritePageFtraceEvent'index = Prelude.Nothing,
         _F2fsSubmitWritePageFtraceEvent'block = Prelude.Nothing,
         _F2fsSubmitWritePageFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          F2fsSubmitWritePageFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser F2fsSubmitWritePageFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "dev"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dev") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ino"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ino") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "index"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"index") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "block"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"block") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "F2fsSubmitWritePageFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dev") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ino") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
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
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'index") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'block") _x
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
instance Control.DeepSeq.NFData F2fsSubmitWritePageFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_F2fsSubmitWritePageFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_F2fsSubmitWritePageFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_F2fsSubmitWritePageFtraceEvent'ino x__)
                   (Control.DeepSeq.deepseq
                      (_F2fsSubmitWritePageFtraceEvent'type' x__)
                      (Control.DeepSeq.deepseq
                         (_F2fsSubmitWritePageFtraceEvent'index x__)
                         (Control.DeepSeq.deepseq
                            (_F2fsSubmitWritePageFtraceEvent'block x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dev' @:: Lens' F2fsSyncFileEnterFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dev' @:: Lens' F2fsSyncFileEnterFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.ino' @:: Lens' F2fsSyncFileEnterFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'ino' @:: Lens' F2fsSyncFileEnterFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.pino' @:: Lens' F2fsSyncFileEnterFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'pino' @:: Lens' F2fsSyncFileEnterFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.mode' @:: Lens' F2fsSyncFileEnterFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'mode' @:: Lens' F2fsSyncFileEnterFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.size' @:: Lens' F2fsSyncFileEnterFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'size' @:: Lens' F2fsSyncFileEnterFtraceEvent (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.nlink' @:: Lens' F2fsSyncFileEnterFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'nlink' @:: Lens' F2fsSyncFileEnterFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.blocks' @:: Lens' F2fsSyncFileEnterFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'blocks' @:: Lens' F2fsSyncFileEnterFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.advise' @:: Lens' F2fsSyncFileEnterFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'advise' @:: Lens' F2fsSyncFileEnterFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data F2fsSyncFileEnterFtraceEvent
  = F2fsSyncFileEnterFtraceEvent'_constructor {_F2fsSyncFileEnterFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                               _F2fsSyncFileEnterFtraceEvent'ino :: !(Prelude.Maybe Data.Word.Word64),
                                               _F2fsSyncFileEnterFtraceEvent'pino :: !(Prelude.Maybe Data.Word.Word64),
                                               _F2fsSyncFileEnterFtraceEvent'mode :: !(Prelude.Maybe Data.Word.Word32),
                                               _F2fsSyncFileEnterFtraceEvent'size :: !(Prelude.Maybe Data.Int.Int64),
                                               _F2fsSyncFileEnterFtraceEvent'nlink :: !(Prelude.Maybe Data.Word.Word32),
                                               _F2fsSyncFileEnterFtraceEvent'blocks :: !(Prelude.Maybe Data.Word.Word64),
                                               _F2fsSyncFileEnterFtraceEvent'advise :: !(Prelude.Maybe Data.Word.Word32),
                                               _F2fsSyncFileEnterFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show F2fsSyncFileEnterFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField F2fsSyncFileEnterFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSyncFileEnterFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsSyncFileEnterFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsSyncFileEnterFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSyncFileEnterFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsSyncFileEnterFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsSyncFileEnterFtraceEvent "ino" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSyncFileEnterFtraceEvent'ino
           (\ x__ y__ -> x__ {_F2fsSyncFileEnterFtraceEvent'ino = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsSyncFileEnterFtraceEvent "maybe'ino" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSyncFileEnterFtraceEvent'ino
           (\ x__ y__ -> x__ {_F2fsSyncFileEnterFtraceEvent'ino = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsSyncFileEnterFtraceEvent "pino" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSyncFileEnterFtraceEvent'pino
           (\ x__ y__ -> x__ {_F2fsSyncFileEnterFtraceEvent'pino = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsSyncFileEnterFtraceEvent "maybe'pino" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSyncFileEnterFtraceEvent'pino
           (\ x__ y__ -> x__ {_F2fsSyncFileEnterFtraceEvent'pino = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsSyncFileEnterFtraceEvent "mode" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSyncFileEnterFtraceEvent'mode
           (\ x__ y__ -> x__ {_F2fsSyncFileEnterFtraceEvent'mode = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsSyncFileEnterFtraceEvent "maybe'mode" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSyncFileEnterFtraceEvent'mode
           (\ x__ y__ -> x__ {_F2fsSyncFileEnterFtraceEvent'mode = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsSyncFileEnterFtraceEvent "size" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSyncFileEnterFtraceEvent'size
           (\ x__ y__ -> x__ {_F2fsSyncFileEnterFtraceEvent'size = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsSyncFileEnterFtraceEvent "maybe'size" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSyncFileEnterFtraceEvent'size
           (\ x__ y__ -> x__ {_F2fsSyncFileEnterFtraceEvent'size = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsSyncFileEnterFtraceEvent "nlink" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSyncFileEnterFtraceEvent'nlink
           (\ x__ y__ -> x__ {_F2fsSyncFileEnterFtraceEvent'nlink = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsSyncFileEnterFtraceEvent "maybe'nlink" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSyncFileEnterFtraceEvent'nlink
           (\ x__ y__ -> x__ {_F2fsSyncFileEnterFtraceEvent'nlink = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsSyncFileEnterFtraceEvent "blocks" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSyncFileEnterFtraceEvent'blocks
           (\ x__ y__ -> x__ {_F2fsSyncFileEnterFtraceEvent'blocks = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsSyncFileEnterFtraceEvent "maybe'blocks" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSyncFileEnterFtraceEvent'blocks
           (\ x__ y__ -> x__ {_F2fsSyncFileEnterFtraceEvent'blocks = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsSyncFileEnterFtraceEvent "advise" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSyncFileEnterFtraceEvent'advise
           (\ x__ y__ -> x__ {_F2fsSyncFileEnterFtraceEvent'advise = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsSyncFileEnterFtraceEvent "maybe'advise" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSyncFileEnterFtraceEvent'advise
           (\ x__ y__ -> x__ {_F2fsSyncFileEnterFtraceEvent'advise = y__}))
        Prelude.id
instance Data.ProtoLens.Message F2fsSyncFileEnterFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.F2fsSyncFileEnterFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\FSF2fsSyncFileEnterFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
      \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DC2\n\
      \\EOTpino\CAN\ETX \SOH(\EOTR\EOTpino\DC2\DC2\n\
      \\EOTmode\CAN\EOT \SOH(\rR\EOTmode\DC2\DC2\n\
      \\EOTsize\CAN\ENQ \SOH(\ETXR\EOTsize\DC2\DC4\n\
      \\ENQnlink\CAN\ACK \SOH(\rR\ENQnlink\DC2\SYN\n\
      \\ACKblocks\CAN\a \SOH(\EOTR\ACKblocks\DC2\SYN\n\
      \\ACKadvise\CAN\b \SOH(\rR\ACKadvise"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dev__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dev"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dev")) ::
              Data.ProtoLens.FieldDescriptor F2fsSyncFileEnterFtraceEvent
        ino__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ino"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ino")) ::
              Data.ProtoLens.FieldDescriptor F2fsSyncFileEnterFtraceEvent
        pino__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pino"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pino")) ::
              Data.ProtoLens.FieldDescriptor F2fsSyncFileEnterFtraceEvent
        mode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mode"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mode")) ::
              Data.ProtoLens.FieldDescriptor F2fsSyncFileEnterFtraceEvent
        size__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'size")) ::
              Data.ProtoLens.FieldDescriptor F2fsSyncFileEnterFtraceEvent
        nlink__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nlink"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nlink")) ::
              Data.ProtoLens.FieldDescriptor F2fsSyncFileEnterFtraceEvent
        blocks__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "blocks"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'blocks")) ::
              Data.ProtoLens.FieldDescriptor F2fsSyncFileEnterFtraceEvent
        advise__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "advise"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'advise")) ::
              Data.ProtoLens.FieldDescriptor F2fsSyncFileEnterFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, ino__field_descriptor),
           (Data.ProtoLens.Tag 3, pino__field_descriptor),
           (Data.ProtoLens.Tag 4, mode__field_descriptor),
           (Data.ProtoLens.Tag 5, size__field_descriptor),
           (Data.ProtoLens.Tag 6, nlink__field_descriptor),
           (Data.ProtoLens.Tag 7, blocks__field_descriptor),
           (Data.ProtoLens.Tag 8, advise__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _F2fsSyncFileEnterFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_F2fsSyncFileEnterFtraceEvent'_unknownFields = y__})
  defMessage
    = F2fsSyncFileEnterFtraceEvent'_constructor
        {_F2fsSyncFileEnterFtraceEvent'dev = Prelude.Nothing,
         _F2fsSyncFileEnterFtraceEvent'ino = Prelude.Nothing,
         _F2fsSyncFileEnterFtraceEvent'pino = Prelude.Nothing,
         _F2fsSyncFileEnterFtraceEvent'mode = Prelude.Nothing,
         _F2fsSyncFileEnterFtraceEvent'size = Prelude.Nothing,
         _F2fsSyncFileEnterFtraceEvent'nlink = Prelude.Nothing,
         _F2fsSyncFileEnterFtraceEvent'blocks = Prelude.Nothing,
         _F2fsSyncFileEnterFtraceEvent'advise = Prelude.Nothing,
         _F2fsSyncFileEnterFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          F2fsSyncFileEnterFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser F2fsSyncFileEnterFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "dev"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dev") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ino"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ino") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "pino"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pino") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "mode"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"mode") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "size"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"size") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "nlink"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nlink") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "blocks"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"blocks") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "advise"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"advise") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "F2fsSyncFileEnterFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dev") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ino") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pino") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'mode") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'size") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nlink") _x
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
                                      (Data.ProtoLens.Field.field @"maybe'blocks") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'advise") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            ((Prelude..)
                                               Data.ProtoLens.Encoding.Bytes.putVarInt
                                               Prelude.fromIntegral _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData F2fsSyncFileEnterFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_F2fsSyncFileEnterFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_F2fsSyncFileEnterFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_F2fsSyncFileEnterFtraceEvent'ino x__)
                   (Control.DeepSeq.deepseq
                      (_F2fsSyncFileEnterFtraceEvent'pino x__)
                      (Control.DeepSeq.deepseq
                         (_F2fsSyncFileEnterFtraceEvent'mode x__)
                         (Control.DeepSeq.deepseq
                            (_F2fsSyncFileEnterFtraceEvent'size x__)
                            (Control.DeepSeq.deepseq
                               (_F2fsSyncFileEnterFtraceEvent'nlink x__)
                               (Control.DeepSeq.deepseq
                                  (_F2fsSyncFileEnterFtraceEvent'blocks x__)
                                  (Control.DeepSeq.deepseq
                                     (_F2fsSyncFileEnterFtraceEvent'advise x__) ()))))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dev' @:: Lens' F2fsSyncFileExitFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dev' @:: Lens' F2fsSyncFileExitFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.ino' @:: Lens' F2fsSyncFileExitFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'ino' @:: Lens' F2fsSyncFileExitFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.needCp' @:: Lens' F2fsSyncFileExitFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'needCp' @:: Lens' F2fsSyncFileExitFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.datasync' @:: Lens' F2fsSyncFileExitFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'datasync' @:: Lens' F2fsSyncFileExitFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.ret' @:: Lens' F2fsSyncFileExitFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'ret' @:: Lens' F2fsSyncFileExitFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.cpReason' @:: Lens' F2fsSyncFileExitFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'cpReason' @:: Lens' F2fsSyncFileExitFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data F2fsSyncFileExitFtraceEvent
  = F2fsSyncFileExitFtraceEvent'_constructor {_F2fsSyncFileExitFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                              _F2fsSyncFileExitFtraceEvent'ino :: !(Prelude.Maybe Data.Word.Word64),
                                              _F2fsSyncFileExitFtraceEvent'needCp :: !(Prelude.Maybe Data.Word.Word32),
                                              _F2fsSyncFileExitFtraceEvent'datasync :: !(Prelude.Maybe Data.Int.Int32),
                                              _F2fsSyncFileExitFtraceEvent'ret :: !(Prelude.Maybe Data.Int.Int32),
                                              _F2fsSyncFileExitFtraceEvent'cpReason :: !(Prelude.Maybe Data.Int.Int32),
                                              _F2fsSyncFileExitFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show F2fsSyncFileExitFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField F2fsSyncFileExitFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSyncFileExitFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsSyncFileExitFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsSyncFileExitFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSyncFileExitFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsSyncFileExitFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsSyncFileExitFtraceEvent "ino" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSyncFileExitFtraceEvent'ino
           (\ x__ y__ -> x__ {_F2fsSyncFileExitFtraceEvent'ino = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsSyncFileExitFtraceEvent "maybe'ino" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSyncFileExitFtraceEvent'ino
           (\ x__ y__ -> x__ {_F2fsSyncFileExitFtraceEvent'ino = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsSyncFileExitFtraceEvent "needCp" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSyncFileExitFtraceEvent'needCp
           (\ x__ y__ -> x__ {_F2fsSyncFileExitFtraceEvent'needCp = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsSyncFileExitFtraceEvent "maybe'needCp" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSyncFileExitFtraceEvent'needCp
           (\ x__ y__ -> x__ {_F2fsSyncFileExitFtraceEvent'needCp = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsSyncFileExitFtraceEvent "datasync" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSyncFileExitFtraceEvent'datasync
           (\ x__ y__ -> x__ {_F2fsSyncFileExitFtraceEvent'datasync = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsSyncFileExitFtraceEvent "maybe'datasync" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSyncFileExitFtraceEvent'datasync
           (\ x__ y__ -> x__ {_F2fsSyncFileExitFtraceEvent'datasync = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsSyncFileExitFtraceEvent "ret" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSyncFileExitFtraceEvent'ret
           (\ x__ y__ -> x__ {_F2fsSyncFileExitFtraceEvent'ret = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsSyncFileExitFtraceEvent "maybe'ret" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSyncFileExitFtraceEvent'ret
           (\ x__ y__ -> x__ {_F2fsSyncFileExitFtraceEvent'ret = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsSyncFileExitFtraceEvent "cpReason" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSyncFileExitFtraceEvent'cpReason
           (\ x__ y__ -> x__ {_F2fsSyncFileExitFtraceEvent'cpReason = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsSyncFileExitFtraceEvent "maybe'cpReason" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSyncFileExitFtraceEvent'cpReason
           (\ x__ y__ -> x__ {_F2fsSyncFileExitFtraceEvent'cpReason = y__}))
        Prelude.id
instance Data.ProtoLens.Message F2fsSyncFileExitFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.F2fsSyncFileExitFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ESCF2fsSyncFileExitFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
      \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\ETB\n\
      \\aneed_cp\CAN\ETX \SOH(\rR\ACKneedCp\DC2\SUB\n\
      \\bdatasync\CAN\EOT \SOH(\ENQR\bdatasync\DC2\DLE\n\
      \\ETXret\CAN\ENQ \SOH(\ENQR\ETXret\DC2\ESC\n\
      \\tcp_reason\CAN\ACK \SOH(\ENQR\bcpReason"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dev__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dev"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dev")) ::
              Data.ProtoLens.FieldDescriptor F2fsSyncFileExitFtraceEvent
        ino__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ino"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ino")) ::
              Data.ProtoLens.FieldDescriptor F2fsSyncFileExitFtraceEvent
        needCp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "need_cp"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'needCp")) ::
              Data.ProtoLens.FieldDescriptor F2fsSyncFileExitFtraceEvent
        datasync__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "datasync"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'datasync")) ::
              Data.ProtoLens.FieldDescriptor F2fsSyncFileExitFtraceEvent
        ret__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ret"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ret")) ::
              Data.ProtoLens.FieldDescriptor F2fsSyncFileExitFtraceEvent
        cpReason__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cp_reason"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cpReason")) ::
              Data.ProtoLens.FieldDescriptor F2fsSyncFileExitFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, ino__field_descriptor),
           (Data.ProtoLens.Tag 3, needCp__field_descriptor),
           (Data.ProtoLens.Tag 4, datasync__field_descriptor),
           (Data.ProtoLens.Tag 5, ret__field_descriptor),
           (Data.ProtoLens.Tag 6, cpReason__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _F2fsSyncFileExitFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_F2fsSyncFileExitFtraceEvent'_unknownFields = y__})
  defMessage
    = F2fsSyncFileExitFtraceEvent'_constructor
        {_F2fsSyncFileExitFtraceEvent'dev = Prelude.Nothing,
         _F2fsSyncFileExitFtraceEvent'ino = Prelude.Nothing,
         _F2fsSyncFileExitFtraceEvent'needCp = Prelude.Nothing,
         _F2fsSyncFileExitFtraceEvent'datasync = Prelude.Nothing,
         _F2fsSyncFileExitFtraceEvent'ret = Prelude.Nothing,
         _F2fsSyncFileExitFtraceEvent'cpReason = Prelude.Nothing,
         _F2fsSyncFileExitFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          F2fsSyncFileExitFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser F2fsSyncFileExitFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "dev"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dev") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ino"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ino") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "need_cp"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"needCp") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "datasync"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"datasync") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ret"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ret") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "cp_reason"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"cpReason") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "F2fsSyncFileExitFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dev") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ino") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'needCp") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'datasync") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ret") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cpReason") _x
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
instance Control.DeepSeq.NFData F2fsSyncFileExitFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_F2fsSyncFileExitFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_F2fsSyncFileExitFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_F2fsSyncFileExitFtraceEvent'ino x__)
                   (Control.DeepSeq.deepseq
                      (_F2fsSyncFileExitFtraceEvent'needCp x__)
                      (Control.DeepSeq.deepseq
                         (_F2fsSyncFileExitFtraceEvent'datasync x__)
                         (Control.DeepSeq.deepseq
                            (_F2fsSyncFileExitFtraceEvent'ret x__)
                            (Control.DeepSeq.deepseq
                               (_F2fsSyncFileExitFtraceEvent'cpReason x__) ()))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dev' @:: Lens' F2fsSyncFsFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dev' @:: Lens' F2fsSyncFsFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dirty' @:: Lens' F2fsSyncFsFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dirty' @:: Lens' F2fsSyncFsFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.wait' @:: Lens' F2fsSyncFsFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'wait' @:: Lens' F2fsSyncFsFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data F2fsSyncFsFtraceEvent
  = F2fsSyncFsFtraceEvent'_constructor {_F2fsSyncFsFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                        _F2fsSyncFsFtraceEvent'dirty :: !(Prelude.Maybe Data.Int.Int32),
                                        _F2fsSyncFsFtraceEvent'wait :: !(Prelude.Maybe Data.Int.Int32),
                                        _F2fsSyncFsFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show F2fsSyncFsFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField F2fsSyncFsFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSyncFsFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsSyncFsFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsSyncFsFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSyncFsFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsSyncFsFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsSyncFsFtraceEvent "dirty" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSyncFsFtraceEvent'dirty
           (\ x__ y__ -> x__ {_F2fsSyncFsFtraceEvent'dirty = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsSyncFsFtraceEvent "maybe'dirty" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSyncFsFtraceEvent'dirty
           (\ x__ y__ -> x__ {_F2fsSyncFsFtraceEvent'dirty = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsSyncFsFtraceEvent "wait" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSyncFsFtraceEvent'wait
           (\ x__ y__ -> x__ {_F2fsSyncFsFtraceEvent'wait = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsSyncFsFtraceEvent "maybe'wait" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsSyncFsFtraceEvent'wait
           (\ x__ y__ -> x__ {_F2fsSyncFsFtraceEvent'wait = y__}))
        Prelude.id
instance Data.ProtoLens.Message F2fsSyncFsFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.F2fsSyncFsFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\NAKF2fsSyncFsFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DC4\n\
      \\ENQdirty\CAN\STX \SOH(\ENQR\ENQdirty\DC2\DC2\n\
      \\EOTwait\CAN\ETX \SOH(\ENQR\EOTwait"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dev__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dev"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dev")) ::
              Data.ProtoLens.FieldDescriptor F2fsSyncFsFtraceEvent
        dirty__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dirty"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dirty")) ::
              Data.ProtoLens.FieldDescriptor F2fsSyncFsFtraceEvent
        wait__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "wait"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'wait")) ::
              Data.ProtoLens.FieldDescriptor F2fsSyncFsFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, dirty__field_descriptor),
           (Data.ProtoLens.Tag 3, wait__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _F2fsSyncFsFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_F2fsSyncFsFtraceEvent'_unknownFields = y__})
  defMessage
    = F2fsSyncFsFtraceEvent'_constructor
        {_F2fsSyncFsFtraceEvent'dev = Prelude.Nothing,
         _F2fsSyncFsFtraceEvent'dirty = Prelude.Nothing,
         _F2fsSyncFsFtraceEvent'wait = Prelude.Nothing,
         _F2fsSyncFsFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          F2fsSyncFsFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser F2fsSyncFsFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "dev"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dev") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "dirty"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dirty") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "wait"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"wait") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "F2fsSyncFsFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dev") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dirty") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'wait") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData F2fsSyncFsFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_F2fsSyncFsFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_F2fsSyncFsFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_F2fsSyncFsFtraceEvent'dirty x__)
                   (Control.DeepSeq.deepseq (_F2fsSyncFsFtraceEvent'wait x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dev' @:: Lens' F2fsTruncateBlocksEnterFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dev' @:: Lens' F2fsTruncateBlocksEnterFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.ino' @:: Lens' F2fsTruncateBlocksEnterFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'ino' @:: Lens' F2fsTruncateBlocksEnterFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.size' @:: Lens' F2fsTruncateBlocksEnterFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'size' @:: Lens' F2fsTruncateBlocksEnterFtraceEvent (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.blocks' @:: Lens' F2fsTruncateBlocksEnterFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'blocks' @:: Lens' F2fsTruncateBlocksEnterFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.from' @:: Lens' F2fsTruncateBlocksEnterFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'from' @:: Lens' F2fsTruncateBlocksEnterFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data F2fsTruncateBlocksEnterFtraceEvent
  = F2fsTruncateBlocksEnterFtraceEvent'_constructor {_F2fsTruncateBlocksEnterFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                                     _F2fsTruncateBlocksEnterFtraceEvent'ino :: !(Prelude.Maybe Data.Word.Word64),
                                                     _F2fsTruncateBlocksEnterFtraceEvent'size :: !(Prelude.Maybe Data.Int.Int64),
                                                     _F2fsTruncateBlocksEnterFtraceEvent'blocks :: !(Prelude.Maybe Data.Word.Word64),
                                                     _F2fsTruncateBlocksEnterFtraceEvent'from :: !(Prelude.Maybe Data.Word.Word64),
                                                     _F2fsTruncateBlocksEnterFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show F2fsTruncateBlocksEnterFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField F2fsTruncateBlocksEnterFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateBlocksEnterFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsTruncateBlocksEnterFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncateBlocksEnterFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateBlocksEnterFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsTruncateBlocksEnterFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsTruncateBlocksEnterFtraceEvent "ino" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateBlocksEnterFtraceEvent'ino
           (\ x__ y__ -> x__ {_F2fsTruncateBlocksEnterFtraceEvent'ino = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncateBlocksEnterFtraceEvent "maybe'ino" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateBlocksEnterFtraceEvent'ino
           (\ x__ y__ -> x__ {_F2fsTruncateBlocksEnterFtraceEvent'ino = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsTruncateBlocksEnterFtraceEvent "size" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateBlocksEnterFtraceEvent'size
           (\ x__ y__
              -> x__ {_F2fsTruncateBlocksEnterFtraceEvent'size = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncateBlocksEnterFtraceEvent "maybe'size" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateBlocksEnterFtraceEvent'size
           (\ x__ y__
              -> x__ {_F2fsTruncateBlocksEnterFtraceEvent'size = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsTruncateBlocksEnterFtraceEvent "blocks" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateBlocksEnterFtraceEvent'blocks
           (\ x__ y__
              -> x__ {_F2fsTruncateBlocksEnterFtraceEvent'blocks = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncateBlocksEnterFtraceEvent "maybe'blocks" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateBlocksEnterFtraceEvent'blocks
           (\ x__ y__
              -> x__ {_F2fsTruncateBlocksEnterFtraceEvent'blocks = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsTruncateBlocksEnterFtraceEvent "from" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateBlocksEnterFtraceEvent'from
           (\ x__ y__
              -> x__ {_F2fsTruncateBlocksEnterFtraceEvent'from = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncateBlocksEnterFtraceEvent "maybe'from" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateBlocksEnterFtraceEvent'from
           (\ x__ y__
              -> x__ {_F2fsTruncateBlocksEnterFtraceEvent'from = y__}))
        Prelude.id
instance Data.ProtoLens.Message F2fsTruncateBlocksEnterFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.F2fsTruncateBlocksEnterFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\"F2fsTruncateBlocksEnterFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
      \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DC2\n\
      \\EOTsize\CAN\ETX \SOH(\ETXR\EOTsize\DC2\SYN\n\
      \\ACKblocks\CAN\EOT \SOH(\EOTR\ACKblocks\DC2\DC2\n\
      \\EOTfrom\CAN\ENQ \SOH(\EOTR\EOTfrom"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dev__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dev"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dev")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncateBlocksEnterFtraceEvent
        ino__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ino"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ino")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncateBlocksEnterFtraceEvent
        size__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'size")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncateBlocksEnterFtraceEvent
        blocks__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "blocks"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'blocks")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncateBlocksEnterFtraceEvent
        from__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "from"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'from")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncateBlocksEnterFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, ino__field_descriptor),
           (Data.ProtoLens.Tag 3, size__field_descriptor),
           (Data.ProtoLens.Tag 4, blocks__field_descriptor),
           (Data.ProtoLens.Tag 5, from__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _F2fsTruncateBlocksEnterFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_F2fsTruncateBlocksEnterFtraceEvent'_unknownFields = y__})
  defMessage
    = F2fsTruncateBlocksEnterFtraceEvent'_constructor
        {_F2fsTruncateBlocksEnterFtraceEvent'dev = Prelude.Nothing,
         _F2fsTruncateBlocksEnterFtraceEvent'ino = Prelude.Nothing,
         _F2fsTruncateBlocksEnterFtraceEvent'size = Prelude.Nothing,
         _F2fsTruncateBlocksEnterFtraceEvent'blocks = Prelude.Nothing,
         _F2fsTruncateBlocksEnterFtraceEvent'from = Prelude.Nothing,
         _F2fsTruncateBlocksEnterFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          F2fsTruncateBlocksEnterFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser F2fsTruncateBlocksEnterFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "dev"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dev") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ino"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ino") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "size"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"size") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "blocks"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"blocks") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "from"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"from") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "F2fsTruncateBlocksEnterFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dev") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ino") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'size") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'blocks") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'from") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData F2fsTruncateBlocksEnterFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_F2fsTruncateBlocksEnterFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_F2fsTruncateBlocksEnterFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_F2fsTruncateBlocksEnterFtraceEvent'ino x__)
                   (Control.DeepSeq.deepseq
                      (_F2fsTruncateBlocksEnterFtraceEvent'size x__)
                      (Control.DeepSeq.deepseq
                         (_F2fsTruncateBlocksEnterFtraceEvent'blocks x__)
                         (Control.DeepSeq.deepseq
                            (_F2fsTruncateBlocksEnterFtraceEvent'from x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dev' @:: Lens' F2fsTruncateBlocksExitFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dev' @:: Lens' F2fsTruncateBlocksExitFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.ino' @:: Lens' F2fsTruncateBlocksExitFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'ino' @:: Lens' F2fsTruncateBlocksExitFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.ret' @:: Lens' F2fsTruncateBlocksExitFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'ret' @:: Lens' F2fsTruncateBlocksExitFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data F2fsTruncateBlocksExitFtraceEvent
  = F2fsTruncateBlocksExitFtraceEvent'_constructor {_F2fsTruncateBlocksExitFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                                    _F2fsTruncateBlocksExitFtraceEvent'ino :: !(Prelude.Maybe Data.Word.Word64),
                                                    _F2fsTruncateBlocksExitFtraceEvent'ret :: !(Prelude.Maybe Data.Int.Int32),
                                                    _F2fsTruncateBlocksExitFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show F2fsTruncateBlocksExitFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField F2fsTruncateBlocksExitFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateBlocksExitFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsTruncateBlocksExitFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncateBlocksExitFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateBlocksExitFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsTruncateBlocksExitFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsTruncateBlocksExitFtraceEvent "ino" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateBlocksExitFtraceEvent'ino
           (\ x__ y__ -> x__ {_F2fsTruncateBlocksExitFtraceEvent'ino = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncateBlocksExitFtraceEvent "maybe'ino" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateBlocksExitFtraceEvent'ino
           (\ x__ y__ -> x__ {_F2fsTruncateBlocksExitFtraceEvent'ino = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsTruncateBlocksExitFtraceEvent "ret" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateBlocksExitFtraceEvent'ret
           (\ x__ y__ -> x__ {_F2fsTruncateBlocksExitFtraceEvent'ret = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncateBlocksExitFtraceEvent "maybe'ret" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateBlocksExitFtraceEvent'ret
           (\ x__ y__ -> x__ {_F2fsTruncateBlocksExitFtraceEvent'ret = y__}))
        Prelude.id
instance Data.ProtoLens.Message F2fsTruncateBlocksExitFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.F2fsTruncateBlocksExitFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \!F2fsTruncateBlocksExitFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
      \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DLE\n\
      \\ETXret\CAN\ETX \SOH(\ENQR\ETXret"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dev__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dev"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dev")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncateBlocksExitFtraceEvent
        ino__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ino"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ino")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncateBlocksExitFtraceEvent
        ret__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ret"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ret")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncateBlocksExitFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, ino__field_descriptor),
           (Data.ProtoLens.Tag 3, ret__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _F2fsTruncateBlocksExitFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_F2fsTruncateBlocksExitFtraceEvent'_unknownFields = y__})
  defMessage
    = F2fsTruncateBlocksExitFtraceEvent'_constructor
        {_F2fsTruncateBlocksExitFtraceEvent'dev = Prelude.Nothing,
         _F2fsTruncateBlocksExitFtraceEvent'ino = Prelude.Nothing,
         _F2fsTruncateBlocksExitFtraceEvent'ret = Prelude.Nothing,
         _F2fsTruncateBlocksExitFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          F2fsTruncateBlocksExitFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser F2fsTruncateBlocksExitFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "dev"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dev") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ino"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ino") y x)
                        24
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
          "F2fsTruncateBlocksExitFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dev") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ino") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ret") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData F2fsTruncateBlocksExitFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_F2fsTruncateBlocksExitFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_F2fsTruncateBlocksExitFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_F2fsTruncateBlocksExitFtraceEvent'ino x__)
                   (Control.DeepSeq.deepseq
                      (_F2fsTruncateBlocksExitFtraceEvent'ret x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dev' @:: Lens' F2fsTruncateDataBlocksRangeFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dev' @:: Lens' F2fsTruncateDataBlocksRangeFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.ino' @:: Lens' F2fsTruncateDataBlocksRangeFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'ino' @:: Lens' F2fsTruncateDataBlocksRangeFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.nid' @:: Lens' F2fsTruncateDataBlocksRangeFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'nid' @:: Lens' F2fsTruncateDataBlocksRangeFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.ofs' @:: Lens' F2fsTruncateDataBlocksRangeFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'ofs' @:: Lens' F2fsTruncateDataBlocksRangeFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.free' @:: Lens' F2fsTruncateDataBlocksRangeFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'free' @:: Lens' F2fsTruncateDataBlocksRangeFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data F2fsTruncateDataBlocksRangeFtraceEvent
  = F2fsTruncateDataBlocksRangeFtraceEvent'_constructor {_F2fsTruncateDataBlocksRangeFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                                         _F2fsTruncateDataBlocksRangeFtraceEvent'ino :: !(Prelude.Maybe Data.Word.Word64),
                                                         _F2fsTruncateDataBlocksRangeFtraceEvent'nid :: !(Prelude.Maybe Data.Word.Word32),
                                                         _F2fsTruncateDataBlocksRangeFtraceEvent'ofs :: !(Prelude.Maybe Data.Word.Word32),
                                                         _F2fsTruncateDataBlocksRangeFtraceEvent'free :: !(Prelude.Maybe Data.Int.Int32),
                                                         _F2fsTruncateDataBlocksRangeFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show F2fsTruncateDataBlocksRangeFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField F2fsTruncateDataBlocksRangeFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateDataBlocksRangeFtraceEvent'dev
           (\ x__ y__
              -> x__ {_F2fsTruncateDataBlocksRangeFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncateDataBlocksRangeFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateDataBlocksRangeFtraceEvent'dev
           (\ x__ y__
              -> x__ {_F2fsTruncateDataBlocksRangeFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsTruncateDataBlocksRangeFtraceEvent "ino" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateDataBlocksRangeFtraceEvent'ino
           (\ x__ y__
              -> x__ {_F2fsTruncateDataBlocksRangeFtraceEvent'ino = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncateDataBlocksRangeFtraceEvent "maybe'ino" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateDataBlocksRangeFtraceEvent'ino
           (\ x__ y__
              -> x__ {_F2fsTruncateDataBlocksRangeFtraceEvent'ino = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsTruncateDataBlocksRangeFtraceEvent "nid" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateDataBlocksRangeFtraceEvent'nid
           (\ x__ y__
              -> x__ {_F2fsTruncateDataBlocksRangeFtraceEvent'nid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncateDataBlocksRangeFtraceEvent "maybe'nid" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateDataBlocksRangeFtraceEvent'nid
           (\ x__ y__
              -> x__ {_F2fsTruncateDataBlocksRangeFtraceEvent'nid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsTruncateDataBlocksRangeFtraceEvent "ofs" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateDataBlocksRangeFtraceEvent'ofs
           (\ x__ y__
              -> x__ {_F2fsTruncateDataBlocksRangeFtraceEvent'ofs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncateDataBlocksRangeFtraceEvent "maybe'ofs" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateDataBlocksRangeFtraceEvent'ofs
           (\ x__ y__
              -> x__ {_F2fsTruncateDataBlocksRangeFtraceEvent'ofs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsTruncateDataBlocksRangeFtraceEvent "free" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateDataBlocksRangeFtraceEvent'free
           (\ x__ y__
              -> x__ {_F2fsTruncateDataBlocksRangeFtraceEvent'free = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncateDataBlocksRangeFtraceEvent "maybe'free" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateDataBlocksRangeFtraceEvent'free
           (\ x__ y__
              -> x__ {_F2fsTruncateDataBlocksRangeFtraceEvent'free = y__}))
        Prelude.id
instance Data.ProtoLens.Message F2fsTruncateDataBlocksRangeFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.F2fsTruncateDataBlocksRangeFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \&F2fsTruncateDataBlocksRangeFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
      \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DLE\n\
      \\ETXnid\CAN\ETX \SOH(\rR\ETXnid\DC2\DLE\n\
      \\ETXofs\CAN\EOT \SOH(\rR\ETXofs\DC2\DC2\n\
      \\EOTfree\CAN\ENQ \SOH(\ENQR\EOTfree"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dev__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dev"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dev")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncateDataBlocksRangeFtraceEvent
        ino__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ino"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ino")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncateDataBlocksRangeFtraceEvent
        nid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nid")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncateDataBlocksRangeFtraceEvent
        ofs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ofs"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ofs")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncateDataBlocksRangeFtraceEvent
        free__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "free"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'free")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncateDataBlocksRangeFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, ino__field_descriptor),
           (Data.ProtoLens.Tag 3, nid__field_descriptor),
           (Data.ProtoLens.Tag 4, ofs__field_descriptor),
           (Data.ProtoLens.Tag 5, free__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _F2fsTruncateDataBlocksRangeFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__
                {_F2fsTruncateDataBlocksRangeFtraceEvent'_unknownFields = y__})
  defMessage
    = F2fsTruncateDataBlocksRangeFtraceEvent'_constructor
        {_F2fsTruncateDataBlocksRangeFtraceEvent'dev = Prelude.Nothing,
         _F2fsTruncateDataBlocksRangeFtraceEvent'ino = Prelude.Nothing,
         _F2fsTruncateDataBlocksRangeFtraceEvent'nid = Prelude.Nothing,
         _F2fsTruncateDataBlocksRangeFtraceEvent'ofs = Prelude.Nothing,
         _F2fsTruncateDataBlocksRangeFtraceEvent'free = Prelude.Nothing,
         _F2fsTruncateDataBlocksRangeFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          F2fsTruncateDataBlocksRangeFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser F2fsTruncateDataBlocksRangeFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "dev"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dev") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ino"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ino") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "nid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nid") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ofs"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ofs") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "free"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"free") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "F2fsTruncateDataBlocksRangeFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dev") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ino") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nid") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ofs") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'free") _x
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
instance Control.DeepSeq.NFData F2fsTruncateDataBlocksRangeFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_F2fsTruncateDataBlocksRangeFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_F2fsTruncateDataBlocksRangeFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_F2fsTruncateDataBlocksRangeFtraceEvent'ino x__)
                   (Control.DeepSeq.deepseq
                      (_F2fsTruncateDataBlocksRangeFtraceEvent'nid x__)
                      (Control.DeepSeq.deepseq
                         (_F2fsTruncateDataBlocksRangeFtraceEvent'ofs x__)
                         (Control.DeepSeq.deepseq
                            (_F2fsTruncateDataBlocksRangeFtraceEvent'free x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dev' @:: Lens' F2fsTruncateFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dev' @:: Lens' F2fsTruncateFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.ino' @:: Lens' F2fsTruncateFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'ino' @:: Lens' F2fsTruncateFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.pino' @:: Lens' F2fsTruncateFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'pino' @:: Lens' F2fsTruncateFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.mode' @:: Lens' F2fsTruncateFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'mode' @:: Lens' F2fsTruncateFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.size' @:: Lens' F2fsTruncateFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'size' @:: Lens' F2fsTruncateFtraceEvent (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.nlink' @:: Lens' F2fsTruncateFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'nlink' @:: Lens' F2fsTruncateFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.blocks' @:: Lens' F2fsTruncateFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'blocks' @:: Lens' F2fsTruncateFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.advise' @:: Lens' F2fsTruncateFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'advise' @:: Lens' F2fsTruncateFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data F2fsTruncateFtraceEvent
  = F2fsTruncateFtraceEvent'_constructor {_F2fsTruncateFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                          _F2fsTruncateFtraceEvent'ino :: !(Prelude.Maybe Data.Word.Word64),
                                          _F2fsTruncateFtraceEvent'pino :: !(Prelude.Maybe Data.Word.Word64),
                                          _F2fsTruncateFtraceEvent'mode :: !(Prelude.Maybe Data.Word.Word32),
                                          _F2fsTruncateFtraceEvent'size :: !(Prelude.Maybe Data.Int.Int64),
                                          _F2fsTruncateFtraceEvent'nlink :: !(Prelude.Maybe Data.Word.Word32),
                                          _F2fsTruncateFtraceEvent'blocks :: !(Prelude.Maybe Data.Word.Word64),
                                          _F2fsTruncateFtraceEvent'advise :: !(Prelude.Maybe Data.Word.Word32),
                                          _F2fsTruncateFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show F2fsTruncateFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField F2fsTruncateFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsTruncateFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncateFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsTruncateFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsTruncateFtraceEvent "ino" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateFtraceEvent'ino
           (\ x__ y__ -> x__ {_F2fsTruncateFtraceEvent'ino = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncateFtraceEvent "maybe'ino" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateFtraceEvent'ino
           (\ x__ y__ -> x__ {_F2fsTruncateFtraceEvent'ino = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsTruncateFtraceEvent "pino" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateFtraceEvent'pino
           (\ x__ y__ -> x__ {_F2fsTruncateFtraceEvent'pino = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncateFtraceEvent "maybe'pino" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateFtraceEvent'pino
           (\ x__ y__ -> x__ {_F2fsTruncateFtraceEvent'pino = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsTruncateFtraceEvent "mode" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateFtraceEvent'mode
           (\ x__ y__ -> x__ {_F2fsTruncateFtraceEvent'mode = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncateFtraceEvent "maybe'mode" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateFtraceEvent'mode
           (\ x__ y__ -> x__ {_F2fsTruncateFtraceEvent'mode = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsTruncateFtraceEvent "size" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateFtraceEvent'size
           (\ x__ y__ -> x__ {_F2fsTruncateFtraceEvent'size = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncateFtraceEvent "maybe'size" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateFtraceEvent'size
           (\ x__ y__ -> x__ {_F2fsTruncateFtraceEvent'size = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsTruncateFtraceEvent "nlink" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateFtraceEvent'nlink
           (\ x__ y__ -> x__ {_F2fsTruncateFtraceEvent'nlink = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncateFtraceEvent "maybe'nlink" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateFtraceEvent'nlink
           (\ x__ y__ -> x__ {_F2fsTruncateFtraceEvent'nlink = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsTruncateFtraceEvent "blocks" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateFtraceEvent'blocks
           (\ x__ y__ -> x__ {_F2fsTruncateFtraceEvent'blocks = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncateFtraceEvent "maybe'blocks" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateFtraceEvent'blocks
           (\ x__ y__ -> x__ {_F2fsTruncateFtraceEvent'blocks = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsTruncateFtraceEvent "advise" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateFtraceEvent'advise
           (\ x__ y__ -> x__ {_F2fsTruncateFtraceEvent'advise = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncateFtraceEvent "maybe'advise" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateFtraceEvent'advise
           (\ x__ y__ -> x__ {_F2fsTruncateFtraceEvent'advise = y__}))
        Prelude.id
instance Data.ProtoLens.Message F2fsTruncateFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.F2fsTruncateFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ETBF2fsTruncateFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
      \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DC2\n\
      \\EOTpino\CAN\ETX \SOH(\EOTR\EOTpino\DC2\DC2\n\
      \\EOTmode\CAN\EOT \SOH(\rR\EOTmode\DC2\DC2\n\
      \\EOTsize\CAN\ENQ \SOH(\ETXR\EOTsize\DC2\DC4\n\
      \\ENQnlink\CAN\ACK \SOH(\rR\ENQnlink\DC2\SYN\n\
      \\ACKblocks\CAN\a \SOH(\EOTR\ACKblocks\DC2\SYN\n\
      \\ACKadvise\CAN\b \SOH(\rR\ACKadvise"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dev__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dev"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dev")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncateFtraceEvent
        ino__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ino"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ino")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncateFtraceEvent
        pino__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pino"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pino")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncateFtraceEvent
        mode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mode"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mode")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncateFtraceEvent
        size__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'size")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncateFtraceEvent
        nlink__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nlink"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nlink")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncateFtraceEvent
        blocks__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "blocks"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'blocks")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncateFtraceEvent
        advise__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "advise"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'advise")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncateFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, ino__field_descriptor),
           (Data.ProtoLens.Tag 3, pino__field_descriptor),
           (Data.ProtoLens.Tag 4, mode__field_descriptor),
           (Data.ProtoLens.Tag 5, size__field_descriptor),
           (Data.ProtoLens.Tag 6, nlink__field_descriptor),
           (Data.ProtoLens.Tag 7, blocks__field_descriptor),
           (Data.ProtoLens.Tag 8, advise__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _F2fsTruncateFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_F2fsTruncateFtraceEvent'_unknownFields = y__})
  defMessage
    = F2fsTruncateFtraceEvent'_constructor
        {_F2fsTruncateFtraceEvent'dev = Prelude.Nothing,
         _F2fsTruncateFtraceEvent'ino = Prelude.Nothing,
         _F2fsTruncateFtraceEvent'pino = Prelude.Nothing,
         _F2fsTruncateFtraceEvent'mode = Prelude.Nothing,
         _F2fsTruncateFtraceEvent'size = Prelude.Nothing,
         _F2fsTruncateFtraceEvent'nlink = Prelude.Nothing,
         _F2fsTruncateFtraceEvent'blocks = Prelude.Nothing,
         _F2fsTruncateFtraceEvent'advise = Prelude.Nothing,
         _F2fsTruncateFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          F2fsTruncateFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser F2fsTruncateFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "dev"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dev") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ino"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ino") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "pino"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pino") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "mode"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"mode") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "size"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"size") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "nlink"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nlink") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "blocks"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"blocks") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "advise"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"advise") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "F2fsTruncateFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dev") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ino") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pino") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'mode") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'size") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nlink") _x
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
                                      (Data.ProtoLens.Field.field @"maybe'blocks") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'advise") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            ((Prelude..)
                                               Data.ProtoLens.Encoding.Bytes.putVarInt
                                               Prelude.fromIntegral _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData F2fsTruncateFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_F2fsTruncateFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_F2fsTruncateFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_F2fsTruncateFtraceEvent'ino x__)
                   (Control.DeepSeq.deepseq
                      (_F2fsTruncateFtraceEvent'pino x__)
                      (Control.DeepSeq.deepseq
                         (_F2fsTruncateFtraceEvent'mode x__)
                         (Control.DeepSeq.deepseq
                            (_F2fsTruncateFtraceEvent'size x__)
                            (Control.DeepSeq.deepseq
                               (_F2fsTruncateFtraceEvent'nlink x__)
                               (Control.DeepSeq.deepseq
                                  (_F2fsTruncateFtraceEvent'blocks x__)
                                  (Control.DeepSeq.deepseq
                                     (_F2fsTruncateFtraceEvent'advise x__) ()))))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dev' @:: Lens' F2fsTruncateInodeBlocksEnterFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dev' @:: Lens' F2fsTruncateInodeBlocksEnterFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.ino' @:: Lens' F2fsTruncateInodeBlocksEnterFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'ino' @:: Lens' F2fsTruncateInodeBlocksEnterFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.size' @:: Lens' F2fsTruncateInodeBlocksEnterFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'size' @:: Lens' F2fsTruncateInodeBlocksEnterFtraceEvent (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.blocks' @:: Lens' F2fsTruncateInodeBlocksEnterFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'blocks' @:: Lens' F2fsTruncateInodeBlocksEnterFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.from' @:: Lens' F2fsTruncateInodeBlocksEnterFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'from' @:: Lens' F2fsTruncateInodeBlocksEnterFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data F2fsTruncateInodeBlocksEnterFtraceEvent
  = F2fsTruncateInodeBlocksEnterFtraceEvent'_constructor {_F2fsTruncateInodeBlocksEnterFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                                          _F2fsTruncateInodeBlocksEnterFtraceEvent'ino :: !(Prelude.Maybe Data.Word.Word64),
                                                          _F2fsTruncateInodeBlocksEnterFtraceEvent'size :: !(Prelude.Maybe Data.Int.Int64),
                                                          _F2fsTruncateInodeBlocksEnterFtraceEvent'blocks :: !(Prelude.Maybe Data.Word.Word64),
                                                          _F2fsTruncateInodeBlocksEnterFtraceEvent'from :: !(Prelude.Maybe Data.Word.Word64),
                                                          _F2fsTruncateInodeBlocksEnterFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show F2fsTruncateInodeBlocksEnterFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField F2fsTruncateInodeBlocksEnterFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateInodeBlocksEnterFtraceEvent'dev
           (\ x__ y__
              -> x__ {_F2fsTruncateInodeBlocksEnterFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncateInodeBlocksEnterFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateInodeBlocksEnterFtraceEvent'dev
           (\ x__ y__
              -> x__ {_F2fsTruncateInodeBlocksEnterFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsTruncateInodeBlocksEnterFtraceEvent "ino" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateInodeBlocksEnterFtraceEvent'ino
           (\ x__ y__
              -> x__ {_F2fsTruncateInodeBlocksEnterFtraceEvent'ino = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncateInodeBlocksEnterFtraceEvent "maybe'ino" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateInodeBlocksEnterFtraceEvent'ino
           (\ x__ y__
              -> x__ {_F2fsTruncateInodeBlocksEnterFtraceEvent'ino = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsTruncateInodeBlocksEnterFtraceEvent "size" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateInodeBlocksEnterFtraceEvent'size
           (\ x__ y__
              -> x__ {_F2fsTruncateInodeBlocksEnterFtraceEvent'size = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncateInodeBlocksEnterFtraceEvent "maybe'size" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateInodeBlocksEnterFtraceEvent'size
           (\ x__ y__
              -> x__ {_F2fsTruncateInodeBlocksEnterFtraceEvent'size = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsTruncateInodeBlocksEnterFtraceEvent "blocks" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateInodeBlocksEnterFtraceEvent'blocks
           (\ x__ y__
              -> x__ {_F2fsTruncateInodeBlocksEnterFtraceEvent'blocks = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncateInodeBlocksEnterFtraceEvent "maybe'blocks" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateInodeBlocksEnterFtraceEvent'blocks
           (\ x__ y__
              -> x__ {_F2fsTruncateInodeBlocksEnterFtraceEvent'blocks = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsTruncateInodeBlocksEnterFtraceEvent "from" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateInodeBlocksEnterFtraceEvent'from
           (\ x__ y__
              -> x__ {_F2fsTruncateInodeBlocksEnterFtraceEvent'from = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncateInodeBlocksEnterFtraceEvent "maybe'from" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateInodeBlocksEnterFtraceEvent'from
           (\ x__ y__
              -> x__ {_F2fsTruncateInodeBlocksEnterFtraceEvent'from = y__}))
        Prelude.id
instance Data.ProtoLens.Message F2fsTruncateInodeBlocksEnterFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.F2fsTruncateInodeBlocksEnterFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \'F2fsTruncateInodeBlocksEnterFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
      \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DC2\n\
      \\EOTsize\CAN\ETX \SOH(\ETXR\EOTsize\DC2\SYN\n\
      \\ACKblocks\CAN\EOT \SOH(\EOTR\ACKblocks\DC2\DC2\n\
      \\EOTfrom\CAN\ENQ \SOH(\EOTR\EOTfrom"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dev__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dev"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dev")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncateInodeBlocksEnterFtraceEvent
        ino__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ino"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ino")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncateInodeBlocksEnterFtraceEvent
        size__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'size")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncateInodeBlocksEnterFtraceEvent
        blocks__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "blocks"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'blocks")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncateInodeBlocksEnterFtraceEvent
        from__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "from"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'from")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncateInodeBlocksEnterFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, ino__field_descriptor),
           (Data.ProtoLens.Tag 3, size__field_descriptor),
           (Data.ProtoLens.Tag 4, blocks__field_descriptor),
           (Data.ProtoLens.Tag 5, from__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _F2fsTruncateInodeBlocksEnterFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__
                {_F2fsTruncateInodeBlocksEnterFtraceEvent'_unknownFields = y__})
  defMessage
    = F2fsTruncateInodeBlocksEnterFtraceEvent'_constructor
        {_F2fsTruncateInodeBlocksEnterFtraceEvent'dev = Prelude.Nothing,
         _F2fsTruncateInodeBlocksEnterFtraceEvent'ino = Prelude.Nothing,
         _F2fsTruncateInodeBlocksEnterFtraceEvent'size = Prelude.Nothing,
         _F2fsTruncateInodeBlocksEnterFtraceEvent'blocks = Prelude.Nothing,
         _F2fsTruncateInodeBlocksEnterFtraceEvent'from = Prelude.Nothing,
         _F2fsTruncateInodeBlocksEnterFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          F2fsTruncateInodeBlocksEnterFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser F2fsTruncateInodeBlocksEnterFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "dev"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dev") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ino"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ino") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "size"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"size") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "blocks"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"blocks") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "from"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"from") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "F2fsTruncateInodeBlocksEnterFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dev") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ino") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'size") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'blocks") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'from") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData F2fsTruncateInodeBlocksEnterFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_F2fsTruncateInodeBlocksEnterFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_F2fsTruncateInodeBlocksEnterFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_F2fsTruncateInodeBlocksEnterFtraceEvent'ino x__)
                   (Control.DeepSeq.deepseq
                      (_F2fsTruncateInodeBlocksEnterFtraceEvent'size x__)
                      (Control.DeepSeq.deepseq
                         (_F2fsTruncateInodeBlocksEnterFtraceEvent'blocks x__)
                         (Control.DeepSeq.deepseq
                            (_F2fsTruncateInodeBlocksEnterFtraceEvent'from x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dev' @:: Lens' F2fsTruncateInodeBlocksExitFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dev' @:: Lens' F2fsTruncateInodeBlocksExitFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.ino' @:: Lens' F2fsTruncateInodeBlocksExitFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'ino' @:: Lens' F2fsTruncateInodeBlocksExitFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.ret' @:: Lens' F2fsTruncateInodeBlocksExitFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'ret' @:: Lens' F2fsTruncateInodeBlocksExitFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data F2fsTruncateInodeBlocksExitFtraceEvent
  = F2fsTruncateInodeBlocksExitFtraceEvent'_constructor {_F2fsTruncateInodeBlocksExitFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                                         _F2fsTruncateInodeBlocksExitFtraceEvent'ino :: !(Prelude.Maybe Data.Word.Word64),
                                                         _F2fsTruncateInodeBlocksExitFtraceEvent'ret :: !(Prelude.Maybe Data.Int.Int32),
                                                         _F2fsTruncateInodeBlocksExitFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show F2fsTruncateInodeBlocksExitFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField F2fsTruncateInodeBlocksExitFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateInodeBlocksExitFtraceEvent'dev
           (\ x__ y__
              -> x__ {_F2fsTruncateInodeBlocksExitFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncateInodeBlocksExitFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateInodeBlocksExitFtraceEvent'dev
           (\ x__ y__
              -> x__ {_F2fsTruncateInodeBlocksExitFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsTruncateInodeBlocksExitFtraceEvent "ino" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateInodeBlocksExitFtraceEvent'ino
           (\ x__ y__
              -> x__ {_F2fsTruncateInodeBlocksExitFtraceEvent'ino = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncateInodeBlocksExitFtraceEvent "maybe'ino" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateInodeBlocksExitFtraceEvent'ino
           (\ x__ y__
              -> x__ {_F2fsTruncateInodeBlocksExitFtraceEvent'ino = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsTruncateInodeBlocksExitFtraceEvent "ret" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateInodeBlocksExitFtraceEvent'ret
           (\ x__ y__
              -> x__ {_F2fsTruncateInodeBlocksExitFtraceEvent'ret = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncateInodeBlocksExitFtraceEvent "maybe'ret" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateInodeBlocksExitFtraceEvent'ret
           (\ x__ y__
              -> x__ {_F2fsTruncateInodeBlocksExitFtraceEvent'ret = y__}))
        Prelude.id
instance Data.ProtoLens.Message F2fsTruncateInodeBlocksExitFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.F2fsTruncateInodeBlocksExitFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \&F2fsTruncateInodeBlocksExitFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
      \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DLE\n\
      \\ETXret\CAN\ETX \SOH(\ENQR\ETXret"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dev__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dev"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dev")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncateInodeBlocksExitFtraceEvent
        ino__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ino"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ino")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncateInodeBlocksExitFtraceEvent
        ret__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ret"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ret")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncateInodeBlocksExitFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, ino__field_descriptor),
           (Data.ProtoLens.Tag 3, ret__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _F2fsTruncateInodeBlocksExitFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__
                {_F2fsTruncateInodeBlocksExitFtraceEvent'_unknownFields = y__})
  defMessage
    = F2fsTruncateInodeBlocksExitFtraceEvent'_constructor
        {_F2fsTruncateInodeBlocksExitFtraceEvent'dev = Prelude.Nothing,
         _F2fsTruncateInodeBlocksExitFtraceEvent'ino = Prelude.Nothing,
         _F2fsTruncateInodeBlocksExitFtraceEvent'ret = Prelude.Nothing,
         _F2fsTruncateInodeBlocksExitFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          F2fsTruncateInodeBlocksExitFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser F2fsTruncateInodeBlocksExitFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "dev"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dev") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ino"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ino") y x)
                        24
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
          "F2fsTruncateInodeBlocksExitFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dev") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ino") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ret") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData F2fsTruncateInodeBlocksExitFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_F2fsTruncateInodeBlocksExitFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_F2fsTruncateInodeBlocksExitFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_F2fsTruncateInodeBlocksExitFtraceEvent'ino x__)
                   (Control.DeepSeq.deepseq
                      (_F2fsTruncateInodeBlocksExitFtraceEvent'ret x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dev' @:: Lens' F2fsTruncateNodeFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dev' @:: Lens' F2fsTruncateNodeFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.ino' @:: Lens' F2fsTruncateNodeFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'ino' @:: Lens' F2fsTruncateNodeFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.nid' @:: Lens' F2fsTruncateNodeFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'nid' @:: Lens' F2fsTruncateNodeFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.blkAddr' @:: Lens' F2fsTruncateNodeFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'blkAddr' @:: Lens' F2fsTruncateNodeFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data F2fsTruncateNodeFtraceEvent
  = F2fsTruncateNodeFtraceEvent'_constructor {_F2fsTruncateNodeFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                              _F2fsTruncateNodeFtraceEvent'ino :: !(Prelude.Maybe Data.Word.Word64),
                                              _F2fsTruncateNodeFtraceEvent'nid :: !(Prelude.Maybe Data.Word.Word32),
                                              _F2fsTruncateNodeFtraceEvent'blkAddr :: !(Prelude.Maybe Data.Word.Word32),
                                              _F2fsTruncateNodeFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show F2fsTruncateNodeFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField F2fsTruncateNodeFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateNodeFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsTruncateNodeFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncateNodeFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateNodeFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsTruncateNodeFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsTruncateNodeFtraceEvent "ino" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateNodeFtraceEvent'ino
           (\ x__ y__ -> x__ {_F2fsTruncateNodeFtraceEvent'ino = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncateNodeFtraceEvent "maybe'ino" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateNodeFtraceEvent'ino
           (\ x__ y__ -> x__ {_F2fsTruncateNodeFtraceEvent'ino = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsTruncateNodeFtraceEvent "nid" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateNodeFtraceEvent'nid
           (\ x__ y__ -> x__ {_F2fsTruncateNodeFtraceEvent'nid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncateNodeFtraceEvent "maybe'nid" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateNodeFtraceEvent'nid
           (\ x__ y__ -> x__ {_F2fsTruncateNodeFtraceEvent'nid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsTruncateNodeFtraceEvent "blkAddr" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateNodeFtraceEvent'blkAddr
           (\ x__ y__ -> x__ {_F2fsTruncateNodeFtraceEvent'blkAddr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncateNodeFtraceEvent "maybe'blkAddr" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateNodeFtraceEvent'blkAddr
           (\ x__ y__ -> x__ {_F2fsTruncateNodeFtraceEvent'blkAddr = y__}))
        Prelude.id
instance Data.ProtoLens.Message F2fsTruncateNodeFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.F2fsTruncateNodeFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ESCF2fsTruncateNodeFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
      \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DLE\n\
      \\ETXnid\CAN\ETX \SOH(\rR\ETXnid\DC2\EM\n\
      \\bblk_addr\CAN\EOT \SOH(\rR\ablkAddr"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dev__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dev"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dev")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncateNodeFtraceEvent
        ino__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ino"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ino")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncateNodeFtraceEvent
        nid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nid")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncateNodeFtraceEvent
        blkAddr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "blk_addr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'blkAddr")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncateNodeFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, ino__field_descriptor),
           (Data.ProtoLens.Tag 3, nid__field_descriptor),
           (Data.ProtoLens.Tag 4, blkAddr__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _F2fsTruncateNodeFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_F2fsTruncateNodeFtraceEvent'_unknownFields = y__})
  defMessage
    = F2fsTruncateNodeFtraceEvent'_constructor
        {_F2fsTruncateNodeFtraceEvent'dev = Prelude.Nothing,
         _F2fsTruncateNodeFtraceEvent'ino = Prelude.Nothing,
         _F2fsTruncateNodeFtraceEvent'nid = Prelude.Nothing,
         _F2fsTruncateNodeFtraceEvent'blkAddr = Prelude.Nothing,
         _F2fsTruncateNodeFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          F2fsTruncateNodeFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser F2fsTruncateNodeFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "dev"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dev") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ino"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ino") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "nid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nid") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "blk_addr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"blkAddr") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "F2fsTruncateNodeFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dev") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ino") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nid") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'blkAddr") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData F2fsTruncateNodeFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_F2fsTruncateNodeFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_F2fsTruncateNodeFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_F2fsTruncateNodeFtraceEvent'ino x__)
                   (Control.DeepSeq.deepseq
                      (_F2fsTruncateNodeFtraceEvent'nid x__)
                      (Control.DeepSeq.deepseq
                         (_F2fsTruncateNodeFtraceEvent'blkAddr x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dev' @:: Lens' F2fsTruncateNodesEnterFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dev' @:: Lens' F2fsTruncateNodesEnterFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.ino' @:: Lens' F2fsTruncateNodesEnterFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'ino' @:: Lens' F2fsTruncateNodesEnterFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.nid' @:: Lens' F2fsTruncateNodesEnterFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'nid' @:: Lens' F2fsTruncateNodesEnterFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.blkAddr' @:: Lens' F2fsTruncateNodesEnterFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'blkAddr' @:: Lens' F2fsTruncateNodesEnterFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data F2fsTruncateNodesEnterFtraceEvent
  = F2fsTruncateNodesEnterFtraceEvent'_constructor {_F2fsTruncateNodesEnterFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                                    _F2fsTruncateNodesEnterFtraceEvent'ino :: !(Prelude.Maybe Data.Word.Word64),
                                                    _F2fsTruncateNodesEnterFtraceEvent'nid :: !(Prelude.Maybe Data.Word.Word32),
                                                    _F2fsTruncateNodesEnterFtraceEvent'blkAddr :: !(Prelude.Maybe Data.Word.Word32),
                                                    _F2fsTruncateNodesEnterFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show F2fsTruncateNodesEnterFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField F2fsTruncateNodesEnterFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateNodesEnterFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsTruncateNodesEnterFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncateNodesEnterFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateNodesEnterFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsTruncateNodesEnterFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsTruncateNodesEnterFtraceEvent "ino" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateNodesEnterFtraceEvent'ino
           (\ x__ y__ -> x__ {_F2fsTruncateNodesEnterFtraceEvent'ino = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncateNodesEnterFtraceEvent "maybe'ino" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateNodesEnterFtraceEvent'ino
           (\ x__ y__ -> x__ {_F2fsTruncateNodesEnterFtraceEvent'ino = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsTruncateNodesEnterFtraceEvent "nid" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateNodesEnterFtraceEvent'nid
           (\ x__ y__ -> x__ {_F2fsTruncateNodesEnterFtraceEvent'nid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncateNodesEnterFtraceEvent "maybe'nid" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateNodesEnterFtraceEvent'nid
           (\ x__ y__ -> x__ {_F2fsTruncateNodesEnterFtraceEvent'nid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsTruncateNodesEnterFtraceEvent "blkAddr" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateNodesEnterFtraceEvent'blkAddr
           (\ x__ y__
              -> x__ {_F2fsTruncateNodesEnterFtraceEvent'blkAddr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncateNodesEnterFtraceEvent "maybe'blkAddr" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateNodesEnterFtraceEvent'blkAddr
           (\ x__ y__
              -> x__ {_F2fsTruncateNodesEnterFtraceEvent'blkAddr = y__}))
        Prelude.id
instance Data.ProtoLens.Message F2fsTruncateNodesEnterFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.F2fsTruncateNodesEnterFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \!F2fsTruncateNodesEnterFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
      \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DLE\n\
      \\ETXnid\CAN\ETX \SOH(\rR\ETXnid\DC2\EM\n\
      \\bblk_addr\CAN\EOT \SOH(\rR\ablkAddr"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dev__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dev"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dev")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncateNodesEnterFtraceEvent
        ino__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ino"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ino")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncateNodesEnterFtraceEvent
        nid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nid")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncateNodesEnterFtraceEvent
        blkAddr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "blk_addr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'blkAddr")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncateNodesEnterFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, ino__field_descriptor),
           (Data.ProtoLens.Tag 3, nid__field_descriptor),
           (Data.ProtoLens.Tag 4, blkAddr__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _F2fsTruncateNodesEnterFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_F2fsTruncateNodesEnterFtraceEvent'_unknownFields = y__})
  defMessage
    = F2fsTruncateNodesEnterFtraceEvent'_constructor
        {_F2fsTruncateNodesEnterFtraceEvent'dev = Prelude.Nothing,
         _F2fsTruncateNodesEnterFtraceEvent'ino = Prelude.Nothing,
         _F2fsTruncateNodesEnterFtraceEvent'nid = Prelude.Nothing,
         _F2fsTruncateNodesEnterFtraceEvent'blkAddr = Prelude.Nothing,
         _F2fsTruncateNodesEnterFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          F2fsTruncateNodesEnterFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser F2fsTruncateNodesEnterFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "dev"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dev") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ino"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ino") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "nid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nid") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "blk_addr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"blkAddr") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "F2fsTruncateNodesEnterFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dev") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ino") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nid") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'blkAddr") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData F2fsTruncateNodesEnterFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_F2fsTruncateNodesEnterFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_F2fsTruncateNodesEnterFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_F2fsTruncateNodesEnterFtraceEvent'ino x__)
                   (Control.DeepSeq.deepseq
                      (_F2fsTruncateNodesEnterFtraceEvent'nid x__)
                      (Control.DeepSeq.deepseq
                         (_F2fsTruncateNodesEnterFtraceEvent'blkAddr x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dev' @:: Lens' F2fsTruncateNodesExitFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dev' @:: Lens' F2fsTruncateNodesExitFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.ino' @:: Lens' F2fsTruncateNodesExitFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'ino' @:: Lens' F2fsTruncateNodesExitFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.ret' @:: Lens' F2fsTruncateNodesExitFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'ret' @:: Lens' F2fsTruncateNodesExitFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data F2fsTruncateNodesExitFtraceEvent
  = F2fsTruncateNodesExitFtraceEvent'_constructor {_F2fsTruncateNodesExitFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                                   _F2fsTruncateNodesExitFtraceEvent'ino :: !(Prelude.Maybe Data.Word.Word64),
                                                   _F2fsTruncateNodesExitFtraceEvent'ret :: !(Prelude.Maybe Data.Int.Int32),
                                                   _F2fsTruncateNodesExitFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show F2fsTruncateNodesExitFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField F2fsTruncateNodesExitFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateNodesExitFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsTruncateNodesExitFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncateNodesExitFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateNodesExitFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsTruncateNodesExitFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsTruncateNodesExitFtraceEvent "ino" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateNodesExitFtraceEvent'ino
           (\ x__ y__ -> x__ {_F2fsTruncateNodesExitFtraceEvent'ino = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncateNodesExitFtraceEvent "maybe'ino" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateNodesExitFtraceEvent'ino
           (\ x__ y__ -> x__ {_F2fsTruncateNodesExitFtraceEvent'ino = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsTruncateNodesExitFtraceEvent "ret" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateNodesExitFtraceEvent'ret
           (\ x__ y__ -> x__ {_F2fsTruncateNodesExitFtraceEvent'ret = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncateNodesExitFtraceEvent "maybe'ret" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncateNodesExitFtraceEvent'ret
           (\ x__ y__ -> x__ {_F2fsTruncateNodesExitFtraceEvent'ret = y__}))
        Prelude.id
instance Data.ProtoLens.Message F2fsTruncateNodesExitFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.F2fsTruncateNodesExitFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \ F2fsTruncateNodesExitFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
      \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DLE\n\
      \\ETXret\CAN\ETX \SOH(\ENQR\ETXret"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dev__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dev"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dev")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncateNodesExitFtraceEvent
        ino__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ino"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ino")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncateNodesExitFtraceEvent
        ret__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ret"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ret")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncateNodesExitFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, ino__field_descriptor),
           (Data.ProtoLens.Tag 3, ret__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _F2fsTruncateNodesExitFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_F2fsTruncateNodesExitFtraceEvent'_unknownFields = y__})
  defMessage
    = F2fsTruncateNodesExitFtraceEvent'_constructor
        {_F2fsTruncateNodesExitFtraceEvent'dev = Prelude.Nothing,
         _F2fsTruncateNodesExitFtraceEvent'ino = Prelude.Nothing,
         _F2fsTruncateNodesExitFtraceEvent'ret = Prelude.Nothing,
         _F2fsTruncateNodesExitFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          F2fsTruncateNodesExitFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser F2fsTruncateNodesExitFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "dev"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dev") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ino"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ino") y x)
                        24
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
          "F2fsTruncateNodesExitFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dev") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ino") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ret") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData F2fsTruncateNodesExitFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_F2fsTruncateNodesExitFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_F2fsTruncateNodesExitFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_F2fsTruncateNodesExitFtraceEvent'ino x__)
                   (Control.DeepSeq.deepseq
                      (_F2fsTruncateNodesExitFtraceEvent'ret x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dev' @:: Lens' F2fsTruncatePartialNodesFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dev' @:: Lens' F2fsTruncatePartialNodesFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.ino' @:: Lens' F2fsTruncatePartialNodesFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'ino' @:: Lens' F2fsTruncatePartialNodesFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.nid' @:: Lens' F2fsTruncatePartialNodesFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'nid' @:: Lens' F2fsTruncatePartialNodesFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.depth' @:: Lens' F2fsTruncatePartialNodesFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'depth' @:: Lens' F2fsTruncatePartialNodesFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.err' @:: Lens' F2fsTruncatePartialNodesFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'err' @:: Lens' F2fsTruncatePartialNodesFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data F2fsTruncatePartialNodesFtraceEvent
  = F2fsTruncatePartialNodesFtraceEvent'_constructor {_F2fsTruncatePartialNodesFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                                      _F2fsTruncatePartialNodesFtraceEvent'ino :: !(Prelude.Maybe Data.Word.Word64),
                                                      _F2fsTruncatePartialNodesFtraceEvent'nid :: !(Prelude.Maybe Data.Word.Word32),
                                                      _F2fsTruncatePartialNodesFtraceEvent'depth :: !(Prelude.Maybe Data.Int.Int32),
                                                      _F2fsTruncatePartialNodesFtraceEvent'err :: !(Prelude.Maybe Data.Int.Int32),
                                                      _F2fsTruncatePartialNodesFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show F2fsTruncatePartialNodesFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField F2fsTruncatePartialNodesFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncatePartialNodesFtraceEvent'dev
           (\ x__ y__
              -> x__ {_F2fsTruncatePartialNodesFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncatePartialNodesFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncatePartialNodesFtraceEvent'dev
           (\ x__ y__
              -> x__ {_F2fsTruncatePartialNodesFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsTruncatePartialNodesFtraceEvent "ino" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncatePartialNodesFtraceEvent'ino
           (\ x__ y__
              -> x__ {_F2fsTruncatePartialNodesFtraceEvent'ino = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncatePartialNodesFtraceEvent "maybe'ino" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncatePartialNodesFtraceEvent'ino
           (\ x__ y__
              -> x__ {_F2fsTruncatePartialNodesFtraceEvent'ino = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsTruncatePartialNodesFtraceEvent "nid" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncatePartialNodesFtraceEvent'nid
           (\ x__ y__
              -> x__ {_F2fsTruncatePartialNodesFtraceEvent'nid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncatePartialNodesFtraceEvent "maybe'nid" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncatePartialNodesFtraceEvent'nid
           (\ x__ y__
              -> x__ {_F2fsTruncatePartialNodesFtraceEvent'nid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsTruncatePartialNodesFtraceEvent "depth" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncatePartialNodesFtraceEvent'depth
           (\ x__ y__
              -> x__ {_F2fsTruncatePartialNodesFtraceEvent'depth = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncatePartialNodesFtraceEvent "maybe'depth" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncatePartialNodesFtraceEvent'depth
           (\ x__ y__
              -> x__ {_F2fsTruncatePartialNodesFtraceEvent'depth = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsTruncatePartialNodesFtraceEvent "err" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncatePartialNodesFtraceEvent'err
           (\ x__ y__
              -> x__ {_F2fsTruncatePartialNodesFtraceEvent'err = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsTruncatePartialNodesFtraceEvent "maybe'err" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsTruncatePartialNodesFtraceEvent'err
           (\ x__ y__
              -> x__ {_F2fsTruncatePartialNodesFtraceEvent'err = y__}))
        Prelude.id
instance Data.ProtoLens.Message F2fsTruncatePartialNodesFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.F2fsTruncatePartialNodesFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \#F2fsTruncatePartialNodesFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
      \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DLE\n\
      \\ETXnid\CAN\ETX \SOH(\rR\ETXnid\DC2\DC4\n\
      \\ENQdepth\CAN\EOT \SOH(\ENQR\ENQdepth\DC2\DLE\n\
      \\ETXerr\CAN\ENQ \SOH(\ENQR\ETXerr"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dev__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dev"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dev")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncatePartialNodesFtraceEvent
        ino__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ino"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ino")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncatePartialNodesFtraceEvent
        nid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nid")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncatePartialNodesFtraceEvent
        depth__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "depth"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'depth")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncatePartialNodesFtraceEvent
        err__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "err"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'err")) ::
              Data.ProtoLens.FieldDescriptor F2fsTruncatePartialNodesFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, ino__field_descriptor),
           (Data.ProtoLens.Tag 3, nid__field_descriptor),
           (Data.ProtoLens.Tag 4, depth__field_descriptor),
           (Data.ProtoLens.Tag 5, err__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _F2fsTruncatePartialNodesFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_F2fsTruncatePartialNodesFtraceEvent'_unknownFields = y__})
  defMessage
    = F2fsTruncatePartialNodesFtraceEvent'_constructor
        {_F2fsTruncatePartialNodesFtraceEvent'dev = Prelude.Nothing,
         _F2fsTruncatePartialNodesFtraceEvent'ino = Prelude.Nothing,
         _F2fsTruncatePartialNodesFtraceEvent'nid = Prelude.Nothing,
         _F2fsTruncatePartialNodesFtraceEvent'depth = Prelude.Nothing,
         _F2fsTruncatePartialNodesFtraceEvent'err = Prelude.Nothing,
         _F2fsTruncatePartialNodesFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          F2fsTruncatePartialNodesFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser F2fsTruncatePartialNodesFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "dev"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dev") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ino"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ino") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "nid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nid") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "depth"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"depth") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "err"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"err") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "F2fsTruncatePartialNodesFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dev") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ino") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nid") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'depth") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'err") _x
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
instance Control.DeepSeq.NFData F2fsTruncatePartialNodesFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_F2fsTruncatePartialNodesFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_F2fsTruncatePartialNodesFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_F2fsTruncatePartialNodesFtraceEvent'ino x__)
                   (Control.DeepSeq.deepseq
                      (_F2fsTruncatePartialNodesFtraceEvent'nid x__)
                      (Control.DeepSeq.deepseq
                         (_F2fsTruncatePartialNodesFtraceEvent'depth x__)
                         (Control.DeepSeq.deepseq
                            (_F2fsTruncatePartialNodesFtraceEvent'err x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dev' @:: Lens' F2fsUnlinkEnterFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dev' @:: Lens' F2fsUnlinkEnterFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.ino' @:: Lens' F2fsUnlinkEnterFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'ino' @:: Lens' F2fsUnlinkEnterFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.size' @:: Lens' F2fsUnlinkEnterFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'size' @:: Lens' F2fsUnlinkEnterFtraceEvent (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.blocks' @:: Lens' F2fsUnlinkEnterFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'blocks' @:: Lens' F2fsUnlinkEnterFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.name' @:: Lens' F2fsUnlinkEnterFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'name' @:: Lens' F2fsUnlinkEnterFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data F2fsUnlinkEnterFtraceEvent
  = F2fsUnlinkEnterFtraceEvent'_constructor {_F2fsUnlinkEnterFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                             _F2fsUnlinkEnterFtraceEvent'ino :: !(Prelude.Maybe Data.Word.Word64),
                                             _F2fsUnlinkEnterFtraceEvent'size :: !(Prelude.Maybe Data.Int.Int64),
                                             _F2fsUnlinkEnterFtraceEvent'blocks :: !(Prelude.Maybe Data.Word.Word64),
                                             _F2fsUnlinkEnterFtraceEvent'name :: !(Prelude.Maybe Data.Text.Text),
                                             _F2fsUnlinkEnterFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show F2fsUnlinkEnterFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField F2fsUnlinkEnterFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsUnlinkEnterFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsUnlinkEnterFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsUnlinkEnterFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsUnlinkEnterFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsUnlinkEnterFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsUnlinkEnterFtraceEvent "ino" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsUnlinkEnterFtraceEvent'ino
           (\ x__ y__ -> x__ {_F2fsUnlinkEnterFtraceEvent'ino = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsUnlinkEnterFtraceEvent "maybe'ino" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsUnlinkEnterFtraceEvent'ino
           (\ x__ y__ -> x__ {_F2fsUnlinkEnterFtraceEvent'ino = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsUnlinkEnterFtraceEvent "size" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsUnlinkEnterFtraceEvent'size
           (\ x__ y__ -> x__ {_F2fsUnlinkEnterFtraceEvent'size = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsUnlinkEnterFtraceEvent "maybe'size" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsUnlinkEnterFtraceEvent'size
           (\ x__ y__ -> x__ {_F2fsUnlinkEnterFtraceEvent'size = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsUnlinkEnterFtraceEvent "blocks" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsUnlinkEnterFtraceEvent'blocks
           (\ x__ y__ -> x__ {_F2fsUnlinkEnterFtraceEvent'blocks = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsUnlinkEnterFtraceEvent "maybe'blocks" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsUnlinkEnterFtraceEvent'blocks
           (\ x__ y__ -> x__ {_F2fsUnlinkEnterFtraceEvent'blocks = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsUnlinkEnterFtraceEvent "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsUnlinkEnterFtraceEvent'name
           (\ x__ y__ -> x__ {_F2fsUnlinkEnterFtraceEvent'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsUnlinkEnterFtraceEvent "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsUnlinkEnterFtraceEvent'name
           (\ x__ y__ -> x__ {_F2fsUnlinkEnterFtraceEvent'name = y__}))
        Prelude.id
instance Data.ProtoLens.Message F2fsUnlinkEnterFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.F2fsUnlinkEnterFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SUBF2fsUnlinkEnterFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
      \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DC2\n\
      \\EOTsize\CAN\ETX \SOH(\ETXR\EOTsize\DC2\SYN\n\
      \\ACKblocks\CAN\EOT \SOH(\EOTR\ACKblocks\DC2\DC2\n\
      \\EOTname\CAN\ENQ \SOH(\tR\EOTname"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dev__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dev"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dev")) ::
              Data.ProtoLens.FieldDescriptor F2fsUnlinkEnterFtraceEvent
        ino__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ino"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ino")) ::
              Data.ProtoLens.FieldDescriptor F2fsUnlinkEnterFtraceEvent
        size__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'size")) ::
              Data.ProtoLens.FieldDescriptor F2fsUnlinkEnterFtraceEvent
        blocks__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "blocks"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'blocks")) ::
              Data.ProtoLens.FieldDescriptor F2fsUnlinkEnterFtraceEvent
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'name")) ::
              Data.ProtoLens.FieldDescriptor F2fsUnlinkEnterFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, ino__field_descriptor),
           (Data.ProtoLens.Tag 3, size__field_descriptor),
           (Data.ProtoLens.Tag 4, blocks__field_descriptor),
           (Data.ProtoLens.Tag 5, name__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _F2fsUnlinkEnterFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_F2fsUnlinkEnterFtraceEvent'_unknownFields = y__})
  defMessage
    = F2fsUnlinkEnterFtraceEvent'_constructor
        {_F2fsUnlinkEnterFtraceEvent'dev = Prelude.Nothing,
         _F2fsUnlinkEnterFtraceEvent'ino = Prelude.Nothing,
         _F2fsUnlinkEnterFtraceEvent'size = Prelude.Nothing,
         _F2fsUnlinkEnterFtraceEvent'blocks = Prelude.Nothing,
         _F2fsUnlinkEnterFtraceEvent'name = Prelude.Nothing,
         _F2fsUnlinkEnterFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          F2fsUnlinkEnterFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser F2fsUnlinkEnterFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "dev"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dev") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ino"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ino") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "size"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"size") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "blocks"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"blocks") y x)
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
          (do loop Data.ProtoLens.defMessage) "F2fsUnlinkEnterFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dev") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ino") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'size") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'blocks") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'name") _x
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
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData F2fsUnlinkEnterFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_F2fsUnlinkEnterFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_F2fsUnlinkEnterFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_F2fsUnlinkEnterFtraceEvent'ino x__)
                   (Control.DeepSeq.deepseq
                      (_F2fsUnlinkEnterFtraceEvent'size x__)
                      (Control.DeepSeq.deepseq
                         (_F2fsUnlinkEnterFtraceEvent'blocks x__)
                         (Control.DeepSeq.deepseq
                            (_F2fsUnlinkEnterFtraceEvent'name x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dev' @:: Lens' F2fsUnlinkExitFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dev' @:: Lens' F2fsUnlinkExitFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.ino' @:: Lens' F2fsUnlinkExitFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'ino' @:: Lens' F2fsUnlinkExitFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.ret' @:: Lens' F2fsUnlinkExitFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'ret' @:: Lens' F2fsUnlinkExitFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data F2fsUnlinkExitFtraceEvent
  = F2fsUnlinkExitFtraceEvent'_constructor {_F2fsUnlinkExitFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                            _F2fsUnlinkExitFtraceEvent'ino :: !(Prelude.Maybe Data.Word.Word64),
                                            _F2fsUnlinkExitFtraceEvent'ret :: !(Prelude.Maybe Data.Int.Int32),
                                            _F2fsUnlinkExitFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show F2fsUnlinkExitFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField F2fsUnlinkExitFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsUnlinkExitFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsUnlinkExitFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsUnlinkExitFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsUnlinkExitFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsUnlinkExitFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsUnlinkExitFtraceEvent "ino" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsUnlinkExitFtraceEvent'ino
           (\ x__ y__ -> x__ {_F2fsUnlinkExitFtraceEvent'ino = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsUnlinkExitFtraceEvent "maybe'ino" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsUnlinkExitFtraceEvent'ino
           (\ x__ y__ -> x__ {_F2fsUnlinkExitFtraceEvent'ino = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsUnlinkExitFtraceEvent "ret" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsUnlinkExitFtraceEvent'ret
           (\ x__ y__ -> x__ {_F2fsUnlinkExitFtraceEvent'ret = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsUnlinkExitFtraceEvent "maybe'ret" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsUnlinkExitFtraceEvent'ret
           (\ x__ y__ -> x__ {_F2fsUnlinkExitFtraceEvent'ret = y__}))
        Prelude.id
instance Data.ProtoLens.Message F2fsUnlinkExitFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.F2fsUnlinkExitFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\EMF2fsUnlinkExitFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
      \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DLE\n\
      \\ETXret\CAN\ETX \SOH(\ENQR\ETXret"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dev__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dev"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dev")) ::
              Data.ProtoLens.FieldDescriptor F2fsUnlinkExitFtraceEvent
        ino__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ino"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ino")) ::
              Data.ProtoLens.FieldDescriptor F2fsUnlinkExitFtraceEvent
        ret__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ret"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ret")) ::
              Data.ProtoLens.FieldDescriptor F2fsUnlinkExitFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, ino__field_descriptor),
           (Data.ProtoLens.Tag 3, ret__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _F2fsUnlinkExitFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_F2fsUnlinkExitFtraceEvent'_unknownFields = y__})
  defMessage
    = F2fsUnlinkExitFtraceEvent'_constructor
        {_F2fsUnlinkExitFtraceEvent'dev = Prelude.Nothing,
         _F2fsUnlinkExitFtraceEvent'ino = Prelude.Nothing,
         _F2fsUnlinkExitFtraceEvent'ret = Prelude.Nothing,
         _F2fsUnlinkExitFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          F2fsUnlinkExitFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser F2fsUnlinkExitFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "dev"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dev") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ino"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ino") y x)
                        24
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
          (do loop Data.ProtoLens.defMessage) "F2fsUnlinkExitFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dev") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ino") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ret") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData F2fsUnlinkExitFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_F2fsUnlinkExitFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_F2fsUnlinkExitFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_F2fsUnlinkExitFtraceEvent'ino x__)
                   (Control.DeepSeq.deepseq (_F2fsUnlinkExitFtraceEvent'ret x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dev' @:: Lens' F2fsVmPageMkwriteFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dev' @:: Lens' F2fsVmPageMkwriteFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.ino' @:: Lens' F2fsVmPageMkwriteFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'ino' @:: Lens' F2fsVmPageMkwriteFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.type'' @:: Lens' F2fsVmPageMkwriteFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'type'' @:: Lens' F2fsVmPageMkwriteFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dir' @:: Lens' F2fsVmPageMkwriteFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dir' @:: Lens' F2fsVmPageMkwriteFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.index' @:: Lens' F2fsVmPageMkwriteFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'index' @:: Lens' F2fsVmPageMkwriteFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dirty' @:: Lens' F2fsVmPageMkwriteFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dirty' @:: Lens' F2fsVmPageMkwriteFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.uptodate' @:: Lens' F2fsVmPageMkwriteFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'uptodate' @:: Lens' F2fsVmPageMkwriteFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data F2fsVmPageMkwriteFtraceEvent
  = F2fsVmPageMkwriteFtraceEvent'_constructor {_F2fsVmPageMkwriteFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                               _F2fsVmPageMkwriteFtraceEvent'ino :: !(Prelude.Maybe Data.Word.Word64),
                                               _F2fsVmPageMkwriteFtraceEvent'type' :: !(Prelude.Maybe Data.Int.Int32),
                                               _F2fsVmPageMkwriteFtraceEvent'dir :: !(Prelude.Maybe Data.Int.Int32),
                                               _F2fsVmPageMkwriteFtraceEvent'index :: !(Prelude.Maybe Data.Word.Word64),
                                               _F2fsVmPageMkwriteFtraceEvent'dirty :: !(Prelude.Maybe Data.Int.Int32),
                                               _F2fsVmPageMkwriteFtraceEvent'uptodate :: !(Prelude.Maybe Data.Int.Int32),
                                               _F2fsVmPageMkwriteFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show F2fsVmPageMkwriteFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField F2fsVmPageMkwriteFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsVmPageMkwriteFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsVmPageMkwriteFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsVmPageMkwriteFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsVmPageMkwriteFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsVmPageMkwriteFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsVmPageMkwriteFtraceEvent "ino" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsVmPageMkwriteFtraceEvent'ino
           (\ x__ y__ -> x__ {_F2fsVmPageMkwriteFtraceEvent'ino = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsVmPageMkwriteFtraceEvent "maybe'ino" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsVmPageMkwriteFtraceEvent'ino
           (\ x__ y__ -> x__ {_F2fsVmPageMkwriteFtraceEvent'ino = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsVmPageMkwriteFtraceEvent "type'" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsVmPageMkwriteFtraceEvent'type'
           (\ x__ y__ -> x__ {_F2fsVmPageMkwriteFtraceEvent'type' = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsVmPageMkwriteFtraceEvent "maybe'type'" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsVmPageMkwriteFtraceEvent'type'
           (\ x__ y__ -> x__ {_F2fsVmPageMkwriteFtraceEvent'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsVmPageMkwriteFtraceEvent "dir" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsVmPageMkwriteFtraceEvent'dir
           (\ x__ y__ -> x__ {_F2fsVmPageMkwriteFtraceEvent'dir = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsVmPageMkwriteFtraceEvent "maybe'dir" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsVmPageMkwriteFtraceEvent'dir
           (\ x__ y__ -> x__ {_F2fsVmPageMkwriteFtraceEvent'dir = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsVmPageMkwriteFtraceEvent "index" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsVmPageMkwriteFtraceEvent'index
           (\ x__ y__ -> x__ {_F2fsVmPageMkwriteFtraceEvent'index = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsVmPageMkwriteFtraceEvent "maybe'index" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsVmPageMkwriteFtraceEvent'index
           (\ x__ y__ -> x__ {_F2fsVmPageMkwriteFtraceEvent'index = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsVmPageMkwriteFtraceEvent "dirty" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsVmPageMkwriteFtraceEvent'dirty
           (\ x__ y__ -> x__ {_F2fsVmPageMkwriteFtraceEvent'dirty = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsVmPageMkwriteFtraceEvent "maybe'dirty" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsVmPageMkwriteFtraceEvent'dirty
           (\ x__ y__ -> x__ {_F2fsVmPageMkwriteFtraceEvent'dirty = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsVmPageMkwriteFtraceEvent "uptodate" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsVmPageMkwriteFtraceEvent'uptodate
           (\ x__ y__ -> x__ {_F2fsVmPageMkwriteFtraceEvent'uptodate = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsVmPageMkwriteFtraceEvent "maybe'uptodate" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsVmPageMkwriteFtraceEvent'uptodate
           (\ x__ y__ -> x__ {_F2fsVmPageMkwriteFtraceEvent'uptodate = y__}))
        Prelude.id
instance Data.ProtoLens.Message F2fsVmPageMkwriteFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.F2fsVmPageMkwriteFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\FSF2fsVmPageMkwriteFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
      \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DC2\n\
      \\EOTtype\CAN\ETX \SOH(\ENQR\EOTtype\DC2\DLE\n\
      \\ETXdir\CAN\EOT \SOH(\ENQR\ETXdir\DC2\DC4\n\
      \\ENQindex\CAN\ENQ \SOH(\EOTR\ENQindex\DC2\DC4\n\
      \\ENQdirty\CAN\ACK \SOH(\ENQR\ENQdirty\DC2\SUB\n\
      \\buptodate\CAN\a \SOH(\ENQR\buptodate"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dev__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dev"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dev")) ::
              Data.ProtoLens.FieldDescriptor F2fsVmPageMkwriteFtraceEvent
        ino__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ino"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ino")) ::
              Data.ProtoLens.FieldDescriptor F2fsVmPageMkwriteFtraceEvent
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'type'")) ::
              Data.ProtoLens.FieldDescriptor F2fsVmPageMkwriteFtraceEvent
        dir__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dir"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dir")) ::
              Data.ProtoLens.FieldDescriptor F2fsVmPageMkwriteFtraceEvent
        index__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'index")) ::
              Data.ProtoLens.FieldDescriptor F2fsVmPageMkwriteFtraceEvent
        dirty__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dirty"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dirty")) ::
              Data.ProtoLens.FieldDescriptor F2fsVmPageMkwriteFtraceEvent
        uptodate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "uptodate"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'uptodate")) ::
              Data.ProtoLens.FieldDescriptor F2fsVmPageMkwriteFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, ino__field_descriptor),
           (Data.ProtoLens.Tag 3, type'__field_descriptor),
           (Data.ProtoLens.Tag 4, dir__field_descriptor),
           (Data.ProtoLens.Tag 5, index__field_descriptor),
           (Data.ProtoLens.Tag 6, dirty__field_descriptor),
           (Data.ProtoLens.Tag 7, uptodate__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _F2fsVmPageMkwriteFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_F2fsVmPageMkwriteFtraceEvent'_unknownFields = y__})
  defMessage
    = F2fsVmPageMkwriteFtraceEvent'_constructor
        {_F2fsVmPageMkwriteFtraceEvent'dev = Prelude.Nothing,
         _F2fsVmPageMkwriteFtraceEvent'ino = Prelude.Nothing,
         _F2fsVmPageMkwriteFtraceEvent'type' = Prelude.Nothing,
         _F2fsVmPageMkwriteFtraceEvent'dir = Prelude.Nothing,
         _F2fsVmPageMkwriteFtraceEvent'index = Prelude.Nothing,
         _F2fsVmPageMkwriteFtraceEvent'dirty = Prelude.Nothing,
         _F2fsVmPageMkwriteFtraceEvent'uptodate = Prelude.Nothing,
         _F2fsVmPageMkwriteFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          F2fsVmPageMkwriteFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser F2fsVmPageMkwriteFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "dev"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dev") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ino"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ino") y x)
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
                                       "dir"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dir") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "index"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"index") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "dirty"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dirty") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "uptodate"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"uptodate") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "F2fsVmPageMkwriteFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dev") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ino") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
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
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dir") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'index") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dirty") _x
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
                                      (Data.ProtoLens.Field.field @"maybe'uptodate") _x
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
instance Control.DeepSeq.NFData F2fsVmPageMkwriteFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_F2fsVmPageMkwriteFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_F2fsVmPageMkwriteFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_F2fsVmPageMkwriteFtraceEvent'ino x__)
                   (Control.DeepSeq.deepseq
                      (_F2fsVmPageMkwriteFtraceEvent'type' x__)
                      (Control.DeepSeq.deepseq
                         (_F2fsVmPageMkwriteFtraceEvent'dir x__)
                         (Control.DeepSeq.deepseq
                            (_F2fsVmPageMkwriteFtraceEvent'index x__)
                            (Control.DeepSeq.deepseq
                               (_F2fsVmPageMkwriteFtraceEvent'dirty x__)
                               (Control.DeepSeq.deepseq
                                  (_F2fsVmPageMkwriteFtraceEvent'uptodate x__) ())))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dev' @:: Lens' F2fsWriteBeginFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dev' @:: Lens' F2fsWriteBeginFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.ino' @:: Lens' F2fsWriteBeginFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'ino' @:: Lens' F2fsWriteBeginFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.pos' @:: Lens' F2fsWriteBeginFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'pos' @:: Lens' F2fsWriteBeginFtraceEvent (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.len' @:: Lens' F2fsWriteBeginFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'len' @:: Lens' F2fsWriteBeginFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.flags' @:: Lens' F2fsWriteBeginFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'flags' @:: Lens' F2fsWriteBeginFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data F2fsWriteBeginFtraceEvent
  = F2fsWriteBeginFtraceEvent'_constructor {_F2fsWriteBeginFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                            _F2fsWriteBeginFtraceEvent'ino :: !(Prelude.Maybe Data.Word.Word64),
                                            _F2fsWriteBeginFtraceEvent'pos :: !(Prelude.Maybe Data.Int.Int64),
                                            _F2fsWriteBeginFtraceEvent'len :: !(Prelude.Maybe Data.Word.Word32),
                                            _F2fsWriteBeginFtraceEvent'flags :: !(Prelude.Maybe Data.Word.Word32),
                                            _F2fsWriteBeginFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show F2fsWriteBeginFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField F2fsWriteBeginFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsWriteBeginFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsWriteBeginFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsWriteBeginFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsWriteBeginFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsWriteBeginFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsWriteBeginFtraceEvent "ino" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsWriteBeginFtraceEvent'ino
           (\ x__ y__ -> x__ {_F2fsWriteBeginFtraceEvent'ino = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsWriteBeginFtraceEvent "maybe'ino" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsWriteBeginFtraceEvent'ino
           (\ x__ y__ -> x__ {_F2fsWriteBeginFtraceEvent'ino = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsWriteBeginFtraceEvent "pos" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsWriteBeginFtraceEvent'pos
           (\ x__ y__ -> x__ {_F2fsWriteBeginFtraceEvent'pos = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsWriteBeginFtraceEvent "maybe'pos" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsWriteBeginFtraceEvent'pos
           (\ x__ y__ -> x__ {_F2fsWriteBeginFtraceEvent'pos = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsWriteBeginFtraceEvent "len" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsWriteBeginFtraceEvent'len
           (\ x__ y__ -> x__ {_F2fsWriteBeginFtraceEvent'len = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsWriteBeginFtraceEvent "maybe'len" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsWriteBeginFtraceEvent'len
           (\ x__ y__ -> x__ {_F2fsWriteBeginFtraceEvent'len = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsWriteBeginFtraceEvent "flags" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsWriteBeginFtraceEvent'flags
           (\ x__ y__ -> x__ {_F2fsWriteBeginFtraceEvent'flags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsWriteBeginFtraceEvent "maybe'flags" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsWriteBeginFtraceEvent'flags
           (\ x__ y__ -> x__ {_F2fsWriteBeginFtraceEvent'flags = y__}))
        Prelude.id
instance Data.ProtoLens.Message F2fsWriteBeginFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.F2fsWriteBeginFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\EMF2fsWriteBeginFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
      \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DLE\n\
      \\ETXpos\CAN\ETX \SOH(\ETXR\ETXpos\DC2\DLE\n\
      \\ETXlen\CAN\EOT \SOH(\rR\ETXlen\DC2\DC4\n\
      \\ENQflags\CAN\ENQ \SOH(\rR\ENQflags"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dev__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dev"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dev")) ::
              Data.ProtoLens.FieldDescriptor F2fsWriteBeginFtraceEvent
        ino__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ino"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ino")) ::
              Data.ProtoLens.FieldDescriptor F2fsWriteBeginFtraceEvent
        pos__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pos"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pos")) ::
              Data.ProtoLens.FieldDescriptor F2fsWriteBeginFtraceEvent
        len__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "len"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'len")) ::
              Data.ProtoLens.FieldDescriptor F2fsWriteBeginFtraceEvent
        flags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'flags")) ::
              Data.ProtoLens.FieldDescriptor F2fsWriteBeginFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, ino__field_descriptor),
           (Data.ProtoLens.Tag 3, pos__field_descriptor),
           (Data.ProtoLens.Tag 4, len__field_descriptor),
           (Data.ProtoLens.Tag 5, flags__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _F2fsWriteBeginFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_F2fsWriteBeginFtraceEvent'_unknownFields = y__})
  defMessage
    = F2fsWriteBeginFtraceEvent'_constructor
        {_F2fsWriteBeginFtraceEvent'dev = Prelude.Nothing,
         _F2fsWriteBeginFtraceEvent'ino = Prelude.Nothing,
         _F2fsWriteBeginFtraceEvent'pos = Prelude.Nothing,
         _F2fsWriteBeginFtraceEvent'len = Prelude.Nothing,
         _F2fsWriteBeginFtraceEvent'flags = Prelude.Nothing,
         _F2fsWriteBeginFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          F2fsWriteBeginFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser F2fsWriteBeginFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "dev"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dev") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ino"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ino") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "pos"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pos") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "len"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"len") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "flags"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"flags") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "F2fsWriteBeginFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dev") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ino") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pos") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'len") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'flags") _x
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
instance Control.DeepSeq.NFData F2fsWriteBeginFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_F2fsWriteBeginFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_F2fsWriteBeginFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_F2fsWriteBeginFtraceEvent'ino x__)
                   (Control.DeepSeq.deepseq
                      (_F2fsWriteBeginFtraceEvent'pos x__)
                      (Control.DeepSeq.deepseq
                         (_F2fsWriteBeginFtraceEvent'len x__)
                         (Control.DeepSeq.deepseq
                            (_F2fsWriteBeginFtraceEvent'flags x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dev' @:: Lens' F2fsWriteCheckpointFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dev' @:: Lens' F2fsWriteCheckpointFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.isUmount' @:: Lens' F2fsWriteCheckpointFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'isUmount' @:: Lens' F2fsWriteCheckpointFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.msg' @:: Lens' F2fsWriteCheckpointFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'msg' @:: Lens' F2fsWriteCheckpointFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.reason' @:: Lens' F2fsWriteCheckpointFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'reason' @:: Lens' F2fsWriteCheckpointFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data F2fsWriteCheckpointFtraceEvent
  = F2fsWriteCheckpointFtraceEvent'_constructor {_F2fsWriteCheckpointFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                                 _F2fsWriteCheckpointFtraceEvent'isUmount :: !(Prelude.Maybe Data.Word.Word32),
                                                 _F2fsWriteCheckpointFtraceEvent'msg :: !(Prelude.Maybe Data.Text.Text),
                                                 _F2fsWriteCheckpointFtraceEvent'reason :: !(Prelude.Maybe Data.Int.Int32),
                                                 _F2fsWriteCheckpointFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show F2fsWriteCheckpointFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField F2fsWriteCheckpointFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsWriteCheckpointFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsWriteCheckpointFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsWriteCheckpointFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsWriteCheckpointFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsWriteCheckpointFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsWriteCheckpointFtraceEvent "isUmount" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsWriteCheckpointFtraceEvent'isUmount
           (\ x__ y__
              -> x__ {_F2fsWriteCheckpointFtraceEvent'isUmount = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsWriteCheckpointFtraceEvent "maybe'isUmount" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsWriteCheckpointFtraceEvent'isUmount
           (\ x__ y__
              -> x__ {_F2fsWriteCheckpointFtraceEvent'isUmount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsWriteCheckpointFtraceEvent "msg" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsWriteCheckpointFtraceEvent'msg
           (\ x__ y__ -> x__ {_F2fsWriteCheckpointFtraceEvent'msg = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsWriteCheckpointFtraceEvent "maybe'msg" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsWriteCheckpointFtraceEvent'msg
           (\ x__ y__ -> x__ {_F2fsWriteCheckpointFtraceEvent'msg = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsWriteCheckpointFtraceEvent "reason" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsWriteCheckpointFtraceEvent'reason
           (\ x__ y__ -> x__ {_F2fsWriteCheckpointFtraceEvent'reason = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsWriteCheckpointFtraceEvent "maybe'reason" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsWriteCheckpointFtraceEvent'reason
           (\ x__ y__ -> x__ {_F2fsWriteCheckpointFtraceEvent'reason = y__}))
        Prelude.id
instance Data.ProtoLens.Message F2fsWriteCheckpointFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.F2fsWriteCheckpointFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\RSF2fsWriteCheckpointFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\ESC\n\
      \\tis_umount\CAN\STX \SOH(\rR\bisUmount\DC2\DLE\n\
      \\ETXmsg\CAN\ETX \SOH(\tR\ETXmsg\DC2\SYN\n\
      \\ACKreason\CAN\EOT \SOH(\ENQR\ACKreason"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dev__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dev"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dev")) ::
              Data.ProtoLens.FieldDescriptor F2fsWriteCheckpointFtraceEvent
        isUmount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "is_umount"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'isUmount")) ::
              Data.ProtoLens.FieldDescriptor F2fsWriteCheckpointFtraceEvent
        msg__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "msg"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'msg")) ::
              Data.ProtoLens.FieldDescriptor F2fsWriteCheckpointFtraceEvent
        reason__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reason"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'reason")) ::
              Data.ProtoLens.FieldDescriptor F2fsWriteCheckpointFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, isUmount__field_descriptor),
           (Data.ProtoLens.Tag 3, msg__field_descriptor),
           (Data.ProtoLens.Tag 4, reason__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _F2fsWriteCheckpointFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_F2fsWriteCheckpointFtraceEvent'_unknownFields = y__})
  defMessage
    = F2fsWriteCheckpointFtraceEvent'_constructor
        {_F2fsWriteCheckpointFtraceEvent'dev = Prelude.Nothing,
         _F2fsWriteCheckpointFtraceEvent'isUmount = Prelude.Nothing,
         _F2fsWriteCheckpointFtraceEvent'msg = Prelude.Nothing,
         _F2fsWriteCheckpointFtraceEvent'reason = Prelude.Nothing,
         _F2fsWriteCheckpointFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          F2fsWriteCheckpointFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser F2fsWriteCheckpointFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "dev"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dev") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "is_umount"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"isUmount") y x)
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
                                       "msg"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"msg") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
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
          (do loop Data.ProtoLens.defMessage)
          "F2fsWriteCheckpointFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dev") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'isUmount") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'msg") _x
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
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'reason") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData F2fsWriteCheckpointFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_F2fsWriteCheckpointFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_F2fsWriteCheckpointFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_F2fsWriteCheckpointFtraceEvent'isUmount x__)
                   (Control.DeepSeq.deepseq
                      (_F2fsWriteCheckpointFtraceEvent'msg x__)
                      (Control.DeepSeq.deepseq
                         (_F2fsWriteCheckpointFtraceEvent'reason x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.dev' @:: Lens' F2fsWriteEndFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'dev' @:: Lens' F2fsWriteEndFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.ino' @:: Lens' F2fsWriteEndFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'ino' @:: Lens' F2fsWriteEndFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.pos' @:: Lens' F2fsWriteEndFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'pos' @:: Lens' F2fsWriteEndFtraceEvent (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.len' @:: Lens' F2fsWriteEndFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'len' @:: Lens' F2fsWriteEndFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.copied' @:: Lens' F2fsWriteEndFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields.maybe'copied' @:: Lens' F2fsWriteEndFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data F2fsWriteEndFtraceEvent
  = F2fsWriteEndFtraceEvent'_constructor {_F2fsWriteEndFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                          _F2fsWriteEndFtraceEvent'ino :: !(Prelude.Maybe Data.Word.Word64),
                                          _F2fsWriteEndFtraceEvent'pos :: !(Prelude.Maybe Data.Int.Int64),
                                          _F2fsWriteEndFtraceEvent'len :: !(Prelude.Maybe Data.Word.Word32),
                                          _F2fsWriteEndFtraceEvent'copied :: !(Prelude.Maybe Data.Word.Word32),
                                          _F2fsWriteEndFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show F2fsWriteEndFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField F2fsWriteEndFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsWriteEndFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsWriteEndFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsWriteEndFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsWriteEndFtraceEvent'dev
           (\ x__ y__ -> x__ {_F2fsWriteEndFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsWriteEndFtraceEvent "ino" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsWriteEndFtraceEvent'ino
           (\ x__ y__ -> x__ {_F2fsWriteEndFtraceEvent'ino = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsWriteEndFtraceEvent "maybe'ino" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsWriteEndFtraceEvent'ino
           (\ x__ y__ -> x__ {_F2fsWriteEndFtraceEvent'ino = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsWriteEndFtraceEvent "pos" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsWriteEndFtraceEvent'pos
           (\ x__ y__ -> x__ {_F2fsWriteEndFtraceEvent'pos = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsWriteEndFtraceEvent "maybe'pos" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsWriteEndFtraceEvent'pos
           (\ x__ y__ -> x__ {_F2fsWriteEndFtraceEvent'pos = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsWriteEndFtraceEvent "len" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsWriteEndFtraceEvent'len
           (\ x__ y__ -> x__ {_F2fsWriteEndFtraceEvent'len = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsWriteEndFtraceEvent "maybe'len" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsWriteEndFtraceEvent'len
           (\ x__ y__ -> x__ {_F2fsWriteEndFtraceEvent'len = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField F2fsWriteEndFtraceEvent "copied" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsWriteEndFtraceEvent'copied
           (\ x__ y__ -> x__ {_F2fsWriteEndFtraceEvent'copied = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField F2fsWriteEndFtraceEvent "maybe'copied" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _F2fsWriteEndFtraceEvent'copied
           (\ x__ y__ -> x__ {_F2fsWriteEndFtraceEvent'copied = y__}))
        Prelude.id
instance Data.ProtoLens.Message F2fsWriteEndFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.F2fsWriteEndFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ETBF2fsWriteEndFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
      \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DLE\n\
      \\ETXpos\CAN\ETX \SOH(\ETXR\ETXpos\DC2\DLE\n\
      \\ETXlen\CAN\EOT \SOH(\rR\ETXlen\DC2\SYN\n\
      \\ACKcopied\CAN\ENQ \SOH(\rR\ACKcopied"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dev__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dev"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dev")) ::
              Data.ProtoLens.FieldDescriptor F2fsWriteEndFtraceEvent
        ino__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ino"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ino")) ::
              Data.ProtoLens.FieldDescriptor F2fsWriteEndFtraceEvent
        pos__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pos"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pos")) ::
              Data.ProtoLens.FieldDescriptor F2fsWriteEndFtraceEvent
        len__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "len"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'len")) ::
              Data.ProtoLens.FieldDescriptor F2fsWriteEndFtraceEvent
        copied__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "copied"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'copied")) ::
              Data.ProtoLens.FieldDescriptor F2fsWriteEndFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, ino__field_descriptor),
           (Data.ProtoLens.Tag 3, pos__field_descriptor),
           (Data.ProtoLens.Tag 4, len__field_descriptor),
           (Data.ProtoLens.Tag 5, copied__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _F2fsWriteEndFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_F2fsWriteEndFtraceEvent'_unknownFields = y__})
  defMessage
    = F2fsWriteEndFtraceEvent'_constructor
        {_F2fsWriteEndFtraceEvent'dev = Prelude.Nothing,
         _F2fsWriteEndFtraceEvent'ino = Prelude.Nothing,
         _F2fsWriteEndFtraceEvent'pos = Prelude.Nothing,
         _F2fsWriteEndFtraceEvent'len = Prelude.Nothing,
         _F2fsWriteEndFtraceEvent'copied = Prelude.Nothing,
         _F2fsWriteEndFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          F2fsWriteEndFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser F2fsWriteEndFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "dev"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dev") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ino"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ino") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "pos"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pos") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "len"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"len") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "copied"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"copied") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "F2fsWriteEndFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dev") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ino") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pos") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'len") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'copied") _x
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
instance Control.DeepSeq.NFData F2fsWriteEndFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_F2fsWriteEndFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_F2fsWriteEndFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_F2fsWriteEndFtraceEvent'ino x__)
                   (Control.DeepSeq.deepseq
                      (_F2fsWriteEndFtraceEvent'pos x__)
                      (Control.DeepSeq.deepseq
                         (_F2fsWriteEndFtraceEvent'len x__)
                         (Control.DeepSeq.deepseq
                            (_F2fsWriteEndFtraceEvent'copied x__) ())))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \'protos/perfetto/trace/ftrace/f2fs.proto\DC2\SIperfetto.protos\"\132\SOH\n\
    \\SUBF2fsDoSubmitBioFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DC4\n\
    \\ENQbtype\CAN\STX \SOH(\ENQR\ENQbtype\DC2\DC2\n\
    \\EOTsync\CAN\ETX \SOH(\rR\EOTsync\DC2\SYN\n\
    \\ACKsector\CAN\EOT \SOH(\EOTR\ACKsector\DC2\DC2\n\
    \\EOTsize\CAN\ENQ \SOH(\rR\EOTsize\"\193\SOH\n\
    \\EMF2fsEvictInodeFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
    \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DC2\n\
    \\EOTpino\CAN\ETX \SOH(\EOTR\EOTpino\DC2\DC2\n\
    \\EOTmode\CAN\EOT \SOH(\rR\EOTmode\DC2\DC2\n\
    \\EOTsize\CAN\ENQ \SOH(\ETXR\EOTsize\DC2\DC4\n\
    \\ENQnlink\CAN\ACK \SOH(\rR\ENQnlink\DC2\SYN\n\
    \\ACKblocks\CAN\a \SOH(\EOTR\ACKblocks\DC2\SYN\n\
    \\ACKadvise\CAN\b \SOH(\rR\ACKadvise\"\186\SOH\n\
    \\CANF2fsFallocateFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
    \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DC2\n\
    \\EOTmode\CAN\ETX \SOH(\ENQR\EOTmode\DC2\SYN\n\
    \\ACKoffset\CAN\EOT \SOH(\ETXR\ACKoffset\DC2\DLE\n\
    \\ETXlen\CAN\ENQ \SOH(\ETXR\ETXlen\DC2\DC2\n\
    \\EOTsize\CAN\ACK \SOH(\ETXR\EOTsize\DC2\SYN\n\
    \\ACKblocks\CAN\a \SOH(\EOTR\ACKblocks\DC2\DLE\n\
    \\ETXret\CAN\b \SOH(\ENQR\ETXret\"\159\SOH\n\
    \\ESCF2fsGetDataBlockFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
    \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\SYN\n\
    \\ACKiblock\CAN\ETX \SOH(\EOTR\ACKiblock\DC2\EM\n\
    \\bbh_start\CAN\EOT \SOH(\EOTR\abhStart\DC2\ETB\n\
    \\abh_size\CAN\ENQ \SOH(\EOTR\ACKbhSize\DC2\DLE\n\
    \\ETXret\CAN\ACK \SOH(\ENQR\ETXret\"\165\STX\n\
    \\CANF2fsGetVictimFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DC2\n\
    \\EOTtype\CAN\STX \SOH(\ENQR\EOTtype\DC2\ETB\n\
    \\agc_type\CAN\ETX \SOH(\ENQR\ACKgcType\DC2\GS\n\
    \\n\
    \alloc_mode\CAN\EOT \SOH(\ENQR\tallocMode\DC2\ETB\n\
    \\agc_mode\CAN\ENQ \SOH(\ENQR\ACKgcMode\DC2\SYN\n\
    \\ACKvictim\CAN\ACK \SOH(\rR\ACKvictim\DC2\EM\n\
    \\bofs_unit\CAN\a \SOH(\rR\aofsUnit\DC2\GS\n\
    \\n\
    \pre_victim\CAN\b \SOH(\rR\tpreVictim\DC2\CAN\n\
    \\aprefree\CAN\t \SOH(\rR\aprefree\DC2\DC2\n\
    \\EOTfree\CAN\n\
    \ \SOH(\rR\EOTfree\DC2\DC2\n\
    \\EOTcost\CAN\v \SOH(\rR\EOTcost\"\187\SOH\n\
    \\DC3F2fsIgetFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
    \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DC2\n\
    \\EOTpino\CAN\ETX \SOH(\EOTR\EOTpino\DC2\DC2\n\
    \\EOTmode\CAN\EOT \SOH(\rR\EOTmode\DC2\DC2\n\
    \\EOTsize\CAN\ENQ \SOH(\ETXR\EOTsize\DC2\DC4\n\
    \\ENQnlink\CAN\ACK \SOH(\rR\ENQnlink\DC2\SYN\n\
    \\ACKblocks\CAN\a \SOH(\EOTR\ACKblocks\DC2\SYN\n\
    \\ACKadvise\CAN\b \SOH(\rR\ACKadvise\"O\n\
    \\ETBF2fsIgetExitFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
    \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DLE\n\
    \\ETXret\CAN\ETX \SOH(\ENQR\ETXret\"O\n\
    \\ETBF2fsNewInodeFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
    \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DLE\n\
    \\ETXret\CAN\ETX \SOH(\ENQR\ETXret\"\197\SOH\n\
    \\ETBF2fsReadpageFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
    \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DC4\n\
    \\ENQindex\CAN\ETX \SOH(\EOTR\ENQindex\DC2\CAN\n\
    \\ablkaddr\CAN\EOT \SOH(\EOTR\ablkaddr\DC2\DC2\n\
    \\EOTtype\CAN\ENQ \SOH(\ENQR\EOTtype\DC2\DLE\n\
    \\ETXdir\CAN\ACK \SOH(\ENQR\ETXdir\DC2\DC4\n\
    \\ENQdirty\CAN\a \SOH(\ENQR\ENQdirty\DC2\SUB\n\
    \\buptodate\CAN\b \SOH(\ENQR\buptodate\"d\n\
    \\RSF2fsReserveNewBlockFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
    \\ETXnid\CAN\STX \SOH(\rR\ETXnid\DC2\RS\n\
    \\vofs_in_node\CAN\ETX \SOH(\rR\tofsInNode\"\175\SOH\n\
    \\ESCF2fsSetPageDirtyFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
    \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DC2\n\
    \\EOTtype\CAN\ETX \SOH(\ENQR\EOTtype\DC2\DLE\n\
    \\ETXdir\CAN\EOT \SOH(\ENQR\ETXdir\DC2\DC4\n\
    \\ENQindex\CAN\ENQ \SOH(\EOTR\ENQindex\DC2\DC4\n\
    \\ENQdirty\CAN\ACK \SOH(\ENQR\ENQdirty\DC2\SUB\n\
    \\buptodate\CAN\a \SOH(\ENQR\buptodate\"\132\SOH\n\
    \\RSF2fsSubmitWritePageFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
    \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DC2\n\
    \\EOTtype\CAN\ETX \SOH(\ENQR\EOTtype\DC2\DC4\n\
    \\ENQindex\CAN\EOT \SOH(\EOTR\ENQindex\DC2\DC4\n\
    \\ENQblock\CAN\ENQ \SOH(\rR\ENQblock\"\196\SOH\n\
    \\FSF2fsSyncFileEnterFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
    \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DC2\n\
    \\EOTpino\CAN\ETX \SOH(\EOTR\EOTpino\DC2\DC2\n\
    \\EOTmode\CAN\EOT \SOH(\rR\EOTmode\DC2\DC2\n\
    \\EOTsize\CAN\ENQ \SOH(\ETXR\EOTsize\DC2\DC4\n\
    \\ENQnlink\CAN\ACK \SOH(\rR\ENQnlink\DC2\SYN\n\
    \\ACKblocks\CAN\a \SOH(\EOTR\ACKblocks\DC2\SYN\n\
    \\ACKadvise\CAN\b \SOH(\rR\ACKadvise\"\165\SOH\n\
    \\ESCF2fsSyncFileExitFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
    \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\ETB\n\
    \\aneed_cp\CAN\ETX \SOH(\rR\ACKneedCp\DC2\SUB\n\
    \\bdatasync\CAN\EOT \SOH(\ENQR\bdatasync\DC2\DLE\n\
    \\ETXret\CAN\ENQ \SOH(\ENQR\ETXret\DC2\ESC\n\
    \\tcp_reason\CAN\ACK \SOH(\ENQR\bcpReason\"S\n\
    \\NAKF2fsSyncFsFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DC4\n\
    \\ENQdirty\CAN\STX \SOH(\ENQR\ENQdirty\DC2\DC2\n\
    \\EOTwait\CAN\ETX \SOH(\ENQR\EOTwait\"\191\SOH\n\
    \\ETBF2fsTruncateFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
    \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DC2\n\
    \\EOTpino\CAN\ETX \SOH(\EOTR\EOTpino\DC2\DC2\n\
    \\EOTmode\CAN\EOT \SOH(\rR\EOTmode\DC2\DC2\n\
    \\EOTsize\CAN\ENQ \SOH(\ETXR\EOTsize\DC2\DC4\n\
    \\ENQnlink\CAN\ACK \SOH(\rR\ENQnlink\DC2\SYN\n\
    \\ACKblocks\CAN\a \SOH(\EOTR\ACKblocks\DC2\SYN\n\
    \\ACKadvise\CAN\b \SOH(\rR\ACKadvise\"\136\SOH\n\
    \\"F2fsTruncateBlocksEnterFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
    \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DC2\n\
    \\EOTsize\CAN\ETX \SOH(\ETXR\EOTsize\DC2\SYN\n\
    \\ACKblocks\CAN\EOT \SOH(\EOTR\ACKblocks\DC2\DC2\n\
    \\EOTfrom\CAN\ENQ \SOH(\EOTR\EOTfrom\"Y\n\
    \!F2fsTruncateBlocksExitFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
    \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DLE\n\
    \\ETXret\CAN\ETX \SOH(\ENQR\ETXret\"\132\SOH\n\
    \&F2fsTruncateDataBlocksRangeFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
    \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DLE\n\
    \\ETXnid\CAN\ETX \SOH(\rR\ETXnid\DC2\DLE\n\
    \\ETXofs\CAN\EOT \SOH(\rR\ETXofs\DC2\DC2\n\
    \\EOTfree\CAN\ENQ \SOH(\ENQR\EOTfree\"\141\SOH\n\
    \'F2fsTruncateInodeBlocksEnterFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
    \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DC2\n\
    \\EOTsize\CAN\ETX \SOH(\ETXR\EOTsize\DC2\SYN\n\
    \\ACKblocks\CAN\EOT \SOH(\EOTR\ACKblocks\DC2\DC2\n\
    \\EOTfrom\CAN\ENQ \SOH(\EOTR\EOTfrom\"^\n\
    \&F2fsTruncateInodeBlocksExitFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
    \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DLE\n\
    \\ETXret\CAN\ETX \SOH(\ENQR\ETXret\"n\n\
    \\ESCF2fsTruncateNodeFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
    \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DLE\n\
    \\ETXnid\CAN\ETX \SOH(\rR\ETXnid\DC2\EM\n\
    \\bblk_addr\CAN\EOT \SOH(\rR\ablkAddr\"t\n\
    \!F2fsTruncateNodesEnterFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
    \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DLE\n\
    \\ETXnid\CAN\ETX \SOH(\rR\ETXnid\DC2\EM\n\
    \\bblk_addr\CAN\EOT \SOH(\rR\ablkAddr\"X\n\
    \ F2fsTruncateNodesExitFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
    \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DLE\n\
    \\ETXret\CAN\ETX \SOH(\ENQR\ETXret\"\131\SOH\n\
    \#F2fsTruncatePartialNodesFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
    \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DLE\n\
    \\ETXnid\CAN\ETX \SOH(\rR\ETXnid\DC2\DC4\n\
    \\ENQdepth\CAN\EOT \SOH(\ENQR\ENQdepth\DC2\DLE\n\
    \\ETXerr\CAN\ENQ \SOH(\ENQR\ETXerr\"\128\SOH\n\
    \\SUBF2fsUnlinkEnterFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
    \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DC2\n\
    \\EOTsize\CAN\ETX \SOH(\ETXR\EOTsize\DC2\SYN\n\
    \\ACKblocks\CAN\EOT \SOH(\EOTR\ACKblocks\DC2\DC2\n\
    \\EOTname\CAN\ENQ \SOH(\tR\EOTname\"Q\n\
    \\EMF2fsUnlinkExitFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
    \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DLE\n\
    \\ETXret\CAN\ETX \SOH(\ENQR\ETXret\"\176\SOH\n\
    \\FSF2fsVmPageMkwriteFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
    \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DC2\n\
    \\EOTtype\CAN\ETX \SOH(\ENQR\EOTtype\DC2\DLE\n\
    \\ETXdir\CAN\EOT \SOH(\ENQR\ETXdir\DC2\DC4\n\
    \\ENQindex\CAN\ENQ \SOH(\EOTR\ENQindex\DC2\DC4\n\
    \\ENQdirty\CAN\ACK \SOH(\ENQR\ENQdirty\DC2\SUB\n\
    \\buptodate\CAN\a \SOH(\ENQR\buptodate\"y\n\
    \\EMF2fsWriteBeginFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
    \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DLE\n\
    \\ETXpos\CAN\ETX \SOH(\ETXR\ETXpos\DC2\DLE\n\
    \\ETXlen\CAN\EOT \SOH(\rR\ETXlen\DC2\DC4\n\
    \\ENQflags\CAN\ENQ \SOH(\rR\ENQflags\"y\n\
    \\RSF2fsWriteCheckpointFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\ESC\n\
    \\tis_umount\CAN\STX \SOH(\rR\bisUmount\DC2\DLE\n\
    \\ETXmsg\CAN\ETX \SOH(\tR\ETXmsg\DC2\SYN\n\
    \\ACKreason\CAN\EOT \SOH(\ENQR\ACKreason\"y\n\
    \\ETBF2fsWriteEndFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\DLE\n\
    \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\DLE\n\
    \\ETXpos\CAN\ETX \SOH(\ETXR\ETXpos\DC2\DLE\n\
    \\ETXlen\CAN\EOT \SOH(\rR\ETXlen\DC2\SYN\n\
    \\ACKcopied\CAN\ENQ \SOH(\rR\ACKcopied\"\232\EOT\n\
    \\NAKF2fsIostatFtraceEvent\DC2\ETB\n\
    \\aapp_bio\CAN\SOH \SOH(\EOTR\ACKappBio\DC2\EM\n\
    \\bapp_brio\CAN\STX \SOH(\EOTR\aappBrio\DC2\ETB\n\
    \\aapp_dio\CAN\ETX \SOH(\EOTR\ACKappDio\DC2\EM\n\
    \\bapp_drio\CAN\EOT \SOH(\EOTR\aappDrio\DC2\ETB\n\
    \\aapp_mio\CAN\ENQ \SOH(\EOTR\ACKappMio\DC2\EM\n\
    \\bapp_mrio\CAN\ACK \SOH(\EOTR\aappMrio\DC2\ETB\n\
    \\aapp_rio\CAN\a \SOH(\EOTR\ACKappRio\DC2\ETB\n\
    \\aapp_wio\CAN\b \SOH(\EOTR\ACKappWio\DC2\DLE\n\
    \\ETXdev\CAN\t \SOH(\EOTR\ETXdev\DC2\EM\n\
    \\bfs_cdrio\CAN\n\
    \ \SOH(\EOTR\afsCdrio\DC2\SUB\n\
    \\tfs_cp_dio\CAN\v \SOH(\EOTR\afsCpDio\DC2\SUB\n\
    \\tfs_cp_mio\CAN\f \SOH(\EOTR\afsCpMio\DC2\SUB\n\
    \\tfs_cp_nio\CAN\r \SOH(\EOTR\afsCpNio\DC2\NAK\n\
    \\ACKfs_dio\CAN\SO \SOH(\EOTR\ENQfsDio\DC2\GS\n\
    \\n\
    \fs_discard\CAN\SI \SOH(\EOTR\tfsDiscard\DC2\ETB\n\
    \\afs_drio\CAN\DLE \SOH(\EOTR\ACKfsDrio\DC2\SUB\n\
    \\tfs_gc_dio\CAN\DC1 \SOH(\EOTR\afsGcDio\DC2\SUB\n\
    \\tfs_gc_nio\CAN\DC2 \SOH(\EOTR\afsGcNio\DC2\EM\n\
    \\bfs_gdrio\CAN\DC3 \SOH(\EOTR\afsGdrio\DC2\NAK\n\
    \\ACKfs_mio\CAN\DC4 \SOH(\EOTR\ENQfsMio\DC2\ETB\n\
    \\afs_mrio\CAN\NAK \SOH(\EOTR\ACKfsMrio\DC2\NAK\n\
    \\ACKfs_nio\CAN\SYN \SOH(\EOTR\ENQfsNio\DC2\ETB\n\
    \\afs_nrio\CAN\ETB \SOH(\EOTR\ACKfsNrio\"\200\ACK\n\
    \\FSF2fsIostatLatencyFtraceEvent\DC2\CAN\n\
    \\bd_rd_avg\CAN\SOH \SOH(\rR\ACKdRdAvg\DC2\CAN\n\
    \\bd_rd_cnt\CAN\STX \SOH(\rR\ACKdRdCnt\DC2\SUB\n\
    \\td_rd_peak\CAN\ETX \SOH(\rR\adRdPeak\DC2\GS\n\
    \\vd_wr_as_avg\CAN\EOT \SOH(\rR\bdWrAsAvg\DC2\GS\n\
    \\vd_wr_as_cnt\CAN\ENQ \SOH(\rR\bdWrAsCnt\DC2\US\n\
    \\fd_wr_as_peak\CAN\ACK \SOH(\rR\tdWrAsPeak\DC2\ESC\n\
    \\n\
    \d_wr_s_avg\CAN\a \SOH(\rR\adWrSAvg\DC2\ESC\n\
    \\n\
    \d_wr_s_cnt\CAN\b \SOH(\rR\adWrSCnt\DC2\GS\n\
    \\vd_wr_s_peak\CAN\t \SOH(\rR\bdWrSPeak\DC2\DLE\n\
    \\ETXdev\CAN\n\
    \ \SOH(\EOTR\ETXdev\DC2\CAN\n\
    \\bm_rd_avg\CAN\v \SOH(\rR\ACKmRdAvg\DC2\CAN\n\
    \\bm_rd_cnt\CAN\f \SOH(\rR\ACKmRdCnt\DC2\SUB\n\
    \\tm_rd_peak\CAN\r \SOH(\rR\amRdPeak\DC2\GS\n\
    \\vm_wr_as_avg\CAN\SO \SOH(\rR\bmWrAsAvg\DC2\GS\n\
    \\vm_wr_as_cnt\CAN\SI \SOH(\rR\bmWrAsCnt\DC2\US\n\
    \\fm_wr_as_peak\CAN\DLE \SOH(\rR\tmWrAsPeak\DC2\ESC\n\
    \\n\
    \m_wr_s_avg\CAN\DC1 \SOH(\rR\amWrSAvg\DC2\ESC\n\
    \\n\
    \m_wr_s_cnt\CAN\DC2 \SOH(\rR\amWrSCnt\DC2\GS\n\
    \\vm_wr_s_peak\CAN\DC3 \SOH(\rR\bmWrSPeak\DC2\CAN\n\
    \\bn_rd_avg\CAN\DC4 \SOH(\rR\ACKnRdAvg\DC2\CAN\n\
    \\bn_rd_cnt\CAN\NAK \SOH(\rR\ACKnRdCnt\DC2\SUB\n\
    \\tn_rd_peak\CAN\SYN \SOH(\rR\anRdPeak\DC2\GS\n\
    \\vn_wr_as_avg\CAN\ETB \SOH(\rR\bnWrAsAvg\DC2\GS\n\
    \\vn_wr_as_cnt\CAN\CAN \SOH(\rR\bnWrAsCnt\DC2\US\n\
    \\fn_wr_as_peak\CAN\EM \SOH(\rR\tnWrAsPeak\DC2\ESC\n\
    \\n\
    \n_wr_s_avg\CAN\SUB \SOH(\rR\anWrSAvg\DC2\ESC\n\
    \\n\
    \n_wr_s_cnt\CAN\ESC \SOH(\rR\anWrSCnt\DC2\GS\n\
    \\vn_wr_s_peak\CAN\FS \SOH(\rR\bnWrSPeakJ\179\129\SOH\n\
    \\a\DC2\ENQ\EOT\NUL\161\STX\SOH\n\
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
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b\"\n\
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
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\t\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\t\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\t\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\t\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\t\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\n\
    \\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\n\
    \\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\n\
    \\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\n\
    \\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\n\
    \\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\v\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX\v\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\v\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\v\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\v\ESC\FS\n\
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
    \\STX\EOT\SOH\DC2\EOT\SO\NUL\ETB\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\SO\b!\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\SI\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\SI\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\SI\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\SI\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\SI\CAN\EM\n\
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
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX\DC1\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX\DC1\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX\DC1\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX\DC2\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\EOT\DC2\ETX\DC2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX\DC2\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX\DC2\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX\DC2\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETX\DC3\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\EOT\DC2\ETX\DC3\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ENQ\DC2\ETX\DC3\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETX\DC3\DC1\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETX\DC3\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\ETX\DC4\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\EOT\DC2\ETX\DC4\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ENQ\DC2\ETX\DC4\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\ETX\DC4\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\ETX\DC4\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ACK\DC2\ETX\NAK\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\EOT\DC2\ETX\NAK\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ENQ\DC2\ETX\NAK\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\SOH\DC2\ETX\NAK\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ETX\DC2\ETX\NAK\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\a\DC2\ETX\SYN\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\EOT\DC2\ETX\SYN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\ENQ\DC2\ETX\SYN\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\SOH\DC2\ETX\SYN\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\ETX\DC2\ETX\SYN\ESC\FS\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT\CAN\NUL!\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\CAN\b \n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\EM\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETX\EM\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX\EM\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\EM\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\EM\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX\SUB\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETX\SUB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX\SUB\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX\SUB\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX\SUB\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX\ESC\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\EOT\DC2\ETX\ESC\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETX\ESC\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX\ESC\DC1\NAK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX\ESC\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETX\FS\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\EOT\DC2\ETX\FS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ENQ\DC2\ETX\FS\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETX\FS\DC1\ETB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETX\FS\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\STX\STX\EOT\DC2\ETX\GS\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\EOT\DC2\ETX\GS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ENQ\DC2\ETX\GS\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\ETX\GS\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\ETX\GS\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\STX\STX\ENQ\DC2\ETX\RS\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\EOT\DC2\ETX\RS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ENQ\DC2\ETX\RS\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\SOH\DC2\ETX\RS\DC1\NAK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ETX\DC2\ETX\RS\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\STX\STX\ACK\DC2\ETX\US\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\EOT\DC2\ETX\US\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\ENQ\DC2\ETX\US\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\SOH\DC2\ETX\US\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\ETX\DC2\ETX\US\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\STX\STX\a\DC2\ETX \STX\EM\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\EOT\DC2\ETX \STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\ENQ\DC2\ETX \v\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\SOH\DC2\ETX \DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\ETX\DC2\ETX \ETB\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOT\"\NUL)\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX\"\b#\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX#\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETX#\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX#\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX#\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX#\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX$\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\EOT\DC2\ETX$\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETX$\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX$\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX$\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETX%\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\EOT\DC2\ETX%\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\ETX%\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETX%\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETX%\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\ETX&\STX\US\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\EOT\DC2\ETX&\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ENQ\DC2\ETX&\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\ETX&\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\ETX&\GS\RS\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\EOT\DC2\ETX'\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\EOT\DC2\ETX'\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ENQ\DC2\ETX'\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\SOH\DC2\ETX'\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ETX\DC2\ETX'\FS\GS\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ENQ\DC2\ETX(\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\EOT\DC2\ETX(\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\ENQ\DC2\ETX(\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\SOH\DC2\ETX(\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\ETX\DC2\ETX(\ETB\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOT*\NUL6\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX*\b \n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX+\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\EOT\DC2\ETX+\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX+\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX+\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX+\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETX,\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\EOT\DC2\ETX,\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETX,\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETX,\DC1\NAK\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETX,\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETX-\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\EOT\DC2\ETX-\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ENQ\DC2\ETX-\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETX-\DC1\CAN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETX-\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\ETX.\STX \n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\EOT\DC2\ETX.\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ENQ\DC2\ETX.\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\ETX.\DC1\ESC\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\ETX.\RS\US\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\EOT\DC2\ETX/\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\EOT\DC2\ETX/\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\ENQ\DC2\ETX/\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\SOH\DC2\ETX/\DC1\CAN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\ETX\DC2\ETX/\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\ENQ\DC2\ETX0\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\EOT\DC2\ETX0\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\ENQ\DC2\ETX0\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\SOH\DC2\ETX0\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\ETX\DC2\ETX0\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\ACK\DC2\ETX1\STX\US\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ACK\EOT\DC2\ETX1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ACK\ENQ\DC2\ETX1\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ACK\SOH\DC2\ETX1\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ACK\ETX\DC2\ETX1\GS\RS\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\a\DC2\ETX2\STX!\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\a\EOT\DC2\ETX2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\a\ENQ\DC2\ETX2\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\a\SOH\DC2\ETX2\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\a\ETX\DC2\ETX2\US \n\
    \\v\n\
    \\EOT\EOT\EOT\STX\b\DC2\ETX3\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\b\EOT\DC2\ETX3\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\b\ENQ\DC2\ETX3\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\b\SOH\DC2\ETX3\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\b\ETX\DC2\ETX3\FS\GS\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\t\DC2\ETX4\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\t\EOT\DC2\ETX4\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\t\ENQ\DC2\ETX4\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\t\SOH\DC2\ETX4\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\t\ETX\DC2\ETX4\EM\ESC\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\n\
    \\DC2\ETX5\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\n\
    \\EOT\DC2\ETX5\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\n\
    \\ENQ\DC2\ETX5\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\n\
    \\SOH\DC2\ETX5\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\n\
    \\ETX\DC2\ETX5\EM\ESC\n\
    \\n\
    \\n\
    \\STX\EOT\ENQ\DC2\EOT7\NUL@\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX7\b\ESC\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETX8\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\ETX8\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETX8\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX8\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX8\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ETX9\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\EOT\DC2\ETX9\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\ETX9\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETX9\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETX9\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\ETX:\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\EOT\DC2\ETX:\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ENQ\DC2\ETX:\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\ETX:\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\ETX:\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\ETX\DC2\ETX;\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\EOT\DC2\ETX;\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\ENQ\DC2\ETX;\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\SOH\DC2\ETX;\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\ETX\DC2\ETX;\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\EOT\DC2\ETX<\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\EOT\DC2\ETX<\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\ENQ\DC2\ETX<\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\SOH\DC2\ETX<\DC1\NAK\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\ETX\DC2\ETX<\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\ENQ\DC2\ETX=\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ENQ\EOT\DC2\ETX=\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ENQ\ENQ\DC2\ETX=\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ENQ\SOH\DC2\ETX=\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ENQ\ETX\DC2\ETX=\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\ACK\DC2\ETX>\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ACK\EOT\DC2\ETX>\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ACK\ENQ\DC2\ETX>\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ACK\SOH\DC2\ETX>\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ACK\ETX\DC2\ETX>\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\a\DC2\ETX?\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\a\EOT\DC2\ETX?\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\a\ENQ\DC2\ETX?\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\a\SOH\DC2\ETX?\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\a\ETX\DC2\ETX?\ESC\FS\n\
    \\n\
    \\n\
    \\STX\EOT\ACK\DC2\EOTA\NULE\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETXA\b\US\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETXB\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\EOT\DC2\ETXB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETXB\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETXB\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETXB\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\ETXC\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\EOT\DC2\ETXC\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\ETXC\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\ETXC\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\ETXC\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\STX\DC2\ETXD\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\EOT\DC2\ETXD\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ENQ\DC2\ETXD\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\SOH\DC2\ETXD\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ETX\DC2\ETXD\ETB\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\a\DC2\EOTF\NULJ\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETXF\b\US\n\
    \\v\n\
    \\EOT\EOT\a\STX\NUL\DC2\ETXG\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\EOT\DC2\ETXG\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ENQ\DC2\ETXG\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\ETXG\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\ETXG\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\a\STX\SOH\DC2\ETXH\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\EOT\DC2\ETXH\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ENQ\DC2\ETXH\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\ETXH\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\ETXH\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\a\STX\STX\DC2\ETXI\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\EOT\DC2\ETXI\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\ENQ\DC2\ETXI\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\SOH\DC2\ETXI\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\ETX\DC2\ETXI\ETB\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\b\DC2\EOTK\NULT\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\b\SOH\DC2\ETXK\b\US\n\
    \\v\n\
    \\EOT\EOT\b\STX\NUL\DC2\ETXL\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\EOT\DC2\ETXL\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\ETXL\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\ETXL\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\ETXL\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\b\STX\SOH\DC2\ETXM\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\EOT\DC2\ETXM\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ENQ\DC2\ETXM\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\ETXM\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\ETXM\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\b\STX\STX\DC2\ETXN\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\EOT\DC2\ETXN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\ENQ\DC2\ETXN\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\SOH\DC2\ETXN\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\ETX\DC2\ETXN\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\b\STX\ETX\DC2\ETXO\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ETX\EOT\DC2\ETXO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ETX\ENQ\DC2\ETXO\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ETX\SOH\DC2\ETXO\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ETX\ETX\DC2\ETXO\FS\GS\n\
    \\v\n\
    \\EOT\EOT\b\STX\EOT\DC2\ETXP\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\b\STX\EOT\EOT\DC2\ETXP\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\EOT\ENQ\DC2\ETXP\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\b\STX\EOT\SOH\DC2\ETXP\DC1\NAK\n\
    \\f\n\
    \\ENQ\EOT\b\STX\EOT\ETX\DC2\ETXP\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\b\STX\ENQ\DC2\ETXQ\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ENQ\EOT\DC2\ETXQ\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ENQ\ENQ\DC2\ETXQ\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ENQ\SOH\DC2\ETXQ\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ENQ\ETX\DC2\ETXQ\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\b\STX\ACK\DC2\ETXR\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ACK\EOT\DC2\ETXR\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ACK\ENQ\DC2\ETXR\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ACK\SOH\DC2\ETXR\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ACK\ETX\DC2\ETXR\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\b\STX\a\DC2\ETXS\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\b\STX\a\EOT\DC2\ETXS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\a\ENQ\DC2\ETXS\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\b\STX\a\SOH\DC2\ETXS\DC1\EM\n\
    \\f\n\
    \\ENQ\EOT\b\STX\a\ETX\DC2\ETXS\FS\GS\n\
    \\n\
    \\n\
    \\STX\EOT\t\DC2\EOTU\NULY\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\t\SOH\DC2\ETXU\b&\n\
    \\v\n\
    \\EOT\EOT\t\STX\NUL\DC2\ETXV\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\EOT\DC2\ETXV\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ENQ\DC2\ETXV\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\ETXV\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\ETXV\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\t\STX\SOH\DC2\ETXW\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\EOT\DC2\ETXW\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\ENQ\DC2\ETXW\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\SOH\DC2\ETXW\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\ETX\DC2\ETXW\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\t\STX\STX\DC2\ETXX\STX\"\n\
    \\f\n\
    \\ENQ\EOT\t\STX\STX\EOT\DC2\ETXX\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\STX\ENQ\DC2\ETXX\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\t\STX\STX\SOH\DC2\ETXX\DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\t\STX\STX\ETX\DC2\ETXX !\n\
    \\n\
    \\n\
    \\STX\EOT\n\
    \\DC2\EOTZ\NULb\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\n\
    \\SOH\DC2\ETXZ\b#\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\ETX[\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\EOT\DC2\ETX[\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ENQ\DC2\ETX[\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\ETX[\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\ETX[\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\SOH\DC2\ETX\\\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\EOT\DC2\ETX\\\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ENQ\DC2\ETX\\\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\SOH\DC2\ETX\\\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ETX\DC2\ETX\\\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\STX\DC2\ETX]\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\STX\EOT\DC2\ETX]\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\STX\ENQ\DC2\ETX]\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\STX\SOH\DC2\ETX]\DC1\NAK\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\STX\ETX\DC2\ETX]\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\ETX\DC2\ETX^\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ETX\EOT\DC2\ETX^\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ETX\ENQ\DC2\ETX^\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ETX\SOH\DC2\ETX^\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ETX\ETX\DC2\ETX^\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\EOT\DC2\ETX_\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\EOT\EOT\DC2\ETX_\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\EOT\ENQ\DC2\ETX_\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\EOT\SOH\DC2\ETX_\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\EOT\ETX\DC2\ETX_\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\ENQ\DC2\ETX`\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ENQ\EOT\DC2\ETX`\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ENQ\ENQ\DC2\ETX`\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ENQ\SOH\DC2\ETX`\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ENQ\ETX\DC2\ETX`\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\ACK\DC2\ETXa\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ACK\EOT\DC2\ETXa\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ACK\ENQ\DC2\ETXa\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ACK\SOH\DC2\ETXa\DC1\EM\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ACK\ETX\DC2\ETXa\FS\GS\n\
    \\n\
    \\n\
    \\STX\EOT\v\DC2\EOTc\NULi\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\v\SOH\DC2\ETXc\b&\n\
    \\v\n\
    \\EOT\EOT\v\STX\NUL\DC2\ETXd\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\EOT\DC2\ETXd\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\ENQ\DC2\ETXd\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\ETXd\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\ETXd\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\v\STX\SOH\DC2\ETXe\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\EOT\DC2\ETXe\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\ENQ\DC2\ETXe\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\SOH\DC2\ETXe\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\ETX\DC2\ETXe\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\v\STX\STX\DC2\ETXf\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\v\STX\STX\EOT\DC2\ETXf\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\STX\ENQ\DC2\ETXf\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\v\STX\STX\SOH\DC2\ETXf\DC1\NAK\n\
    \\f\n\
    \\ENQ\EOT\v\STX\STX\ETX\DC2\ETXf\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\v\STX\ETX\DC2\ETXg\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\v\STX\ETX\EOT\DC2\ETXg\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\ETX\ENQ\DC2\ETXg\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\v\STX\ETX\SOH\DC2\ETXg\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\v\STX\ETX\ETX\DC2\ETXg\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\v\STX\EOT\DC2\ETXh\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\v\STX\EOT\EOT\DC2\ETXh\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\EOT\ENQ\DC2\ETXh\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\v\STX\EOT\SOH\DC2\ETXh\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\v\STX\EOT\ETX\DC2\ETXh\SUB\ESC\n\
    \\n\
    \\n\
    \\STX\EOT\f\DC2\EOTj\NULs\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\f\SOH\DC2\ETXj\b$\n\
    \\v\n\
    \\EOT\EOT\f\STX\NUL\DC2\ETXk\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\EOT\DC2\ETXk\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\ENQ\DC2\ETXk\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\ETXk\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\ETXk\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\f\STX\SOH\DC2\ETXl\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\f\STX\SOH\EOT\DC2\ETXl\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\SOH\ENQ\DC2\ETXl\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\f\STX\SOH\SOH\DC2\ETXl\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\f\STX\SOH\ETX\DC2\ETXl\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\f\STX\STX\DC2\ETXm\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\f\STX\STX\EOT\DC2\ETXm\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\STX\ENQ\DC2\ETXm\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\f\STX\STX\SOH\DC2\ETXm\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\f\STX\STX\ETX\DC2\ETXm\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\f\STX\ETX\DC2\ETXn\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ETX\EOT\DC2\ETXn\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ETX\ENQ\DC2\ETXn\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ETX\SOH\DC2\ETXn\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ETX\ETX\DC2\ETXn\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\f\STX\EOT\DC2\ETXo\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\f\STX\EOT\EOT\DC2\ETXo\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\EOT\ENQ\DC2\ETXo\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\f\STX\EOT\SOH\DC2\ETXo\DC1\NAK\n\
    \\f\n\
    \\ENQ\EOT\f\STX\EOT\ETX\DC2\ETXo\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\f\STX\ENQ\DC2\ETXp\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ENQ\EOT\DC2\ETXp\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ENQ\ENQ\DC2\ETXp\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ENQ\SOH\DC2\ETXp\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ENQ\ETX\DC2\ETXp\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\f\STX\ACK\DC2\ETXq\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ACK\EOT\DC2\ETXq\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ACK\ENQ\DC2\ETXq\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ACK\SOH\DC2\ETXq\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ACK\ETX\DC2\ETXq\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\f\STX\a\DC2\ETXr\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\f\STX\a\EOT\DC2\ETXr\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\a\ENQ\DC2\ETXr\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\f\STX\a\SOH\DC2\ETXr\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\f\STX\a\ETX\DC2\ETXr\ESC\FS\n\
    \\n\
    \\n\
    \\STX\EOT\r\DC2\EOTt\NUL{\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\r\SOH\DC2\ETXt\b#\n\
    \\v\n\
    \\EOT\EOT\r\STX\NUL\DC2\ETXu\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\EOT\DC2\ETXu\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\ENQ\DC2\ETXu\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\SOH\DC2\ETXu\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\ETX\DC2\ETXu\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\r\STX\SOH\DC2\ETXv\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\r\STX\SOH\EOT\DC2\ETXv\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\SOH\ENQ\DC2\ETXv\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\r\STX\SOH\SOH\DC2\ETXv\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\r\STX\SOH\ETX\DC2\ETXv\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\r\STX\STX\DC2\ETXw\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\r\STX\STX\EOT\DC2\ETXw\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\STX\ENQ\DC2\ETXw\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\r\STX\STX\SOH\DC2\ETXw\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\r\STX\STX\ETX\DC2\ETXw\FS\GS\n\
    \\v\n\
    \\EOT\EOT\r\STX\ETX\DC2\ETXx\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ETX\EOT\DC2\ETXx\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ETX\ENQ\DC2\ETXx\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ETX\SOH\DC2\ETXx\DC1\EM\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ETX\ETX\DC2\ETXx\FS\GS\n\
    \\v\n\
    \\EOT\EOT\r\STX\EOT\DC2\ETXy\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\r\STX\EOT\EOT\DC2\ETXy\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\EOT\ENQ\DC2\ETXy\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\r\STX\EOT\SOH\DC2\ETXy\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\r\STX\EOT\ETX\DC2\ETXy\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\r\STX\ENQ\DC2\ETXz\STX\US\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ENQ\EOT\DC2\ETXz\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ENQ\ENQ\DC2\ETXz\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ENQ\SOH\DC2\ETXz\DC1\SUB\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ENQ\ETX\DC2\ETXz\GS\RS\n\
    \\v\n\
    \\STX\EOT\SO\DC2\ENQ|\NUL\128\SOH\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SO\SOH\DC2\ETX|\b\GS\n\
    \\v\n\
    \\EOT\EOT\SO\STX\NUL\DC2\ETX}\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\NUL\EOT\DC2\ETX}\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\NUL\ENQ\DC2\ETX}\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\NUL\SOH\DC2\ETX}\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\NUL\ETX\DC2\ETX}\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\SO\STX\SOH\DC2\ETX~\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\SOH\EOT\DC2\ETX~\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\SOH\ENQ\DC2\ETX~\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\SOH\SOH\DC2\ETX~\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\SOH\ETX\DC2\ETX~\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\SO\STX\STX\DC2\ETX\DEL\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\STX\EOT\DC2\ETX\DEL\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\STX\ENQ\DC2\ETX\DEL\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\STX\SOH\DC2\ETX\DEL\DC1\NAK\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\STX\ETX\DC2\ETX\DEL\CAN\EM\n\
    \\f\n\
    \\STX\EOT\SI\DC2\ACK\129\SOH\NUL\138\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\SI\SOH\DC2\EOT\129\SOH\b\US\n\
    \\f\n\
    \\EOT\EOT\SI\STX\NUL\DC2\EOT\130\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\EOT\DC2\EOT\130\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ENQ\DC2\EOT\130\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\SOH\DC2\EOT\130\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ETX\DC2\EOT\130\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\SI\STX\SOH\DC2\EOT\131\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\EOT\DC2\EOT\131\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\ENQ\DC2\EOT\131\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\SOH\DC2\EOT\131\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\ETX\DC2\EOT\131\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\SI\STX\STX\DC2\EOT\132\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\STX\EOT\DC2\EOT\132\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\STX\ENQ\DC2\EOT\132\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\STX\SOH\DC2\EOT\132\SOH\DC2\SYN\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\STX\ETX\DC2\EOT\132\SOH\EM\SUB\n\
    \\f\n\
    \\EOT\EOT\SI\STX\ETX\DC2\EOT\133\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ETX\EOT\DC2\EOT\133\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ETX\ENQ\DC2\EOT\133\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ETX\SOH\DC2\EOT\133\SOH\DC2\SYN\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ETX\ETX\DC2\EOT\133\SOH\EM\SUB\n\
    \\f\n\
    \\EOT\EOT\SI\STX\EOT\DC2\EOT\134\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\EOT\EOT\DC2\EOT\134\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\EOT\ENQ\DC2\EOT\134\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\EOT\SOH\DC2\EOT\134\SOH\DC1\NAK\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\EOT\ETX\DC2\EOT\134\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\SI\STX\ENQ\DC2\EOT\135\SOH\STX\FS\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ENQ\EOT\DC2\EOT\135\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ENQ\ENQ\DC2\EOT\135\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ENQ\SOH\DC2\EOT\135\SOH\DC2\ETB\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ENQ\ETX\DC2\EOT\135\SOH\SUB\ESC\n\
    \\f\n\
    \\EOT\EOT\SI\STX\ACK\DC2\EOT\136\SOH\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ACK\EOT\DC2\EOT\136\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ACK\ENQ\DC2\EOT\136\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ACK\SOH\DC2\EOT\136\SOH\DC2\CAN\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ACK\ETX\DC2\EOT\136\SOH\ESC\FS\n\
    \\f\n\
    \\EOT\EOT\SI\STX\a\DC2\EOT\137\SOH\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\a\EOT\DC2\EOT\137\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\a\ENQ\DC2\EOT\137\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\a\SOH\DC2\EOT\137\SOH\DC2\CAN\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\a\ETX\DC2\EOT\137\SOH\ESC\FS\n\
    \\f\n\
    \\STX\EOT\DLE\DC2\ACK\139\SOH\NUL\145\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\DLE\SOH\DC2\EOT\139\SOH\b*\n\
    \\f\n\
    \\EOT\EOT\DLE\STX\NUL\DC2\EOT\140\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\EOT\DC2\EOT\140\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ENQ\DC2\EOT\140\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\SOH\DC2\EOT\140\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ETX\DC2\EOT\140\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\DLE\STX\SOH\DC2\EOT\141\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\EOT\DC2\EOT\141\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\ENQ\DC2\EOT\141\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\SOH\DC2\EOT\141\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\ETX\DC2\EOT\141\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\DLE\STX\STX\DC2\EOT\142\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\STX\EOT\DC2\EOT\142\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\STX\ENQ\DC2\EOT\142\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\STX\SOH\DC2\EOT\142\SOH\DC1\NAK\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\STX\ETX\DC2\EOT\142\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\DLE\STX\ETX\DC2\EOT\143\SOH\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ETX\EOT\DC2\EOT\143\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ETX\ENQ\DC2\EOT\143\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ETX\SOH\DC2\EOT\143\SOH\DC2\CAN\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ETX\ETX\DC2\EOT\143\SOH\ESC\FS\n\
    \\f\n\
    \\EOT\EOT\DLE\STX\EOT\DC2\EOT\144\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\EOT\EOT\DC2\EOT\144\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\EOT\ENQ\DC2\EOT\144\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\EOT\SOH\DC2\EOT\144\SOH\DC2\SYN\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\EOT\ETX\DC2\EOT\144\SOH\EM\SUB\n\
    \\f\n\
    \\STX\EOT\DC1\DC2\ACK\146\SOH\NUL\150\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\DC1\SOH\DC2\EOT\146\SOH\b)\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\NUL\DC2\EOT\147\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\EOT\DC2\EOT\147\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ENQ\DC2\EOT\147\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\SOH\DC2\EOT\147\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ETX\DC2\EOT\147\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\SOH\DC2\EOT\148\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\EOT\DC2\EOT\148\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\ENQ\DC2\EOT\148\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\SOH\DC2\EOT\148\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\ETX\DC2\EOT\148\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\STX\DC2\EOT\149\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\STX\EOT\DC2\EOT\149\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\STX\ENQ\DC2\EOT\149\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\STX\SOH\DC2\EOT\149\SOH\DC1\DC4\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\STX\ETX\DC2\EOT\149\SOH\ETB\CAN\n\
    \\f\n\
    \\STX\EOT\DC2\DC2\ACK\151\SOH\NUL\157\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\DC2\SOH\DC2\EOT\151\SOH\b.\n\
    \\f\n\
    \\EOT\EOT\DC2\STX\NUL\DC2\EOT\152\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\EOT\DC2\EOT\152\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ENQ\DC2\EOT\152\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\SOH\DC2\EOT\152\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ETX\DC2\EOT\152\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\DC2\STX\SOH\DC2\EOT\153\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\EOT\DC2\EOT\153\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\ENQ\DC2\EOT\153\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\SOH\DC2\EOT\153\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\ETX\DC2\EOT\153\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\DC2\STX\STX\DC2\EOT\154\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\STX\EOT\DC2\EOT\154\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\STX\ENQ\DC2\EOT\154\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\STX\SOH\DC2\EOT\154\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\STX\ETX\DC2\EOT\154\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\DC2\STX\ETX\DC2\EOT\155\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\ETX\EOT\DC2\EOT\155\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\ETX\ENQ\DC2\EOT\155\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\ETX\SOH\DC2\EOT\155\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\ETX\ETX\DC2\EOT\155\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\DC2\STX\EOT\DC2\EOT\156\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\EOT\EOT\DC2\EOT\156\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\EOT\ENQ\DC2\EOT\156\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\EOT\SOH\DC2\EOT\156\SOH\DC1\NAK\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\EOT\ETX\DC2\EOT\156\SOH\CAN\EM\n\
    \\f\n\
    \\STX\EOT\DC3\DC2\ACK\158\SOH\NUL\164\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\DC3\SOH\DC2\EOT\158\SOH\b/\n\
    \\f\n\
    \\EOT\EOT\DC3\STX\NUL\DC2\EOT\159\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\EOT\DC2\EOT\159\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ENQ\DC2\EOT\159\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\SOH\DC2\EOT\159\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ETX\DC2\EOT\159\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\DC3\STX\SOH\DC2\EOT\160\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\EOT\DC2\EOT\160\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\ENQ\DC2\EOT\160\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\SOH\DC2\EOT\160\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\ETX\DC2\EOT\160\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\DC3\STX\STX\DC2\EOT\161\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\STX\EOT\DC2\EOT\161\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\STX\ENQ\DC2\EOT\161\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\STX\SOH\DC2\EOT\161\SOH\DC1\NAK\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\STX\ETX\DC2\EOT\161\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\DC3\STX\ETX\DC2\EOT\162\SOH\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\ETX\EOT\DC2\EOT\162\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\ETX\ENQ\DC2\EOT\162\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\ETX\SOH\DC2\EOT\162\SOH\DC2\CAN\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\ETX\ETX\DC2\EOT\162\SOH\ESC\FS\n\
    \\f\n\
    \\EOT\EOT\DC3\STX\EOT\DC2\EOT\163\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\EOT\EOT\DC2\EOT\163\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\EOT\ENQ\DC2\EOT\163\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\EOT\SOH\DC2\EOT\163\SOH\DC2\SYN\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\EOT\ETX\DC2\EOT\163\SOH\EM\SUB\n\
    \\f\n\
    \\STX\EOT\DC4\DC2\ACK\165\SOH\NUL\169\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\DC4\SOH\DC2\EOT\165\SOH\b.\n\
    \\f\n\
    \\EOT\EOT\DC4\STX\NUL\DC2\EOT\166\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\EOT\DC2\EOT\166\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\ENQ\DC2\EOT\166\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\SOH\DC2\EOT\166\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\ETX\DC2\EOT\166\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\DC4\STX\SOH\DC2\EOT\167\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\SOH\EOT\DC2\EOT\167\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\SOH\ENQ\DC2\EOT\167\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\SOH\SOH\DC2\EOT\167\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\SOH\ETX\DC2\EOT\167\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\DC4\STX\STX\DC2\EOT\168\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\STX\EOT\DC2\EOT\168\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\STX\ENQ\DC2\EOT\168\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\STX\SOH\DC2\EOT\168\SOH\DC1\DC4\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\STX\ETX\DC2\EOT\168\SOH\ETB\CAN\n\
    \\f\n\
    \\STX\EOT\NAK\DC2\ACK\170\SOH\NUL\175\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\NAK\SOH\DC2\EOT\170\SOH\b#\n\
    \\f\n\
    \\EOT\EOT\NAK\STX\NUL\DC2\EOT\171\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\EOT\DC2\EOT\171\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\ENQ\DC2\EOT\171\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\SOH\DC2\EOT\171\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\ETX\DC2\EOT\171\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\NAK\STX\SOH\DC2\EOT\172\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\SOH\EOT\DC2\EOT\172\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\SOH\ENQ\DC2\EOT\172\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\SOH\SOH\DC2\EOT\172\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\SOH\ETX\DC2\EOT\172\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\NAK\STX\STX\DC2\EOT\173\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\STX\EOT\DC2\EOT\173\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\STX\ENQ\DC2\EOT\173\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\STX\SOH\DC2\EOT\173\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\STX\ETX\DC2\EOT\173\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\NAK\STX\ETX\DC2\EOT\174\SOH\STX\US\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\ETX\EOT\DC2\EOT\174\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\ETX\ENQ\DC2\EOT\174\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\ETX\SOH\DC2\EOT\174\SOH\DC2\SUB\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\ETX\ETX\DC2\EOT\174\SOH\GS\RS\n\
    \\f\n\
    \\STX\EOT\SYN\DC2\ACK\176\SOH\NUL\181\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\SYN\SOH\DC2\EOT\176\SOH\b)\n\
    \\f\n\
    \\EOT\EOT\SYN\STX\NUL\DC2\EOT\177\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\EOT\DC2\EOT\177\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\ENQ\DC2\EOT\177\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\SOH\DC2\EOT\177\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\ETX\DC2\EOT\177\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\SYN\STX\SOH\DC2\EOT\178\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\EOT\DC2\EOT\178\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\ENQ\DC2\EOT\178\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\SOH\DC2\EOT\178\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\ETX\DC2\EOT\178\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\SYN\STX\STX\DC2\EOT\179\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\STX\EOT\DC2\EOT\179\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\STX\ENQ\DC2\EOT\179\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\STX\SOH\DC2\EOT\179\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\STX\ETX\DC2\EOT\179\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\SYN\STX\ETX\DC2\EOT\180\SOH\STX\US\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ETX\EOT\DC2\EOT\180\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ETX\ENQ\DC2\EOT\180\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ETX\SOH\DC2\EOT\180\SOH\DC2\SUB\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ETX\ETX\DC2\EOT\180\SOH\GS\RS\n\
    \\f\n\
    \\STX\EOT\ETB\DC2\ACK\182\SOH\NUL\186\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\ETB\SOH\DC2\EOT\182\SOH\b(\n\
    \\f\n\
    \\EOT\EOT\ETB\STX\NUL\DC2\EOT\183\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\NUL\EOT\DC2\EOT\183\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\NUL\ENQ\DC2\EOT\183\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\NUL\SOH\DC2\EOT\183\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\NUL\ETX\DC2\EOT\183\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\ETB\STX\SOH\DC2\EOT\184\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\SOH\EOT\DC2\EOT\184\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\SOH\ENQ\DC2\EOT\184\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\SOH\SOH\DC2\EOT\184\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\SOH\ETX\DC2\EOT\184\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\ETB\STX\STX\DC2\EOT\185\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\STX\EOT\DC2\EOT\185\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\STX\ENQ\DC2\EOT\185\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\STX\SOH\DC2\EOT\185\SOH\DC1\DC4\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\STX\ETX\DC2\EOT\185\SOH\ETB\CAN\n\
    \\f\n\
    \\STX\EOT\CAN\DC2\ACK\187\SOH\NUL\193\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\CAN\SOH\DC2\EOT\187\SOH\b+\n\
    \\f\n\
    \\EOT\EOT\CAN\STX\NUL\DC2\EOT\188\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\NUL\EOT\DC2\EOT\188\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\NUL\ENQ\DC2\EOT\188\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\NUL\SOH\DC2\EOT\188\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\NUL\ETX\DC2\EOT\188\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\CAN\STX\SOH\DC2\EOT\189\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\SOH\EOT\DC2\EOT\189\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\SOH\ENQ\DC2\EOT\189\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\SOH\SOH\DC2\EOT\189\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\SOH\ETX\DC2\EOT\189\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\CAN\STX\STX\DC2\EOT\190\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\STX\EOT\DC2\EOT\190\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\STX\ENQ\DC2\EOT\190\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\STX\SOH\DC2\EOT\190\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\STX\ETX\DC2\EOT\190\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\CAN\STX\ETX\DC2\EOT\191\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\ETX\EOT\DC2\EOT\191\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\ETX\ENQ\DC2\EOT\191\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\ETX\SOH\DC2\EOT\191\SOH\DC1\SYN\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\ETX\ETX\DC2\EOT\191\SOH\EM\SUB\n\
    \\f\n\
    \\EOT\EOT\CAN\STX\EOT\DC2\EOT\192\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\EOT\EOT\DC2\EOT\192\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\EOT\ENQ\DC2\EOT\192\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\EOT\SOH\DC2\EOT\192\SOH\DC1\DC4\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\EOT\ETX\DC2\EOT\192\SOH\ETB\CAN\n\
    \\f\n\
    \\STX\EOT\EM\DC2\ACK\194\SOH\NUL\200\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\EM\SOH\DC2\EOT\194\SOH\b\"\n\
    \\f\n\
    \\EOT\EOT\EM\STX\NUL\DC2\EOT\195\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\NUL\EOT\DC2\EOT\195\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\NUL\ENQ\DC2\EOT\195\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\NUL\SOH\DC2\EOT\195\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\NUL\ETX\DC2\EOT\195\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\EM\STX\SOH\DC2\EOT\196\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\SOH\EOT\DC2\EOT\196\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\SOH\ENQ\DC2\EOT\196\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\SOH\SOH\DC2\EOT\196\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\SOH\ETX\DC2\EOT\196\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\EM\STX\STX\DC2\EOT\197\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\STX\EOT\DC2\EOT\197\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\STX\ENQ\DC2\EOT\197\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\STX\SOH\DC2\EOT\197\SOH\DC1\NAK\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\STX\ETX\DC2\EOT\197\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\EM\STX\ETX\DC2\EOT\198\SOH\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\ETX\EOT\DC2\EOT\198\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\ETX\ENQ\DC2\EOT\198\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\ETX\SOH\DC2\EOT\198\SOH\DC2\CAN\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\ETX\ETX\DC2\EOT\198\SOH\ESC\FS\n\
    \\f\n\
    \\EOT\EOT\EM\STX\EOT\DC2\EOT\199\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\EOT\EOT\DC2\EOT\199\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\EOT\ENQ\DC2\EOT\199\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\EOT\SOH\DC2\EOT\199\SOH\DC2\SYN\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\EOT\ETX\DC2\EOT\199\SOH\EM\SUB\n\
    \\f\n\
    \\STX\EOT\SUB\DC2\ACK\201\SOH\NUL\205\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\SUB\SOH\DC2\EOT\201\SOH\b!\n\
    \\f\n\
    \\EOT\EOT\SUB\STX\NUL\DC2\EOT\202\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\NUL\EOT\DC2\EOT\202\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\NUL\ENQ\DC2\EOT\202\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\NUL\SOH\DC2\EOT\202\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\NUL\ETX\DC2\EOT\202\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\SUB\STX\SOH\DC2\EOT\203\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\SOH\EOT\DC2\EOT\203\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\SOH\ENQ\DC2\EOT\203\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\SOH\SOH\DC2\EOT\203\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\SOH\ETX\DC2\EOT\203\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\SUB\STX\STX\DC2\EOT\204\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\STX\EOT\DC2\EOT\204\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\STX\ENQ\DC2\EOT\204\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\STX\SOH\DC2\EOT\204\SOH\DC1\DC4\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\STX\ETX\DC2\EOT\204\SOH\ETB\CAN\n\
    \\f\n\
    \\STX\EOT\ESC\DC2\ACK\206\SOH\NUL\214\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\ESC\SOH\DC2\EOT\206\SOH\b$\n\
    \\f\n\
    \\EOT\EOT\ESC\STX\NUL\DC2\EOT\207\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\NUL\EOT\DC2\EOT\207\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\NUL\ENQ\DC2\EOT\207\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\NUL\SOH\DC2\EOT\207\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\NUL\ETX\DC2\EOT\207\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\ESC\STX\SOH\DC2\EOT\208\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\SOH\EOT\DC2\EOT\208\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\SOH\ENQ\DC2\EOT\208\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\SOH\SOH\DC2\EOT\208\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\SOH\ETX\DC2\EOT\208\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\ESC\STX\STX\DC2\EOT\209\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\STX\EOT\DC2\EOT\209\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\STX\ENQ\DC2\EOT\209\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\STX\SOH\DC2\EOT\209\SOH\DC1\NAK\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\STX\ETX\DC2\EOT\209\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\ESC\STX\ETX\DC2\EOT\210\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\ETX\EOT\DC2\EOT\210\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\ETX\ENQ\DC2\EOT\210\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\ETX\SOH\DC2\EOT\210\SOH\DC1\DC4\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\ETX\ETX\DC2\EOT\210\SOH\ETB\CAN\n\
    \\f\n\
    \\EOT\EOT\ESC\STX\EOT\DC2\EOT\211\SOH\STX\FS\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\EOT\EOT\DC2\EOT\211\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\EOT\ENQ\DC2\EOT\211\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\EOT\SOH\DC2\EOT\211\SOH\DC2\ETB\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\EOT\ETX\DC2\EOT\211\SOH\SUB\ESC\n\
    \\f\n\
    \\EOT\EOT\ESC\STX\ENQ\DC2\EOT\212\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\ENQ\EOT\DC2\EOT\212\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\ENQ\ENQ\DC2\EOT\212\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\ENQ\SOH\DC2\EOT\212\SOH\DC1\SYN\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\ENQ\ETX\DC2\EOT\212\SOH\EM\SUB\n\
    \\f\n\
    \\EOT\EOT\ESC\STX\ACK\DC2\EOT\213\SOH\STX\RS\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\ACK\EOT\DC2\EOT\213\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\ACK\ENQ\DC2\EOT\213\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\ACK\SOH\DC2\EOT\213\SOH\DC1\EM\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\ACK\ETX\DC2\EOT\213\SOH\FS\GS\n\
    \\f\n\
    \\STX\EOT\FS\DC2\ACK\215\SOH\NUL\221\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\FS\SOH\DC2\EOT\215\SOH\b!\n\
    \\f\n\
    \\EOT\EOT\FS\STX\NUL\DC2\EOT\216\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\NUL\EOT\DC2\EOT\216\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\NUL\ENQ\DC2\EOT\216\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\NUL\SOH\DC2\EOT\216\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\NUL\ETX\DC2\EOT\216\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\FS\STX\SOH\DC2\EOT\217\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\SOH\EOT\DC2\EOT\217\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\SOH\ENQ\DC2\EOT\217\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\SOH\SOH\DC2\EOT\217\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\SOH\ETX\DC2\EOT\217\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\FS\STX\STX\DC2\EOT\218\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\STX\EOT\DC2\EOT\218\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\STX\ENQ\DC2\EOT\218\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\STX\SOH\DC2\EOT\218\SOH\DC1\DC4\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\STX\ETX\DC2\EOT\218\SOH\ETB\CAN\n\
    \\f\n\
    \\EOT\EOT\FS\STX\ETX\DC2\EOT\219\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\ETX\EOT\DC2\EOT\219\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\ETX\ENQ\DC2\EOT\219\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\ETX\SOH\DC2\EOT\219\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\ETX\ETX\DC2\EOT\219\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\FS\STX\EOT\DC2\EOT\220\SOH\STX\FS\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\EOT\EOT\DC2\EOT\220\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\EOT\ENQ\DC2\EOT\220\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\EOT\SOH\DC2\EOT\220\SOH\DC2\ETB\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\EOT\ETX\DC2\EOT\220\SOH\SUB\ESC\n\
    \\f\n\
    \\STX\EOT\GS\DC2\ACK\222\SOH\NUL\227\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\GS\SOH\DC2\EOT\222\SOH\b&\n\
    \\f\n\
    \\EOT\EOT\GS\STX\NUL\DC2\EOT\223\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\NUL\EOT\DC2\EOT\223\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\NUL\ENQ\DC2\EOT\223\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\NUL\SOH\DC2\EOT\223\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\NUL\ETX\DC2\EOT\223\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\GS\STX\SOH\DC2\EOT\224\SOH\STX \n\
    \\r\n\
    \\ENQ\EOT\GS\STX\SOH\EOT\DC2\EOT\224\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\SOH\ENQ\DC2\EOT\224\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\SOH\SOH\DC2\EOT\224\SOH\DC2\ESC\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\SOH\ETX\DC2\EOT\224\SOH\RS\US\n\
    \\f\n\
    \\EOT\EOT\GS\STX\STX\DC2\EOT\225\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\STX\EOT\DC2\EOT\225\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\STX\ENQ\DC2\EOT\225\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\STX\SOH\DC2\EOT\225\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\STX\ETX\DC2\EOT\225\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\GS\STX\ETX\DC2\EOT\226\SOH\STX\FS\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\ETX\EOT\DC2\EOT\226\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\ETX\ENQ\DC2\EOT\226\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\ETX\SOH\DC2\EOT\226\SOH\DC1\ETB\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\ETX\ETX\DC2\EOT\226\SOH\SUB\ESC\n\
    \\f\n\
    \\STX\EOT\RS\DC2\ACK\228\SOH\NUL\234\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\RS\SOH\DC2\EOT\228\SOH\b\US\n\
    \\f\n\
    \\EOT\EOT\RS\STX\NUL\DC2\EOT\229\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\NUL\EOT\DC2\EOT\229\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\NUL\ENQ\DC2\EOT\229\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\NUL\SOH\DC2\EOT\229\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\NUL\ETX\DC2\EOT\229\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\RS\STX\SOH\DC2\EOT\230\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\SOH\EOT\DC2\EOT\230\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\SOH\ENQ\DC2\EOT\230\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\SOH\SOH\DC2\EOT\230\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\SOH\ETX\DC2\EOT\230\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\RS\STX\STX\DC2\EOT\231\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\STX\EOT\DC2\EOT\231\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\STX\ENQ\DC2\EOT\231\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\STX\SOH\DC2\EOT\231\SOH\DC1\DC4\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\STX\ETX\DC2\EOT\231\SOH\ETB\CAN\n\
    \\f\n\
    \\EOT\EOT\RS\STX\ETX\DC2\EOT\232\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\ETX\EOT\DC2\EOT\232\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\ETX\ENQ\DC2\EOT\232\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\ETX\SOH\DC2\EOT\232\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\ETX\ETX\DC2\EOT\232\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\RS\STX\EOT\DC2\EOT\233\SOH\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\EOT\EOT\DC2\EOT\233\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\EOT\ENQ\DC2\EOT\233\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\EOT\SOH\DC2\EOT\233\SOH\DC2\CAN\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\EOT\ETX\DC2\EOT\233\SOH\ESC\FS\n\
    \\f\n\
    \\STX\EOT\US\DC2\ACK\235\SOH\NUL\131\STX\SOH\n\
    \\v\n\
    \\ETX\EOT\US\SOH\DC2\EOT\235\SOH\b\GS\n\
    \\f\n\
    \\EOT\EOT\US\STX\NUL\DC2\EOT\236\SOH\STX\RS\n\
    \\r\n\
    \\ENQ\EOT\US\STX\NUL\EOT\DC2\EOT\236\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\US\STX\NUL\ENQ\DC2\EOT\236\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\US\STX\NUL\SOH\DC2\EOT\236\SOH\DC2\EM\n\
    \\r\n\
    \\ENQ\EOT\US\STX\NUL\ETX\DC2\EOT\236\SOH\FS\GS\n\
    \\f\n\
    \\EOT\EOT\US\STX\SOH\DC2\EOT\237\SOH\STX\US\n\
    \\r\n\
    \\ENQ\EOT\US\STX\SOH\EOT\DC2\EOT\237\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\US\STX\SOH\ENQ\DC2\EOT\237\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\US\STX\SOH\SOH\DC2\EOT\237\SOH\DC2\SUB\n\
    \\r\n\
    \\ENQ\EOT\US\STX\SOH\ETX\DC2\EOT\237\SOH\GS\RS\n\
    \\f\n\
    \\EOT\EOT\US\STX\STX\DC2\EOT\238\SOH\STX\RS\n\
    \\r\n\
    \\ENQ\EOT\US\STX\STX\EOT\DC2\EOT\238\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\US\STX\STX\ENQ\DC2\EOT\238\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\US\STX\STX\SOH\DC2\EOT\238\SOH\DC2\EM\n\
    \\r\n\
    \\ENQ\EOT\US\STX\STX\ETX\DC2\EOT\238\SOH\FS\GS\n\
    \\f\n\
    \\EOT\EOT\US\STX\ETX\DC2\EOT\239\SOH\STX\US\n\
    \\r\n\
    \\ENQ\EOT\US\STX\ETX\EOT\DC2\EOT\239\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\US\STX\ETX\ENQ\DC2\EOT\239\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\US\STX\ETX\SOH\DC2\EOT\239\SOH\DC2\SUB\n\
    \\r\n\
    \\ENQ\EOT\US\STX\ETX\ETX\DC2\EOT\239\SOH\GS\RS\n\
    \\f\n\
    \\EOT\EOT\US\STX\EOT\DC2\EOT\240\SOH\STX\RS\n\
    \\r\n\
    \\ENQ\EOT\US\STX\EOT\EOT\DC2\EOT\240\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\US\STX\EOT\ENQ\DC2\EOT\240\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\US\STX\EOT\SOH\DC2\EOT\240\SOH\DC2\EM\n\
    \\r\n\
    \\ENQ\EOT\US\STX\EOT\ETX\DC2\EOT\240\SOH\FS\GS\n\
    \\f\n\
    \\EOT\EOT\US\STX\ENQ\DC2\EOT\241\SOH\STX\US\n\
    \\r\n\
    \\ENQ\EOT\US\STX\ENQ\EOT\DC2\EOT\241\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\US\STX\ENQ\ENQ\DC2\EOT\241\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\US\STX\ENQ\SOH\DC2\EOT\241\SOH\DC2\SUB\n\
    \\r\n\
    \\ENQ\EOT\US\STX\ENQ\ETX\DC2\EOT\241\SOH\GS\RS\n\
    \\f\n\
    \\EOT\EOT\US\STX\ACK\DC2\EOT\242\SOH\STX\RS\n\
    \\r\n\
    \\ENQ\EOT\US\STX\ACK\EOT\DC2\EOT\242\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\US\STX\ACK\ENQ\DC2\EOT\242\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\US\STX\ACK\SOH\DC2\EOT\242\SOH\DC2\EM\n\
    \\r\n\
    \\ENQ\EOT\US\STX\ACK\ETX\DC2\EOT\242\SOH\FS\GS\n\
    \\f\n\
    \\EOT\EOT\US\STX\a\DC2\EOT\243\SOH\STX\RS\n\
    \\r\n\
    \\ENQ\EOT\US\STX\a\EOT\DC2\EOT\243\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\US\STX\a\ENQ\DC2\EOT\243\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\US\STX\a\SOH\DC2\EOT\243\SOH\DC2\EM\n\
    \\r\n\
    \\ENQ\EOT\US\STX\a\ETX\DC2\EOT\243\SOH\FS\GS\n\
    \\f\n\
    \\EOT\EOT\US\STX\b\DC2\EOT\244\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\US\STX\b\EOT\DC2\EOT\244\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\US\STX\b\ENQ\DC2\EOT\244\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\US\STX\b\SOH\DC2\EOT\244\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\US\STX\b\ETX\DC2\EOT\244\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\US\STX\t\DC2\EOT\245\SOH\STX \n\
    \\r\n\
    \\ENQ\EOT\US\STX\t\EOT\DC2\EOT\245\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\US\STX\t\ENQ\DC2\EOT\245\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\US\STX\t\SOH\DC2\EOT\245\SOH\DC2\SUB\n\
    \\r\n\
    \\ENQ\EOT\US\STX\t\ETX\DC2\EOT\245\SOH\GS\US\n\
    \\f\n\
    \\EOT\EOT\US\STX\n\
    \\DC2\EOT\246\SOH\STX!\n\
    \\r\n\
    \\ENQ\EOT\US\STX\n\
    \\EOT\DC2\EOT\246\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\US\STX\n\
    \\ENQ\DC2\EOT\246\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\US\STX\n\
    \\SOH\DC2\EOT\246\SOH\DC2\ESC\n\
    \\r\n\
    \\ENQ\EOT\US\STX\n\
    \\ETX\DC2\EOT\246\SOH\RS \n\
    \\f\n\
    \\EOT\EOT\US\STX\v\DC2\EOT\247\SOH\STX!\n\
    \\r\n\
    \\ENQ\EOT\US\STX\v\EOT\DC2\EOT\247\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\US\STX\v\ENQ\DC2\EOT\247\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\US\STX\v\SOH\DC2\EOT\247\SOH\DC2\ESC\n\
    \\r\n\
    \\ENQ\EOT\US\STX\v\ETX\DC2\EOT\247\SOH\RS \n\
    \\f\n\
    \\EOT\EOT\US\STX\f\DC2\EOT\248\SOH\STX!\n\
    \\r\n\
    \\ENQ\EOT\US\STX\f\EOT\DC2\EOT\248\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\US\STX\f\ENQ\DC2\EOT\248\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\US\STX\f\SOH\DC2\EOT\248\SOH\DC2\ESC\n\
    \\r\n\
    \\ENQ\EOT\US\STX\f\ETX\DC2\EOT\248\SOH\RS \n\
    \\f\n\
    \\EOT\EOT\US\STX\r\DC2\EOT\249\SOH\STX\RS\n\
    \\r\n\
    \\ENQ\EOT\US\STX\r\EOT\DC2\EOT\249\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\US\STX\r\ENQ\DC2\EOT\249\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\US\STX\r\SOH\DC2\EOT\249\SOH\DC2\CAN\n\
    \\r\n\
    \\ENQ\EOT\US\STX\r\ETX\DC2\EOT\249\SOH\ESC\GS\n\
    \\f\n\
    \\EOT\EOT\US\STX\SO\DC2\EOT\250\SOH\STX\"\n\
    \\r\n\
    \\ENQ\EOT\US\STX\SO\EOT\DC2\EOT\250\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\US\STX\SO\ENQ\DC2\EOT\250\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\US\STX\SO\SOH\DC2\EOT\250\SOH\DC2\FS\n\
    \\r\n\
    \\ENQ\EOT\US\STX\SO\ETX\DC2\EOT\250\SOH\US!\n\
    \\f\n\
    \\EOT\EOT\US\STX\SI\DC2\EOT\251\SOH\STX\US\n\
    \\r\n\
    \\ENQ\EOT\US\STX\SI\EOT\DC2\EOT\251\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\US\STX\SI\ENQ\DC2\EOT\251\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\US\STX\SI\SOH\DC2\EOT\251\SOH\DC2\EM\n\
    \\r\n\
    \\ENQ\EOT\US\STX\SI\ETX\DC2\EOT\251\SOH\FS\RS\n\
    \\f\n\
    \\EOT\EOT\US\STX\DLE\DC2\EOT\252\SOH\STX!\n\
    \\r\n\
    \\ENQ\EOT\US\STX\DLE\EOT\DC2\EOT\252\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\US\STX\DLE\ENQ\DC2\EOT\252\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\US\STX\DLE\SOH\DC2\EOT\252\SOH\DC2\ESC\n\
    \\r\n\
    \\ENQ\EOT\US\STX\DLE\ETX\DC2\EOT\252\SOH\RS \n\
    \\f\n\
    \\EOT\EOT\US\STX\DC1\DC2\EOT\253\SOH\STX!\n\
    \\r\n\
    \\ENQ\EOT\US\STX\DC1\EOT\DC2\EOT\253\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\US\STX\DC1\ENQ\DC2\EOT\253\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\US\STX\DC1\SOH\DC2\EOT\253\SOH\DC2\ESC\n\
    \\r\n\
    \\ENQ\EOT\US\STX\DC1\ETX\DC2\EOT\253\SOH\RS \n\
    \\f\n\
    \\EOT\EOT\US\STX\DC2\DC2\EOT\254\SOH\STX \n\
    \\r\n\
    \\ENQ\EOT\US\STX\DC2\EOT\DC2\EOT\254\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\US\STX\DC2\ENQ\DC2\EOT\254\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\US\STX\DC2\SOH\DC2\EOT\254\SOH\DC2\SUB\n\
    \\r\n\
    \\ENQ\EOT\US\STX\DC2\ETX\DC2\EOT\254\SOH\GS\US\n\
    \\f\n\
    \\EOT\EOT\US\STX\DC3\DC2\EOT\255\SOH\STX\RS\n\
    \\r\n\
    \\ENQ\EOT\US\STX\DC3\EOT\DC2\EOT\255\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\US\STX\DC3\ENQ\DC2\EOT\255\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\US\STX\DC3\SOH\DC2\EOT\255\SOH\DC2\CAN\n\
    \\r\n\
    \\ENQ\EOT\US\STX\DC3\ETX\DC2\EOT\255\SOH\ESC\GS\n\
    \\f\n\
    \\EOT\EOT\US\STX\DC4\DC2\EOT\128\STX\STX\US\n\
    \\r\n\
    \\ENQ\EOT\US\STX\DC4\EOT\DC2\EOT\128\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\US\STX\DC4\ENQ\DC2\EOT\128\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\US\STX\DC4\SOH\DC2\EOT\128\STX\DC2\EM\n\
    \\r\n\
    \\ENQ\EOT\US\STX\DC4\ETX\DC2\EOT\128\STX\FS\RS\n\
    \\f\n\
    \\EOT\EOT\US\STX\NAK\DC2\EOT\129\STX\STX\RS\n\
    \\r\n\
    \\ENQ\EOT\US\STX\NAK\EOT\DC2\EOT\129\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\US\STX\NAK\ENQ\DC2\EOT\129\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\US\STX\NAK\SOH\DC2\EOT\129\STX\DC2\CAN\n\
    \\r\n\
    \\ENQ\EOT\US\STX\NAK\ETX\DC2\EOT\129\STX\ESC\GS\n\
    \\f\n\
    \\EOT\EOT\US\STX\SYN\DC2\EOT\130\STX\STX\US\n\
    \\r\n\
    \\ENQ\EOT\US\STX\SYN\EOT\DC2\EOT\130\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\US\STX\SYN\ENQ\DC2\EOT\130\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\US\STX\SYN\SOH\DC2\EOT\130\STX\DC2\EM\n\
    \\r\n\
    \\ENQ\EOT\US\STX\SYN\ETX\DC2\EOT\130\STX\FS\RS\n\
    \\f\n\
    \\STX\EOT \DC2\ACK\132\STX\NUL\161\STX\SOH\n\
    \\v\n\
    \\ETX\EOT \SOH\DC2\EOT\132\STX\b$\n\
    \\f\n\
    \\EOT\EOT \STX\NUL\DC2\EOT\133\STX\STX\US\n\
    \\r\n\
    \\ENQ\EOT \STX\NUL\EOT\DC2\EOT\133\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT \STX\NUL\ENQ\DC2\EOT\133\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT \STX\NUL\SOH\DC2\EOT\133\STX\DC2\SUB\n\
    \\r\n\
    \\ENQ\EOT \STX\NUL\ETX\DC2\EOT\133\STX\GS\RS\n\
    \\f\n\
    \\EOT\EOT \STX\SOH\DC2\EOT\134\STX\STX\US\n\
    \\r\n\
    \\ENQ\EOT \STX\SOH\EOT\DC2\EOT\134\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT \STX\SOH\ENQ\DC2\EOT\134\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT \STX\SOH\SOH\DC2\EOT\134\STX\DC2\SUB\n\
    \\r\n\
    \\ENQ\EOT \STX\SOH\ETX\DC2\EOT\134\STX\GS\RS\n\
    \\f\n\
    \\EOT\EOT \STX\STX\DC2\EOT\135\STX\STX \n\
    \\r\n\
    \\ENQ\EOT \STX\STX\EOT\DC2\EOT\135\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT \STX\STX\ENQ\DC2\EOT\135\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT \STX\STX\SOH\DC2\EOT\135\STX\DC2\ESC\n\
    \\r\n\
    \\ENQ\EOT \STX\STX\ETX\DC2\EOT\135\STX\RS\US\n\
    \\f\n\
    \\EOT\EOT \STX\ETX\DC2\EOT\136\STX\STX\"\n\
    \\r\n\
    \\ENQ\EOT \STX\ETX\EOT\DC2\EOT\136\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT \STX\ETX\ENQ\DC2\EOT\136\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT \STX\ETX\SOH\DC2\EOT\136\STX\DC2\GS\n\
    \\r\n\
    \\ENQ\EOT \STX\ETX\ETX\DC2\EOT\136\STX !\n\
    \\f\n\
    \\EOT\EOT \STX\EOT\DC2\EOT\137\STX\STX\"\n\
    \\r\n\
    \\ENQ\EOT \STX\EOT\EOT\DC2\EOT\137\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT \STX\EOT\ENQ\DC2\EOT\137\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT \STX\EOT\SOH\DC2\EOT\137\STX\DC2\GS\n\
    \\r\n\
    \\ENQ\EOT \STX\EOT\ETX\DC2\EOT\137\STX !\n\
    \\f\n\
    \\EOT\EOT \STX\ENQ\DC2\EOT\138\STX\STX#\n\
    \\r\n\
    \\ENQ\EOT \STX\ENQ\EOT\DC2\EOT\138\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT \STX\ENQ\ENQ\DC2\EOT\138\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT \STX\ENQ\SOH\DC2\EOT\138\STX\DC2\RS\n\
    \\r\n\
    \\ENQ\EOT \STX\ENQ\ETX\DC2\EOT\138\STX!\"\n\
    \\f\n\
    \\EOT\EOT \STX\ACK\DC2\EOT\139\STX\STX!\n\
    \\r\n\
    \\ENQ\EOT \STX\ACK\EOT\DC2\EOT\139\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT \STX\ACK\ENQ\DC2\EOT\139\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT \STX\ACK\SOH\DC2\EOT\139\STX\DC2\FS\n\
    \\r\n\
    \\ENQ\EOT \STX\ACK\ETX\DC2\EOT\139\STX\US \n\
    \\f\n\
    \\EOT\EOT \STX\a\DC2\EOT\140\STX\STX!\n\
    \\r\n\
    \\ENQ\EOT \STX\a\EOT\DC2\EOT\140\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT \STX\a\ENQ\DC2\EOT\140\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT \STX\a\SOH\DC2\EOT\140\STX\DC2\FS\n\
    \\r\n\
    \\ENQ\EOT \STX\a\ETX\DC2\EOT\140\STX\US \n\
    \\f\n\
    \\EOT\EOT \STX\b\DC2\EOT\141\STX\STX\"\n\
    \\r\n\
    \\ENQ\EOT \STX\b\EOT\DC2\EOT\141\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT \STX\b\ENQ\DC2\EOT\141\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT \STX\b\SOH\DC2\EOT\141\STX\DC2\GS\n\
    \\r\n\
    \\ENQ\EOT \STX\b\ETX\DC2\EOT\141\STX !\n\
    \\f\n\
    \\EOT\EOT \STX\t\DC2\EOT\142\STX\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT \STX\t\EOT\DC2\EOT\142\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT \STX\t\ENQ\DC2\EOT\142\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT \STX\t\SOH\DC2\EOT\142\STX\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT \STX\t\ETX\DC2\EOT\142\STX\CAN\SUB\n\
    \\f\n\
    \\EOT\EOT \STX\n\
    \\DC2\EOT\143\STX\STX \n\
    \\r\n\
    \\ENQ\EOT \STX\n\
    \\EOT\DC2\EOT\143\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT \STX\n\
    \\ENQ\DC2\EOT\143\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT \STX\n\
    \\SOH\DC2\EOT\143\STX\DC2\SUB\n\
    \\r\n\
    \\ENQ\EOT \STX\n\
    \\ETX\DC2\EOT\143\STX\GS\US\n\
    \\f\n\
    \\EOT\EOT \STX\v\DC2\EOT\144\STX\STX \n\
    \\r\n\
    \\ENQ\EOT \STX\v\EOT\DC2\EOT\144\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT \STX\v\ENQ\DC2\EOT\144\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT \STX\v\SOH\DC2\EOT\144\STX\DC2\SUB\n\
    \\r\n\
    \\ENQ\EOT \STX\v\ETX\DC2\EOT\144\STX\GS\US\n\
    \\f\n\
    \\EOT\EOT \STX\f\DC2\EOT\145\STX\STX!\n\
    \\r\n\
    \\ENQ\EOT \STX\f\EOT\DC2\EOT\145\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT \STX\f\ENQ\DC2\EOT\145\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT \STX\f\SOH\DC2\EOT\145\STX\DC2\ESC\n\
    \\r\n\
    \\ENQ\EOT \STX\f\ETX\DC2\EOT\145\STX\RS \n\
    \\f\n\
    \\EOT\EOT \STX\r\DC2\EOT\146\STX\STX#\n\
    \\r\n\
    \\ENQ\EOT \STX\r\EOT\DC2\EOT\146\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT \STX\r\ENQ\DC2\EOT\146\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT \STX\r\SOH\DC2\EOT\146\STX\DC2\GS\n\
    \\r\n\
    \\ENQ\EOT \STX\r\ETX\DC2\EOT\146\STX \"\n\
    \\f\n\
    \\EOT\EOT \STX\SO\DC2\EOT\147\STX\STX#\n\
    \\r\n\
    \\ENQ\EOT \STX\SO\EOT\DC2\EOT\147\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT \STX\SO\ENQ\DC2\EOT\147\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT \STX\SO\SOH\DC2\EOT\147\STX\DC2\GS\n\
    \\r\n\
    \\ENQ\EOT \STX\SO\ETX\DC2\EOT\147\STX \"\n\
    \\f\n\
    \\EOT\EOT \STX\SI\DC2\EOT\148\STX\STX$\n\
    \\r\n\
    \\ENQ\EOT \STX\SI\EOT\DC2\EOT\148\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT \STX\SI\ENQ\DC2\EOT\148\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT \STX\SI\SOH\DC2\EOT\148\STX\DC2\RS\n\
    \\r\n\
    \\ENQ\EOT \STX\SI\ETX\DC2\EOT\148\STX!#\n\
    \\f\n\
    \\EOT\EOT \STX\DLE\DC2\EOT\149\STX\STX\"\n\
    \\r\n\
    \\ENQ\EOT \STX\DLE\EOT\DC2\EOT\149\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT \STX\DLE\ENQ\DC2\EOT\149\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT \STX\DLE\SOH\DC2\EOT\149\STX\DC2\FS\n\
    \\r\n\
    \\ENQ\EOT \STX\DLE\ETX\DC2\EOT\149\STX\US!\n\
    \\f\n\
    \\EOT\EOT \STX\DC1\DC2\EOT\150\STX\STX\"\n\
    \\r\n\
    \\ENQ\EOT \STX\DC1\EOT\DC2\EOT\150\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT \STX\DC1\ENQ\DC2\EOT\150\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT \STX\DC1\SOH\DC2\EOT\150\STX\DC2\FS\n\
    \\r\n\
    \\ENQ\EOT \STX\DC1\ETX\DC2\EOT\150\STX\US!\n\
    \\f\n\
    \\EOT\EOT \STX\DC2\DC2\EOT\151\STX\STX#\n\
    \\r\n\
    \\ENQ\EOT \STX\DC2\EOT\DC2\EOT\151\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT \STX\DC2\ENQ\DC2\EOT\151\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT \STX\DC2\SOH\DC2\EOT\151\STX\DC2\GS\n\
    \\r\n\
    \\ENQ\EOT \STX\DC2\ETX\DC2\EOT\151\STX \"\n\
    \\f\n\
    \\EOT\EOT \STX\DC3\DC2\EOT\152\STX\STX \n\
    \\r\n\
    \\ENQ\EOT \STX\DC3\EOT\DC2\EOT\152\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT \STX\DC3\ENQ\DC2\EOT\152\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT \STX\DC3\SOH\DC2\EOT\152\STX\DC2\SUB\n\
    \\r\n\
    \\ENQ\EOT \STX\DC3\ETX\DC2\EOT\152\STX\GS\US\n\
    \\f\n\
    \\EOT\EOT \STX\DC4\DC2\EOT\153\STX\STX \n\
    \\r\n\
    \\ENQ\EOT \STX\DC4\EOT\DC2\EOT\153\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT \STX\DC4\ENQ\DC2\EOT\153\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT \STX\DC4\SOH\DC2\EOT\153\STX\DC2\SUB\n\
    \\r\n\
    \\ENQ\EOT \STX\DC4\ETX\DC2\EOT\153\STX\GS\US\n\
    \\f\n\
    \\EOT\EOT \STX\NAK\DC2\EOT\154\STX\STX!\n\
    \\r\n\
    \\ENQ\EOT \STX\NAK\EOT\DC2\EOT\154\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT \STX\NAK\ENQ\DC2\EOT\154\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT \STX\NAK\SOH\DC2\EOT\154\STX\DC2\ESC\n\
    \\r\n\
    \\ENQ\EOT \STX\NAK\ETX\DC2\EOT\154\STX\RS \n\
    \\f\n\
    \\EOT\EOT \STX\SYN\DC2\EOT\155\STX\STX#\n\
    \\r\n\
    \\ENQ\EOT \STX\SYN\EOT\DC2\EOT\155\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT \STX\SYN\ENQ\DC2\EOT\155\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT \STX\SYN\SOH\DC2\EOT\155\STX\DC2\GS\n\
    \\r\n\
    \\ENQ\EOT \STX\SYN\ETX\DC2\EOT\155\STX \"\n\
    \\f\n\
    \\EOT\EOT \STX\ETB\DC2\EOT\156\STX\STX#\n\
    \\r\n\
    \\ENQ\EOT \STX\ETB\EOT\DC2\EOT\156\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT \STX\ETB\ENQ\DC2\EOT\156\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT \STX\ETB\SOH\DC2\EOT\156\STX\DC2\GS\n\
    \\r\n\
    \\ENQ\EOT \STX\ETB\ETX\DC2\EOT\156\STX \"\n\
    \\f\n\
    \\EOT\EOT \STX\CAN\DC2\EOT\157\STX\STX$\n\
    \\r\n\
    \\ENQ\EOT \STX\CAN\EOT\DC2\EOT\157\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT \STX\CAN\ENQ\DC2\EOT\157\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT \STX\CAN\SOH\DC2\EOT\157\STX\DC2\RS\n\
    \\r\n\
    \\ENQ\EOT \STX\CAN\ETX\DC2\EOT\157\STX!#\n\
    \\f\n\
    \\EOT\EOT \STX\EM\DC2\EOT\158\STX\STX\"\n\
    \\r\n\
    \\ENQ\EOT \STX\EM\EOT\DC2\EOT\158\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT \STX\EM\ENQ\DC2\EOT\158\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT \STX\EM\SOH\DC2\EOT\158\STX\DC2\FS\n\
    \\r\n\
    \\ENQ\EOT \STX\EM\ETX\DC2\EOT\158\STX\US!\n\
    \\f\n\
    \\EOT\EOT \STX\SUB\DC2\EOT\159\STX\STX\"\n\
    \\r\n\
    \\ENQ\EOT \STX\SUB\EOT\DC2\EOT\159\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT \STX\SUB\ENQ\DC2\EOT\159\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT \STX\SUB\SOH\DC2\EOT\159\STX\DC2\FS\n\
    \\r\n\
    \\ENQ\EOT \STX\SUB\ETX\DC2\EOT\159\STX\US!\n\
    \\f\n\
    \\EOT\EOT \STX\ESC\DC2\EOT\160\STX\STX#\n\
    \\r\n\
    \\ENQ\EOT \STX\ESC\EOT\DC2\EOT\160\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT \STX\ESC\ENQ\DC2\EOT\160\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT \STX\ESC\SOH\DC2\EOT\160\STX\DC2\GS\n\
    \\r\n\
    \\ENQ\EOT \STX\ESC\ETX\DC2\EOT\160\STX \""