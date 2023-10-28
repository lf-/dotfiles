{- This file was auto-generated from protos/perfetto/trace/ps/process_stats.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ps.ProcessStats (
        ProcessStats(), ProcessStats'FDInfo(), ProcessStats'Process(),
        ProcessStats'Thread()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.processes' @:: Lens' ProcessStats [ProcessStats'Process]@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.vec'processes' @:: Lens' ProcessStats (Data.Vector.Vector ProcessStats'Process)@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.collectionEndTimestamp' @:: Lens' ProcessStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.maybe'collectionEndTimestamp' @:: Lens' ProcessStats (Prelude.Maybe Data.Word.Word64)@ -}
data ProcessStats
  = ProcessStats'_constructor {_ProcessStats'processes :: !(Data.Vector.Vector ProcessStats'Process),
                               _ProcessStats'collectionEndTimestamp :: !(Prelude.Maybe Data.Word.Word64),
                               _ProcessStats'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ProcessStats where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ProcessStats "processes" [ProcessStats'Process] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'processes
           (\ x__ y__ -> x__ {_ProcessStats'processes = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ProcessStats "vec'processes" (Data.Vector.Vector ProcessStats'Process) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'processes
           (\ x__ y__ -> x__ {_ProcessStats'processes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessStats "collectionEndTimestamp" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'collectionEndTimestamp
           (\ x__ y__ -> x__ {_ProcessStats'collectionEndTimestamp = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProcessStats "maybe'collectionEndTimestamp" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'collectionEndTimestamp
           (\ x__ y__ -> x__ {_ProcessStats'collectionEndTimestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Message ProcessStats where
  messageName _ = Data.Text.pack "perfetto.protos.ProcessStats"
  packedMessageDescriptor _
    = "\n\
      \\fProcessStats\DC2C\n\
      \\tprocesses\CAN\SOH \ETX(\v2%.perfetto.protos.ProcessStats.ProcessR\tprocesses\DC28\n\
      \\CANcollection_end_timestamp\CAN\STX \SOH(\EOTR\SYNcollectionEndTimestamp\SUB,\n\
      \\ACKThread\DC2\DLE\n\
      \\ETXtid\CAN\SOH \SOH(\ENQR\ETXtidJ\EOT\b\STX\DLE\ETXJ\EOT\b\ETX\DLE\EOTJ\EOT\b\EOT\DLE\ENQ\SUB,\n\
      \\ACKFDInfo\DC2\SO\n\
      \\STXfd\CAN\SOH \SOH(\EOTR\STXfd\DC2\DC2\n\
      \\EOTpath\CAN\STX \SOH(\tR\EOTpath\SUB\148\ACK\n\
      \\aProcess\DC2\DLE\n\
      \\ETXpid\CAN\SOH \SOH(\ENQR\ETXpid\DC2\FS\n\
      \\n\
      \vm_size_kb\CAN\STX \SOH(\EOTR\bvmSizeKb\DC2\SUB\n\
      \\tvm_rss_kb\CAN\ETX \SOH(\EOTR\avmRssKb\DC2\RS\n\
      \\vrss_anon_kb\CAN\EOT \SOH(\EOTR\trssAnonKb\DC2\RS\n\
      \\vrss_file_kb\CAN\ENQ \SOH(\EOTR\trssFileKb\DC2 \n\
      \\frss_shmem_kb\CAN\ACK \SOH(\EOTR\n\
      \rssShmemKb\DC2\FS\n\
      \\n\
      \vm_swap_kb\CAN\a \SOH(\EOTR\bvmSwapKb\DC2 \n\
      \\fvm_locked_kb\CAN\b \SOH(\EOTR\n\
      \vmLockedKb\DC2\SUB\n\
      \\tvm_hwm_kb\CAN\t \SOH(\EOTR\avmHwmKb\DC2\"\n\
      \\room_score_adj\CAN\n\
      \ \SOH(\ETXR\voomScoreAdj\DC2>\n\
      \\athreads\CAN\v \ETX(\v2$.perfetto.protos.ProcessStats.ThreadR\athreads\DC23\n\
      \\SYNis_peak_rss_resettable\CAN\f \SOH(\bR\DC3isPeakRssResettable\DC2=\n\
      \\ESCchrome_private_footprint_kb\CAN\r \SOH(\rR\CANchromePrivateFootprintKb\DC2<\n\
      \\ESCchrome_peak_resident_set_kb\CAN\SO \SOH(\rR\ETBchromePeakResidentSetKb\DC26\n\
      \\ETXfds\CAN\SI \ETX(\v2$.perfetto.protos.ProcessStats.FDInfoR\ETXfds\DC2\FS\n\
      \\n\
      \smr_rss_kb\CAN\DLE \SOH(\EOTR\bsmrRssKb\DC2\FS\n\
      \\n\
      \smr_pss_kb\CAN\DC1 \SOH(\EOTR\bsmrPssKb\DC2%\n\
      \\SIsmr_pss_anon_kb\CAN\DC2 \SOH(\EOTR\fsmrPssAnonKb\DC2%\n\
      \\SIsmr_pss_file_kb\CAN\DC3 \SOH(\EOTR\fsmrPssFileKb\DC2'\n\
      \\DLEsmr_pss_shmem_kb\CAN\DC4 \SOH(\EOTR\rsmrPssShmemKb"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        processes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "processes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ProcessStats'Process)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"processes")) ::
              Data.ProtoLens.FieldDescriptor ProcessStats
        collectionEndTimestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "collection_end_timestamp"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'collectionEndTimestamp")) ::
              Data.ProtoLens.FieldDescriptor ProcessStats
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, processes__field_descriptor),
           (Data.ProtoLens.Tag 2, collectionEndTimestamp__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ProcessStats'_unknownFields
        (\ x__ y__ -> x__ {_ProcessStats'_unknownFields = y__})
  defMessage
    = ProcessStats'_constructor
        {_ProcessStats'processes = Data.Vector.Generic.empty,
         _ProcessStats'collectionEndTimestamp = Prelude.Nothing,
         _ProcessStats'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ProcessStats
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ProcessStats'Process
             -> Data.ProtoLens.Encoding.Bytes.Parser ProcessStats
        loop x mutable'processes
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'processes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'processes)
                      (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'processes") frozen'processes x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "processes"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'processes y)
                                loop x v
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "collection_end_timestamp"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"collectionEndTimestamp") y x)
                                  mutable'processes
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'processes
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'processes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'processes)
          "ProcessStats"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                        ((Prelude..)
                           (\ bs
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Data.ProtoLens.encodeMessage _v))
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'processes") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'collectionEndTimestamp") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData ProcessStats where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ProcessStats'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ProcessStats'processes x__)
                (Control.DeepSeq.deepseq
                   (_ProcessStats'collectionEndTimestamp x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.fd' @:: Lens' ProcessStats'FDInfo Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.maybe'fd' @:: Lens' ProcessStats'FDInfo (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.path' @:: Lens' ProcessStats'FDInfo Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.maybe'path' @:: Lens' ProcessStats'FDInfo (Prelude.Maybe Data.Text.Text)@ -}
data ProcessStats'FDInfo
  = ProcessStats'FDInfo'_constructor {_ProcessStats'FDInfo'fd :: !(Prelude.Maybe Data.Word.Word64),
                                      _ProcessStats'FDInfo'path :: !(Prelude.Maybe Data.Text.Text),
                                      _ProcessStats'FDInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ProcessStats'FDInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ProcessStats'FDInfo "fd" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'FDInfo'fd
           (\ x__ y__ -> x__ {_ProcessStats'FDInfo'fd = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProcessStats'FDInfo "maybe'fd" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'FDInfo'fd
           (\ x__ y__ -> x__ {_ProcessStats'FDInfo'fd = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessStats'FDInfo "path" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'FDInfo'path
           (\ x__ y__ -> x__ {_ProcessStats'FDInfo'path = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProcessStats'FDInfo "maybe'path" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'FDInfo'path
           (\ x__ y__ -> x__ {_ProcessStats'FDInfo'path = y__}))
        Prelude.id
instance Data.ProtoLens.Message ProcessStats'FDInfo where
  messageName _
    = Data.Text.pack "perfetto.protos.ProcessStats.FDInfo"
  packedMessageDescriptor _
    = "\n\
      \\ACKFDInfo\DC2\SO\n\
      \\STXfd\CAN\SOH \SOH(\EOTR\STXfd\DC2\DC2\n\
      \\EOTpath\CAN\STX \SOH(\tR\EOTpath"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        fd__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fd"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fd")) ::
              Data.ProtoLens.FieldDescriptor ProcessStats'FDInfo
        path__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "path"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'path")) ::
              Data.ProtoLens.FieldDescriptor ProcessStats'FDInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, fd__field_descriptor),
           (Data.ProtoLens.Tag 2, path__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ProcessStats'FDInfo'_unknownFields
        (\ x__ y__ -> x__ {_ProcessStats'FDInfo'_unknownFields = y__})
  defMessage
    = ProcessStats'FDInfo'_constructor
        {_ProcessStats'FDInfo'fd = Prelude.Nothing,
         _ProcessStats'FDInfo'path = Prelude.Nothing,
         _ProcessStats'FDInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ProcessStats'FDInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser ProcessStats'FDInfo
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "fd"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"fd") y x)
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
                                       "path"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"path") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "FDInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'fd") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'path") _x
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
instance Control.DeepSeq.NFData ProcessStats'FDInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ProcessStats'FDInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ProcessStats'FDInfo'fd x__)
                (Control.DeepSeq.deepseq (_ProcessStats'FDInfo'path x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.pid' @:: Lens' ProcessStats'Process Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.maybe'pid' @:: Lens' ProcessStats'Process (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.vmSizeKb' @:: Lens' ProcessStats'Process Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.maybe'vmSizeKb' @:: Lens' ProcessStats'Process (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.vmRssKb' @:: Lens' ProcessStats'Process Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.maybe'vmRssKb' @:: Lens' ProcessStats'Process (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.rssAnonKb' @:: Lens' ProcessStats'Process Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.maybe'rssAnonKb' @:: Lens' ProcessStats'Process (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.rssFileKb' @:: Lens' ProcessStats'Process Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.maybe'rssFileKb' @:: Lens' ProcessStats'Process (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.rssShmemKb' @:: Lens' ProcessStats'Process Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.maybe'rssShmemKb' @:: Lens' ProcessStats'Process (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.vmSwapKb' @:: Lens' ProcessStats'Process Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.maybe'vmSwapKb' @:: Lens' ProcessStats'Process (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.vmLockedKb' @:: Lens' ProcessStats'Process Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.maybe'vmLockedKb' @:: Lens' ProcessStats'Process (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.vmHwmKb' @:: Lens' ProcessStats'Process Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.maybe'vmHwmKb' @:: Lens' ProcessStats'Process (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.oomScoreAdj' @:: Lens' ProcessStats'Process Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.maybe'oomScoreAdj' @:: Lens' ProcessStats'Process (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.threads' @:: Lens' ProcessStats'Process [ProcessStats'Thread]@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.vec'threads' @:: Lens' ProcessStats'Process (Data.Vector.Vector ProcessStats'Thread)@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.isPeakRssResettable' @:: Lens' ProcessStats'Process Prelude.Bool@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.maybe'isPeakRssResettable' @:: Lens' ProcessStats'Process (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.chromePrivateFootprintKb' @:: Lens' ProcessStats'Process Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.maybe'chromePrivateFootprintKb' @:: Lens' ProcessStats'Process (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.chromePeakResidentSetKb' @:: Lens' ProcessStats'Process Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.maybe'chromePeakResidentSetKb' @:: Lens' ProcessStats'Process (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.fds' @:: Lens' ProcessStats'Process [ProcessStats'FDInfo]@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.vec'fds' @:: Lens' ProcessStats'Process (Data.Vector.Vector ProcessStats'FDInfo)@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.smrRssKb' @:: Lens' ProcessStats'Process Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.maybe'smrRssKb' @:: Lens' ProcessStats'Process (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.smrPssKb' @:: Lens' ProcessStats'Process Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.maybe'smrPssKb' @:: Lens' ProcessStats'Process (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.smrPssAnonKb' @:: Lens' ProcessStats'Process Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.maybe'smrPssAnonKb' @:: Lens' ProcessStats'Process (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.smrPssFileKb' @:: Lens' ProcessStats'Process Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.maybe'smrPssFileKb' @:: Lens' ProcessStats'Process (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.smrPssShmemKb' @:: Lens' ProcessStats'Process Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.maybe'smrPssShmemKb' @:: Lens' ProcessStats'Process (Prelude.Maybe Data.Word.Word64)@ -}
data ProcessStats'Process
  = ProcessStats'Process'_constructor {_ProcessStats'Process'pid :: !(Prelude.Maybe Data.Int.Int32),
                                       _ProcessStats'Process'vmSizeKb :: !(Prelude.Maybe Data.Word.Word64),
                                       _ProcessStats'Process'vmRssKb :: !(Prelude.Maybe Data.Word.Word64),
                                       _ProcessStats'Process'rssAnonKb :: !(Prelude.Maybe Data.Word.Word64),
                                       _ProcessStats'Process'rssFileKb :: !(Prelude.Maybe Data.Word.Word64),
                                       _ProcessStats'Process'rssShmemKb :: !(Prelude.Maybe Data.Word.Word64),
                                       _ProcessStats'Process'vmSwapKb :: !(Prelude.Maybe Data.Word.Word64),
                                       _ProcessStats'Process'vmLockedKb :: !(Prelude.Maybe Data.Word.Word64),
                                       _ProcessStats'Process'vmHwmKb :: !(Prelude.Maybe Data.Word.Word64),
                                       _ProcessStats'Process'oomScoreAdj :: !(Prelude.Maybe Data.Int.Int64),
                                       _ProcessStats'Process'threads :: !(Data.Vector.Vector ProcessStats'Thread),
                                       _ProcessStats'Process'isPeakRssResettable :: !(Prelude.Maybe Prelude.Bool),
                                       _ProcessStats'Process'chromePrivateFootprintKb :: !(Prelude.Maybe Data.Word.Word32),
                                       _ProcessStats'Process'chromePeakResidentSetKb :: !(Prelude.Maybe Data.Word.Word32),
                                       _ProcessStats'Process'fds :: !(Data.Vector.Vector ProcessStats'FDInfo),
                                       _ProcessStats'Process'smrRssKb :: !(Prelude.Maybe Data.Word.Word64),
                                       _ProcessStats'Process'smrPssKb :: !(Prelude.Maybe Data.Word.Word64),
                                       _ProcessStats'Process'smrPssAnonKb :: !(Prelude.Maybe Data.Word.Word64),
                                       _ProcessStats'Process'smrPssFileKb :: !(Prelude.Maybe Data.Word.Word64),
                                       _ProcessStats'Process'smrPssShmemKb :: !(Prelude.Maybe Data.Word.Word64),
                                       _ProcessStats'Process'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ProcessStats'Process where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ProcessStats'Process "pid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'Process'pid
           (\ x__ y__ -> x__ {_ProcessStats'Process'pid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProcessStats'Process "maybe'pid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'Process'pid
           (\ x__ y__ -> x__ {_ProcessStats'Process'pid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessStats'Process "vmSizeKb" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'Process'vmSizeKb
           (\ x__ y__ -> x__ {_ProcessStats'Process'vmSizeKb = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProcessStats'Process "maybe'vmSizeKb" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'Process'vmSizeKb
           (\ x__ y__ -> x__ {_ProcessStats'Process'vmSizeKb = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessStats'Process "vmRssKb" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'Process'vmRssKb
           (\ x__ y__ -> x__ {_ProcessStats'Process'vmRssKb = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProcessStats'Process "maybe'vmRssKb" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'Process'vmRssKb
           (\ x__ y__ -> x__ {_ProcessStats'Process'vmRssKb = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessStats'Process "rssAnonKb" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'Process'rssAnonKb
           (\ x__ y__ -> x__ {_ProcessStats'Process'rssAnonKb = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProcessStats'Process "maybe'rssAnonKb" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'Process'rssAnonKb
           (\ x__ y__ -> x__ {_ProcessStats'Process'rssAnonKb = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessStats'Process "rssFileKb" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'Process'rssFileKb
           (\ x__ y__ -> x__ {_ProcessStats'Process'rssFileKb = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProcessStats'Process "maybe'rssFileKb" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'Process'rssFileKb
           (\ x__ y__ -> x__ {_ProcessStats'Process'rssFileKb = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessStats'Process "rssShmemKb" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'Process'rssShmemKb
           (\ x__ y__ -> x__ {_ProcessStats'Process'rssShmemKb = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProcessStats'Process "maybe'rssShmemKb" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'Process'rssShmemKb
           (\ x__ y__ -> x__ {_ProcessStats'Process'rssShmemKb = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessStats'Process "vmSwapKb" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'Process'vmSwapKb
           (\ x__ y__ -> x__ {_ProcessStats'Process'vmSwapKb = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProcessStats'Process "maybe'vmSwapKb" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'Process'vmSwapKb
           (\ x__ y__ -> x__ {_ProcessStats'Process'vmSwapKb = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessStats'Process "vmLockedKb" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'Process'vmLockedKb
           (\ x__ y__ -> x__ {_ProcessStats'Process'vmLockedKb = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProcessStats'Process "maybe'vmLockedKb" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'Process'vmLockedKb
           (\ x__ y__ -> x__ {_ProcessStats'Process'vmLockedKb = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessStats'Process "vmHwmKb" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'Process'vmHwmKb
           (\ x__ y__ -> x__ {_ProcessStats'Process'vmHwmKb = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProcessStats'Process "maybe'vmHwmKb" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'Process'vmHwmKb
           (\ x__ y__ -> x__ {_ProcessStats'Process'vmHwmKb = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessStats'Process "oomScoreAdj" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'Process'oomScoreAdj
           (\ x__ y__ -> x__ {_ProcessStats'Process'oomScoreAdj = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProcessStats'Process "maybe'oomScoreAdj" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'Process'oomScoreAdj
           (\ x__ y__ -> x__ {_ProcessStats'Process'oomScoreAdj = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessStats'Process "threads" [ProcessStats'Thread] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'Process'threads
           (\ x__ y__ -> x__ {_ProcessStats'Process'threads = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ProcessStats'Process "vec'threads" (Data.Vector.Vector ProcessStats'Thread) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'Process'threads
           (\ x__ y__ -> x__ {_ProcessStats'Process'threads = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessStats'Process "isPeakRssResettable" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'Process'isPeakRssResettable
           (\ x__ y__
              -> x__ {_ProcessStats'Process'isPeakRssResettable = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProcessStats'Process "maybe'isPeakRssResettable" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'Process'isPeakRssResettable
           (\ x__ y__
              -> x__ {_ProcessStats'Process'isPeakRssResettable = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessStats'Process "chromePrivateFootprintKb" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'Process'chromePrivateFootprintKb
           (\ x__ y__
              -> x__ {_ProcessStats'Process'chromePrivateFootprintKb = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProcessStats'Process "maybe'chromePrivateFootprintKb" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'Process'chromePrivateFootprintKb
           (\ x__ y__
              -> x__ {_ProcessStats'Process'chromePrivateFootprintKb = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessStats'Process "chromePeakResidentSetKb" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'Process'chromePeakResidentSetKb
           (\ x__ y__
              -> x__ {_ProcessStats'Process'chromePeakResidentSetKb = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProcessStats'Process "maybe'chromePeakResidentSetKb" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'Process'chromePeakResidentSetKb
           (\ x__ y__
              -> x__ {_ProcessStats'Process'chromePeakResidentSetKb = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessStats'Process "fds" [ProcessStats'FDInfo] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'Process'fds
           (\ x__ y__ -> x__ {_ProcessStats'Process'fds = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ProcessStats'Process "vec'fds" (Data.Vector.Vector ProcessStats'FDInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'Process'fds
           (\ x__ y__ -> x__ {_ProcessStats'Process'fds = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessStats'Process "smrRssKb" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'Process'smrRssKb
           (\ x__ y__ -> x__ {_ProcessStats'Process'smrRssKb = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProcessStats'Process "maybe'smrRssKb" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'Process'smrRssKb
           (\ x__ y__ -> x__ {_ProcessStats'Process'smrRssKb = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessStats'Process "smrPssKb" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'Process'smrPssKb
           (\ x__ y__ -> x__ {_ProcessStats'Process'smrPssKb = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProcessStats'Process "maybe'smrPssKb" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'Process'smrPssKb
           (\ x__ y__ -> x__ {_ProcessStats'Process'smrPssKb = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessStats'Process "smrPssAnonKb" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'Process'smrPssAnonKb
           (\ x__ y__ -> x__ {_ProcessStats'Process'smrPssAnonKb = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProcessStats'Process "maybe'smrPssAnonKb" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'Process'smrPssAnonKb
           (\ x__ y__ -> x__ {_ProcessStats'Process'smrPssAnonKb = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessStats'Process "smrPssFileKb" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'Process'smrPssFileKb
           (\ x__ y__ -> x__ {_ProcessStats'Process'smrPssFileKb = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProcessStats'Process "maybe'smrPssFileKb" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'Process'smrPssFileKb
           (\ x__ y__ -> x__ {_ProcessStats'Process'smrPssFileKb = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessStats'Process "smrPssShmemKb" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'Process'smrPssShmemKb
           (\ x__ y__ -> x__ {_ProcessStats'Process'smrPssShmemKb = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProcessStats'Process "maybe'smrPssShmemKb" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'Process'smrPssShmemKb
           (\ x__ y__ -> x__ {_ProcessStats'Process'smrPssShmemKb = y__}))
        Prelude.id
instance Data.ProtoLens.Message ProcessStats'Process where
  messageName _
    = Data.Text.pack "perfetto.protos.ProcessStats.Process"
  packedMessageDescriptor _
    = "\n\
      \\aProcess\DC2\DLE\n\
      \\ETXpid\CAN\SOH \SOH(\ENQR\ETXpid\DC2\FS\n\
      \\n\
      \vm_size_kb\CAN\STX \SOH(\EOTR\bvmSizeKb\DC2\SUB\n\
      \\tvm_rss_kb\CAN\ETX \SOH(\EOTR\avmRssKb\DC2\RS\n\
      \\vrss_anon_kb\CAN\EOT \SOH(\EOTR\trssAnonKb\DC2\RS\n\
      \\vrss_file_kb\CAN\ENQ \SOH(\EOTR\trssFileKb\DC2 \n\
      \\frss_shmem_kb\CAN\ACK \SOH(\EOTR\n\
      \rssShmemKb\DC2\FS\n\
      \\n\
      \vm_swap_kb\CAN\a \SOH(\EOTR\bvmSwapKb\DC2 \n\
      \\fvm_locked_kb\CAN\b \SOH(\EOTR\n\
      \vmLockedKb\DC2\SUB\n\
      \\tvm_hwm_kb\CAN\t \SOH(\EOTR\avmHwmKb\DC2\"\n\
      \\room_score_adj\CAN\n\
      \ \SOH(\ETXR\voomScoreAdj\DC2>\n\
      \\athreads\CAN\v \ETX(\v2$.perfetto.protos.ProcessStats.ThreadR\athreads\DC23\n\
      \\SYNis_peak_rss_resettable\CAN\f \SOH(\bR\DC3isPeakRssResettable\DC2=\n\
      \\ESCchrome_private_footprint_kb\CAN\r \SOH(\rR\CANchromePrivateFootprintKb\DC2<\n\
      \\ESCchrome_peak_resident_set_kb\CAN\SO \SOH(\rR\ETBchromePeakResidentSetKb\DC26\n\
      \\ETXfds\CAN\SI \ETX(\v2$.perfetto.protos.ProcessStats.FDInfoR\ETXfds\DC2\FS\n\
      \\n\
      \smr_rss_kb\CAN\DLE \SOH(\EOTR\bsmrRssKb\DC2\FS\n\
      \\n\
      \smr_pss_kb\CAN\DC1 \SOH(\EOTR\bsmrPssKb\DC2%\n\
      \\SIsmr_pss_anon_kb\CAN\DC2 \SOH(\EOTR\fsmrPssAnonKb\DC2%\n\
      \\SIsmr_pss_file_kb\CAN\DC3 \SOH(\EOTR\fsmrPssFileKb\DC2'\n\
      \\DLEsmr_pss_shmem_kb\CAN\DC4 \SOH(\EOTR\rsmrPssShmemKb"
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
              Data.ProtoLens.FieldDescriptor ProcessStats'Process
        vmSizeKb__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vm_size_kb"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'vmSizeKb")) ::
              Data.ProtoLens.FieldDescriptor ProcessStats'Process
        vmRssKb__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vm_rss_kb"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'vmRssKb")) ::
              Data.ProtoLens.FieldDescriptor ProcessStats'Process
        rssAnonKb__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rss_anon_kb"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rssAnonKb")) ::
              Data.ProtoLens.FieldDescriptor ProcessStats'Process
        rssFileKb__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rss_file_kb"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rssFileKb")) ::
              Data.ProtoLens.FieldDescriptor ProcessStats'Process
        rssShmemKb__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rss_shmem_kb"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rssShmemKb")) ::
              Data.ProtoLens.FieldDescriptor ProcessStats'Process
        vmSwapKb__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vm_swap_kb"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'vmSwapKb")) ::
              Data.ProtoLens.FieldDescriptor ProcessStats'Process
        vmLockedKb__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vm_locked_kb"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'vmLockedKb")) ::
              Data.ProtoLens.FieldDescriptor ProcessStats'Process
        vmHwmKb__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vm_hwm_kb"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'vmHwmKb")) ::
              Data.ProtoLens.FieldDescriptor ProcessStats'Process
        oomScoreAdj__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "oom_score_adj"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'oomScoreAdj")) ::
              Data.ProtoLens.FieldDescriptor ProcessStats'Process
        threads__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "threads"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ProcessStats'Thread)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"threads")) ::
              Data.ProtoLens.FieldDescriptor ProcessStats'Process
        isPeakRssResettable__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "is_peak_rss_resettable"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'isPeakRssResettable")) ::
              Data.ProtoLens.FieldDescriptor ProcessStats'Process
        chromePrivateFootprintKb__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "chrome_private_footprint_kb"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'chromePrivateFootprintKb")) ::
              Data.ProtoLens.FieldDescriptor ProcessStats'Process
        chromePeakResidentSetKb__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "chrome_peak_resident_set_kb"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'chromePeakResidentSetKb")) ::
              Data.ProtoLens.FieldDescriptor ProcessStats'Process
        fds__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fds"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ProcessStats'FDInfo)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"fds")) ::
              Data.ProtoLens.FieldDescriptor ProcessStats'Process
        smrRssKb__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "smr_rss_kb"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'smrRssKb")) ::
              Data.ProtoLens.FieldDescriptor ProcessStats'Process
        smrPssKb__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "smr_pss_kb"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'smrPssKb")) ::
              Data.ProtoLens.FieldDescriptor ProcessStats'Process
        smrPssAnonKb__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "smr_pss_anon_kb"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'smrPssAnonKb")) ::
              Data.ProtoLens.FieldDescriptor ProcessStats'Process
        smrPssFileKb__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "smr_pss_file_kb"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'smrPssFileKb")) ::
              Data.ProtoLens.FieldDescriptor ProcessStats'Process
        smrPssShmemKb__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "smr_pss_shmem_kb"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'smrPssShmemKb")) ::
              Data.ProtoLens.FieldDescriptor ProcessStats'Process
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, pid__field_descriptor),
           (Data.ProtoLens.Tag 2, vmSizeKb__field_descriptor),
           (Data.ProtoLens.Tag 3, vmRssKb__field_descriptor),
           (Data.ProtoLens.Tag 4, rssAnonKb__field_descriptor),
           (Data.ProtoLens.Tag 5, rssFileKb__field_descriptor),
           (Data.ProtoLens.Tag 6, rssShmemKb__field_descriptor),
           (Data.ProtoLens.Tag 7, vmSwapKb__field_descriptor),
           (Data.ProtoLens.Tag 8, vmLockedKb__field_descriptor),
           (Data.ProtoLens.Tag 9, vmHwmKb__field_descriptor),
           (Data.ProtoLens.Tag 10, oomScoreAdj__field_descriptor),
           (Data.ProtoLens.Tag 11, threads__field_descriptor),
           (Data.ProtoLens.Tag 12, isPeakRssResettable__field_descriptor),
           (Data.ProtoLens.Tag 13, 
            chromePrivateFootprintKb__field_descriptor),
           (Data.ProtoLens.Tag 14, chromePeakResidentSetKb__field_descriptor),
           (Data.ProtoLens.Tag 15, fds__field_descriptor),
           (Data.ProtoLens.Tag 16, smrRssKb__field_descriptor),
           (Data.ProtoLens.Tag 17, smrPssKb__field_descriptor),
           (Data.ProtoLens.Tag 18, smrPssAnonKb__field_descriptor),
           (Data.ProtoLens.Tag 19, smrPssFileKb__field_descriptor),
           (Data.ProtoLens.Tag 20, smrPssShmemKb__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ProcessStats'Process'_unknownFields
        (\ x__ y__ -> x__ {_ProcessStats'Process'_unknownFields = y__})
  defMessage
    = ProcessStats'Process'_constructor
        {_ProcessStats'Process'pid = Prelude.Nothing,
         _ProcessStats'Process'vmSizeKb = Prelude.Nothing,
         _ProcessStats'Process'vmRssKb = Prelude.Nothing,
         _ProcessStats'Process'rssAnonKb = Prelude.Nothing,
         _ProcessStats'Process'rssFileKb = Prelude.Nothing,
         _ProcessStats'Process'rssShmemKb = Prelude.Nothing,
         _ProcessStats'Process'vmSwapKb = Prelude.Nothing,
         _ProcessStats'Process'vmLockedKb = Prelude.Nothing,
         _ProcessStats'Process'vmHwmKb = Prelude.Nothing,
         _ProcessStats'Process'oomScoreAdj = Prelude.Nothing,
         _ProcessStats'Process'threads = Data.Vector.Generic.empty,
         _ProcessStats'Process'isPeakRssResettable = Prelude.Nothing,
         _ProcessStats'Process'chromePrivateFootprintKb = Prelude.Nothing,
         _ProcessStats'Process'chromePeakResidentSetKb = Prelude.Nothing,
         _ProcessStats'Process'fds = Data.Vector.Generic.empty,
         _ProcessStats'Process'smrRssKb = Prelude.Nothing,
         _ProcessStats'Process'smrPssKb = Prelude.Nothing,
         _ProcessStats'Process'smrPssAnonKb = Prelude.Nothing,
         _ProcessStats'Process'smrPssFileKb = Prelude.Nothing,
         _ProcessStats'Process'smrPssShmemKb = Prelude.Nothing,
         _ProcessStats'Process'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ProcessStats'Process
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ProcessStats'FDInfo
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ProcessStats'Thread
                -> Data.ProtoLens.Encoding.Bytes.Parser ProcessStats'Process
        loop x mutable'fds mutable'threads
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'fds <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'fds)
                      frozen'threads <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'threads)
                      (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'fds") frozen'fds
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'threads") frozen'threads x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "pid"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pid") y x)
                                  mutable'fds mutable'threads
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "vm_size_kb"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"vmSizeKb") y x)
                                  mutable'fds mutable'threads
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "vm_rss_kb"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"vmRssKb") y x)
                                  mutable'fds mutable'threads
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "rss_anon_kb"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"rssAnonKb") y x)
                                  mutable'fds mutable'threads
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "rss_file_kb"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"rssFileKb") y x)
                                  mutable'fds mutable'threads
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "rss_shmem_kb"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"rssShmemKb") y x)
                                  mutable'fds mutable'threads
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "vm_swap_kb"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"vmSwapKb") y x)
                                  mutable'fds mutable'threads
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "vm_locked_kb"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"vmLockedKb") y x)
                                  mutable'fds mutable'threads
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "vm_hwm_kb"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"vmHwmKb") y x)
                                  mutable'fds mutable'threads
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "oom_score_adj"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"oomScoreAdj") y x)
                                  mutable'fds mutable'threads
                        90
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "threads"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'threads y)
                                loop x mutable'fds v
                        96
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "is_peak_rss_resettable"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"isPeakRssResettable") y x)
                                  mutable'fds mutable'threads
                        104
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "chrome_private_footprint_kb"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"chromePrivateFootprintKb") y x)
                                  mutable'fds mutable'threads
                        112
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "chrome_peak_resident_set_kb"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"chromePeakResidentSetKb") y x)
                                  mutable'fds mutable'threads
                        122
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "fds"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'fds y)
                                loop x v mutable'threads
                        128
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "smr_rss_kb"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"smrRssKb") y x)
                                  mutable'fds mutable'threads
                        136
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "smr_pss_kb"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"smrPssKb") y x)
                                  mutable'fds mutable'threads
                        144
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "smr_pss_anon_kb"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"smrPssAnonKb") y x)
                                  mutable'fds mutable'threads
                        152
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "smr_pss_file_kb"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"smrPssFileKb") y x)
                                  mutable'fds mutable'threads
                        160
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "smr_pss_shmem_kb"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"smrPssShmemKb") y x)
                                  mutable'fds mutable'threads
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'fds mutable'threads
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'fds <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                               Data.ProtoLens.Encoding.Growing.new
              mutable'threads <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'fds mutable'threads)
          "Process"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'vmSizeKb") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'vmRssKb") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'rssAnonKb") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'rssFileKb") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'rssShmemKb") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'vmSwapKb") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'vmLockedKb") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"maybe'vmHwmKb") _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field @"maybe'oomScoreAdj") _x
                                         of
                                           Prelude.Nothing -> Data.Monoid.mempty
                                           (Prelude.Just _v)
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 80)
                                                  ((Prelude..)
                                                     Data.ProtoLens.Encoding.Bytes.putVarInt
                                                     Prelude.fromIntegral _v))
                                        ((Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                              (\ _v
                                                 -> (Data.Monoid.<>)
                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                                                      ((Prelude..)
                                                         (\ bs
                                                            -> (Data.Monoid.<>)
                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    (Prelude.fromIntegral
                                                                       (Data.ByteString.length bs)))
                                                                 (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                    bs))
                                                         Data.ProtoLens.encodeMessage _v))
                                              (Lens.Family2.view
                                                 (Data.ProtoLens.Field.field @"vec'threads") _x))
                                           ((Data.Monoid.<>)
                                              (case
                                                   Lens.Family2.view
                                                     (Data.ProtoLens.Field.field
                                                        @"maybe'isPeakRssResettable")
                                                     _x
                                               of
                                                 Prelude.Nothing -> Data.Monoid.mempty
                                                 (Prelude.Just _v)
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 96)
                                                        ((Prelude..)
                                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           (\ b -> if b then 1 else 0) _v))
                                              ((Data.Monoid.<>)
                                                 (case
                                                      Lens.Family2.view
                                                        (Data.ProtoLens.Field.field
                                                           @"maybe'chromePrivateFootprintKb")
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
                                                              @"maybe'chromePeakResidentSetKb")
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
                                                       (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                          (\ _v
                                                             -> (Data.Monoid.<>)
                                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                     122)
                                                                  ((Prelude..)
                                                                     (\ bs
                                                                        -> (Data.Monoid.<>)
                                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                (Prelude.fromIntegral
                                                                                   (Data.ByteString.length
                                                                                      bs)))
                                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                bs))
                                                                     Data.ProtoLens.encodeMessage
                                                                     _v))
                                                          (Lens.Family2.view
                                                             (Data.ProtoLens.Field.field @"vec'fds")
                                                             _x))
                                                       ((Data.Monoid.<>)
                                                          (case
                                                               Lens.Family2.view
                                                                 (Data.ProtoLens.Field.field
                                                                    @"maybe'smrRssKb")
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
                                                                       @"maybe'smrPssKb")
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
                                                                          @"maybe'smrPssAnonKb")
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
                                                                             @"maybe'smrPssFileKb")
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
                                                                                @"maybe'smrPssShmemKb")
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
                                                                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                                         (Lens.Family2.view
                                                                            Data.ProtoLens.unknownFields
                                                                            _x)))))))))))))))))))))
instance Control.DeepSeq.NFData ProcessStats'Process where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ProcessStats'Process'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ProcessStats'Process'pid x__)
                (Control.DeepSeq.deepseq
                   (_ProcessStats'Process'vmSizeKb x__)
                   (Control.DeepSeq.deepseq
                      (_ProcessStats'Process'vmRssKb x__)
                      (Control.DeepSeq.deepseq
                         (_ProcessStats'Process'rssAnonKb x__)
                         (Control.DeepSeq.deepseq
                            (_ProcessStats'Process'rssFileKb x__)
                            (Control.DeepSeq.deepseq
                               (_ProcessStats'Process'rssShmemKb x__)
                               (Control.DeepSeq.deepseq
                                  (_ProcessStats'Process'vmSwapKb x__)
                                  (Control.DeepSeq.deepseq
                                     (_ProcessStats'Process'vmLockedKb x__)
                                     (Control.DeepSeq.deepseq
                                        (_ProcessStats'Process'vmHwmKb x__)
                                        (Control.DeepSeq.deepseq
                                           (_ProcessStats'Process'oomScoreAdj x__)
                                           (Control.DeepSeq.deepseq
                                              (_ProcessStats'Process'threads x__)
                                              (Control.DeepSeq.deepseq
                                                 (_ProcessStats'Process'isPeakRssResettable x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_ProcessStats'Process'chromePrivateFootprintKb
                                                       x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_ProcessStats'Process'chromePeakResidentSetKb
                                                          x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_ProcessStats'Process'fds x__)
                                                          (Control.DeepSeq.deepseq
                                                             (_ProcessStats'Process'smrRssKb x__)
                                                             (Control.DeepSeq.deepseq
                                                                (_ProcessStats'Process'smrPssKb x__)
                                                                (Control.DeepSeq.deepseq
                                                                   (_ProcessStats'Process'smrPssAnonKb
                                                                      x__)
                                                                   (Control.DeepSeq.deepseq
                                                                      (_ProcessStats'Process'smrPssFileKb
                                                                         x__)
                                                                      (Control.DeepSeq.deepseq
                                                                         (_ProcessStats'Process'smrPssShmemKb
                                                                            x__)
                                                                         ()))))))))))))))))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.tid' @:: Lens' ProcessStats'Thread Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields.maybe'tid' @:: Lens' ProcessStats'Thread (Prelude.Maybe Data.Int.Int32)@ -}
data ProcessStats'Thread
  = ProcessStats'Thread'_constructor {_ProcessStats'Thread'tid :: !(Prelude.Maybe Data.Int.Int32),
                                      _ProcessStats'Thread'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ProcessStats'Thread where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ProcessStats'Thread "tid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'Thread'tid
           (\ x__ y__ -> x__ {_ProcessStats'Thread'tid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProcessStats'Thread "maybe'tid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessStats'Thread'tid
           (\ x__ y__ -> x__ {_ProcessStats'Thread'tid = y__}))
        Prelude.id
instance Data.ProtoLens.Message ProcessStats'Thread where
  messageName _
    = Data.Text.pack "perfetto.protos.ProcessStats.Thread"
  packedMessageDescriptor _
    = "\n\
      \\ACKThread\DC2\DLE\n\
      \\ETXtid\CAN\SOH \SOH(\ENQR\ETXtidJ\EOT\b\STX\DLE\ETXJ\EOT\b\ETX\DLE\EOTJ\EOT\b\EOT\DLE\ENQ"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        tid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tid")) ::
              Data.ProtoLens.FieldDescriptor ProcessStats'Thread
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, tid__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ProcessStats'Thread'_unknownFields
        (\ x__ y__ -> x__ {_ProcessStats'Thread'_unknownFields = y__})
  defMessage
    = ProcessStats'Thread'_constructor
        {_ProcessStats'Thread'tid = Prelude.Nothing,
         _ProcessStats'Thread'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ProcessStats'Thread
          -> Data.ProtoLens.Encoding.Bytes.Parser ProcessStats'Thread
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
                                       "tid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"tid") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Thread"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'tid") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ProcessStats'Thread where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ProcessStats'Thread'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ProcessStats'Thread'tid x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \,protos/perfetto/trace/ps/process_stats.proto\DC2\SIperfetto.protos\"\128\b\n\
    \\fProcessStats\DC2C\n\
    \\tprocesses\CAN\SOH \ETX(\v2%.perfetto.protos.ProcessStats.ProcessR\tprocesses\DC28\n\
    \\CANcollection_end_timestamp\CAN\STX \SOH(\EOTR\SYNcollectionEndTimestamp\SUB,\n\
    \\ACKThread\DC2\DLE\n\
    \\ETXtid\CAN\SOH \SOH(\ENQR\ETXtidJ\EOT\b\STX\DLE\ETXJ\EOT\b\ETX\DLE\EOTJ\EOT\b\EOT\DLE\ENQ\SUB,\n\
    \\ACKFDInfo\DC2\SO\n\
    \\STXfd\CAN\SOH \SOH(\EOTR\STXfd\DC2\DC2\n\
    \\EOTpath\CAN\STX \SOH(\tR\EOTpath\SUB\148\ACK\n\
    \\aProcess\DC2\DLE\n\
    \\ETXpid\CAN\SOH \SOH(\ENQR\ETXpid\DC2\FS\n\
    \\n\
    \vm_size_kb\CAN\STX \SOH(\EOTR\bvmSizeKb\DC2\SUB\n\
    \\tvm_rss_kb\CAN\ETX \SOH(\EOTR\avmRssKb\DC2\RS\n\
    \\vrss_anon_kb\CAN\EOT \SOH(\EOTR\trssAnonKb\DC2\RS\n\
    \\vrss_file_kb\CAN\ENQ \SOH(\EOTR\trssFileKb\DC2 \n\
    \\frss_shmem_kb\CAN\ACK \SOH(\EOTR\n\
    \rssShmemKb\DC2\FS\n\
    \\n\
    \vm_swap_kb\CAN\a \SOH(\EOTR\bvmSwapKb\DC2 \n\
    \\fvm_locked_kb\CAN\b \SOH(\EOTR\n\
    \vmLockedKb\DC2\SUB\n\
    \\tvm_hwm_kb\CAN\t \SOH(\EOTR\avmHwmKb\DC2\"\n\
    \\room_score_adj\CAN\n\
    \ \SOH(\ETXR\voomScoreAdj\DC2>\n\
    \\athreads\CAN\v \ETX(\v2$.perfetto.protos.ProcessStats.ThreadR\athreads\DC23\n\
    \\SYNis_peak_rss_resettable\CAN\f \SOH(\bR\DC3isPeakRssResettable\DC2=\n\
    \\ESCchrome_private_footprint_kb\CAN\r \SOH(\rR\CANchromePrivateFootprintKb\DC2<\n\
    \\ESCchrome_peak_resident_set_kb\CAN\SO \SOH(\rR\ETBchromePeakResidentSetKb\DC26\n\
    \\ETXfds\CAN\SI \ETX(\v2$.perfetto.protos.ProcessStats.FDInfoR\ETXfds\DC2\FS\n\
    \\n\
    \smr_rss_kb\CAN\DLE \SOH(\EOTR\bsmrRssKb\DC2\FS\n\
    \\n\
    \smr_pss_kb\CAN\DC1 \SOH(\EOTR\bsmrPssKb\DC2%\n\
    \\SIsmr_pss_anon_kb\CAN\DC2 \SOH(\EOTR\fsmrPssAnonKb\DC2%\n\
    \\SIsmr_pss_file_kb\CAN\DC3 \SOH(\EOTR\fsmrPssFileKb\DC2'\n\
    \\DLEsmr_pss_shmem_kb\CAN\DC4 \SOH(\EOTR\rsmrPssShmemKbJ\183!\n\
    \\ACK\DC2\EOT\DLE\NUL\\\SOH\n\
    \\215\EOT\n\
    \\SOH\f\DC2\ETX\DLE\NUL\DC22\204\EOT\n\
    \ Copyright (C) 2018 The Android Open Source Project\n\
    \\n\
    \ Licensed under the Apache License, Version 2.0 (the \"License\");\n\
    \ you may not use this file except in compliance with the License.\n\
    \ You may obtain a copy of the License at\n\
    \\n\
    \      http://www.apache.org/licenses/LICENSE-2.0\n\
    \\n\
    \ Unless required by applicable law or agreed to in writing, software\n\
    \ distributed under the License is distributed on an \"AS IS\" BASIS,\n\
    \ WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n\
    \ See the License for the specific language governing permissions and\n\
    \ limitations under the License.\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\DC1\NUL\CAN\n\
    \\179\ETX\n\
    \\STX\EOT\NUL\DC2\EOT\EM\NUL\\\SOH\SUB\166\ETX Per-process periodically sampled stats. These samples are wrapped in a\n\
    \ dedicated message (as opposite to be fields in process_tree.proto) because\n\
    \ they are dumped at a different rate than cmdline and thread list.\n\
    \ Note: not all of these stats will be present in every ProcessStats message\n\
    \ and sometimes processes may be missing . This is because counters are\n\
    \ cached to reduce emission of counters which do not change.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\EM\b\DC4\n\
    \\151\SOH\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT\GS\STX(\ETX\SUB\136\SOH Per-thread periodically sampled stats.\n\
    \ Note: not all of these stats will be present in every message. See the note\n\
    \ for ProcessStats.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX\GS\n\
    \\DLE\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX\RS\EOT\ESC\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\EOT\DC2\ETX\RS\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ENQ\DC2\ETX\RS\r\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX\RS\DC3\SYN\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX\RS\EM\SUB\n\
    \+\n\
    \\ENQ\EOT\NUL\ETX\NUL\t\DC2\ETX!\EOT\SI\SUB\GS DEPRECATED cpu_freq_indices\n\
    \\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\t\NUL\DC2\ETX!\r\SO\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\t\NUL\SOH\DC2\ETX!\r\SO\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\t\NUL\STX\DC2\ETX!\r\SO\n\
    \)\n\
    \\ENQ\EOT\NUL\ETX\NUL\t\DC2\ETX$\EOT\SI\SUB\ESC DEPRECATED cpu_freq_ticks\n\
    \\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\t\SOH\DC2\ETX$\r\SO\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\t\SOH\SOH\DC2\ETX$\r\SO\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\t\SOH\STX\DC2\ETX$\r\SO\n\
    \(\n\
    \\ENQ\EOT\NUL\ETX\NUL\t\DC2\ETX'\EOT\SI\SUB\SUB DEPRECATED cpu_freq_full\n\
    \\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\t\STX\DC2\ETX'\r\SO\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\t\STX\SOH\DC2\ETX'\r\SO\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\t\STX\STX\DC2\ETX'\r\SO\n\
    \\f\n\
    \\EOT\EOT\NUL\ETX\SOH\DC2\EOT*\STX-\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\SOH\SOH\DC2\ETX*\n\
    \\DLE\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\NUL\DC2\ETX+\EOT\ESC\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\EOT\DC2\ETX+\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ENQ\DC2\ETX+\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\SOH\DC2\ETX+\DC4\SYN\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ETX\DC2\ETX+\EM\SUB\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\SOH\DC2\ETX,\EOT\GS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\EOT\DC2\ETX,\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ENQ\DC2\ETX,\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\SOH\DC2\ETX,\DC4\CAN\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ETX\DC2\ETX,\ESC\FS\n\
    \\f\n\
    \\EOT\EOT\NUL\ETX\STX\DC2\EOT/\STXU\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\STX\SOH\DC2\ETX/\n\
    \\DC1\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\STX\STX\NUL\DC2\ETX0\EOT\ESC\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\EOT\DC2\ETX0\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\ENQ\DC2\ETX0\r\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\SOH\DC2\ETX0\DC3\SYN\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\ETX\DC2\ETX0\EM\SUB\n\
    \Z\n\
    \\ACK\EOT\NUL\ETX\STX\STX\SOH\DC2\ETX3\EOT#\SUBK See /proc/[pid]/status in `man 5 proc` for a description of these fields.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\EOT\DC2\ETX3\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\ENQ\DC2\ETX3\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\SOH\DC2\ETX3\DC4\RS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\ETX\DC2\ETX3!\"\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\STX\STX\STX\DC2\ETX4\EOT\"\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\EOT\DC2\ETX4\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\ENQ\DC2\ETX4\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\SOH\DC2\ETX4\DC4\GS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\ETX\DC2\ETX4 !\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\STX\STX\ETX\DC2\ETX5\EOT$\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\ETX\EOT\DC2\ETX5\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\ETX\ENQ\DC2\ETX5\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\ETX\SOH\DC2\ETX5\DC4\US\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\ETX\ETX\DC2\ETX5\"#\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\STX\STX\EOT\DC2\ETX6\EOT$\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\EOT\EOT\DC2\ETX6\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\EOT\ENQ\DC2\ETX6\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\EOT\SOH\DC2\ETX6\DC4\US\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\EOT\ETX\DC2\ETX6\"#\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\STX\STX\ENQ\DC2\ETX7\EOT%\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\ENQ\EOT\DC2\ETX7\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\ENQ\ENQ\DC2\ETX7\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\ENQ\SOH\DC2\ETX7\DC4 \n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\ENQ\ETX\DC2\ETX7#$\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\STX\STX\ACK\DC2\ETX8\EOT#\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\ACK\EOT\DC2\ETX8\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\ACK\ENQ\DC2\ETX8\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\ACK\SOH\DC2\ETX8\DC4\RS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\ACK\ETX\DC2\ETX8!\"\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\STX\STX\a\DC2\ETX9\EOT%\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\a\EOT\DC2\ETX9\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\a\ENQ\DC2\ETX9\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\a\SOH\DC2\ETX9\DC4 \n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\a\ETX\DC2\ETX9#$\n\
    \h\n\
    \\ACK\EOT\NUL\ETX\STX\STX\b\DC2\ETX:\EOT\"\"Y When adding a new field remember to update kProcMemCounterSize in\n\
    \ the trace processor.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\b\EOT\DC2\ETX:\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\b\ENQ\DC2\ETX:\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\b\SOH\DC2\ETX:\DC4\GS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\b\ETX\DC2\ETX: !\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\STX\STX\t\DC2\ETX>\EOT&\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\t\EOT\DC2\ETX>\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\t\ENQ\DC2\ETX>\r\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\t\SOH\DC2\ETX>\DC3 \n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\t\ETX\DC2\ETX>#%\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\STX\STX\n\
    \\DC2\ETX@\EOT!\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\n\
    \\EOT\DC2\ETX@\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\n\
    \\ACK\DC2\ETX@\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\n\
    \\SOH\DC2\ETX@\DC4\ESC\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\n\
    \\ETX\DC2\ETX@\RS \n\
    \\201\SOH\n\
    \\ACK\EOT\NUL\ETX\STX\STX\v\DC2\ETXE\EOT.\SUB\185\SOH The peak resident set size is resettable in newer Posix kernels.\n\
    \ This field specifies if reset is supported and if the writer had reset\n\
    \ the peaks after each process stats recording.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\v\EOT\DC2\ETXE\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\v\ENQ\DC2\ETXE\r\DC1\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\v\SOH\DC2\ETXE\DC2(\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\v\ETX\DC2\ETXE+-\n\
    \\215\SOH\n\
    \\ACK\EOT\NUL\ETX\STX\STX\f\DC2\ETXJ\EOT5\SUB\199\SOH Private, shared and swap footprint of the process as measured by\n\
    \ Chrome. To know more about these metrics refer to:\n\
    \ https://docs.google.com/document/d/1_WmgE1F5WUrhwkPqJis3dWyOiUmQKvpXp5cd4w86TvA\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\f\EOT\DC2\ETXJ\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\f\ENQ\DC2\ETXJ\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\f\SOH\DC2\ETXJ\DC4/\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\f\ETX\DC2\ETXJ24\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\STX\STX\r\DC2\ETXK\EOT5\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\r\EOT\DC2\ETXK\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\r\ENQ\DC2\ETXK\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\r\SOH\DC2\ETXK\DC4/\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\r\ETX\DC2\ETXK24\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\STX\STX\SO\DC2\ETXM\EOT\GS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\SO\EOT\DC2\ETXM\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\SO\ACK\DC2\ETXM\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\SO\SOH\DC2\ETXM\DC4\ETB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\SO\ETX\DC2\ETXM\SUB\FS\n\
    \F\n\
    \\ACK\EOT\NUL\ETX\STX\STX\SI\DC2\ETXP\EOT$\SUB7 These fields are set only when scan_smaps_rollup=true\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\SI\EOT\DC2\ETXP\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\SI\ENQ\DC2\ETXP\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\SI\SOH\DC2\ETXP\DC4\RS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\SI\ETX\DC2\ETXP!#\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\STX\STX\DLE\DC2\ETXQ\EOT$\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\DLE\EOT\DC2\ETXQ\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\DLE\ENQ\DC2\ETXQ\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\DLE\SOH\DC2\ETXQ\DC4\RS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\DLE\ETX\DC2\ETXQ!#\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\STX\STX\DC1\DC2\ETXR\EOT)\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\DC1\EOT\DC2\ETXR\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\DC1\ENQ\DC2\ETXR\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\DC1\SOH\DC2\ETXR\DC4#\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\DC1\ETX\DC2\ETXR&(\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\STX\STX\DC2\DC2\ETXS\EOT)\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\DC2\EOT\DC2\ETXS\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\DC2\ENQ\DC2\ETXS\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\DC2\SOH\DC2\ETXS\DC4#\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\DC2\ETX\DC2\ETXS&(\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\STX\STX\DC3\DC2\ETXT\EOT*\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\DC3\EOT\DC2\ETXT\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\DC3\ENQ\DC2\ETXT\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\DC3\SOH\DC2\ETXT\DC4$\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\DC3\ETX\DC2\ETXT')\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETXV\STX!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETXV\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETXV\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETXV\DC3\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETXV\US \n\
    \\152\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX[\STX/\SUB\138\SOH The time at which we finish collecting this batch of samples;\n\
    \ the top-level packet timestamp is the time at which\n\
    \ we begin collection.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX[\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX[\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX[\DC2*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX[-."