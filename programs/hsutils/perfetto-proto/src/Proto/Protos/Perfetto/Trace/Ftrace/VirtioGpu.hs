{- This file was auto-generated from protos/perfetto/trace/ftrace/virtio_gpu.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.VirtioGpu (
        VirtioGpuCmdQueueFtraceEvent(), VirtioGpuCmdResponseFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioGpu_Fields.ctxId' @:: Lens' VirtioGpuCmdQueueFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioGpu_Fields.maybe'ctxId' @:: Lens' VirtioGpuCmdQueueFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioGpu_Fields.dev' @:: Lens' VirtioGpuCmdQueueFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioGpu_Fields.maybe'dev' @:: Lens' VirtioGpuCmdQueueFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioGpu_Fields.fenceId' @:: Lens' VirtioGpuCmdQueueFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioGpu_Fields.maybe'fenceId' @:: Lens' VirtioGpuCmdQueueFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioGpu_Fields.flags' @:: Lens' VirtioGpuCmdQueueFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioGpu_Fields.maybe'flags' @:: Lens' VirtioGpuCmdQueueFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioGpu_Fields.name' @:: Lens' VirtioGpuCmdQueueFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioGpu_Fields.maybe'name' @:: Lens' VirtioGpuCmdQueueFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioGpu_Fields.numFree' @:: Lens' VirtioGpuCmdQueueFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioGpu_Fields.maybe'numFree' @:: Lens' VirtioGpuCmdQueueFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioGpu_Fields.seqno' @:: Lens' VirtioGpuCmdQueueFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioGpu_Fields.maybe'seqno' @:: Lens' VirtioGpuCmdQueueFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioGpu_Fields.type'' @:: Lens' VirtioGpuCmdQueueFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioGpu_Fields.maybe'type'' @:: Lens' VirtioGpuCmdQueueFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioGpu_Fields.vq' @:: Lens' VirtioGpuCmdQueueFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioGpu_Fields.maybe'vq' @:: Lens' VirtioGpuCmdQueueFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data VirtioGpuCmdQueueFtraceEvent
  = VirtioGpuCmdQueueFtraceEvent'_constructor {_VirtioGpuCmdQueueFtraceEvent'ctxId :: !(Prelude.Maybe Data.Word.Word32),
                                               _VirtioGpuCmdQueueFtraceEvent'dev :: !(Prelude.Maybe Data.Int.Int32),
                                               _VirtioGpuCmdQueueFtraceEvent'fenceId :: !(Prelude.Maybe Data.Word.Word64),
                                               _VirtioGpuCmdQueueFtraceEvent'flags :: !(Prelude.Maybe Data.Word.Word32),
                                               _VirtioGpuCmdQueueFtraceEvent'name :: !(Prelude.Maybe Data.Text.Text),
                                               _VirtioGpuCmdQueueFtraceEvent'numFree :: !(Prelude.Maybe Data.Word.Word32),
                                               _VirtioGpuCmdQueueFtraceEvent'seqno :: !(Prelude.Maybe Data.Word.Word32),
                                               _VirtioGpuCmdQueueFtraceEvent'type' :: !(Prelude.Maybe Data.Word.Word32),
                                               _VirtioGpuCmdQueueFtraceEvent'vq :: !(Prelude.Maybe Data.Word.Word32),
                                               _VirtioGpuCmdQueueFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show VirtioGpuCmdQueueFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField VirtioGpuCmdQueueFtraceEvent "ctxId" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioGpuCmdQueueFtraceEvent'ctxId
           (\ x__ y__ -> x__ {_VirtioGpuCmdQueueFtraceEvent'ctxId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField VirtioGpuCmdQueueFtraceEvent "maybe'ctxId" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioGpuCmdQueueFtraceEvent'ctxId
           (\ x__ y__ -> x__ {_VirtioGpuCmdQueueFtraceEvent'ctxId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VirtioGpuCmdQueueFtraceEvent "dev" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioGpuCmdQueueFtraceEvent'dev
           (\ x__ y__ -> x__ {_VirtioGpuCmdQueueFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField VirtioGpuCmdQueueFtraceEvent "maybe'dev" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioGpuCmdQueueFtraceEvent'dev
           (\ x__ y__ -> x__ {_VirtioGpuCmdQueueFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VirtioGpuCmdQueueFtraceEvent "fenceId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioGpuCmdQueueFtraceEvent'fenceId
           (\ x__ y__ -> x__ {_VirtioGpuCmdQueueFtraceEvent'fenceId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField VirtioGpuCmdQueueFtraceEvent "maybe'fenceId" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioGpuCmdQueueFtraceEvent'fenceId
           (\ x__ y__ -> x__ {_VirtioGpuCmdQueueFtraceEvent'fenceId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VirtioGpuCmdQueueFtraceEvent "flags" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioGpuCmdQueueFtraceEvent'flags
           (\ x__ y__ -> x__ {_VirtioGpuCmdQueueFtraceEvent'flags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField VirtioGpuCmdQueueFtraceEvent "maybe'flags" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioGpuCmdQueueFtraceEvent'flags
           (\ x__ y__ -> x__ {_VirtioGpuCmdQueueFtraceEvent'flags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VirtioGpuCmdQueueFtraceEvent "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioGpuCmdQueueFtraceEvent'name
           (\ x__ y__ -> x__ {_VirtioGpuCmdQueueFtraceEvent'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField VirtioGpuCmdQueueFtraceEvent "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioGpuCmdQueueFtraceEvent'name
           (\ x__ y__ -> x__ {_VirtioGpuCmdQueueFtraceEvent'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VirtioGpuCmdQueueFtraceEvent "numFree" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioGpuCmdQueueFtraceEvent'numFree
           (\ x__ y__ -> x__ {_VirtioGpuCmdQueueFtraceEvent'numFree = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField VirtioGpuCmdQueueFtraceEvent "maybe'numFree" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioGpuCmdQueueFtraceEvent'numFree
           (\ x__ y__ -> x__ {_VirtioGpuCmdQueueFtraceEvent'numFree = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VirtioGpuCmdQueueFtraceEvent "seqno" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioGpuCmdQueueFtraceEvent'seqno
           (\ x__ y__ -> x__ {_VirtioGpuCmdQueueFtraceEvent'seqno = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField VirtioGpuCmdQueueFtraceEvent "maybe'seqno" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioGpuCmdQueueFtraceEvent'seqno
           (\ x__ y__ -> x__ {_VirtioGpuCmdQueueFtraceEvent'seqno = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VirtioGpuCmdQueueFtraceEvent "type'" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioGpuCmdQueueFtraceEvent'type'
           (\ x__ y__ -> x__ {_VirtioGpuCmdQueueFtraceEvent'type' = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField VirtioGpuCmdQueueFtraceEvent "maybe'type'" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioGpuCmdQueueFtraceEvent'type'
           (\ x__ y__ -> x__ {_VirtioGpuCmdQueueFtraceEvent'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VirtioGpuCmdQueueFtraceEvent "vq" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioGpuCmdQueueFtraceEvent'vq
           (\ x__ y__ -> x__ {_VirtioGpuCmdQueueFtraceEvent'vq = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField VirtioGpuCmdQueueFtraceEvent "maybe'vq" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioGpuCmdQueueFtraceEvent'vq
           (\ x__ y__ -> x__ {_VirtioGpuCmdQueueFtraceEvent'vq = y__}))
        Prelude.id
instance Data.ProtoLens.Message VirtioGpuCmdQueueFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.VirtioGpuCmdQueueFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\FSVirtioGpuCmdQueueFtraceEvent\DC2\NAK\n\
      \\ACKctx_id\CAN\SOH \SOH(\rR\ENQctxId\DC2\DLE\n\
      \\ETXdev\CAN\STX \SOH(\ENQR\ETXdev\DC2\EM\n\
      \\bfence_id\CAN\ETX \SOH(\EOTR\afenceId\DC2\DC4\n\
      \\ENQflags\CAN\EOT \SOH(\rR\ENQflags\DC2\DC2\n\
      \\EOTname\CAN\ENQ \SOH(\tR\EOTname\DC2\EM\n\
      \\bnum_free\CAN\ACK \SOH(\rR\anumFree\DC2\DC4\n\
      \\ENQseqno\CAN\a \SOH(\rR\ENQseqno\DC2\DC2\n\
      \\EOTtype\CAN\b \SOH(\rR\EOTtype\DC2\SO\n\
      \\STXvq\CAN\t \SOH(\rR\STXvq"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        ctxId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ctx_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ctxId")) ::
              Data.ProtoLens.FieldDescriptor VirtioGpuCmdQueueFtraceEvent
        dev__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dev"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dev")) ::
              Data.ProtoLens.FieldDescriptor VirtioGpuCmdQueueFtraceEvent
        fenceId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fence_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fenceId")) ::
              Data.ProtoLens.FieldDescriptor VirtioGpuCmdQueueFtraceEvent
        flags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'flags")) ::
              Data.ProtoLens.FieldDescriptor VirtioGpuCmdQueueFtraceEvent
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'name")) ::
              Data.ProtoLens.FieldDescriptor VirtioGpuCmdQueueFtraceEvent
        numFree__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "num_free"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'numFree")) ::
              Data.ProtoLens.FieldDescriptor VirtioGpuCmdQueueFtraceEvent
        seqno__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "seqno"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'seqno")) ::
              Data.ProtoLens.FieldDescriptor VirtioGpuCmdQueueFtraceEvent
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'type'")) ::
              Data.ProtoLens.FieldDescriptor VirtioGpuCmdQueueFtraceEvent
        vq__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vq"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'vq")) ::
              Data.ProtoLens.FieldDescriptor VirtioGpuCmdQueueFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, ctxId__field_descriptor),
           (Data.ProtoLens.Tag 2, dev__field_descriptor),
           (Data.ProtoLens.Tag 3, fenceId__field_descriptor),
           (Data.ProtoLens.Tag 4, flags__field_descriptor),
           (Data.ProtoLens.Tag 5, name__field_descriptor),
           (Data.ProtoLens.Tag 6, numFree__field_descriptor),
           (Data.ProtoLens.Tag 7, seqno__field_descriptor),
           (Data.ProtoLens.Tag 8, type'__field_descriptor),
           (Data.ProtoLens.Tag 9, vq__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _VirtioGpuCmdQueueFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_VirtioGpuCmdQueueFtraceEvent'_unknownFields = y__})
  defMessage
    = VirtioGpuCmdQueueFtraceEvent'_constructor
        {_VirtioGpuCmdQueueFtraceEvent'ctxId = Prelude.Nothing,
         _VirtioGpuCmdQueueFtraceEvent'dev = Prelude.Nothing,
         _VirtioGpuCmdQueueFtraceEvent'fenceId = Prelude.Nothing,
         _VirtioGpuCmdQueueFtraceEvent'flags = Prelude.Nothing,
         _VirtioGpuCmdQueueFtraceEvent'name = Prelude.Nothing,
         _VirtioGpuCmdQueueFtraceEvent'numFree = Prelude.Nothing,
         _VirtioGpuCmdQueueFtraceEvent'seqno = Prelude.Nothing,
         _VirtioGpuCmdQueueFtraceEvent'type' = Prelude.Nothing,
         _VirtioGpuCmdQueueFtraceEvent'vq = Prelude.Nothing,
         _VirtioGpuCmdQueueFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          VirtioGpuCmdQueueFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser VirtioGpuCmdQueueFtraceEvent
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
                                       "ctx_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ctxId") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "dev"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dev") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "fence_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"fenceId") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "flags"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"flags") y x)
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
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "num_free"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"numFree") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "seqno"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"seqno") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "vq"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"vq") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "VirtioGpuCmdQueueFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ctxId") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dev") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'fenceId") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'flags") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
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
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'numFree") _x
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
                                    Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'seqno") _x
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
                                         (Data.ProtoLens.Field.field @"maybe'type'") _x
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
                                            (Data.ProtoLens.Field.field @"maybe'vq") _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                               ((Prelude..)
                                                  Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  Prelude.fromIntegral _v))
                                     (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                        (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))))
instance Control.DeepSeq.NFData VirtioGpuCmdQueueFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_VirtioGpuCmdQueueFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_VirtioGpuCmdQueueFtraceEvent'ctxId x__)
                (Control.DeepSeq.deepseq
                   (_VirtioGpuCmdQueueFtraceEvent'dev x__)
                   (Control.DeepSeq.deepseq
                      (_VirtioGpuCmdQueueFtraceEvent'fenceId x__)
                      (Control.DeepSeq.deepseq
                         (_VirtioGpuCmdQueueFtraceEvent'flags x__)
                         (Control.DeepSeq.deepseq
                            (_VirtioGpuCmdQueueFtraceEvent'name x__)
                            (Control.DeepSeq.deepseq
                               (_VirtioGpuCmdQueueFtraceEvent'numFree x__)
                               (Control.DeepSeq.deepseq
                                  (_VirtioGpuCmdQueueFtraceEvent'seqno x__)
                                  (Control.DeepSeq.deepseq
                                     (_VirtioGpuCmdQueueFtraceEvent'type' x__)
                                     (Control.DeepSeq.deepseq
                                        (_VirtioGpuCmdQueueFtraceEvent'vq x__) ())))))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioGpu_Fields.ctxId' @:: Lens' VirtioGpuCmdResponseFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioGpu_Fields.maybe'ctxId' @:: Lens' VirtioGpuCmdResponseFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioGpu_Fields.dev' @:: Lens' VirtioGpuCmdResponseFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioGpu_Fields.maybe'dev' @:: Lens' VirtioGpuCmdResponseFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioGpu_Fields.fenceId' @:: Lens' VirtioGpuCmdResponseFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioGpu_Fields.maybe'fenceId' @:: Lens' VirtioGpuCmdResponseFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioGpu_Fields.flags' @:: Lens' VirtioGpuCmdResponseFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioGpu_Fields.maybe'flags' @:: Lens' VirtioGpuCmdResponseFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioGpu_Fields.name' @:: Lens' VirtioGpuCmdResponseFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioGpu_Fields.maybe'name' @:: Lens' VirtioGpuCmdResponseFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioGpu_Fields.numFree' @:: Lens' VirtioGpuCmdResponseFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioGpu_Fields.maybe'numFree' @:: Lens' VirtioGpuCmdResponseFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioGpu_Fields.seqno' @:: Lens' VirtioGpuCmdResponseFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioGpu_Fields.maybe'seqno' @:: Lens' VirtioGpuCmdResponseFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioGpu_Fields.type'' @:: Lens' VirtioGpuCmdResponseFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioGpu_Fields.maybe'type'' @:: Lens' VirtioGpuCmdResponseFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioGpu_Fields.vq' @:: Lens' VirtioGpuCmdResponseFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.VirtioGpu_Fields.maybe'vq' @:: Lens' VirtioGpuCmdResponseFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data VirtioGpuCmdResponseFtraceEvent
  = VirtioGpuCmdResponseFtraceEvent'_constructor {_VirtioGpuCmdResponseFtraceEvent'ctxId :: !(Prelude.Maybe Data.Word.Word32),
                                                  _VirtioGpuCmdResponseFtraceEvent'dev :: !(Prelude.Maybe Data.Int.Int32),
                                                  _VirtioGpuCmdResponseFtraceEvent'fenceId :: !(Prelude.Maybe Data.Word.Word64),
                                                  _VirtioGpuCmdResponseFtraceEvent'flags :: !(Prelude.Maybe Data.Word.Word32),
                                                  _VirtioGpuCmdResponseFtraceEvent'name :: !(Prelude.Maybe Data.Text.Text),
                                                  _VirtioGpuCmdResponseFtraceEvent'numFree :: !(Prelude.Maybe Data.Word.Word32),
                                                  _VirtioGpuCmdResponseFtraceEvent'seqno :: !(Prelude.Maybe Data.Word.Word32),
                                                  _VirtioGpuCmdResponseFtraceEvent'type' :: !(Prelude.Maybe Data.Word.Word32),
                                                  _VirtioGpuCmdResponseFtraceEvent'vq :: !(Prelude.Maybe Data.Word.Word32),
                                                  _VirtioGpuCmdResponseFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show VirtioGpuCmdResponseFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField VirtioGpuCmdResponseFtraceEvent "ctxId" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioGpuCmdResponseFtraceEvent'ctxId
           (\ x__ y__ -> x__ {_VirtioGpuCmdResponseFtraceEvent'ctxId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField VirtioGpuCmdResponseFtraceEvent "maybe'ctxId" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioGpuCmdResponseFtraceEvent'ctxId
           (\ x__ y__ -> x__ {_VirtioGpuCmdResponseFtraceEvent'ctxId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VirtioGpuCmdResponseFtraceEvent "dev" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioGpuCmdResponseFtraceEvent'dev
           (\ x__ y__ -> x__ {_VirtioGpuCmdResponseFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField VirtioGpuCmdResponseFtraceEvent "maybe'dev" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioGpuCmdResponseFtraceEvent'dev
           (\ x__ y__ -> x__ {_VirtioGpuCmdResponseFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VirtioGpuCmdResponseFtraceEvent "fenceId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioGpuCmdResponseFtraceEvent'fenceId
           (\ x__ y__
              -> x__ {_VirtioGpuCmdResponseFtraceEvent'fenceId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField VirtioGpuCmdResponseFtraceEvent "maybe'fenceId" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioGpuCmdResponseFtraceEvent'fenceId
           (\ x__ y__
              -> x__ {_VirtioGpuCmdResponseFtraceEvent'fenceId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VirtioGpuCmdResponseFtraceEvent "flags" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioGpuCmdResponseFtraceEvent'flags
           (\ x__ y__ -> x__ {_VirtioGpuCmdResponseFtraceEvent'flags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField VirtioGpuCmdResponseFtraceEvent "maybe'flags" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioGpuCmdResponseFtraceEvent'flags
           (\ x__ y__ -> x__ {_VirtioGpuCmdResponseFtraceEvent'flags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VirtioGpuCmdResponseFtraceEvent "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioGpuCmdResponseFtraceEvent'name
           (\ x__ y__ -> x__ {_VirtioGpuCmdResponseFtraceEvent'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField VirtioGpuCmdResponseFtraceEvent "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioGpuCmdResponseFtraceEvent'name
           (\ x__ y__ -> x__ {_VirtioGpuCmdResponseFtraceEvent'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VirtioGpuCmdResponseFtraceEvent "numFree" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioGpuCmdResponseFtraceEvent'numFree
           (\ x__ y__
              -> x__ {_VirtioGpuCmdResponseFtraceEvent'numFree = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField VirtioGpuCmdResponseFtraceEvent "maybe'numFree" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioGpuCmdResponseFtraceEvent'numFree
           (\ x__ y__
              -> x__ {_VirtioGpuCmdResponseFtraceEvent'numFree = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VirtioGpuCmdResponseFtraceEvent "seqno" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioGpuCmdResponseFtraceEvent'seqno
           (\ x__ y__ -> x__ {_VirtioGpuCmdResponseFtraceEvent'seqno = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField VirtioGpuCmdResponseFtraceEvent "maybe'seqno" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioGpuCmdResponseFtraceEvent'seqno
           (\ x__ y__ -> x__ {_VirtioGpuCmdResponseFtraceEvent'seqno = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VirtioGpuCmdResponseFtraceEvent "type'" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioGpuCmdResponseFtraceEvent'type'
           (\ x__ y__ -> x__ {_VirtioGpuCmdResponseFtraceEvent'type' = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField VirtioGpuCmdResponseFtraceEvent "maybe'type'" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioGpuCmdResponseFtraceEvent'type'
           (\ x__ y__ -> x__ {_VirtioGpuCmdResponseFtraceEvent'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VirtioGpuCmdResponseFtraceEvent "vq" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioGpuCmdResponseFtraceEvent'vq
           (\ x__ y__ -> x__ {_VirtioGpuCmdResponseFtraceEvent'vq = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField VirtioGpuCmdResponseFtraceEvent "maybe'vq" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VirtioGpuCmdResponseFtraceEvent'vq
           (\ x__ y__ -> x__ {_VirtioGpuCmdResponseFtraceEvent'vq = y__}))
        Prelude.id
instance Data.ProtoLens.Message VirtioGpuCmdResponseFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.VirtioGpuCmdResponseFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\USVirtioGpuCmdResponseFtraceEvent\DC2\NAK\n\
      \\ACKctx_id\CAN\SOH \SOH(\rR\ENQctxId\DC2\DLE\n\
      \\ETXdev\CAN\STX \SOH(\ENQR\ETXdev\DC2\EM\n\
      \\bfence_id\CAN\ETX \SOH(\EOTR\afenceId\DC2\DC4\n\
      \\ENQflags\CAN\EOT \SOH(\rR\ENQflags\DC2\DC2\n\
      \\EOTname\CAN\ENQ \SOH(\tR\EOTname\DC2\EM\n\
      \\bnum_free\CAN\ACK \SOH(\rR\anumFree\DC2\DC4\n\
      \\ENQseqno\CAN\a \SOH(\rR\ENQseqno\DC2\DC2\n\
      \\EOTtype\CAN\b \SOH(\rR\EOTtype\DC2\SO\n\
      \\STXvq\CAN\t \SOH(\rR\STXvq"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        ctxId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ctx_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ctxId")) ::
              Data.ProtoLens.FieldDescriptor VirtioGpuCmdResponseFtraceEvent
        dev__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dev"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dev")) ::
              Data.ProtoLens.FieldDescriptor VirtioGpuCmdResponseFtraceEvent
        fenceId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fence_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fenceId")) ::
              Data.ProtoLens.FieldDescriptor VirtioGpuCmdResponseFtraceEvent
        flags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'flags")) ::
              Data.ProtoLens.FieldDescriptor VirtioGpuCmdResponseFtraceEvent
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'name")) ::
              Data.ProtoLens.FieldDescriptor VirtioGpuCmdResponseFtraceEvent
        numFree__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "num_free"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'numFree")) ::
              Data.ProtoLens.FieldDescriptor VirtioGpuCmdResponseFtraceEvent
        seqno__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "seqno"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'seqno")) ::
              Data.ProtoLens.FieldDescriptor VirtioGpuCmdResponseFtraceEvent
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'type'")) ::
              Data.ProtoLens.FieldDescriptor VirtioGpuCmdResponseFtraceEvent
        vq__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vq"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'vq")) ::
              Data.ProtoLens.FieldDescriptor VirtioGpuCmdResponseFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, ctxId__field_descriptor),
           (Data.ProtoLens.Tag 2, dev__field_descriptor),
           (Data.ProtoLens.Tag 3, fenceId__field_descriptor),
           (Data.ProtoLens.Tag 4, flags__field_descriptor),
           (Data.ProtoLens.Tag 5, name__field_descriptor),
           (Data.ProtoLens.Tag 6, numFree__field_descriptor),
           (Data.ProtoLens.Tag 7, seqno__field_descriptor),
           (Data.ProtoLens.Tag 8, type'__field_descriptor),
           (Data.ProtoLens.Tag 9, vq__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _VirtioGpuCmdResponseFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_VirtioGpuCmdResponseFtraceEvent'_unknownFields = y__})
  defMessage
    = VirtioGpuCmdResponseFtraceEvent'_constructor
        {_VirtioGpuCmdResponseFtraceEvent'ctxId = Prelude.Nothing,
         _VirtioGpuCmdResponseFtraceEvent'dev = Prelude.Nothing,
         _VirtioGpuCmdResponseFtraceEvent'fenceId = Prelude.Nothing,
         _VirtioGpuCmdResponseFtraceEvent'flags = Prelude.Nothing,
         _VirtioGpuCmdResponseFtraceEvent'name = Prelude.Nothing,
         _VirtioGpuCmdResponseFtraceEvent'numFree = Prelude.Nothing,
         _VirtioGpuCmdResponseFtraceEvent'seqno = Prelude.Nothing,
         _VirtioGpuCmdResponseFtraceEvent'type' = Prelude.Nothing,
         _VirtioGpuCmdResponseFtraceEvent'vq = Prelude.Nothing,
         _VirtioGpuCmdResponseFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          VirtioGpuCmdResponseFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser VirtioGpuCmdResponseFtraceEvent
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
                                       "ctx_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ctxId") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "dev"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dev") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "fence_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"fenceId") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "flags"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"flags") y x)
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
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "num_free"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"numFree") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "seqno"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"seqno") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "vq"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"vq") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "VirtioGpuCmdResponseFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ctxId") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dev") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'fenceId") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'flags") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
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
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'numFree") _x
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
                                    Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'seqno") _x
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
                                         (Data.ProtoLens.Field.field @"maybe'type'") _x
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
                                            (Data.ProtoLens.Field.field @"maybe'vq") _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                               ((Prelude..)
                                                  Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  Prelude.fromIntegral _v))
                                     (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                        (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))))
instance Control.DeepSeq.NFData VirtioGpuCmdResponseFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_VirtioGpuCmdResponseFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_VirtioGpuCmdResponseFtraceEvent'ctxId x__)
                (Control.DeepSeq.deepseq
                   (_VirtioGpuCmdResponseFtraceEvent'dev x__)
                   (Control.DeepSeq.deepseq
                      (_VirtioGpuCmdResponseFtraceEvent'fenceId x__)
                      (Control.DeepSeq.deepseq
                         (_VirtioGpuCmdResponseFtraceEvent'flags x__)
                         (Control.DeepSeq.deepseq
                            (_VirtioGpuCmdResponseFtraceEvent'name x__)
                            (Control.DeepSeq.deepseq
                               (_VirtioGpuCmdResponseFtraceEvent'numFree x__)
                               (Control.DeepSeq.deepseq
                                  (_VirtioGpuCmdResponseFtraceEvent'seqno x__)
                                  (Control.DeepSeq.deepseq
                                     (_VirtioGpuCmdResponseFtraceEvent'type' x__)
                                     (Control.DeepSeq.deepseq
                                        (_VirtioGpuCmdResponseFtraceEvent'vq x__) ())))))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \-protos/perfetto/trace/ftrace/virtio_gpu.proto\DC2\SIperfetto.protos\"\225\SOH\n\
    \\FSVirtioGpuCmdQueueFtraceEvent\DC2\NAK\n\
    \\ACKctx_id\CAN\SOH \SOH(\rR\ENQctxId\DC2\DLE\n\
    \\ETXdev\CAN\STX \SOH(\ENQR\ETXdev\DC2\EM\n\
    \\bfence_id\CAN\ETX \SOH(\EOTR\afenceId\DC2\DC4\n\
    \\ENQflags\CAN\EOT \SOH(\rR\ENQflags\DC2\DC2\n\
    \\EOTname\CAN\ENQ \SOH(\tR\EOTname\DC2\EM\n\
    \\bnum_free\CAN\ACK \SOH(\rR\anumFree\DC2\DC4\n\
    \\ENQseqno\CAN\a \SOH(\rR\ENQseqno\DC2\DC2\n\
    \\EOTtype\CAN\b \SOH(\rR\EOTtype\DC2\SO\n\
    \\STXvq\CAN\t \SOH(\rR\STXvq\"\228\SOH\n\
    \\USVirtioGpuCmdResponseFtraceEvent\DC2\NAK\n\
    \\ACKctx_id\CAN\SOH \SOH(\rR\ENQctxId\DC2\DLE\n\
    \\ETXdev\CAN\STX \SOH(\ENQR\ETXdev\DC2\EM\n\
    \\bfence_id\CAN\ETX \SOH(\EOTR\afenceId\DC2\DC4\n\
    \\ENQflags\CAN\EOT \SOH(\rR\ENQflags\DC2\DC2\n\
    \\EOTname\CAN\ENQ \SOH(\tR\EOTname\DC2\EM\n\
    \\bnum_free\CAN\ACK \SOH(\rR\anumFree\DC2\DC4\n\
    \\ENQseqno\CAN\a \SOH(\rR\ENQseqno\DC2\DC2\n\
    \\EOTtype\CAN\b \SOH(\rR\EOTtype\DC2\SO\n\
    \\STXvq\CAN\t \SOH(\rR\STXvqJ\255\n\
    \\n\
    \\ACK\DC2\EOT\EOT\NUL\FS\SOH\n\
    \a\n\
    \\SOH\f\DC2\ETX\EOT\NUL\DC22W Autogenerated by:\n\
    \ ../../src/tools/ftrace_proto_gen/ftrace_proto_gen.cc\n\
    \ Do not edit.\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\ENQ\NUL\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\a\NUL\DC1\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b$\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\b\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\b\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\b\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\b\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\b\ESC\FS\n\
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
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\v\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX\v\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\v\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\v\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\v\SUB\ESC\n\
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
    \\v\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX\r\STX\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\EOT\DC2\ETX\r\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETX\r\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX\r\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX\r\GS\RS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETX\SO\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\EOT\DC2\ETX\SO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ENQ\DC2\ETX\SO\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETX\SO\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETX\SO\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\a\DC2\ETX\SI\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\EOT\DC2\ETX\SI\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ENQ\DC2\ETX\SI\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\ETX\SI\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\ETX\SI\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\b\DC2\ETX\DLE\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\EOT\DC2\ETX\DLE\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ENQ\DC2\ETX\DLE\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\SOH\DC2\ETX\DLE\DC2\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ETX\DC2\ETX\DLE\ETB\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\DC2\NUL\FS\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\DC2\b'\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\DC3\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\DC3\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\DC3\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\DC3\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\DC3\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\DC4\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX\DC4\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\DC4\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\DC4\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\DC4\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX\NAK\STX\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\EOT\DC2\ETX\NAK\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX\NAK\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX\NAK\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX\NAK\GS\RS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX\SYN\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\EOT\DC2\ETX\SYN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX\SYN\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX\SYN\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX\SYN\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETX\ETB\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\EOT\DC2\ETX\ETB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ENQ\DC2\ETX\ETB\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETX\ETB\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETX\ETB\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\ETX\CAN\STX\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\EOT\DC2\ETX\CAN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ENQ\DC2\ETX\CAN\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\ETX\CAN\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\ETX\CAN\GS\RS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ACK\DC2\ETX\EM\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\EOT\DC2\ETX\EM\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ENQ\DC2\ETX\EM\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\SOH\DC2\ETX\EM\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ETX\DC2\ETX\EM\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\a\DC2\ETX\SUB\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\EOT\DC2\ETX\SUB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\ENQ\DC2\ETX\SUB\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\SOH\DC2\ETX\SUB\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\ETX\DC2\ETX\SUB\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\b\DC2\ETX\ESC\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\EOT\DC2\ETX\ESC\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\ENQ\DC2\ETX\ESC\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\SOH\DC2\ETX\ESC\DC2\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\ETX\DC2\ETX\ESC\ETB\CAN"