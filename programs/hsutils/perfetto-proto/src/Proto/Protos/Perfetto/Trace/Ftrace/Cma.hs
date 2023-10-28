{- This file was auto-generated from protos/perfetto/trace/ftrace/cma.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Cma (
        CmaAllocInfoFtraceEvent(), CmaAllocStartFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cma_Fields.align' @:: Lens' CmaAllocInfoFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cma_Fields.maybe'align' @:: Lens' CmaAllocInfoFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cma_Fields.count' @:: Lens' CmaAllocInfoFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cma_Fields.maybe'count' @:: Lens' CmaAllocInfoFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cma_Fields.errIso' @:: Lens' CmaAllocInfoFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cma_Fields.maybe'errIso' @:: Lens' CmaAllocInfoFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cma_Fields.errMig' @:: Lens' CmaAllocInfoFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cma_Fields.maybe'errMig' @:: Lens' CmaAllocInfoFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cma_Fields.errTest' @:: Lens' CmaAllocInfoFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cma_Fields.maybe'errTest' @:: Lens' CmaAllocInfoFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cma_Fields.name' @:: Lens' CmaAllocInfoFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cma_Fields.maybe'name' @:: Lens' CmaAllocInfoFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cma_Fields.nrMapped' @:: Lens' CmaAllocInfoFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cma_Fields.maybe'nrMapped' @:: Lens' CmaAllocInfoFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cma_Fields.nrMigrated' @:: Lens' CmaAllocInfoFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cma_Fields.maybe'nrMigrated' @:: Lens' CmaAllocInfoFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cma_Fields.nrReclaimed' @:: Lens' CmaAllocInfoFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cma_Fields.maybe'nrReclaimed' @:: Lens' CmaAllocInfoFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cma_Fields.pfn' @:: Lens' CmaAllocInfoFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cma_Fields.maybe'pfn' @:: Lens' CmaAllocInfoFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data CmaAllocInfoFtraceEvent
  = CmaAllocInfoFtraceEvent'_constructor {_CmaAllocInfoFtraceEvent'align :: !(Prelude.Maybe Data.Word.Word32),
                                          _CmaAllocInfoFtraceEvent'count :: !(Prelude.Maybe Data.Word.Word32),
                                          _CmaAllocInfoFtraceEvent'errIso :: !(Prelude.Maybe Data.Word.Word32),
                                          _CmaAllocInfoFtraceEvent'errMig :: !(Prelude.Maybe Data.Word.Word32),
                                          _CmaAllocInfoFtraceEvent'errTest :: !(Prelude.Maybe Data.Word.Word32),
                                          _CmaAllocInfoFtraceEvent'name :: !(Prelude.Maybe Data.Text.Text),
                                          _CmaAllocInfoFtraceEvent'nrMapped :: !(Prelude.Maybe Data.Word.Word64),
                                          _CmaAllocInfoFtraceEvent'nrMigrated :: !(Prelude.Maybe Data.Word.Word64),
                                          _CmaAllocInfoFtraceEvent'nrReclaimed :: !(Prelude.Maybe Data.Word.Word64),
                                          _CmaAllocInfoFtraceEvent'pfn :: !(Prelude.Maybe Data.Word.Word64),
                                          _CmaAllocInfoFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CmaAllocInfoFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CmaAllocInfoFtraceEvent "align" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CmaAllocInfoFtraceEvent'align
           (\ x__ y__ -> x__ {_CmaAllocInfoFtraceEvent'align = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CmaAllocInfoFtraceEvent "maybe'align" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CmaAllocInfoFtraceEvent'align
           (\ x__ y__ -> x__ {_CmaAllocInfoFtraceEvent'align = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CmaAllocInfoFtraceEvent "count" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CmaAllocInfoFtraceEvent'count
           (\ x__ y__ -> x__ {_CmaAllocInfoFtraceEvent'count = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CmaAllocInfoFtraceEvent "maybe'count" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CmaAllocInfoFtraceEvent'count
           (\ x__ y__ -> x__ {_CmaAllocInfoFtraceEvent'count = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CmaAllocInfoFtraceEvent "errIso" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CmaAllocInfoFtraceEvent'errIso
           (\ x__ y__ -> x__ {_CmaAllocInfoFtraceEvent'errIso = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CmaAllocInfoFtraceEvent "maybe'errIso" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CmaAllocInfoFtraceEvent'errIso
           (\ x__ y__ -> x__ {_CmaAllocInfoFtraceEvent'errIso = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CmaAllocInfoFtraceEvent "errMig" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CmaAllocInfoFtraceEvent'errMig
           (\ x__ y__ -> x__ {_CmaAllocInfoFtraceEvent'errMig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CmaAllocInfoFtraceEvent "maybe'errMig" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CmaAllocInfoFtraceEvent'errMig
           (\ x__ y__ -> x__ {_CmaAllocInfoFtraceEvent'errMig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CmaAllocInfoFtraceEvent "errTest" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CmaAllocInfoFtraceEvent'errTest
           (\ x__ y__ -> x__ {_CmaAllocInfoFtraceEvent'errTest = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CmaAllocInfoFtraceEvent "maybe'errTest" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CmaAllocInfoFtraceEvent'errTest
           (\ x__ y__ -> x__ {_CmaAllocInfoFtraceEvent'errTest = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CmaAllocInfoFtraceEvent "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CmaAllocInfoFtraceEvent'name
           (\ x__ y__ -> x__ {_CmaAllocInfoFtraceEvent'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CmaAllocInfoFtraceEvent "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CmaAllocInfoFtraceEvent'name
           (\ x__ y__ -> x__ {_CmaAllocInfoFtraceEvent'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CmaAllocInfoFtraceEvent "nrMapped" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CmaAllocInfoFtraceEvent'nrMapped
           (\ x__ y__ -> x__ {_CmaAllocInfoFtraceEvent'nrMapped = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CmaAllocInfoFtraceEvent "maybe'nrMapped" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CmaAllocInfoFtraceEvent'nrMapped
           (\ x__ y__ -> x__ {_CmaAllocInfoFtraceEvent'nrMapped = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CmaAllocInfoFtraceEvent "nrMigrated" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CmaAllocInfoFtraceEvent'nrMigrated
           (\ x__ y__ -> x__ {_CmaAllocInfoFtraceEvent'nrMigrated = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CmaAllocInfoFtraceEvent "maybe'nrMigrated" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CmaAllocInfoFtraceEvent'nrMigrated
           (\ x__ y__ -> x__ {_CmaAllocInfoFtraceEvent'nrMigrated = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CmaAllocInfoFtraceEvent "nrReclaimed" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CmaAllocInfoFtraceEvent'nrReclaimed
           (\ x__ y__ -> x__ {_CmaAllocInfoFtraceEvent'nrReclaimed = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CmaAllocInfoFtraceEvent "maybe'nrReclaimed" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CmaAllocInfoFtraceEvent'nrReclaimed
           (\ x__ y__ -> x__ {_CmaAllocInfoFtraceEvent'nrReclaimed = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CmaAllocInfoFtraceEvent "pfn" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CmaAllocInfoFtraceEvent'pfn
           (\ x__ y__ -> x__ {_CmaAllocInfoFtraceEvent'pfn = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CmaAllocInfoFtraceEvent "maybe'pfn" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CmaAllocInfoFtraceEvent'pfn
           (\ x__ y__ -> x__ {_CmaAllocInfoFtraceEvent'pfn = y__}))
        Prelude.id
instance Data.ProtoLens.Message CmaAllocInfoFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.CmaAllocInfoFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ETBCmaAllocInfoFtraceEvent\DC2\DC4\n\
      \\ENQalign\CAN\SOH \SOH(\rR\ENQalign\DC2\DC4\n\
      \\ENQcount\CAN\STX \SOH(\rR\ENQcount\DC2\ETB\n\
      \\aerr_iso\CAN\ETX \SOH(\rR\ACKerrIso\DC2\ETB\n\
      \\aerr_mig\CAN\EOT \SOH(\rR\ACKerrMig\DC2\EM\n\
      \\berr_test\CAN\ENQ \SOH(\rR\aerrTest\DC2\DC2\n\
      \\EOTname\CAN\ACK \SOH(\tR\EOTname\DC2\ESC\n\
      \\tnr_mapped\CAN\a \SOH(\EOTR\bnrMapped\DC2\US\n\
      \\vnr_migrated\CAN\b \SOH(\EOTR\n\
      \nrMigrated\DC2!\n\
      \\fnr_reclaimed\CAN\t \SOH(\EOTR\vnrReclaimed\DC2\DLE\n\
      \\ETXpfn\CAN\n\
      \ \SOH(\EOTR\ETXpfn"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        align__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "align"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'align")) ::
              Data.ProtoLens.FieldDescriptor CmaAllocInfoFtraceEvent
        count__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'count")) ::
              Data.ProtoLens.FieldDescriptor CmaAllocInfoFtraceEvent
        errIso__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "err_iso"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'errIso")) ::
              Data.ProtoLens.FieldDescriptor CmaAllocInfoFtraceEvent
        errMig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "err_mig"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'errMig")) ::
              Data.ProtoLens.FieldDescriptor CmaAllocInfoFtraceEvent
        errTest__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "err_test"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'errTest")) ::
              Data.ProtoLens.FieldDescriptor CmaAllocInfoFtraceEvent
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'name")) ::
              Data.ProtoLens.FieldDescriptor CmaAllocInfoFtraceEvent
        nrMapped__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nr_mapped"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nrMapped")) ::
              Data.ProtoLens.FieldDescriptor CmaAllocInfoFtraceEvent
        nrMigrated__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nr_migrated"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nrMigrated")) ::
              Data.ProtoLens.FieldDescriptor CmaAllocInfoFtraceEvent
        nrReclaimed__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nr_reclaimed"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nrReclaimed")) ::
              Data.ProtoLens.FieldDescriptor CmaAllocInfoFtraceEvent
        pfn__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pfn"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pfn")) ::
              Data.ProtoLens.FieldDescriptor CmaAllocInfoFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, align__field_descriptor),
           (Data.ProtoLens.Tag 2, count__field_descriptor),
           (Data.ProtoLens.Tag 3, errIso__field_descriptor),
           (Data.ProtoLens.Tag 4, errMig__field_descriptor),
           (Data.ProtoLens.Tag 5, errTest__field_descriptor),
           (Data.ProtoLens.Tag 6, name__field_descriptor),
           (Data.ProtoLens.Tag 7, nrMapped__field_descriptor),
           (Data.ProtoLens.Tag 8, nrMigrated__field_descriptor),
           (Data.ProtoLens.Tag 9, nrReclaimed__field_descriptor),
           (Data.ProtoLens.Tag 10, pfn__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CmaAllocInfoFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_CmaAllocInfoFtraceEvent'_unknownFields = y__})
  defMessage
    = CmaAllocInfoFtraceEvent'_constructor
        {_CmaAllocInfoFtraceEvent'align = Prelude.Nothing,
         _CmaAllocInfoFtraceEvent'count = Prelude.Nothing,
         _CmaAllocInfoFtraceEvent'errIso = Prelude.Nothing,
         _CmaAllocInfoFtraceEvent'errMig = Prelude.Nothing,
         _CmaAllocInfoFtraceEvent'errTest = Prelude.Nothing,
         _CmaAllocInfoFtraceEvent'name = Prelude.Nothing,
         _CmaAllocInfoFtraceEvent'nrMapped = Prelude.Nothing,
         _CmaAllocInfoFtraceEvent'nrMigrated = Prelude.Nothing,
         _CmaAllocInfoFtraceEvent'nrReclaimed = Prelude.Nothing,
         _CmaAllocInfoFtraceEvent'pfn = Prelude.Nothing,
         _CmaAllocInfoFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CmaAllocInfoFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser CmaAllocInfoFtraceEvent
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
                                       "align"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"align") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "count"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"count") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "err_iso"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"errIso") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "err_mig"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"errMig") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "err_test"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"errTest") y x)
                        50
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
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "nr_mapped"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nrMapped") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "nr_migrated"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nrMigrated") y x)
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "nr_reclaimed"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nrReclaimed") y x)
                        80
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
          (do loop Data.ProtoLens.defMessage) "CmaAllocInfoFtraceEvent"
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
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'count") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'errIso") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'errMig") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'errTest") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'name") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.Text.Encoding.encodeUtf8 _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'nrMapped") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'nrMigrated") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"maybe'nrReclaimed") _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field @"maybe'pfn") _x
                                         of
                                           Prelude.Nothing -> Data.Monoid.mempty
                                           (Prelude.Just _v)
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 80)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                        (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                           (Lens.Family2.view
                                              Data.ProtoLens.unknownFields _x)))))))))))
instance Control.DeepSeq.NFData CmaAllocInfoFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CmaAllocInfoFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CmaAllocInfoFtraceEvent'align x__)
                (Control.DeepSeq.deepseq
                   (_CmaAllocInfoFtraceEvent'count x__)
                   (Control.DeepSeq.deepseq
                      (_CmaAllocInfoFtraceEvent'errIso x__)
                      (Control.DeepSeq.deepseq
                         (_CmaAllocInfoFtraceEvent'errMig x__)
                         (Control.DeepSeq.deepseq
                            (_CmaAllocInfoFtraceEvent'errTest x__)
                            (Control.DeepSeq.deepseq
                               (_CmaAllocInfoFtraceEvent'name x__)
                               (Control.DeepSeq.deepseq
                                  (_CmaAllocInfoFtraceEvent'nrMapped x__)
                                  (Control.DeepSeq.deepseq
                                     (_CmaAllocInfoFtraceEvent'nrMigrated x__)
                                     (Control.DeepSeq.deepseq
                                        (_CmaAllocInfoFtraceEvent'nrReclaimed x__)
                                        (Control.DeepSeq.deepseq
                                           (_CmaAllocInfoFtraceEvent'pfn x__) ()))))))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cma_Fields.align' @:: Lens' CmaAllocStartFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cma_Fields.maybe'align' @:: Lens' CmaAllocStartFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cma_Fields.count' @:: Lens' CmaAllocStartFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cma_Fields.maybe'count' @:: Lens' CmaAllocStartFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cma_Fields.name' @:: Lens' CmaAllocStartFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cma_Fields.maybe'name' @:: Lens' CmaAllocStartFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data CmaAllocStartFtraceEvent
  = CmaAllocStartFtraceEvent'_constructor {_CmaAllocStartFtraceEvent'align :: !(Prelude.Maybe Data.Word.Word32),
                                           _CmaAllocStartFtraceEvent'count :: !(Prelude.Maybe Data.Word.Word32),
                                           _CmaAllocStartFtraceEvent'name :: !(Prelude.Maybe Data.Text.Text),
                                           _CmaAllocStartFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CmaAllocStartFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CmaAllocStartFtraceEvent "align" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CmaAllocStartFtraceEvent'align
           (\ x__ y__ -> x__ {_CmaAllocStartFtraceEvent'align = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CmaAllocStartFtraceEvent "maybe'align" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CmaAllocStartFtraceEvent'align
           (\ x__ y__ -> x__ {_CmaAllocStartFtraceEvent'align = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CmaAllocStartFtraceEvent "count" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CmaAllocStartFtraceEvent'count
           (\ x__ y__ -> x__ {_CmaAllocStartFtraceEvent'count = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CmaAllocStartFtraceEvent "maybe'count" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CmaAllocStartFtraceEvent'count
           (\ x__ y__ -> x__ {_CmaAllocStartFtraceEvent'count = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CmaAllocStartFtraceEvent "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CmaAllocStartFtraceEvent'name
           (\ x__ y__ -> x__ {_CmaAllocStartFtraceEvent'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CmaAllocStartFtraceEvent "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CmaAllocStartFtraceEvent'name
           (\ x__ y__ -> x__ {_CmaAllocStartFtraceEvent'name = y__}))
        Prelude.id
instance Data.ProtoLens.Message CmaAllocStartFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.CmaAllocStartFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\CANCmaAllocStartFtraceEvent\DC2\DC4\n\
      \\ENQalign\CAN\SOH \SOH(\rR\ENQalign\DC2\DC4\n\
      \\ENQcount\CAN\STX \SOH(\rR\ENQcount\DC2\DC2\n\
      \\EOTname\CAN\ETX \SOH(\tR\EOTname"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        align__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "align"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'align")) ::
              Data.ProtoLens.FieldDescriptor CmaAllocStartFtraceEvent
        count__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'count")) ::
              Data.ProtoLens.FieldDescriptor CmaAllocStartFtraceEvent
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'name")) ::
              Data.ProtoLens.FieldDescriptor CmaAllocStartFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, align__field_descriptor),
           (Data.ProtoLens.Tag 2, count__field_descriptor),
           (Data.ProtoLens.Tag 3, name__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CmaAllocStartFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_CmaAllocStartFtraceEvent'_unknownFields = y__})
  defMessage
    = CmaAllocStartFtraceEvent'_constructor
        {_CmaAllocStartFtraceEvent'align = Prelude.Nothing,
         _CmaAllocStartFtraceEvent'count = Prelude.Nothing,
         _CmaAllocStartFtraceEvent'name = Prelude.Nothing,
         _CmaAllocStartFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CmaAllocStartFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser CmaAllocStartFtraceEvent
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
                                       "align"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"align") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "count"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"count") y x)
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
          (do loop Data.ProtoLens.defMessage) "CmaAllocStartFtraceEvent"
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
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'count") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'name") _x
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData CmaAllocStartFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CmaAllocStartFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CmaAllocStartFtraceEvent'align x__)
                (Control.DeepSeq.deepseq
                   (_CmaAllocStartFtraceEvent'count x__)
                   (Control.DeepSeq.deepseq (_CmaAllocStartFtraceEvent'name x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \&protos/perfetto/trace/ftrace/cma.proto\DC2\SIperfetto.protos\"Z\n\
    \\CANCmaAllocStartFtraceEvent\DC2\DC4\n\
    \\ENQalign\CAN\SOH \SOH(\rR\ENQalign\DC2\DC4\n\
    \\ENQcount\CAN\STX \SOH(\rR\ENQcount\DC2\DC2\n\
    \\EOTname\CAN\ETX \SOH(\tR\EOTname\"\153\STX\n\
    \\ETBCmaAllocInfoFtraceEvent\DC2\DC4\n\
    \\ENQalign\CAN\SOH \SOH(\rR\ENQalign\DC2\DC4\n\
    \\ENQcount\CAN\STX \SOH(\rR\ENQcount\DC2\ETB\n\
    \\aerr_iso\CAN\ETX \SOH(\rR\ACKerrIso\DC2\ETB\n\
    \\aerr_mig\CAN\EOT \SOH(\rR\ACKerrMig\DC2\EM\n\
    \\berr_test\CAN\ENQ \SOH(\rR\aerrTest\DC2\DC2\n\
    \\EOTname\CAN\ACK \SOH(\tR\EOTname\DC2\ESC\n\
    \\tnr_mapped\CAN\a \SOH(\EOTR\bnrMapped\DC2\US\n\
    \\vnr_migrated\CAN\b \SOH(\EOTR\n\
    \nrMigrated\DC2!\n\
    \\fnr_reclaimed\CAN\t \SOH(\EOTR\vnrReclaimed\DC2\DLE\n\
    \\ETXpfn\CAN\n\
    \ \SOH(\EOTR\ETXpfnJ\166\b\n\
    \\ACK\DC2\EOT\EOT\NUL\ETB\SOH\n\
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
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b \n\
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
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\f\NUL\ETB\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\f\b\US\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\r\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\r\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\r\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\r\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\r\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\SO\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX\SO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\SO\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\SO\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\SO\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX\SI\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\EOT\DC2\ETX\SI\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX\SI\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX\SI\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX\SI\FS\GS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX\DLE\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\EOT\DC2\ETX\DLE\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX\DLE\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX\DLE\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX\DLE\FS\GS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETX\DC1\STX\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\EOT\DC2\ETX\DC1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ENQ\DC2\ETX\DC1\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETX\DC1\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETX\DC1\GS\RS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\ETX\DC2\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\EOT\DC2\ETX\DC2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ENQ\DC2\ETX\DC2\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\ETX\DC2\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\ETX\DC2\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ACK\DC2\ETX\DC3\STX \n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\EOT\DC2\ETX\DC3\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ENQ\DC2\ETX\DC3\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\SOH\DC2\ETX\DC3\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ETX\DC2\ETX\DC3\RS\US\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\a\DC2\ETX\DC4\STX\"\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\EOT\DC2\ETX\DC4\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\ENQ\DC2\ETX\DC4\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\SOH\DC2\ETX\DC4\DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\ETX\DC2\ETX\DC4 !\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\b\DC2\ETX\NAK\STX#\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\EOT\DC2\ETX\NAK\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\ENQ\DC2\ETX\NAK\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\SOH\DC2\ETX\NAK\DC2\RS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\ETX\DC2\ETX\NAK!\"\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\t\DC2\ETX\SYN\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\t\EOT\DC2\ETX\SYN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\t\ENQ\DC2\ETX\SYN\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\t\SOH\DC2\ETX\SYN\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\t\ETX\DC2\ETX\SYN\CAN\SUB"