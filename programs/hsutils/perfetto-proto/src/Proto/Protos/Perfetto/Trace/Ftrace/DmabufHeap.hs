{- This file was auto-generated from protos/perfetto/trace/ftrace/dmabuf_heap.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.DmabufHeap (
        DmaHeapStatFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmabufHeap_Fields.inode' @:: Lens' DmaHeapStatFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmabufHeap_Fields.maybe'inode' @:: Lens' DmaHeapStatFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmabufHeap_Fields.len' @:: Lens' DmaHeapStatFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmabufHeap_Fields.maybe'len' @:: Lens' DmaHeapStatFtraceEvent (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmabufHeap_Fields.totalAllocated' @:: Lens' DmaHeapStatFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.DmabufHeap_Fields.maybe'totalAllocated' @:: Lens' DmaHeapStatFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data DmaHeapStatFtraceEvent
  = DmaHeapStatFtraceEvent'_constructor {_DmaHeapStatFtraceEvent'inode :: !(Prelude.Maybe Data.Word.Word64),
                                         _DmaHeapStatFtraceEvent'len :: !(Prelude.Maybe Data.Int.Int64),
                                         _DmaHeapStatFtraceEvent'totalAllocated :: !(Prelude.Maybe Data.Word.Word64),
                                         _DmaHeapStatFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DmaHeapStatFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DmaHeapStatFtraceEvent "inode" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaHeapStatFtraceEvent'inode
           (\ x__ y__ -> x__ {_DmaHeapStatFtraceEvent'inode = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DmaHeapStatFtraceEvent "maybe'inode" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaHeapStatFtraceEvent'inode
           (\ x__ y__ -> x__ {_DmaHeapStatFtraceEvent'inode = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DmaHeapStatFtraceEvent "len" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaHeapStatFtraceEvent'len
           (\ x__ y__ -> x__ {_DmaHeapStatFtraceEvent'len = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DmaHeapStatFtraceEvent "maybe'len" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaHeapStatFtraceEvent'len
           (\ x__ y__ -> x__ {_DmaHeapStatFtraceEvent'len = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DmaHeapStatFtraceEvent "totalAllocated" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaHeapStatFtraceEvent'totalAllocated
           (\ x__ y__ -> x__ {_DmaHeapStatFtraceEvent'totalAllocated = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField DmaHeapStatFtraceEvent "maybe'totalAllocated" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DmaHeapStatFtraceEvent'totalAllocated
           (\ x__ y__ -> x__ {_DmaHeapStatFtraceEvent'totalAllocated = y__}))
        Prelude.id
instance Data.ProtoLens.Message DmaHeapStatFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.DmaHeapStatFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SYNDmaHeapStatFtraceEvent\DC2\DC4\n\
      \\ENQinode\CAN\SOH \SOH(\EOTR\ENQinode\DC2\DLE\n\
      \\ETXlen\CAN\STX \SOH(\ETXR\ETXlen\DC2'\n\
      \\SItotal_allocated\CAN\ETX \SOH(\EOTR\SOtotalAllocated"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        inode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "inode"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'inode")) ::
              Data.ProtoLens.FieldDescriptor DmaHeapStatFtraceEvent
        len__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "len"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'len")) ::
              Data.ProtoLens.FieldDescriptor DmaHeapStatFtraceEvent
        totalAllocated__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total_allocated"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'totalAllocated")) ::
              Data.ProtoLens.FieldDescriptor DmaHeapStatFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, inode__field_descriptor),
           (Data.ProtoLens.Tag 2, len__field_descriptor),
           (Data.ProtoLens.Tag 3, totalAllocated__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DmaHeapStatFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_DmaHeapStatFtraceEvent'_unknownFields = y__})
  defMessage
    = DmaHeapStatFtraceEvent'_constructor
        {_DmaHeapStatFtraceEvent'inode = Prelude.Nothing,
         _DmaHeapStatFtraceEvent'len = Prelude.Nothing,
         _DmaHeapStatFtraceEvent'totalAllocated = Prelude.Nothing,
         _DmaHeapStatFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DmaHeapStatFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser DmaHeapStatFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "inode"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"inode") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "len"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"len") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "total_allocated"
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
          (do loop Data.ProtoLens.defMessage) "DmaHeapStatFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'inode") _x
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
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'totalAllocated") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData DmaHeapStatFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DmaHeapStatFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DmaHeapStatFtraceEvent'inode x__)
                (Control.DeepSeq.deepseq
                   (_DmaHeapStatFtraceEvent'len x__)
                   (Control.DeepSeq.deepseq
                      (_DmaHeapStatFtraceEvent'totalAllocated x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \.protos/perfetto/trace/ftrace/dmabuf_heap.proto\DC2\SIperfetto.protos\"i\n\
    \\SYNDmaHeapStatFtraceEvent\DC2\DC4\n\
    \\ENQinode\CAN\SOH \SOH(\EOTR\ENQinode\DC2\DLE\n\
    \\ETXlen\CAN\STX \SOH(\ETXR\ETXlen\DC2'\n\
    \\SItotal_allocated\CAN\ETX \SOH(\EOTR\SOtotalAllocatedJ\220\STX\n\
    \\ACK\DC2\EOT\EOT\NUL\v\SOH\n\
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
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b\RS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\b\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\b\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\b\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\b\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\b\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\t\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\t\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\t\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\t\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\t\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\n\
    \\STX&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\n\
    \\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\n\
    \\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\n\
    \\DC2!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\n\
    \$%"