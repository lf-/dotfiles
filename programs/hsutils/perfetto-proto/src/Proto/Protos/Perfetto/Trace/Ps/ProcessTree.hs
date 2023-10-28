{- This file was auto-generated from protos/perfetto/trace/ps/process_tree.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ps.ProcessTree (
        ProcessTree(), ProcessTree'Process(), ProcessTree'Thread()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessTree_Fields.processes' @:: Lens' ProcessTree [ProcessTree'Process]@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessTree_Fields.vec'processes' @:: Lens' ProcessTree (Data.Vector.Vector ProcessTree'Process)@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessTree_Fields.threads' @:: Lens' ProcessTree [ProcessTree'Thread]@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessTree_Fields.vec'threads' @:: Lens' ProcessTree (Data.Vector.Vector ProcessTree'Thread)@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessTree_Fields.collectionEndTimestamp' @:: Lens' ProcessTree Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessTree_Fields.maybe'collectionEndTimestamp' @:: Lens' ProcessTree (Prelude.Maybe Data.Word.Word64)@ -}
data ProcessTree
  = ProcessTree'_constructor {_ProcessTree'processes :: !(Data.Vector.Vector ProcessTree'Process),
                              _ProcessTree'threads :: !(Data.Vector.Vector ProcessTree'Thread),
                              _ProcessTree'collectionEndTimestamp :: !(Prelude.Maybe Data.Word.Word64),
                              _ProcessTree'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ProcessTree where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ProcessTree "processes" [ProcessTree'Process] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessTree'processes
           (\ x__ y__ -> x__ {_ProcessTree'processes = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ProcessTree "vec'processes" (Data.Vector.Vector ProcessTree'Process) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessTree'processes
           (\ x__ y__ -> x__ {_ProcessTree'processes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessTree "threads" [ProcessTree'Thread] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessTree'threads
           (\ x__ y__ -> x__ {_ProcessTree'threads = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ProcessTree "vec'threads" (Data.Vector.Vector ProcessTree'Thread) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessTree'threads
           (\ x__ y__ -> x__ {_ProcessTree'threads = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessTree "collectionEndTimestamp" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessTree'collectionEndTimestamp
           (\ x__ y__ -> x__ {_ProcessTree'collectionEndTimestamp = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProcessTree "maybe'collectionEndTimestamp" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessTree'collectionEndTimestamp
           (\ x__ y__ -> x__ {_ProcessTree'collectionEndTimestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Message ProcessTree where
  messageName _ = Data.Text.pack "perfetto.protos.ProcessTree"
  packedMessageDescriptor _
    = "\n\
      \\vProcessTree\DC2B\n\
      \\tprocesses\CAN\SOH \ETX(\v2$.perfetto.protos.ProcessTree.ProcessR\tprocesses\DC2=\n\
      \\athreads\CAN\STX \ETX(\v2#.perfetto.protos.ProcessTree.ThreadR\athreads\DC28\n\
      \\CANcollection_end_timestamp\CAN\ETX \SOH(\EOTR\SYNcollectionEndTimestamp\SUBX\n\
      \\ACKThread\DC2\DLE\n\
      \\ETXtid\CAN\SOH \SOH(\ENQR\ETXtid\DC2\DC2\n\
      \\EOTtgid\CAN\ETX \SOH(\ENQR\EOTtgid\DC2\DC2\n\
      \\EOTname\CAN\STX \SOH(\tR\EOTname\DC2\DC4\n\
      \\ENQnstid\CAN\EOT \ETX(\ENQR\ENQnstid\SUB\201\SOH\n\
      \\aProcess\DC2\DLE\n\
      \\ETXpid\CAN\SOH \SOH(\ENQR\ETXpid\DC2\DC2\n\
      \\EOTppid\CAN\STX \SOH(\ENQR\EOTppid\DC2\CAN\n\
      \\acmdline\CAN\ETX \ETX(\tR\acmdline\DC2V\n\
      \\DC2threads_deprecated\CAN\EOT \ETX(\v2#.perfetto.protos.ProcessTree.ThreadR\DC1threadsDeprecatedB\STX\CAN\SOH\DC2\DLE\n\
      \\ETXuid\CAN\ENQ \SOH(\ENQR\ETXuid\DC2\DC4\n\
      \\ENQnspid\CAN\ACK \ETX(\ENQR\ENQnspid"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        processes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "processes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ProcessTree'Process)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"processes")) ::
              Data.ProtoLens.FieldDescriptor ProcessTree
        threads__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "threads"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ProcessTree'Thread)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"threads")) ::
              Data.ProtoLens.FieldDescriptor ProcessTree
        collectionEndTimestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "collection_end_timestamp"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'collectionEndTimestamp")) ::
              Data.ProtoLens.FieldDescriptor ProcessTree
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, processes__field_descriptor),
           (Data.ProtoLens.Tag 2, threads__field_descriptor),
           (Data.ProtoLens.Tag 3, collectionEndTimestamp__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ProcessTree'_unknownFields
        (\ x__ y__ -> x__ {_ProcessTree'_unknownFields = y__})
  defMessage
    = ProcessTree'_constructor
        {_ProcessTree'processes = Data.Vector.Generic.empty,
         _ProcessTree'threads = Data.Vector.Generic.empty,
         _ProcessTree'collectionEndTimestamp = Prelude.Nothing,
         _ProcessTree'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ProcessTree
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ProcessTree'Process
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ProcessTree'Thread
                -> Data.ProtoLens.Encoding.Bytes.Parser ProcessTree
        loop x mutable'processes mutable'threads
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'processes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'processes)
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
                              (Data.ProtoLens.Field.field @"vec'processes") frozen'processes
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'threads") frozen'threads x)))
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
                                loop x v mutable'threads
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "threads"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'threads y)
                                loop x mutable'processes v
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "collection_end_timestamp"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"collectionEndTimestamp") y x)
                                  mutable'processes mutable'threads
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'processes mutable'threads
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'processes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              mutable'threads <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'processes mutable'threads)
          "ProcessTree"
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
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage _v))
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'threads") _x))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'collectionEndTimestamp") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData ProcessTree where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ProcessTree'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ProcessTree'processes x__)
                (Control.DeepSeq.deepseq
                   (_ProcessTree'threads x__)
                   (Control.DeepSeq.deepseq
                      (_ProcessTree'collectionEndTimestamp x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessTree_Fields.pid' @:: Lens' ProcessTree'Process Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessTree_Fields.maybe'pid' @:: Lens' ProcessTree'Process (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessTree_Fields.ppid' @:: Lens' ProcessTree'Process Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessTree_Fields.maybe'ppid' @:: Lens' ProcessTree'Process (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessTree_Fields.cmdline' @:: Lens' ProcessTree'Process [Data.Text.Text]@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessTree_Fields.vec'cmdline' @:: Lens' ProcessTree'Process (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessTree_Fields.threadsDeprecated' @:: Lens' ProcessTree'Process [ProcessTree'Thread]@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessTree_Fields.vec'threadsDeprecated' @:: Lens' ProcessTree'Process (Data.Vector.Vector ProcessTree'Thread)@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessTree_Fields.uid' @:: Lens' ProcessTree'Process Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessTree_Fields.maybe'uid' @:: Lens' ProcessTree'Process (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessTree_Fields.nspid' @:: Lens' ProcessTree'Process [Data.Int.Int32]@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessTree_Fields.vec'nspid' @:: Lens' ProcessTree'Process (Data.Vector.Unboxed.Vector Data.Int.Int32)@ -}
data ProcessTree'Process
  = ProcessTree'Process'_constructor {_ProcessTree'Process'pid :: !(Prelude.Maybe Data.Int.Int32),
                                      _ProcessTree'Process'ppid :: !(Prelude.Maybe Data.Int.Int32),
                                      _ProcessTree'Process'cmdline :: !(Data.Vector.Vector Data.Text.Text),
                                      _ProcessTree'Process'threadsDeprecated :: !(Data.Vector.Vector ProcessTree'Thread),
                                      _ProcessTree'Process'uid :: !(Prelude.Maybe Data.Int.Int32),
                                      _ProcessTree'Process'nspid :: !(Data.Vector.Unboxed.Vector Data.Int.Int32),
                                      _ProcessTree'Process'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ProcessTree'Process where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ProcessTree'Process "pid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessTree'Process'pid
           (\ x__ y__ -> x__ {_ProcessTree'Process'pid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProcessTree'Process "maybe'pid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessTree'Process'pid
           (\ x__ y__ -> x__ {_ProcessTree'Process'pid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessTree'Process "ppid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessTree'Process'ppid
           (\ x__ y__ -> x__ {_ProcessTree'Process'ppid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProcessTree'Process "maybe'ppid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessTree'Process'ppid
           (\ x__ y__ -> x__ {_ProcessTree'Process'ppid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessTree'Process "cmdline" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessTree'Process'cmdline
           (\ x__ y__ -> x__ {_ProcessTree'Process'cmdline = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ProcessTree'Process "vec'cmdline" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessTree'Process'cmdline
           (\ x__ y__ -> x__ {_ProcessTree'Process'cmdline = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessTree'Process "threadsDeprecated" [ProcessTree'Thread] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessTree'Process'threadsDeprecated
           (\ x__ y__ -> x__ {_ProcessTree'Process'threadsDeprecated = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ProcessTree'Process "vec'threadsDeprecated" (Data.Vector.Vector ProcessTree'Thread) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessTree'Process'threadsDeprecated
           (\ x__ y__ -> x__ {_ProcessTree'Process'threadsDeprecated = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessTree'Process "uid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessTree'Process'uid
           (\ x__ y__ -> x__ {_ProcessTree'Process'uid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProcessTree'Process "maybe'uid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessTree'Process'uid
           (\ x__ y__ -> x__ {_ProcessTree'Process'uid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessTree'Process "nspid" [Data.Int.Int32] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessTree'Process'nspid
           (\ x__ y__ -> x__ {_ProcessTree'Process'nspid = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ProcessTree'Process "vec'nspid" (Data.Vector.Unboxed.Vector Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessTree'Process'nspid
           (\ x__ y__ -> x__ {_ProcessTree'Process'nspid = y__}))
        Prelude.id
instance Data.ProtoLens.Message ProcessTree'Process where
  messageName _
    = Data.Text.pack "perfetto.protos.ProcessTree.Process"
  packedMessageDescriptor _
    = "\n\
      \\aProcess\DC2\DLE\n\
      \\ETXpid\CAN\SOH \SOH(\ENQR\ETXpid\DC2\DC2\n\
      \\EOTppid\CAN\STX \SOH(\ENQR\EOTppid\DC2\CAN\n\
      \\acmdline\CAN\ETX \ETX(\tR\acmdline\DC2V\n\
      \\DC2threads_deprecated\CAN\EOT \ETX(\v2#.perfetto.protos.ProcessTree.ThreadR\DC1threadsDeprecatedB\STX\CAN\SOH\DC2\DLE\n\
      \\ETXuid\CAN\ENQ \SOH(\ENQR\ETXuid\DC2\DC4\n\
      \\ENQnspid\CAN\ACK \ETX(\ENQR\ENQnspid"
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
              Data.ProtoLens.FieldDescriptor ProcessTree'Process
        ppid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ppid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ppid")) ::
              Data.ProtoLens.FieldDescriptor ProcessTree'Process
        cmdline__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cmdline"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"cmdline")) ::
              Data.ProtoLens.FieldDescriptor ProcessTree'Process
        threadsDeprecated__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "threads_deprecated"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ProcessTree'Thread)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"threadsDeprecated")) ::
              Data.ProtoLens.FieldDescriptor ProcessTree'Process
        uid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "uid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'uid")) ::
              Data.ProtoLens.FieldDescriptor ProcessTree'Process
        nspid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nspid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"nspid")) ::
              Data.ProtoLens.FieldDescriptor ProcessTree'Process
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, pid__field_descriptor),
           (Data.ProtoLens.Tag 2, ppid__field_descriptor),
           (Data.ProtoLens.Tag 3, cmdline__field_descriptor),
           (Data.ProtoLens.Tag 4, threadsDeprecated__field_descriptor),
           (Data.ProtoLens.Tag 5, uid__field_descriptor),
           (Data.ProtoLens.Tag 6, nspid__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ProcessTree'Process'_unknownFields
        (\ x__ y__ -> x__ {_ProcessTree'Process'_unknownFields = y__})
  defMessage
    = ProcessTree'Process'_constructor
        {_ProcessTree'Process'pid = Prelude.Nothing,
         _ProcessTree'Process'ppid = Prelude.Nothing,
         _ProcessTree'Process'cmdline = Data.Vector.Generic.empty,
         _ProcessTree'Process'threadsDeprecated = Data.Vector.Generic.empty,
         _ProcessTree'Process'uid = Prelude.Nothing,
         _ProcessTree'Process'nspid = Data.Vector.Generic.empty,
         _ProcessTree'Process'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ProcessTree'Process
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Int.Int32
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ProcessTree'Thread
                   -> Data.ProtoLens.Encoding.Bytes.Parser ProcessTree'Process
        loop x mutable'cmdline mutable'nspid mutable'threadsDeprecated
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'cmdline <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'cmdline)
                      frozen'nspid <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'nspid)
                      frozen'threadsDeprecated <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                    (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                       mutable'threadsDeprecated)
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
                              (Data.ProtoLens.Field.field @"vec'cmdline") frozen'cmdline
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'nspid") frozen'nspid
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'threadsDeprecated")
                                    frozen'threadsDeprecated x))))
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
                                  mutable'cmdline mutable'nspid mutable'threadsDeprecated
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ppid"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"ppid") y x)
                                  mutable'cmdline mutable'nspid mutable'threadsDeprecated
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "cmdline"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'cmdline y)
                                loop x v mutable'nspid mutable'threadsDeprecated
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "threads_deprecated"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'threadsDeprecated y)
                                loop x mutable'cmdline mutable'nspid v
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "uid"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"uid") y x)
                                  mutable'cmdline mutable'nspid mutable'threadsDeprecated
                        48
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "nspid"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'nspid y)
                                loop x mutable'cmdline v mutable'threadsDeprecated
                        50
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Prelude.fromIntegral
                                                                       Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                                    "nspid"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'nspid)
                                loop x mutable'cmdline y mutable'threadsDeprecated
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'cmdline mutable'nspid mutable'threadsDeprecated
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'cmdline <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              mutable'nspid <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              mutable'threadsDeprecated <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'cmdline mutable'nspid
                mutable'threadsDeprecated)
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ppid") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                              ((Prelude..)
                                 (\ bs
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                         (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 Data.Text.Encoding.encodeUtf8 _v))
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'cmdline") _x))
                   ((Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                         (\ _v
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                 ((Prelude..)
                                    (\ bs
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (Prelude.fromIntegral (Data.ByteString.length bs)))
                                            (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                    Data.ProtoLens.encodeMessage _v))
                         (Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vec'threadsDeprecated") _x))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'uid") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   ((Prelude..)
                                      Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                      _v))
                         ((Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                               (\ _v
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                       ((Prelude..)
                                          Data.ProtoLens.Encoding.Bytes.putVarInt
                                          Prelude.fromIntegral _v))
                               (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'nspid") _x))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData ProcessTree'Process where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ProcessTree'Process'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ProcessTree'Process'pid x__)
                (Control.DeepSeq.deepseq
                   (_ProcessTree'Process'ppid x__)
                   (Control.DeepSeq.deepseq
                      (_ProcessTree'Process'cmdline x__)
                      (Control.DeepSeq.deepseq
                         (_ProcessTree'Process'threadsDeprecated x__)
                         (Control.DeepSeq.deepseq
                            (_ProcessTree'Process'uid x__)
                            (Control.DeepSeq.deepseq (_ProcessTree'Process'nspid x__) ()))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessTree_Fields.tid' @:: Lens' ProcessTree'Thread Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessTree_Fields.maybe'tid' @:: Lens' ProcessTree'Thread (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessTree_Fields.tgid' @:: Lens' ProcessTree'Thread Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessTree_Fields.maybe'tgid' @:: Lens' ProcessTree'Thread (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessTree_Fields.name' @:: Lens' ProcessTree'Thread Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessTree_Fields.maybe'name' @:: Lens' ProcessTree'Thread (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessTree_Fields.nstid' @:: Lens' ProcessTree'Thread [Data.Int.Int32]@
         * 'Proto.Protos.Perfetto.Trace.Ps.ProcessTree_Fields.vec'nstid' @:: Lens' ProcessTree'Thread (Data.Vector.Unboxed.Vector Data.Int.Int32)@ -}
data ProcessTree'Thread
  = ProcessTree'Thread'_constructor {_ProcessTree'Thread'tid :: !(Prelude.Maybe Data.Int.Int32),
                                     _ProcessTree'Thread'tgid :: !(Prelude.Maybe Data.Int.Int32),
                                     _ProcessTree'Thread'name :: !(Prelude.Maybe Data.Text.Text),
                                     _ProcessTree'Thread'nstid :: !(Data.Vector.Unboxed.Vector Data.Int.Int32),
                                     _ProcessTree'Thread'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ProcessTree'Thread where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ProcessTree'Thread "tid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessTree'Thread'tid
           (\ x__ y__ -> x__ {_ProcessTree'Thread'tid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProcessTree'Thread "maybe'tid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessTree'Thread'tid
           (\ x__ y__ -> x__ {_ProcessTree'Thread'tid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessTree'Thread "tgid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessTree'Thread'tgid
           (\ x__ y__ -> x__ {_ProcessTree'Thread'tgid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProcessTree'Thread "maybe'tgid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessTree'Thread'tgid
           (\ x__ y__ -> x__ {_ProcessTree'Thread'tgid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessTree'Thread "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessTree'Thread'name
           (\ x__ y__ -> x__ {_ProcessTree'Thread'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProcessTree'Thread "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessTree'Thread'name
           (\ x__ y__ -> x__ {_ProcessTree'Thread'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessTree'Thread "nstid" [Data.Int.Int32] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessTree'Thread'nstid
           (\ x__ y__ -> x__ {_ProcessTree'Thread'nstid = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ProcessTree'Thread "vec'nstid" (Data.Vector.Unboxed.Vector Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessTree'Thread'nstid
           (\ x__ y__ -> x__ {_ProcessTree'Thread'nstid = y__}))
        Prelude.id
instance Data.ProtoLens.Message ProcessTree'Thread where
  messageName _ = Data.Text.pack "perfetto.protos.ProcessTree.Thread"
  packedMessageDescriptor _
    = "\n\
      \\ACKThread\DC2\DLE\n\
      \\ETXtid\CAN\SOH \SOH(\ENQR\ETXtid\DC2\DC2\n\
      \\EOTtgid\CAN\ETX \SOH(\ENQR\EOTtgid\DC2\DC2\n\
      \\EOTname\CAN\STX \SOH(\tR\EOTname\DC2\DC4\n\
      \\ENQnstid\CAN\EOT \ETX(\ENQR\ENQnstid"
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
              Data.ProtoLens.FieldDescriptor ProcessTree'Thread
        tgid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tgid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tgid")) ::
              Data.ProtoLens.FieldDescriptor ProcessTree'Thread
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'name")) ::
              Data.ProtoLens.FieldDescriptor ProcessTree'Thread
        nstid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nstid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"nstid")) ::
              Data.ProtoLens.FieldDescriptor ProcessTree'Thread
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, tid__field_descriptor),
           (Data.ProtoLens.Tag 3, tgid__field_descriptor),
           (Data.ProtoLens.Tag 2, name__field_descriptor),
           (Data.ProtoLens.Tag 4, nstid__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ProcessTree'Thread'_unknownFields
        (\ x__ y__ -> x__ {_ProcessTree'Thread'_unknownFields = y__})
  defMessage
    = ProcessTree'Thread'_constructor
        {_ProcessTree'Thread'tid = Prelude.Nothing,
         _ProcessTree'Thread'tgid = Prelude.Nothing,
         _ProcessTree'Thread'name = Prelude.Nothing,
         _ProcessTree'Thread'nstid = Data.Vector.Generic.empty,
         _ProcessTree'Thread'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ProcessTree'Thread
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Int.Int32
             -> Data.ProtoLens.Encoding.Bytes.Parser ProcessTree'Thread
        loop x mutable'nstid
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'nstid <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'nstid)
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
                              (Data.ProtoLens.Field.field @"vec'nstid") frozen'nstid x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "tid"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"tid") y x)
                                  mutable'nstid
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "tgid"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"tgid") y x)
                                  mutable'nstid
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
                                       "name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                                  mutable'nstid
                        32
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "nstid"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'nstid y)
                                loop x v
                        34
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Prelude.fromIntegral
                                                                       Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                                    "nstid"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'nstid)
                                loop x y
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'nstid
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'nstid <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'nstid)
          "Thread"
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'name") _x
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
                      (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                         (\ _v
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                 ((Prelude..)
                                    Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                    _v))
                         (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'nstid") _x))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData ProcessTree'Thread where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ProcessTree'Thread'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ProcessTree'Thread'tid x__)
                (Control.DeepSeq.deepseq
                   (_ProcessTree'Thread'tgid x__)
                   (Control.DeepSeq.deepseq
                      (_ProcessTree'Thread'name x__)
                      (Control.DeepSeq.deepseq (_ProcessTree'Thread'nstid x__) ()))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \+protos/perfetto/trace/ps/process_tree.proto\DC2\SIperfetto.protos\"\240\ETX\n\
    \\vProcessTree\DC2B\n\
    \\tprocesses\CAN\SOH \ETX(\v2$.perfetto.protos.ProcessTree.ProcessR\tprocesses\DC2=\n\
    \\athreads\CAN\STX \ETX(\v2#.perfetto.protos.ProcessTree.ThreadR\athreads\DC28\n\
    \\CANcollection_end_timestamp\CAN\ETX \SOH(\EOTR\SYNcollectionEndTimestamp\SUBX\n\
    \\ACKThread\DC2\DLE\n\
    \\ETXtid\CAN\SOH \SOH(\ENQR\ETXtid\DC2\DC2\n\
    \\EOTtgid\CAN\ETX \SOH(\ENQR\EOTtgid\DC2\DC2\n\
    \\EOTname\CAN\STX \SOH(\tR\EOTname\DC2\DC4\n\
    \\ENQnstid\CAN\EOT \ETX(\ENQR\ENQnstid\SUB\201\SOH\n\
    \\aProcess\DC2\DLE\n\
    \\ETXpid\CAN\SOH \SOH(\ENQR\ETXpid\DC2\DC2\n\
    \\EOTppid\CAN\STX \SOH(\ENQR\EOTppid\DC2\CAN\n\
    \\acmdline\CAN\ETX \ETX(\tR\acmdline\DC2V\n\
    \\DC2threads_deprecated\CAN\EOT \ETX(\v2#.perfetto.protos.ProcessTree.ThreadR\DC1threadsDeprecatedB\STX\CAN\SOH\DC2\DLE\n\
    \\ETXuid\CAN\ENQ \SOH(\ENQR\ETXuid\DC2\DC4\n\
    \\ENQnspid\CAN\ACK \ETX(\ENQR\ENQnspidJ\224\FS\n\
    \\ACK\DC2\EOT\DLE\NULS\SOH\n\
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
    \\188\STX\n\
    \\STX\EOT\NUL\DC2\EOT\CAN\NULS\SOH\SUB\175\STX Metadata about the processes and threads in the trace.\n\
    \ Note: this proto was designed to be filled in by traced_probes and should\n\
    \ only be populated with accurate information coming from the system. Other\n\
    \ trace writers should prefer to fill ThreadDescriptor and ProcessDescriptor\n\
    \ in TrackDescriptor.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\CAN\b\DC3\n\
    \+\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT\SUB\STX(\ETX\SUB\GS Representation of a thread.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX\SUB\n\
    \\DLE\n\
    \K\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX\FS\EOT\ESC\SUB< The thread ID (as per gettid()) in the root PID namespace.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\EOT\DC2\ETX\FS\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ENQ\DC2\ETX\FS\r\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX\FS\DC3\SYN\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX\FS\EM\SUB\n\
    \Y\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\ETX\US\EOT\FS\SUBJ Thread group id (i.e. the PID of the process, == TID of the main thread)\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\EOT\DC2\ETX\US\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ENQ\DC2\ETX\US\r\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX\US\DC3\ETB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX\US\SUB\ESC\n\
    \(\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\STX\DC2\ETX\"\EOT\GS\SUB\EM The name of the thread.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\EOT\DC2\ETX\"\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ENQ\DC2\ETX\"\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\SOH\DC2\ETX\"\DC4\CAN\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ETX\DC2\ETX\"\ESC\FS\n\
    \\193\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\ETX\DC2\ETX'\EOT\GS\SUB\177\SOH The non-root-level thread IDs if the thread runs in a PID namespace. Read\n\
    \ from the NSpid entry of /proc/<tid>/status, with the first element (root-\n\
    \ level thread ID) omitted.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\EOT\DC2\ETX'\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\ENQ\DC2\ETX'\r\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\SOH\DC2\ETX'\DC3\CAN\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\ETX\DC2\ETX'\ESC\FS\n\
    \,\n\
    \\EOT\EOT\NUL\ETX\SOH\DC2\EOT+\STXC\ETX\SUB\RS Representation of a process.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\SOH\SOH\DC2\ETX+\n\
    \\DC1\n\
    \g\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\NUL\DC2\ETX.\EOT\ESC\SUBX The UNIX process ID, aka thread group ID (as per getpid()) in the root\n\
    \ PID namespace.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\EOT\DC2\ETX.\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ENQ\DC2\ETX.\r\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\SOH\DC2\ETX.\DC3\SYN\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ETX\DC2\ETX.\EM\SUB\n\
    \9\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\SOH\DC2\ETX1\EOT\FS\SUB* The parent process ID, as per getppid().\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\EOT\DC2\ETX1\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ENQ\DC2\ETX1\r\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\SOH\DC2\ETX1\DC3\ETB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ETX\DC2\ETX1\SUB\ESC\n\
    \\177\SOH\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\STX\DC2\ETX6\EOT \SUB\161\SOH The command line for the process, as per /proc/pid/cmdline.\n\
    \ If it is a kernel thread there will only be one cmdline field\n\
    \ and it will contain /proc/pid/comm.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\EOT\DC2\ETX6\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\ENQ\DC2\ETX6\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\SOH\DC2\ETX6\DC4\ESC\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\ETX\DC2\ETX6\RS\US\n\
    \r\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\ETX\DC2\ETX:\EOT?\SUBc No longer used as of Apr 2018, when the dedicated |threads| field was\n\
    \ introduced in ProcessTree.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\ETX\EOT\DC2\ETX:\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\ETX\ACK\DC2\ETX:\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\ETX\SOH\DC2\ETX:\DC4&\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\ETX\ETX\DC2\ETX:)*\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\ETX\b\DC2\ETX:+>\n\
    \\SI\n\
    \\b\EOT\NUL\ETX\SOH\STX\ETX\b\ETX\DC2\ETX:,=\n\
    \B\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\EOT\DC2\ETX=\EOT\ESC\SUB3 The uid for the process, as per /proc/pid/status.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\EOT\EOT\DC2\ETX=\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\EOT\ENQ\DC2\ETX=\r\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\EOT\SOH\DC2\ETX=\DC3\SYN\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\EOT\ETX\DC2\ETX=\EM\SUB\n\
    \\196\SOH\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\ENQ\DC2\ETXB\EOT\GS\SUB\180\SOH The non-root-level process IDs if the process runs in a PID namespace.\n\
    \ Read from the NSpid entry of /proc/<pid>/status, with the first element (\n\
    \ root-level process ID) omitted.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\ENQ\EOT\DC2\ETXB\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\ENQ\ENQ\DC2\ETXB\r\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\ENQ\SOH\DC2\ETXB\DC3\CAN\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\ENQ\ETX\DC2\ETXB\ESC\FS\n\
    \\213\ETX\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETXL\STX!\SUB\199\ETX List of processes and threads in the client. These lists are incremental\n\
    \ and not exhaustive. A process and its threads might show up separately in\n\
    \ different ProcessTree messages. A thread might event not show up at all, if\n\
    \ no sched_switch activity was detected, for instance:\n\
    \ #0 { processes: [{pid: 10, ...}], threads: [{pid: 11, tgid: 10}] }\n\
    \ #1 { threads: [{pid: 12, tgid: 10}] }\n\
    \ #2 { processes: [{pid: 20, ...}], threads: [{pid: 13, tgid: 10}] }\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETXL\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETXL\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETXL\DC3\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETXL\US \n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETXM\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETXM\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETXM\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETXM\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETXM\FS\GS\n\
    \\148\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETXR\STX/\SUB\134\SOH The time at which we finish collecting this process tree;\n\
    \ the top-level packet timestamp is the time at which\n\
    \ we begin collection.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETXR\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETXR\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETXR\DC2*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETXR-."