{- This file was auto-generated from protos/perfetto/trace/ftrace/filemap.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Filemap (
        MmFilemapAddToPageCacheFtraceEvent(),
        MmFilemapDeleteFromPageCacheFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Filemap_Fields.pfn' @:: Lens' MmFilemapAddToPageCacheFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Filemap_Fields.maybe'pfn' @:: Lens' MmFilemapAddToPageCacheFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Filemap_Fields.iIno' @:: Lens' MmFilemapAddToPageCacheFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Filemap_Fields.maybe'iIno' @:: Lens' MmFilemapAddToPageCacheFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Filemap_Fields.index' @:: Lens' MmFilemapAddToPageCacheFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Filemap_Fields.maybe'index' @:: Lens' MmFilemapAddToPageCacheFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Filemap_Fields.sDev' @:: Lens' MmFilemapAddToPageCacheFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Filemap_Fields.maybe'sDev' @:: Lens' MmFilemapAddToPageCacheFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Filemap_Fields.page' @:: Lens' MmFilemapAddToPageCacheFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Filemap_Fields.maybe'page' @:: Lens' MmFilemapAddToPageCacheFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data MmFilemapAddToPageCacheFtraceEvent
  = MmFilemapAddToPageCacheFtraceEvent'_constructor {_MmFilemapAddToPageCacheFtraceEvent'pfn :: !(Prelude.Maybe Data.Word.Word64),
                                                     _MmFilemapAddToPageCacheFtraceEvent'iIno :: !(Prelude.Maybe Data.Word.Word64),
                                                     _MmFilemapAddToPageCacheFtraceEvent'index :: !(Prelude.Maybe Data.Word.Word64),
                                                     _MmFilemapAddToPageCacheFtraceEvent'sDev :: !(Prelude.Maybe Data.Word.Word64),
                                                     _MmFilemapAddToPageCacheFtraceEvent'page :: !(Prelude.Maybe Data.Word.Word64),
                                                     _MmFilemapAddToPageCacheFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MmFilemapAddToPageCacheFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MmFilemapAddToPageCacheFtraceEvent "pfn" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmFilemapAddToPageCacheFtraceEvent'pfn
           (\ x__ y__ -> x__ {_MmFilemapAddToPageCacheFtraceEvent'pfn = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmFilemapAddToPageCacheFtraceEvent "maybe'pfn" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmFilemapAddToPageCacheFtraceEvent'pfn
           (\ x__ y__ -> x__ {_MmFilemapAddToPageCacheFtraceEvent'pfn = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmFilemapAddToPageCacheFtraceEvent "iIno" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmFilemapAddToPageCacheFtraceEvent'iIno
           (\ x__ y__
              -> x__ {_MmFilemapAddToPageCacheFtraceEvent'iIno = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmFilemapAddToPageCacheFtraceEvent "maybe'iIno" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmFilemapAddToPageCacheFtraceEvent'iIno
           (\ x__ y__
              -> x__ {_MmFilemapAddToPageCacheFtraceEvent'iIno = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmFilemapAddToPageCacheFtraceEvent "index" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmFilemapAddToPageCacheFtraceEvent'index
           (\ x__ y__
              -> x__ {_MmFilemapAddToPageCacheFtraceEvent'index = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmFilemapAddToPageCacheFtraceEvent "maybe'index" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmFilemapAddToPageCacheFtraceEvent'index
           (\ x__ y__
              -> x__ {_MmFilemapAddToPageCacheFtraceEvent'index = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmFilemapAddToPageCacheFtraceEvent "sDev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmFilemapAddToPageCacheFtraceEvent'sDev
           (\ x__ y__
              -> x__ {_MmFilemapAddToPageCacheFtraceEvent'sDev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmFilemapAddToPageCacheFtraceEvent "maybe'sDev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmFilemapAddToPageCacheFtraceEvent'sDev
           (\ x__ y__
              -> x__ {_MmFilemapAddToPageCacheFtraceEvent'sDev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmFilemapAddToPageCacheFtraceEvent "page" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmFilemapAddToPageCacheFtraceEvent'page
           (\ x__ y__
              -> x__ {_MmFilemapAddToPageCacheFtraceEvent'page = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmFilemapAddToPageCacheFtraceEvent "maybe'page" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmFilemapAddToPageCacheFtraceEvent'page
           (\ x__ y__
              -> x__ {_MmFilemapAddToPageCacheFtraceEvent'page = y__}))
        Prelude.id
instance Data.ProtoLens.Message MmFilemapAddToPageCacheFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.MmFilemapAddToPageCacheFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\"MmFilemapAddToPageCacheFtraceEvent\DC2\DLE\n\
      \\ETXpfn\CAN\SOH \SOH(\EOTR\ETXpfn\DC2\DC3\n\
      \\ENQi_ino\CAN\STX \SOH(\EOTR\EOTiIno\DC2\DC4\n\
      \\ENQindex\CAN\ETX \SOH(\EOTR\ENQindex\DC2\DC3\n\
      \\ENQs_dev\CAN\EOT \SOH(\EOTR\EOTsDev\DC2\DC2\n\
      \\EOTpage\CAN\ENQ \SOH(\EOTR\EOTpage"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        pfn__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pfn"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pfn")) ::
              Data.ProtoLens.FieldDescriptor MmFilemapAddToPageCacheFtraceEvent
        iIno__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "i_ino"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'iIno")) ::
              Data.ProtoLens.FieldDescriptor MmFilemapAddToPageCacheFtraceEvent
        index__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'index")) ::
              Data.ProtoLens.FieldDescriptor MmFilemapAddToPageCacheFtraceEvent
        sDev__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "s_dev"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sDev")) ::
              Data.ProtoLens.FieldDescriptor MmFilemapAddToPageCacheFtraceEvent
        page__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "page"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'page")) ::
              Data.ProtoLens.FieldDescriptor MmFilemapAddToPageCacheFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, pfn__field_descriptor),
           (Data.ProtoLens.Tag 2, iIno__field_descriptor),
           (Data.ProtoLens.Tag 3, index__field_descriptor),
           (Data.ProtoLens.Tag 4, sDev__field_descriptor),
           (Data.ProtoLens.Tag 5, page__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MmFilemapAddToPageCacheFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_MmFilemapAddToPageCacheFtraceEvent'_unknownFields = y__})
  defMessage
    = MmFilemapAddToPageCacheFtraceEvent'_constructor
        {_MmFilemapAddToPageCacheFtraceEvent'pfn = Prelude.Nothing,
         _MmFilemapAddToPageCacheFtraceEvent'iIno = Prelude.Nothing,
         _MmFilemapAddToPageCacheFtraceEvent'index = Prelude.Nothing,
         _MmFilemapAddToPageCacheFtraceEvent'sDev = Prelude.Nothing,
         _MmFilemapAddToPageCacheFtraceEvent'page = Prelude.Nothing,
         _MmFilemapAddToPageCacheFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MmFilemapAddToPageCacheFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MmFilemapAddToPageCacheFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "pfn"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pfn") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "i_ino"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"iIno") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "index"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"index") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "s_dev"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"sDev") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "page"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"page") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "MmFilemapAddToPageCacheFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pfn") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'iIno") _x
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
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'sDev") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'page") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData MmFilemapAddToPageCacheFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MmFilemapAddToPageCacheFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MmFilemapAddToPageCacheFtraceEvent'pfn x__)
                (Control.DeepSeq.deepseq
                   (_MmFilemapAddToPageCacheFtraceEvent'iIno x__)
                   (Control.DeepSeq.deepseq
                      (_MmFilemapAddToPageCacheFtraceEvent'index x__)
                      (Control.DeepSeq.deepseq
                         (_MmFilemapAddToPageCacheFtraceEvent'sDev x__)
                         (Control.DeepSeq.deepseq
                            (_MmFilemapAddToPageCacheFtraceEvent'page x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Filemap_Fields.pfn' @:: Lens' MmFilemapDeleteFromPageCacheFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Filemap_Fields.maybe'pfn' @:: Lens' MmFilemapDeleteFromPageCacheFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Filemap_Fields.iIno' @:: Lens' MmFilemapDeleteFromPageCacheFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Filemap_Fields.maybe'iIno' @:: Lens' MmFilemapDeleteFromPageCacheFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Filemap_Fields.index' @:: Lens' MmFilemapDeleteFromPageCacheFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Filemap_Fields.maybe'index' @:: Lens' MmFilemapDeleteFromPageCacheFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Filemap_Fields.sDev' @:: Lens' MmFilemapDeleteFromPageCacheFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Filemap_Fields.maybe'sDev' @:: Lens' MmFilemapDeleteFromPageCacheFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Filemap_Fields.page' @:: Lens' MmFilemapDeleteFromPageCacheFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Filemap_Fields.maybe'page' @:: Lens' MmFilemapDeleteFromPageCacheFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data MmFilemapDeleteFromPageCacheFtraceEvent
  = MmFilemapDeleteFromPageCacheFtraceEvent'_constructor {_MmFilemapDeleteFromPageCacheFtraceEvent'pfn :: !(Prelude.Maybe Data.Word.Word64),
                                                          _MmFilemapDeleteFromPageCacheFtraceEvent'iIno :: !(Prelude.Maybe Data.Word.Word64),
                                                          _MmFilemapDeleteFromPageCacheFtraceEvent'index :: !(Prelude.Maybe Data.Word.Word64),
                                                          _MmFilemapDeleteFromPageCacheFtraceEvent'sDev :: !(Prelude.Maybe Data.Word.Word64),
                                                          _MmFilemapDeleteFromPageCacheFtraceEvent'page :: !(Prelude.Maybe Data.Word.Word64),
                                                          _MmFilemapDeleteFromPageCacheFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MmFilemapDeleteFromPageCacheFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MmFilemapDeleteFromPageCacheFtraceEvent "pfn" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmFilemapDeleteFromPageCacheFtraceEvent'pfn
           (\ x__ y__
              -> x__ {_MmFilemapDeleteFromPageCacheFtraceEvent'pfn = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmFilemapDeleteFromPageCacheFtraceEvent "maybe'pfn" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmFilemapDeleteFromPageCacheFtraceEvent'pfn
           (\ x__ y__
              -> x__ {_MmFilemapDeleteFromPageCacheFtraceEvent'pfn = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmFilemapDeleteFromPageCacheFtraceEvent "iIno" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmFilemapDeleteFromPageCacheFtraceEvent'iIno
           (\ x__ y__
              -> x__ {_MmFilemapDeleteFromPageCacheFtraceEvent'iIno = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmFilemapDeleteFromPageCacheFtraceEvent "maybe'iIno" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmFilemapDeleteFromPageCacheFtraceEvent'iIno
           (\ x__ y__
              -> x__ {_MmFilemapDeleteFromPageCacheFtraceEvent'iIno = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmFilemapDeleteFromPageCacheFtraceEvent "index" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmFilemapDeleteFromPageCacheFtraceEvent'index
           (\ x__ y__
              -> x__ {_MmFilemapDeleteFromPageCacheFtraceEvent'index = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmFilemapDeleteFromPageCacheFtraceEvent "maybe'index" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmFilemapDeleteFromPageCacheFtraceEvent'index
           (\ x__ y__
              -> x__ {_MmFilemapDeleteFromPageCacheFtraceEvent'index = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmFilemapDeleteFromPageCacheFtraceEvent "sDev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmFilemapDeleteFromPageCacheFtraceEvent'sDev
           (\ x__ y__
              -> x__ {_MmFilemapDeleteFromPageCacheFtraceEvent'sDev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmFilemapDeleteFromPageCacheFtraceEvent "maybe'sDev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmFilemapDeleteFromPageCacheFtraceEvent'sDev
           (\ x__ y__
              -> x__ {_MmFilemapDeleteFromPageCacheFtraceEvent'sDev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmFilemapDeleteFromPageCacheFtraceEvent "page" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmFilemapDeleteFromPageCacheFtraceEvent'page
           (\ x__ y__
              -> x__ {_MmFilemapDeleteFromPageCacheFtraceEvent'page = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmFilemapDeleteFromPageCacheFtraceEvent "maybe'page" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmFilemapDeleteFromPageCacheFtraceEvent'page
           (\ x__ y__
              -> x__ {_MmFilemapDeleteFromPageCacheFtraceEvent'page = y__}))
        Prelude.id
instance Data.ProtoLens.Message MmFilemapDeleteFromPageCacheFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.MmFilemapDeleteFromPageCacheFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \'MmFilemapDeleteFromPageCacheFtraceEvent\DC2\DLE\n\
      \\ETXpfn\CAN\SOH \SOH(\EOTR\ETXpfn\DC2\DC3\n\
      \\ENQi_ino\CAN\STX \SOH(\EOTR\EOTiIno\DC2\DC4\n\
      \\ENQindex\CAN\ETX \SOH(\EOTR\ENQindex\DC2\DC3\n\
      \\ENQs_dev\CAN\EOT \SOH(\EOTR\EOTsDev\DC2\DC2\n\
      \\EOTpage\CAN\ENQ \SOH(\EOTR\EOTpage"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        pfn__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pfn"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pfn")) ::
              Data.ProtoLens.FieldDescriptor MmFilemapDeleteFromPageCacheFtraceEvent
        iIno__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "i_ino"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'iIno")) ::
              Data.ProtoLens.FieldDescriptor MmFilemapDeleteFromPageCacheFtraceEvent
        index__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'index")) ::
              Data.ProtoLens.FieldDescriptor MmFilemapDeleteFromPageCacheFtraceEvent
        sDev__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "s_dev"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sDev")) ::
              Data.ProtoLens.FieldDescriptor MmFilemapDeleteFromPageCacheFtraceEvent
        page__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "page"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'page")) ::
              Data.ProtoLens.FieldDescriptor MmFilemapDeleteFromPageCacheFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, pfn__field_descriptor),
           (Data.ProtoLens.Tag 2, iIno__field_descriptor),
           (Data.ProtoLens.Tag 3, index__field_descriptor),
           (Data.ProtoLens.Tag 4, sDev__field_descriptor),
           (Data.ProtoLens.Tag 5, page__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MmFilemapDeleteFromPageCacheFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__
                {_MmFilemapDeleteFromPageCacheFtraceEvent'_unknownFields = y__})
  defMessage
    = MmFilemapDeleteFromPageCacheFtraceEvent'_constructor
        {_MmFilemapDeleteFromPageCacheFtraceEvent'pfn = Prelude.Nothing,
         _MmFilemapDeleteFromPageCacheFtraceEvent'iIno = Prelude.Nothing,
         _MmFilemapDeleteFromPageCacheFtraceEvent'index = Prelude.Nothing,
         _MmFilemapDeleteFromPageCacheFtraceEvent'sDev = Prelude.Nothing,
         _MmFilemapDeleteFromPageCacheFtraceEvent'page = Prelude.Nothing,
         _MmFilemapDeleteFromPageCacheFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MmFilemapDeleteFromPageCacheFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MmFilemapDeleteFromPageCacheFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "pfn"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pfn") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "i_ino"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"iIno") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "index"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"index") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "s_dev"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"sDev") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "page"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"page") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "MmFilemapDeleteFromPageCacheFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pfn") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'iIno") _x
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
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'sDev") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'page") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData MmFilemapDeleteFromPageCacheFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MmFilemapDeleteFromPageCacheFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MmFilemapDeleteFromPageCacheFtraceEvent'pfn x__)
                (Control.DeepSeq.deepseq
                   (_MmFilemapDeleteFromPageCacheFtraceEvent'iIno x__)
                   (Control.DeepSeq.deepseq
                      (_MmFilemapDeleteFromPageCacheFtraceEvent'index x__)
                      (Control.DeepSeq.deepseq
                         (_MmFilemapDeleteFromPageCacheFtraceEvent'sDev x__)
                         (Control.DeepSeq.deepseq
                            (_MmFilemapDeleteFromPageCacheFtraceEvent'page x__) ())))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \*protos/perfetto/trace/ftrace/filemap.proto\DC2\SIperfetto.protos\"\138\SOH\n\
    \\"MmFilemapAddToPageCacheFtraceEvent\DC2\DLE\n\
    \\ETXpfn\CAN\SOH \SOH(\EOTR\ETXpfn\DC2\DC3\n\
    \\ENQi_ino\CAN\STX \SOH(\EOTR\EOTiIno\DC2\DC4\n\
    \\ENQindex\CAN\ETX \SOH(\EOTR\ENQindex\DC2\DC3\n\
    \\ENQs_dev\CAN\EOT \SOH(\EOTR\EOTsDev\DC2\DC2\n\
    \\EOTpage\CAN\ENQ \SOH(\EOTR\EOTpage\"\143\SOH\n\
    \'MmFilemapDeleteFromPageCacheFtraceEvent\DC2\DLE\n\
    \\ETXpfn\CAN\SOH \SOH(\EOTR\ETXpfn\DC2\DC3\n\
    \\ENQi_ino\CAN\STX \SOH(\EOTR\EOTiIno\DC2\DC4\n\
    \\ENQindex\CAN\ETX \SOH(\EOTR\ENQindex\DC2\DC3\n\
    \\ENQs_dev\CAN\EOT \SOH(\EOTR\EOTsDev\DC2\DC2\n\
    \\EOTpage\CAN\ENQ \SOH(\EOTR\EOTpageJ\215\ACK\n\
    \\ACK\DC2\EOT\EOT\NUL\DC4\SOH\n\
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
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b*\n\
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
    \\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\n\
    \\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\n\
    \\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\n\
    \\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\n\
    \\SUB\ESC\n\
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
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\SO\NUL\DC4\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\SO\b/\n\
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
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\DLE\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX\DLE\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\DLE\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\DLE\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\DLE\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX\DC1\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\EOT\DC2\ETX\DC1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX\DC1\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX\DC1\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX\DC1\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX\DC2\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\EOT\DC2\ETX\DC2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX\DC2\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX\DC2\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX\DC2\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETX\DC3\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\EOT\DC2\ETX\DC3\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ENQ\DC2\ETX\DC3\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETX\DC3\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETX\DC3\EM\SUB"