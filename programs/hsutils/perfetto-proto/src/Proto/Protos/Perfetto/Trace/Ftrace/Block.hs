{- This file was auto-generated from protos/perfetto/trace/ftrace/block.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Block (
        BlockBioBackmergeFtraceEvent(), BlockBioBounceFtraceEvent(),
        BlockBioCompleteFtraceEvent(), BlockBioFrontmergeFtraceEvent(),
        BlockBioQueueFtraceEvent(), BlockBioRemapFtraceEvent(),
        BlockDirtyBufferFtraceEvent(), BlockGetrqFtraceEvent(),
        BlockPlugFtraceEvent(), BlockRqAbortFtraceEvent(),
        BlockRqCompleteFtraceEvent(), BlockRqInsertFtraceEvent(),
        BlockRqIssueFtraceEvent(), BlockRqRemapFtraceEvent(),
        BlockRqRequeueFtraceEvent(), BlockSleeprqFtraceEvent(),
        BlockSplitFtraceEvent(), BlockTouchBufferFtraceEvent(),
        BlockUnplugFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.dev' @:: Lens' BlockBioBackmergeFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'dev' @:: Lens' BlockBioBackmergeFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.sector' @:: Lens' BlockBioBackmergeFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'sector' @:: Lens' BlockBioBackmergeFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.nrSector' @:: Lens' BlockBioBackmergeFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'nrSector' @:: Lens' BlockBioBackmergeFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.rwbs' @:: Lens' BlockBioBackmergeFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'rwbs' @:: Lens' BlockBioBackmergeFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.comm' @:: Lens' BlockBioBackmergeFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'comm' @:: Lens' BlockBioBackmergeFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data BlockBioBackmergeFtraceEvent
  = BlockBioBackmergeFtraceEvent'_constructor {_BlockBioBackmergeFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                               _BlockBioBackmergeFtraceEvent'sector :: !(Prelude.Maybe Data.Word.Word64),
                                               _BlockBioBackmergeFtraceEvent'nrSector :: !(Prelude.Maybe Data.Word.Word32),
                                               _BlockBioBackmergeFtraceEvent'rwbs :: !(Prelude.Maybe Data.Text.Text),
                                               _BlockBioBackmergeFtraceEvent'comm :: !(Prelude.Maybe Data.Text.Text),
                                               _BlockBioBackmergeFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BlockBioBackmergeFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BlockBioBackmergeFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioBackmergeFtraceEvent'dev
           (\ x__ y__ -> x__ {_BlockBioBackmergeFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockBioBackmergeFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioBackmergeFtraceEvent'dev
           (\ x__ y__ -> x__ {_BlockBioBackmergeFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockBioBackmergeFtraceEvent "sector" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioBackmergeFtraceEvent'sector
           (\ x__ y__ -> x__ {_BlockBioBackmergeFtraceEvent'sector = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockBioBackmergeFtraceEvent "maybe'sector" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioBackmergeFtraceEvent'sector
           (\ x__ y__ -> x__ {_BlockBioBackmergeFtraceEvent'sector = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockBioBackmergeFtraceEvent "nrSector" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioBackmergeFtraceEvent'nrSector
           (\ x__ y__ -> x__ {_BlockBioBackmergeFtraceEvent'nrSector = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockBioBackmergeFtraceEvent "maybe'nrSector" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioBackmergeFtraceEvent'nrSector
           (\ x__ y__ -> x__ {_BlockBioBackmergeFtraceEvent'nrSector = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockBioBackmergeFtraceEvent "rwbs" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioBackmergeFtraceEvent'rwbs
           (\ x__ y__ -> x__ {_BlockBioBackmergeFtraceEvent'rwbs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockBioBackmergeFtraceEvent "maybe'rwbs" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioBackmergeFtraceEvent'rwbs
           (\ x__ y__ -> x__ {_BlockBioBackmergeFtraceEvent'rwbs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockBioBackmergeFtraceEvent "comm" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioBackmergeFtraceEvent'comm
           (\ x__ y__ -> x__ {_BlockBioBackmergeFtraceEvent'comm = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockBioBackmergeFtraceEvent "maybe'comm" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioBackmergeFtraceEvent'comm
           (\ x__ y__ -> x__ {_BlockBioBackmergeFtraceEvent'comm = y__}))
        Prelude.id
instance Data.ProtoLens.Message BlockBioBackmergeFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.BlockBioBackmergeFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\FSBlockBioBackmergeFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\SYN\n\
      \\ACKsector\CAN\STX \SOH(\EOTR\ACKsector\DC2\ESC\n\
      \\tnr_sector\CAN\ETX \SOH(\rR\bnrSector\DC2\DC2\n\
      \\EOTrwbs\CAN\EOT \SOH(\tR\EOTrwbs\DC2\DC2\n\
      \\EOTcomm\CAN\ENQ \SOH(\tR\EOTcomm"
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
              Data.ProtoLens.FieldDescriptor BlockBioBackmergeFtraceEvent
        sector__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sector"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sector")) ::
              Data.ProtoLens.FieldDescriptor BlockBioBackmergeFtraceEvent
        nrSector__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nr_sector"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nrSector")) ::
              Data.ProtoLens.FieldDescriptor BlockBioBackmergeFtraceEvent
        rwbs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rwbs"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rwbs")) ::
              Data.ProtoLens.FieldDescriptor BlockBioBackmergeFtraceEvent
        comm__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "comm"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'comm")) ::
              Data.ProtoLens.FieldDescriptor BlockBioBackmergeFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, sector__field_descriptor),
           (Data.ProtoLens.Tag 3, nrSector__field_descriptor),
           (Data.ProtoLens.Tag 4, rwbs__field_descriptor),
           (Data.ProtoLens.Tag 5, comm__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BlockBioBackmergeFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_BlockBioBackmergeFtraceEvent'_unknownFields = y__})
  defMessage
    = BlockBioBackmergeFtraceEvent'_constructor
        {_BlockBioBackmergeFtraceEvent'dev = Prelude.Nothing,
         _BlockBioBackmergeFtraceEvent'sector = Prelude.Nothing,
         _BlockBioBackmergeFtraceEvent'nrSector = Prelude.Nothing,
         _BlockBioBackmergeFtraceEvent'rwbs = Prelude.Nothing,
         _BlockBioBackmergeFtraceEvent'comm = Prelude.Nothing,
         _BlockBioBackmergeFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BlockBioBackmergeFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser BlockBioBackmergeFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "sector"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"sector") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "nr_sector"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nrSector") y x)
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
                                       "rwbs"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"rwbs") y x)
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
                                       "comm"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"comm") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BlockBioBackmergeFtraceEvent"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'sector") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nrSector") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'rwbs") _x
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
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'comm") _x
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
instance Control.DeepSeq.NFData BlockBioBackmergeFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BlockBioBackmergeFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BlockBioBackmergeFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_BlockBioBackmergeFtraceEvent'sector x__)
                   (Control.DeepSeq.deepseq
                      (_BlockBioBackmergeFtraceEvent'nrSector x__)
                      (Control.DeepSeq.deepseq
                         (_BlockBioBackmergeFtraceEvent'rwbs x__)
                         (Control.DeepSeq.deepseq
                            (_BlockBioBackmergeFtraceEvent'comm x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.dev' @:: Lens' BlockBioBounceFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'dev' @:: Lens' BlockBioBounceFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.sector' @:: Lens' BlockBioBounceFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'sector' @:: Lens' BlockBioBounceFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.nrSector' @:: Lens' BlockBioBounceFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'nrSector' @:: Lens' BlockBioBounceFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.rwbs' @:: Lens' BlockBioBounceFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'rwbs' @:: Lens' BlockBioBounceFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.comm' @:: Lens' BlockBioBounceFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'comm' @:: Lens' BlockBioBounceFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data BlockBioBounceFtraceEvent
  = BlockBioBounceFtraceEvent'_constructor {_BlockBioBounceFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                            _BlockBioBounceFtraceEvent'sector :: !(Prelude.Maybe Data.Word.Word64),
                                            _BlockBioBounceFtraceEvent'nrSector :: !(Prelude.Maybe Data.Word.Word32),
                                            _BlockBioBounceFtraceEvent'rwbs :: !(Prelude.Maybe Data.Text.Text),
                                            _BlockBioBounceFtraceEvent'comm :: !(Prelude.Maybe Data.Text.Text),
                                            _BlockBioBounceFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BlockBioBounceFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BlockBioBounceFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioBounceFtraceEvent'dev
           (\ x__ y__ -> x__ {_BlockBioBounceFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockBioBounceFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioBounceFtraceEvent'dev
           (\ x__ y__ -> x__ {_BlockBioBounceFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockBioBounceFtraceEvent "sector" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioBounceFtraceEvent'sector
           (\ x__ y__ -> x__ {_BlockBioBounceFtraceEvent'sector = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockBioBounceFtraceEvent "maybe'sector" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioBounceFtraceEvent'sector
           (\ x__ y__ -> x__ {_BlockBioBounceFtraceEvent'sector = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockBioBounceFtraceEvent "nrSector" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioBounceFtraceEvent'nrSector
           (\ x__ y__ -> x__ {_BlockBioBounceFtraceEvent'nrSector = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockBioBounceFtraceEvent "maybe'nrSector" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioBounceFtraceEvent'nrSector
           (\ x__ y__ -> x__ {_BlockBioBounceFtraceEvent'nrSector = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockBioBounceFtraceEvent "rwbs" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioBounceFtraceEvent'rwbs
           (\ x__ y__ -> x__ {_BlockBioBounceFtraceEvent'rwbs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockBioBounceFtraceEvent "maybe'rwbs" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioBounceFtraceEvent'rwbs
           (\ x__ y__ -> x__ {_BlockBioBounceFtraceEvent'rwbs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockBioBounceFtraceEvent "comm" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioBounceFtraceEvent'comm
           (\ x__ y__ -> x__ {_BlockBioBounceFtraceEvent'comm = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockBioBounceFtraceEvent "maybe'comm" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioBounceFtraceEvent'comm
           (\ x__ y__ -> x__ {_BlockBioBounceFtraceEvent'comm = y__}))
        Prelude.id
instance Data.ProtoLens.Message BlockBioBounceFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.BlockBioBounceFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\EMBlockBioBounceFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\SYN\n\
      \\ACKsector\CAN\STX \SOH(\EOTR\ACKsector\DC2\ESC\n\
      \\tnr_sector\CAN\ETX \SOH(\rR\bnrSector\DC2\DC2\n\
      \\EOTrwbs\CAN\EOT \SOH(\tR\EOTrwbs\DC2\DC2\n\
      \\EOTcomm\CAN\ENQ \SOH(\tR\EOTcomm"
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
              Data.ProtoLens.FieldDescriptor BlockBioBounceFtraceEvent
        sector__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sector"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sector")) ::
              Data.ProtoLens.FieldDescriptor BlockBioBounceFtraceEvent
        nrSector__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nr_sector"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nrSector")) ::
              Data.ProtoLens.FieldDescriptor BlockBioBounceFtraceEvent
        rwbs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rwbs"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rwbs")) ::
              Data.ProtoLens.FieldDescriptor BlockBioBounceFtraceEvent
        comm__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "comm"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'comm")) ::
              Data.ProtoLens.FieldDescriptor BlockBioBounceFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, sector__field_descriptor),
           (Data.ProtoLens.Tag 3, nrSector__field_descriptor),
           (Data.ProtoLens.Tag 4, rwbs__field_descriptor),
           (Data.ProtoLens.Tag 5, comm__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BlockBioBounceFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_BlockBioBounceFtraceEvent'_unknownFields = y__})
  defMessage
    = BlockBioBounceFtraceEvent'_constructor
        {_BlockBioBounceFtraceEvent'dev = Prelude.Nothing,
         _BlockBioBounceFtraceEvent'sector = Prelude.Nothing,
         _BlockBioBounceFtraceEvent'nrSector = Prelude.Nothing,
         _BlockBioBounceFtraceEvent'rwbs = Prelude.Nothing,
         _BlockBioBounceFtraceEvent'comm = Prelude.Nothing,
         _BlockBioBounceFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BlockBioBounceFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser BlockBioBounceFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "sector"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"sector") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "nr_sector"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nrSector") y x)
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
                                       "rwbs"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"rwbs") y x)
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
                                       "comm"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"comm") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BlockBioBounceFtraceEvent"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'sector") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nrSector") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'rwbs") _x
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
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'comm") _x
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
instance Control.DeepSeq.NFData BlockBioBounceFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BlockBioBounceFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BlockBioBounceFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_BlockBioBounceFtraceEvent'sector x__)
                   (Control.DeepSeq.deepseq
                      (_BlockBioBounceFtraceEvent'nrSector x__)
                      (Control.DeepSeq.deepseq
                         (_BlockBioBounceFtraceEvent'rwbs x__)
                         (Control.DeepSeq.deepseq
                            (_BlockBioBounceFtraceEvent'comm x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.dev' @:: Lens' BlockBioCompleteFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'dev' @:: Lens' BlockBioCompleteFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.sector' @:: Lens' BlockBioCompleteFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'sector' @:: Lens' BlockBioCompleteFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.nrSector' @:: Lens' BlockBioCompleteFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'nrSector' @:: Lens' BlockBioCompleteFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.error' @:: Lens' BlockBioCompleteFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'error' @:: Lens' BlockBioCompleteFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.rwbs' @:: Lens' BlockBioCompleteFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'rwbs' @:: Lens' BlockBioCompleteFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data BlockBioCompleteFtraceEvent
  = BlockBioCompleteFtraceEvent'_constructor {_BlockBioCompleteFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                              _BlockBioCompleteFtraceEvent'sector :: !(Prelude.Maybe Data.Word.Word64),
                                              _BlockBioCompleteFtraceEvent'nrSector :: !(Prelude.Maybe Data.Word.Word32),
                                              _BlockBioCompleteFtraceEvent'error :: !(Prelude.Maybe Data.Int.Int32),
                                              _BlockBioCompleteFtraceEvent'rwbs :: !(Prelude.Maybe Data.Text.Text),
                                              _BlockBioCompleteFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BlockBioCompleteFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BlockBioCompleteFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioCompleteFtraceEvent'dev
           (\ x__ y__ -> x__ {_BlockBioCompleteFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockBioCompleteFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioCompleteFtraceEvent'dev
           (\ x__ y__ -> x__ {_BlockBioCompleteFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockBioCompleteFtraceEvent "sector" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioCompleteFtraceEvent'sector
           (\ x__ y__ -> x__ {_BlockBioCompleteFtraceEvent'sector = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockBioCompleteFtraceEvent "maybe'sector" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioCompleteFtraceEvent'sector
           (\ x__ y__ -> x__ {_BlockBioCompleteFtraceEvent'sector = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockBioCompleteFtraceEvent "nrSector" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioCompleteFtraceEvent'nrSector
           (\ x__ y__ -> x__ {_BlockBioCompleteFtraceEvent'nrSector = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockBioCompleteFtraceEvent "maybe'nrSector" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioCompleteFtraceEvent'nrSector
           (\ x__ y__ -> x__ {_BlockBioCompleteFtraceEvent'nrSector = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockBioCompleteFtraceEvent "error" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioCompleteFtraceEvent'error
           (\ x__ y__ -> x__ {_BlockBioCompleteFtraceEvent'error = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockBioCompleteFtraceEvent "maybe'error" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioCompleteFtraceEvent'error
           (\ x__ y__ -> x__ {_BlockBioCompleteFtraceEvent'error = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockBioCompleteFtraceEvent "rwbs" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioCompleteFtraceEvent'rwbs
           (\ x__ y__ -> x__ {_BlockBioCompleteFtraceEvent'rwbs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockBioCompleteFtraceEvent "maybe'rwbs" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioCompleteFtraceEvent'rwbs
           (\ x__ y__ -> x__ {_BlockBioCompleteFtraceEvent'rwbs = y__}))
        Prelude.id
instance Data.ProtoLens.Message BlockBioCompleteFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.BlockBioCompleteFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ESCBlockBioCompleteFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\SYN\n\
      \\ACKsector\CAN\STX \SOH(\EOTR\ACKsector\DC2\ESC\n\
      \\tnr_sector\CAN\ETX \SOH(\rR\bnrSector\DC2\DC4\n\
      \\ENQerror\CAN\EOT \SOH(\ENQR\ENQerror\DC2\DC2\n\
      \\EOTrwbs\CAN\ENQ \SOH(\tR\EOTrwbs"
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
              Data.ProtoLens.FieldDescriptor BlockBioCompleteFtraceEvent
        sector__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sector"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sector")) ::
              Data.ProtoLens.FieldDescriptor BlockBioCompleteFtraceEvent
        nrSector__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nr_sector"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nrSector")) ::
              Data.ProtoLens.FieldDescriptor BlockBioCompleteFtraceEvent
        error__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "error"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'error")) ::
              Data.ProtoLens.FieldDescriptor BlockBioCompleteFtraceEvent
        rwbs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rwbs"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rwbs")) ::
              Data.ProtoLens.FieldDescriptor BlockBioCompleteFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, sector__field_descriptor),
           (Data.ProtoLens.Tag 3, nrSector__field_descriptor),
           (Data.ProtoLens.Tag 4, error__field_descriptor),
           (Data.ProtoLens.Tag 5, rwbs__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BlockBioCompleteFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_BlockBioCompleteFtraceEvent'_unknownFields = y__})
  defMessage
    = BlockBioCompleteFtraceEvent'_constructor
        {_BlockBioCompleteFtraceEvent'dev = Prelude.Nothing,
         _BlockBioCompleteFtraceEvent'sector = Prelude.Nothing,
         _BlockBioCompleteFtraceEvent'nrSector = Prelude.Nothing,
         _BlockBioCompleteFtraceEvent'error = Prelude.Nothing,
         _BlockBioCompleteFtraceEvent'rwbs = Prelude.Nothing,
         _BlockBioCompleteFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BlockBioCompleteFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser BlockBioCompleteFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "sector"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"sector") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "nr_sector"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nrSector") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "error"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"error") y x)
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
                                       "rwbs"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"rwbs") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BlockBioCompleteFtraceEvent"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'sector") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nrSector") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'error") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'rwbs") _x
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
instance Control.DeepSeq.NFData BlockBioCompleteFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BlockBioCompleteFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BlockBioCompleteFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_BlockBioCompleteFtraceEvent'sector x__)
                   (Control.DeepSeq.deepseq
                      (_BlockBioCompleteFtraceEvent'nrSector x__)
                      (Control.DeepSeq.deepseq
                         (_BlockBioCompleteFtraceEvent'error x__)
                         (Control.DeepSeq.deepseq
                            (_BlockBioCompleteFtraceEvent'rwbs x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.dev' @:: Lens' BlockBioFrontmergeFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'dev' @:: Lens' BlockBioFrontmergeFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.sector' @:: Lens' BlockBioFrontmergeFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'sector' @:: Lens' BlockBioFrontmergeFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.nrSector' @:: Lens' BlockBioFrontmergeFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'nrSector' @:: Lens' BlockBioFrontmergeFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.rwbs' @:: Lens' BlockBioFrontmergeFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'rwbs' @:: Lens' BlockBioFrontmergeFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.comm' @:: Lens' BlockBioFrontmergeFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'comm' @:: Lens' BlockBioFrontmergeFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data BlockBioFrontmergeFtraceEvent
  = BlockBioFrontmergeFtraceEvent'_constructor {_BlockBioFrontmergeFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                                _BlockBioFrontmergeFtraceEvent'sector :: !(Prelude.Maybe Data.Word.Word64),
                                                _BlockBioFrontmergeFtraceEvent'nrSector :: !(Prelude.Maybe Data.Word.Word32),
                                                _BlockBioFrontmergeFtraceEvent'rwbs :: !(Prelude.Maybe Data.Text.Text),
                                                _BlockBioFrontmergeFtraceEvent'comm :: !(Prelude.Maybe Data.Text.Text),
                                                _BlockBioFrontmergeFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BlockBioFrontmergeFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BlockBioFrontmergeFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioFrontmergeFtraceEvent'dev
           (\ x__ y__ -> x__ {_BlockBioFrontmergeFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockBioFrontmergeFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioFrontmergeFtraceEvent'dev
           (\ x__ y__ -> x__ {_BlockBioFrontmergeFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockBioFrontmergeFtraceEvent "sector" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioFrontmergeFtraceEvent'sector
           (\ x__ y__ -> x__ {_BlockBioFrontmergeFtraceEvent'sector = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockBioFrontmergeFtraceEvent "maybe'sector" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioFrontmergeFtraceEvent'sector
           (\ x__ y__ -> x__ {_BlockBioFrontmergeFtraceEvent'sector = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockBioFrontmergeFtraceEvent "nrSector" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioFrontmergeFtraceEvent'nrSector
           (\ x__ y__ -> x__ {_BlockBioFrontmergeFtraceEvent'nrSector = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockBioFrontmergeFtraceEvent "maybe'nrSector" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioFrontmergeFtraceEvent'nrSector
           (\ x__ y__ -> x__ {_BlockBioFrontmergeFtraceEvent'nrSector = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockBioFrontmergeFtraceEvent "rwbs" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioFrontmergeFtraceEvent'rwbs
           (\ x__ y__ -> x__ {_BlockBioFrontmergeFtraceEvent'rwbs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockBioFrontmergeFtraceEvent "maybe'rwbs" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioFrontmergeFtraceEvent'rwbs
           (\ x__ y__ -> x__ {_BlockBioFrontmergeFtraceEvent'rwbs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockBioFrontmergeFtraceEvent "comm" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioFrontmergeFtraceEvent'comm
           (\ x__ y__ -> x__ {_BlockBioFrontmergeFtraceEvent'comm = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockBioFrontmergeFtraceEvent "maybe'comm" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioFrontmergeFtraceEvent'comm
           (\ x__ y__ -> x__ {_BlockBioFrontmergeFtraceEvent'comm = y__}))
        Prelude.id
instance Data.ProtoLens.Message BlockBioFrontmergeFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.BlockBioFrontmergeFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\GSBlockBioFrontmergeFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\SYN\n\
      \\ACKsector\CAN\STX \SOH(\EOTR\ACKsector\DC2\ESC\n\
      \\tnr_sector\CAN\ETX \SOH(\rR\bnrSector\DC2\DC2\n\
      \\EOTrwbs\CAN\EOT \SOH(\tR\EOTrwbs\DC2\DC2\n\
      \\EOTcomm\CAN\ENQ \SOH(\tR\EOTcomm"
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
              Data.ProtoLens.FieldDescriptor BlockBioFrontmergeFtraceEvent
        sector__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sector"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sector")) ::
              Data.ProtoLens.FieldDescriptor BlockBioFrontmergeFtraceEvent
        nrSector__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nr_sector"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nrSector")) ::
              Data.ProtoLens.FieldDescriptor BlockBioFrontmergeFtraceEvent
        rwbs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rwbs"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rwbs")) ::
              Data.ProtoLens.FieldDescriptor BlockBioFrontmergeFtraceEvent
        comm__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "comm"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'comm")) ::
              Data.ProtoLens.FieldDescriptor BlockBioFrontmergeFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, sector__field_descriptor),
           (Data.ProtoLens.Tag 3, nrSector__field_descriptor),
           (Data.ProtoLens.Tag 4, rwbs__field_descriptor),
           (Data.ProtoLens.Tag 5, comm__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BlockBioFrontmergeFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_BlockBioFrontmergeFtraceEvent'_unknownFields = y__})
  defMessage
    = BlockBioFrontmergeFtraceEvent'_constructor
        {_BlockBioFrontmergeFtraceEvent'dev = Prelude.Nothing,
         _BlockBioFrontmergeFtraceEvent'sector = Prelude.Nothing,
         _BlockBioFrontmergeFtraceEvent'nrSector = Prelude.Nothing,
         _BlockBioFrontmergeFtraceEvent'rwbs = Prelude.Nothing,
         _BlockBioFrontmergeFtraceEvent'comm = Prelude.Nothing,
         _BlockBioFrontmergeFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BlockBioFrontmergeFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser BlockBioFrontmergeFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "sector"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"sector") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "nr_sector"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nrSector") y x)
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
                                       "rwbs"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"rwbs") y x)
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
                                       "comm"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"comm") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BlockBioFrontmergeFtraceEvent"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'sector") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nrSector") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'rwbs") _x
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
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'comm") _x
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
instance Control.DeepSeq.NFData BlockBioFrontmergeFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BlockBioFrontmergeFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BlockBioFrontmergeFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_BlockBioFrontmergeFtraceEvent'sector x__)
                   (Control.DeepSeq.deepseq
                      (_BlockBioFrontmergeFtraceEvent'nrSector x__)
                      (Control.DeepSeq.deepseq
                         (_BlockBioFrontmergeFtraceEvent'rwbs x__)
                         (Control.DeepSeq.deepseq
                            (_BlockBioFrontmergeFtraceEvent'comm x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.dev' @:: Lens' BlockBioQueueFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'dev' @:: Lens' BlockBioQueueFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.sector' @:: Lens' BlockBioQueueFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'sector' @:: Lens' BlockBioQueueFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.nrSector' @:: Lens' BlockBioQueueFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'nrSector' @:: Lens' BlockBioQueueFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.rwbs' @:: Lens' BlockBioQueueFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'rwbs' @:: Lens' BlockBioQueueFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.comm' @:: Lens' BlockBioQueueFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'comm' @:: Lens' BlockBioQueueFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data BlockBioQueueFtraceEvent
  = BlockBioQueueFtraceEvent'_constructor {_BlockBioQueueFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                           _BlockBioQueueFtraceEvent'sector :: !(Prelude.Maybe Data.Word.Word64),
                                           _BlockBioQueueFtraceEvent'nrSector :: !(Prelude.Maybe Data.Word.Word32),
                                           _BlockBioQueueFtraceEvent'rwbs :: !(Prelude.Maybe Data.Text.Text),
                                           _BlockBioQueueFtraceEvent'comm :: !(Prelude.Maybe Data.Text.Text),
                                           _BlockBioQueueFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BlockBioQueueFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BlockBioQueueFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioQueueFtraceEvent'dev
           (\ x__ y__ -> x__ {_BlockBioQueueFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockBioQueueFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioQueueFtraceEvent'dev
           (\ x__ y__ -> x__ {_BlockBioQueueFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockBioQueueFtraceEvent "sector" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioQueueFtraceEvent'sector
           (\ x__ y__ -> x__ {_BlockBioQueueFtraceEvent'sector = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockBioQueueFtraceEvent "maybe'sector" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioQueueFtraceEvent'sector
           (\ x__ y__ -> x__ {_BlockBioQueueFtraceEvent'sector = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockBioQueueFtraceEvent "nrSector" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioQueueFtraceEvent'nrSector
           (\ x__ y__ -> x__ {_BlockBioQueueFtraceEvent'nrSector = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockBioQueueFtraceEvent "maybe'nrSector" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioQueueFtraceEvent'nrSector
           (\ x__ y__ -> x__ {_BlockBioQueueFtraceEvent'nrSector = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockBioQueueFtraceEvent "rwbs" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioQueueFtraceEvent'rwbs
           (\ x__ y__ -> x__ {_BlockBioQueueFtraceEvent'rwbs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockBioQueueFtraceEvent "maybe'rwbs" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioQueueFtraceEvent'rwbs
           (\ x__ y__ -> x__ {_BlockBioQueueFtraceEvent'rwbs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockBioQueueFtraceEvent "comm" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioQueueFtraceEvent'comm
           (\ x__ y__ -> x__ {_BlockBioQueueFtraceEvent'comm = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockBioQueueFtraceEvent "maybe'comm" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioQueueFtraceEvent'comm
           (\ x__ y__ -> x__ {_BlockBioQueueFtraceEvent'comm = y__}))
        Prelude.id
instance Data.ProtoLens.Message BlockBioQueueFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.BlockBioQueueFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\CANBlockBioQueueFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\SYN\n\
      \\ACKsector\CAN\STX \SOH(\EOTR\ACKsector\DC2\ESC\n\
      \\tnr_sector\CAN\ETX \SOH(\rR\bnrSector\DC2\DC2\n\
      \\EOTrwbs\CAN\EOT \SOH(\tR\EOTrwbs\DC2\DC2\n\
      \\EOTcomm\CAN\ENQ \SOH(\tR\EOTcomm"
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
              Data.ProtoLens.FieldDescriptor BlockBioQueueFtraceEvent
        sector__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sector"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sector")) ::
              Data.ProtoLens.FieldDescriptor BlockBioQueueFtraceEvent
        nrSector__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nr_sector"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nrSector")) ::
              Data.ProtoLens.FieldDescriptor BlockBioQueueFtraceEvent
        rwbs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rwbs"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rwbs")) ::
              Data.ProtoLens.FieldDescriptor BlockBioQueueFtraceEvent
        comm__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "comm"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'comm")) ::
              Data.ProtoLens.FieldDescriptor BlockBioQueueFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, sector__field_descriptor),
           (Data.ProtoLens.Tag 3, nrSector__field_descriptor),
           (Data.ProtoLens.Tag 4, rwbs__field_descriptor),
           (Data.ProtoLens.Tag 5, comm__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BlockBioQueueFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_BlockBioQueueFtraceEvent'_unknownFields = y__})
  defMessage
    = BlockBioQueueFtraceEvent'_constructor
        {_BlockBioQueueFtraceEvent'dev = Prelude.Nothing,
         _BlockBioQueueFtraceEvent'sector = Prelude.Nothing,
         _BlockBioQueueFtraceEvent'nrSector = Prelude.Nothing,
         _BlockBioQueueFtraceEvent'rwbs = Prelude.Nothing,
         _BlockBioQueueFtraceEvent'comm = Prelude.Nothing,
         _BlockBioQueueFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BlockBioQueueFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser BlockBioQueueFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "sector"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"sector") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "nr_sector"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nrSector") y x)
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
                                       "rwbs"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"rwbs") y x)
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
                                       "comm"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"comm") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BlockBioQueueFtraceEvent"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'sector") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nrSector") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'rwbs") _x
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
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'comm") _x
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
instance Control.DeepSeq.NFData BlockBioQueueFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BlockBioQueueFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BlockBioQueueFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_BlockBioQueueFtraceEvent'sector x__)
                   (Control.DeepSeq.deepseq
                      (_BlockBioQueueFtraceEvent'nrSector x__)
                      (Control.DeepSeq.deepseq
                         (_BlockBioQueueFtraceEvent'rwbs x__)
                         (Control.DeepSeq.deepseq
                            (_BlockBioQueueFtraceEvent'comm x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.dev' @:: Lens' BlockBioRemapFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'dev' @:: Lens' BlockBioRemapFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.sector' @:: Lens' BlockBioRemapFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'sector' @:: Lens' BlockBioRemapFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.nrSector' @:: Lens' BlockBioRemapFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'nrSector' @:: Lens' BlockBioRemapFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.oldDev' @:: Lens' BlockBioRemapFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'oldDev' @:: Lens' BlockBioRemapFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.oldSector' @:: Lens' BlockBioRemapFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'oldSector' @:: Lens' BlockBioRemapFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.rwbs' @:: Lens' BlockBioRemapFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'rwbs' @:: Lens' BlockBioRemapFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data BlockBioRemapFtraceEvent
  = BlockBioRemapFtraceEvent'_constructor {_BlockBioRemapFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                           _BlockBioRemapFtraceEvent'sector :: !(Prelude.Maybe Data.Word.Word64),
                                           _BlockBioRemapFtraceEvent'nrSector :: !(Prelude.Maybe Data.Word.Word32),
                                           _BlockBioRemapFtraceEvent'oldDev :: !(Prelude.Maybe Data.Word.Word64),
                                           _BlockBioRemapFtraceEvent'oldSector :: !(Prelude.Maybe Data.Word.Word64),
                                           _BlockBioRemapFtraceEvent'rwbs :: !(Prelude.Maybe Data.Text.Text),
                                           _BlockBioRemapFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BlockBioRemapFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BlockBioRemapFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioRemapFtraceEvent'dev
           (\ x__ y__ -> x__ {_BlockBioRemapFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockBioRemapFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioRemapFtraceEvent'dev
           (\ x__ y__ -> x__ {_BlockBioRemapFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockBioRemapFtraceEvent "sector" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioRemapFtraceEvent'sector
           (\ x__ y__ -> x__ {_BlockBioRemapFtraceEvent'sector = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockBioRemapFtraceEvent "maybe'sector" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioRemapFtraceEvent'sector
           (\ x__ y__ -> x__ {_BlockBioRemapFtraceEvent'sector = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockBioRemapFtraceEvent "nrSector" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioRemapFtraceEvent'nrSector
           (\ x__ y__ -> x__ {_BlockBioRemapFtraceEvent'nrSector = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockBioRemapFtraceEvent "maybe'nrSector" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioRemapFtraceEvent'nrSector
           (\ x__ y__ -> x__ {_BlockBioRemapFtraceEvent'nrSector = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockBioRemapFtraceEvent "oldDev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioRemapFtraceEvent'oldDev
           (\ x__ y__ -> x__ {_BlockBioRemapFtraceEvent'oldDev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockBioRemapFtraceEvent "maybe'oldDev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioRemapFtraceEvent'oldDev
           (\ x__ y__ -> x__ {_BlockBioRemapFtraceEvent'oldDev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockBioRemapFtraceEvent "oldSector" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioRemapFtraceEvent'oldSector
           (\ x__ y__ -> x__ {_BlockBioRemapFtraceEvent'oldSector = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockBioRemapFtraceEvent "maybe'oldSector" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioRemapFtraceEvent'oldSector
           (\ x__ y__ -> x__ {_BlockBioRemapFtraceEvent'oldSector = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockBioRemapFtraceEvent "rwbs" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioRemapFtraceEvent'rwbs
           (\ x__ y__ -> x__ {_BlockBioRemapFtraceEvent'rwbs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockBioRemapFtraceEvent "maybe'rwbs" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockBioRemapFtraceEvent'rwbs
           (\ x__ y__ -> x__ {_BlockBioRemapFtraceEvent'rwbs = y__}))
        Prelude.id
instance Data.ProtoLens.Message BlockBioRemapFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.BlockBioRemapFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\CANBlockBioRemapFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\SYN\n\
      \\ACKsector\CAN\STX \SOH(\EOTR\ACKsector\DC2\ESC\n\
      \\tnr_sector\CAN\ETX \SOH(\rR\bnrSector\DC2\ETB\n\
      \\aold_dev\CAN\EOT \SOH(\EOTR\ACKoldDev\DC2\GS\n\
      \\n\
      \old_sector\CAN\ENQ \SOH(\EOTR\toldSector\DC2\DC2\n\
      \\EOTrwbs\CAN\ACK \SOH(\tR\EOTrwbs"
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
              Data.ProtoLens.FieldDescriptor BlockBioRemapFtraceEvent
        sector__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sector"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sector")) ::
              Data.ProtoLens.FieldDescriptor BlockBioRemapFtraceEvent
        nrSector__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nr_sector"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nrSector")) ::
              Data.ProtoLens.FieldDescriptor BlockBioRemapFtraceEvent
        oldDev__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "old_dev"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'oldDev")) ::
              Data.ProtoLens.FieldDescriptor BlockBioRemapFtraceEvent
        oldSector__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "old_sector"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'oldSector")) ::
              Data.ProtoLens.FieldDescriptor BlockBioRemapFtraceEvent
        rwbs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rwbs"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rwbs")) ::
              Data.ProtoLens.FieldDescriptor BlockBioRemapFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, sector__field_descriptor),
           (Data.ProtoLens.Tag 3, nrSector__field_descriptor),
           (Data.ProtoLens.Tag 4, oldDev__field_descriptor),
           (Data.ProtoLens.Tag 5, oldSector__field_descriptor),
           (Data.ProtoLens.Tag 6, rwbs__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BlockBioRemapFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_BlockBioRemapFtraceEvent'_unknownFields = y__})
  defMessage
    = BlockBioRemapFtraceEvent'_constructor
        {_BlockBioRemapFtraceEvent'dev = Prelude.Nothing,
         _BlockBioRemapFtraceEvent'sector = Prelude.Nothing,
         _BlockBioRemapFtraceEvent'nrSector = Prelude.Nothing,
         _BlockBioRemapFtraceEvent'oldDev = Prelude.Nothing,
         _BlockBioRemapFtraceEvent'oldSector = Prelude.Nothing,
         _BlockBioRemapFtraceEvent'rwbs = Prelude.Nothing,
         _BlockBioRemapFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BlockBioRemapFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser BlockBioRemapFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "sector"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"sector") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "nr_sector"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nrSector") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "old_dev"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"oldDev") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "old_sector"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"oldSector") y x)
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
                                       "rwbs"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"rwbs") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BlockBioRemapFtraceEvent"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'sector") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nrSector") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'oldDev") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'oldSector") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'rwbs") _x
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
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData BlockBioRemapFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BlockBioRemapFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BlockBioRemapFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_BlockBioRemapFtraceEvent'sector x__)
                   (Control.DeepSeq.deepseq
                      (_BlockBioRemapFtraceEvent'nrSector x__)
                      (Control.DeepSeq.deepseq
                         (_BlockBioRemapFtraceEvent'oldDev x__)
                         (Control.DeepSeq.deepseq
                            (_BlockBioRemapFtraceEvent'oldSector x__)
                            (Control.DeepSeq.deepseq
                               (_BlockBioRemapFtraceEvent'rwbs x__) ()))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.dev' @:: Lens' BlockDirtyBufferFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'dev' @:: Lens' BlockDirtyBufferFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.sector' @:: Lens' BlockDirtyBufferFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'sector' @:: Lens' BlockDirtyBufferFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.size' @:: Lens' BlockDirtyBufferFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'size' @:: Lens' BlockDirtyBufferFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data BlockDirtyBufferFtraceEvent
  = BlockDirtyBufferFtraceEvent'_constructor {_BlockDirtyBufferFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                              _BlockDirtyBufferFtraceEvent'sector :: !(Prelude.Maybe Data.Word.Word64),
                                              _BlockDirtyBufferFtraceEvent'size :: !(Prelude.Maybe Data.Word.Word64),
                                              _BlockDirtyBufferFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BlockDirtyBufferFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BlockDirtyBufferFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockDirtyBufferFtraceEvent'dev
           (\ x__ y__ -> x__ {_BlockDirtyBufferFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockDirtyBufferFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockDirtyBufferFtraceEvent'dev
           (\ x__ y__ -> x__ {_BlockDirtyBufferFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockDirtyBufferFtraceEvent "sector" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockDirtyBufferFtraceEvent'sector
           (\ x__ y__ -> x__ {_BlockDirtyBufferFtraceEvent'sector = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockDirtyBufferFtraceEvent "maybe'sector" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockDirtyBufferFtraceEvent'sector
           (\ x__ y__ -> x__ {_BlockDirtyBufferFtraceEvent'sector = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockDirtyBufferFtraceEvent "size" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockDirtyBufferFtraceEvent'size
           (\ x__ y__ -> x__ {_BlockDirtyBufferFtraceEvent'size = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockDirtyBufferFtraceEvent "maybe'size" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockDirtyBufferFtraceEvent'size
           (\ x__ y__ -> x__ {_BlockDirtyBufferFtraceEvent'size = y__}))
        Prelude.id
instance Data.ProtoLens.Message BlockDirtyBufferFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.BlockDirtyBufferFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ESCBlockDirtyBufferFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\SYN\n\
      \\ACKsector\CAN\STX \SOH(\EOTR\ACKsector\DC2\DC2\n\
      \\EOTsize\CAN\ETX \SOH(\EOTR\EOTsize"
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
              Data.ProtoLens.FieldDescriptor BlockDirtyBufferFtraceEvent
        sector__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sector"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sector")) ::
              Data.ProtoLens.FieldDescriptor BlockDirtyBufferFtraceEvent
        size__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'size")) ::
              Data.ProtoLens.FieldDescriptor BlockDirtyBufferFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, sector__field_descriptor),
           (Data.ProtoLens.Tag 3, size__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BlockDirtyBufferFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_BlockDirtyBufferFtraceEvent'_unknownFields = y__})
  defMessage
    = BlockDirtyBufferFtraceEvent'_constructor
        {_BlockDirtyBufferFtraceEvent'dev = Prelude.Nothing,
         _BlockDirtyBufferFtraceEvent'sector = Prelude.Nothing,
         _BlockDirtyBufferFtraceEvent'size = Prelude.Nothing,
         _BlockDirtyBufferFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BlockDirtyBufferFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser BlockDirtyBufferFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "sector"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"sector") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "size"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"size") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BlockDirtyBufferFtraceEvent"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'sector") _x
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
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData BlockDirtyBufferFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BlockDirtyBufferFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BlockDirtyBufferFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_BlockDirtyBufferFtraceEvent'sector x__)
                   (Control.DeepSeq.deepseq
                      (_BlockDirtyBufferFtraceEvent'size x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.dev' @:: Lens' BlockGetrqFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'dev' @:: Lens' BlockGetrqFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.sector' @:: Lens' BlockGetrqFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'sector' @:: Lens' BlockGetrqFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.nrSector' @:: Lens' BlockGetrqFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'nrSector' @:: Lens' BlockGetrqFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.rwbs' @:: Lens' BlockGetrqFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'rwbs' @:: Lens' BlockGetrqFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.comm' @:: Lens' BlockGetrqFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'comm' @:: Lens' BlockGetrqFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data BlockGetrqFtraceEvent
  = BlockGetrqFtraceEvent'_constructor {_BlockGetrqFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                        _BlockGetrqFtraceEvent'sector :: !(Prelude.Maybe Data.Word.Word64),
                                        _BlockGetrqFtraceEvent'nrSector :: !(Prelude.Maybe Data.Word.Word32),
                                        _BlockGetrqFtraceEvent'rwbs :: !(Prelude.Maybe Data.Text.Text),
                                        _BlockGetrqFtraceEvent'comm :: !(Prelude.Maybe Data.Text.Text),
                                        _BlockGetrqFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BlockGetrqFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BlockGetrqFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockGetrqFtraceEvent'dev
           (\ x__ y__ -> x__ {_BlockGetrqFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockGetrqFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockGetrqFtraceEvent'dev
           (\ x__ y__ -> x__ {_BlockGetrqFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockGetrqFtraceEvent "sector" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockGetrqFtraceEvent'sector
           (\ x__ y__ -> x__ {_BlockGetrqFtraceEvent'sector = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockGetrqFtraceEvent "maybe'sector" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockGetrqFtraceEvent'sector
           (\ x__ y__ -> x__ {_BlockGetrqFtraceEvent'sector = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockGetrqFtraceEvent "nrSector" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockGetrqFtraceEvent'nrSector
           (\ x__ y__ -> x__ {_BlockGetrqFtraceEvent'nrSector = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockGetrqFtraceEvent "maybe'nrSector" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockGetrqFtraceEvent'nrSector
           (\ x__ y__ -> x__ {_BlockGetrqFtraceEvent'nrSector = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockGetrqFtraceEvent "rwbs" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockGetrqFtraceEvent'rwbs
           (\ x__ y__ -> x__ {_BlockGetrqFtraceEvent'rwbs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockGetrqFtraceEvent "maybe'rwbs" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockGetrqFtraceEvent'rwbs
           (\ x__ y__ -> x__ {_BlockGetrqFtraceEvent'rwbs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockGetrqFtraceEvent "comm" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockGetrqFtraceEvent'comm
           (\ x__ y__ -> x__ {_BlockGetrqFtraceEvent'comm = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockGetrqFtraceEvent "maybe'comm" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockGetrqFtraceEvent'comm
           (\ x__ y__ -> x__ {_BlockGetrqFtraceEvent'comm = y__}))
        Prelude.id
instance Data.ProtoLens.Message BlockGetrqFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.BlockGetrqFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\NAKBlockGetrqFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\SYN\n\
      \\ACKsector\CAN\STX \SOH(\EOTR\ACKsector\DC2\ESC\n\
      \\tnr_sector\CAN\ETX \SOH(\rR\bnrSector\DC2\DC2\n\
      \\EOTrwbs\CAN\EOT \SOH(\tR\EOTrwbs\DC2\DC2\n\
      \\EOTcomm\CAN\ENQ \SOH(\tR\EOTcomm"
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
              Data.ProtoLens.FieldDescriptor BlockGetrqFtraceEvent
        sector__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sector"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sector")) ::
              Data.ProtoLens.FieldDescriptor BlockGetrqFtraceEvent
        nrSector__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nr_sector"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nrSector")) ::
              Data.ProtoLens.FieldDescriptor BlockGetrqFtraceEvent
        rwbs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rwbs"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rwbs")) ::
              Data.ProtoLens.FieldDescriptor BlockGetrqFtraceEvent
        comm__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "comm"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'comm")) ::
              Data.ProtoLens.FieldDescriptor BlockGetrqFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, sector__field_descriptor),
           (Data.ProtoLens.Tag 3, nrSector__field_descriptor),
           (Data.ProtoLens.Tag 4, rwbs__field_descriptor),
           (Data.ProtoLens.Tag 5, comm__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BlockGetrqFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_BlockGetrqFtraceEvent'_unknownFields = y__})
  defMessage
    = BlockGetrqFtraceEvent'_constructor
        {_BlockGetrqFtraceEvent'dev = Prelude.Nothing,
         _BlockGetrqFtraceEvent'sector = Prelude.Nothing,
         _BlockGetrqFtraceEvent'nrSector = Prelude.Nothing,
         _BlockGetrqFtraceEvent'rwbs = Prelude.Nothing,
         _BlockGetrqFtraceEvent'comm = Prelude.Nothing,
         _BlockGetrqFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BlockGetrqFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser BlockGetrqFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "sector"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"sector") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "nr_sector"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nrSector") y x)
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
                                       "rwbs"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"rwbs") y x)
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
                                       "comm"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"comm") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BlockGetrqFtraceEvent"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'sector") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nrSector") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'rwbs") _x
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
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'comm") _x
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
instance Control.DeepSeq.NFData BlockGetrqFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BlockGetrqFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BlockGetrqFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_BlockGetrqFtraceEvent'sector x__)
                   (Control.DeepSeq.deepseq
                      (_BlockGetrqFtraceEvent'nrSector x__)
                      (Control.DeepSeq.deepseq
                         (_BlockGetrqFtraceEvent'rwbs x__)
                         (Control.DeepSeq.deepseq (_BlockGetrqFtraceEvent'comm x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.comm' @:: Lens' BlockPlugFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'comm' @:: Lens' BlockPlugFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data BlockPlugFtraceEvent
  = BlockPlugFtraceEvent'_constructor {_BlockPlugFtraceEvent'comm :: !(Prelude.Maybe Data.Text.Text),
                                       _BlockPlugFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BlockPlugFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BlockPlugFtraceEvent "comm" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockPlugFtraceEvent'comm
           (\ x__ y__ -> x__ {_BlockPlugFtraceEvent'comm = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockPlugFtraceEvent "maybe'comm" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockPlugFtraceEvent'comm
           (\ x__ y__ -> x__ {_BlockPlugFtraceEvent'comm = y__}))
        Prelude.id
instance Data.ProtoLens.Message BlockPlugFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.BlockPlugFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\DC4BlockPlugFtraceEvent\DC2\DC2\n\
      \\EOTcomm\CAN\SOH \SOH(\tR\EOTcomm"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        comm__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "comm"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'comm")) ::
              Data.ProtoLens.FieldDescriptor BlockPlugFtraceEvent
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, comm__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BlockPlugFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_BlockPlugFtraceEvent'_unknownFields = y__})
  defMessage
    = BlockPlugFtraceEvent'_constructor
        {_BlockPlugFtraceEvent'comm = Prelude.Nothing,
         _BlockPlugFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BlockPlugFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser BlockPlugFtraceEvent
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
                                       "comm"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"comm") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BlockPlugFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'comm") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData BlockPlugFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BlockPlugFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq (_BlockPlugFtraceEvent'comm x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.dev' @:: Lens' BlockRqAbortFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'dev' @:: Lens' BlockRqAbortFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.sector' @:: Lens' BlockRqAbortFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'sector' @:: Lens' BlockRqAbortFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.nrSector' @:: Lens' BlockRqAbortFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'nrSector' @:: Lens' BlockRqAbortFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.errors' @:: Lens' BlockRqAbortFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'errors' @:: Lens' BlockRqAbortFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.rwbs' @:: Lens' BlockRqAbortFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'rwbs' @:: Lens' BlockRqAbortFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.cmd' @:: Lens' BlockRqAbortFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'cmd' @:: Lens' BlockRqAbortFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data BlockRqAbortFtraceEvent
  = BlockRqAbortFtraceEvent'_constructor {_BlockRqAbortFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                          _BlockRqAbortFtraceEvent'sector :: !(Prelude.Maybe Data.Word.Word64),
                                          _BlockRqAbortFtraceEvent'nrSector :: !(Prelude.Maybe Data.Word.Word32),
                                          _BlockRqAbortFtraceEvent'errors :: !(Prelude.Maybe Data.Int.Int32),
                                          _BlockRqAbortFtraceEvent'rwbs :: !(Prelude.Maybe Data.Text.Text),
                                          _BlockRqAbortFtraceEvent'cmd :: !(Prelude.Maybe Data.Text.Text),
                                          _BlockRqAbortFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BlockRqAbortFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BlockRqAbortFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqAbortFtraceEvent'dev
           (\ x__ y__ -> x__ {_BlockRqAbortFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockRqAbortFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqAbortFtraceEvent'dev
           (\ x__ y__ -> x__ {_BlockRqAbortFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockRqAbortFtraceEvent "sector" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqAbortFtraceEvent'sector
           (\ x__ y__ -> x__ {_BlockRqAbortFtraceEvent'sector = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockRqAbortFtraceEvent "maybe'sector" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqAbortFtraceEvent'sector
           (\ x__ y__ -> x__ {_BlockRqAbortFtraceEvent'sector = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockRqAbortFtraceEvent "nrSector" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqAbortFtraceEvent'nrSector
           (\ x__ y__ -> x__ {_BlockRqAbortFtraceEvent'nrSector = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockRqAbortFtraceEvent "maybe'nrSector" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqAbortFtraceEvent'nrSector
           (\ x__ y__ -> x__ {_BlockRqAbortFtraceEvent'nrSector = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockRqAbortFtraceEvent "errors" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqAbortFtraceEvent'errors
           (\ x__ y__ -> x__ {_BlockRqAbortFtraceEvent'errors = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockRqAbortFtraceEvent "maybe'errors" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqAbortFtraceEvent'errors
           (\ x__ y__ -> x__ {_BlockRqAbortFtraceEvent'errors = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockRqAbortFtraceEvent "rwbs" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqAbortFtraceEvent'rwbs
           (\ x__ y__ -> x__ {_BlockRqAbortFtraceEvent'rwbs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockRqAbortFtraceEvent "maybe'rwbs" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqAbortFtraceEvent'rwbs
           (\ x__ y__ -> x__ {_BlockRqAbortFtraceEvent'rwbs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockRqAbortFtraceEvent "cmd" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqAbortFtraceEvent'cmd
           (\ x__ y__ -> x__ {_BlockRqAbortFtraceEvent'cmd = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockRqAbortFtraceEvent "maybe'cmd" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqAbortFtraceEvent'cmd
           (\ x__ y__ -> x__ {_BlockRqAbortFtraceEvent'cmd = y__}))
        Prelude.id
instance Data.ProtoLens.Message BlockRqAbortFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.BlockRqAbortFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ETBBlockRqAbortFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\SYN\n\
      \\ACKsector\CAN\STX \SOH(\EOTR\ACKsector\DC2\ESC\n\
      \\tnr_sector\CAN\ETX \SOH(\rR\bnrSector\DC2\SYN\n\
      \\ACKerrors\CAN\EOT \SOH(\ENQR\ACKerrors\DC2\DC2\n\
      \\EOTrwbs\CAN\ENQ \SOH(\tR\EOTrwbs\DC2\DLE\n\
      \\ETXcmd\CAN\ACK \SOH(\tR\ETXcmd"
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
              Data.ProtoLens.FieldDescriptor BlockRqAbortFtraceEvent
        sector__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sector"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sector")) ::
              Data.ProtoLens.FieldDescriptor BlockRqAbortFtraceEvent
        nrSector__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nr_sector"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nrSector")) ::
              Data.ProtoLens.FieldDescriptor BlockRqAbortFtraceEvent
        errors__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "errors"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'errors")) ::
              Data.ProtoLens.FieldDescriptor BlockRqAbortFtraceEvent
        rwbs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rwbs"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rwbs")) ::
              Data.ProtoLens.FieldDescriptor BlockRqAbortFtraceEvent
        cmd__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cmd"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cmd")) ::
              Data.ProtoLens.FieldDescriptor BlockRqAbortFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, sector__field_descriptor),
           (Data.ProtoLens.Tag 3, nrSector__field_descriptor),
           (Data.ProtoLens.Tag 4, errors__field_descriptor),
           (Data.ProtoLens.Tag 5, rwbs__field_descriptor),
           (Data.ProtoLens.Tag 6, cmd__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BlockRqAbortFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_BlockRqAbortFtraceEvent'_unknownFields = y__})
  defMessage
    = BlockRqAbortFtraceEvent'_constructor
        {_BlockRqAbortFtraceEvent'dev = Prelude.Nothing,
         _BlockRqAbortFtraceEvent'sector = Prelude.Nothing,
         _BlockRqAbortFtraceEvent'nrSector = Prelude.Nothing,
         _BlockRqAbortFtraceEvent'errors = Prelude.Nothing,
         _BlockRqAbortFtraceEvent'rwbs = Prelude.Nothing,
         _BlockRqAbortFtraceEvent'cmd = Prelude.Nothing,
         _BlockRqAbortFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BlockRqAbortFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser BlockRqAbortFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "sector"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"sector") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "nr_sector"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nrSector") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "errors"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"errors") y x)
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
                                       "rwbs"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"rwbs") y x)
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
                                       "cmd"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cmd") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BlockRqAbortFtraceEvent"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'sector") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nrSector") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'errors") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'rwbs") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cmd") _x
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
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData BlockRqAbortFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BlockRqAbortFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BlockRqAbortFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_BlockRqAbortFtraceEvent'sector x__)
                   (Control.DeepSeq.deepseq
                      (_BlockRqAbortFtraceEvent'nrSector x__)
                      (Control.DeepSeq.deepseq
                         (_BlockRqAbortFtraceEvent'errors x__)
                         (Control.DeepSeq.deepseq
                            (_BlockRqAbortFtraceEvent'rwbs x__)
                            (Control.DeepSeq.deepseq
                               (_BlockRqAbortFtraceEvent'cmd x__) ()))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.dev' @:: Lens' BlockRqCompleteFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'dev' @:: Lens' BlockRqCompleteFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.sector' @:: Lens' BlockRqCompleteFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'sector' @:: Lens' BlockRqCompleteFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.nrSector' @:: Lens' BlockRqCompleteFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'nrSector' @:: Lens' BlockRqCompleteFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.errors' @:: Lens' BlockRqCompleteFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'errors' @:: Lens' BlockRqCompleteFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.rwbs' @:: Lens' BlockRqCompleteFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'rwbs' @:: Lens' BlockRqCompleteFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.cmd' @:: Lens' BlockRqCompleteFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'cmd' @:: Lens' BlockRqCompleteFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.error' @:: Lens' BlockRqCompleteFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'error' @:: Lens' BlockRqCompleteFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data BlockRqCompleteFtraceEvent
  = BlockRqCompleteFtraceEvent'_constructor {_BlockRqCompleteFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                             _BlockRqCompleteFtraceEvent'sector :: !(Prelude.Maybe Data.Word.Word64),
                                             _BlockRqCompleteFtraceEvent'nrSector :: !(Prelude.Maybe Data.Word.Word32),
                                             _BlockRqCompleteFtraceEvent'errors :: !(Prelude.Maybe Data.Int.Int32),
                                             _BlockRqCompleteFtraceEvent'rwbs :: !(Prelude.Maybe Data.Text.Text),
                                             _BlockRqCompleteFtraceEvent'cmd :: !(Prelude.Maybe Data.Text.Text),
                                             _BlockRqCompleteFtraceEvent'error :: !(Prelude.Maybe Data.Int.Int32),
                                             _BlockRqCompleteFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BlockRqCompleteFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BlockRqCompleteFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqCompleteFtraceEvent'dev
           (\ x__ y__ -> x__ {_BlockRqCompleteFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockRqCompleteFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqCompleteFtraceEvent'dev
           (\ x__ y__ -> x__ {_BlockRqCompleteFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockRqCompleteFtraceEvent "sector" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqCompleteFtraceEvent'sector
           (\ x__ y__ -> x__ {_BlockRqCompleteFtraceEvent'sector = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockRqCompleteFtraceEvent "maybe'sector" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqCompleteFtraceEvent'sector
           (\ x__ y__ -> x__ {_BlockRqCompleteFtraceEvent'sector = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockRqCompleteFtraceEvent "nrSector" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqCompleteFtraceEvent'nrSector
           (\ x__ y__ -> x__ {_BlockRqCompleteFtraceEvent'nrSector = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockRqCompleteFtraceEvent "maybe'nrSector" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqCompleteFtraceEvent'nrSector
           (\ x__ y__ -> x__ {_BlockRqCompleteFtraceEvent'nrSector = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockRqCompleteFtraceEvent "errors" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqCompleteFtraceEvent'errors
           (\ x__ y__ -> x__ {_BlockRqCompleteFtraceEvent'errors = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockRqCompleteFtraceEvent "maybe'errors" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqCompleteFtraceEvent'errors
           (\ x__ y__ -> x__ {_BlockRqCompleteFtraceEvent'errors = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockRqCompleteFtraceEvent "rwbs" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqCompleteFtraceEvent'rwbs
           (\ x__ y__ -> x__ {_BlockRqCompleteFtraceEvent'rwbs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockRqCompleteFtraceEvent "maybe'rwbs" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqCompleteFtraceEvent'rwbs
           (\ x__ y__ -> x__ {_BlockRqCompleteFtraceEvent'rwbs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockRqCompleteFtraceEvent "cmd" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqCompleteFtraceEvent'cmd
           (\ x__ y__ -> x__ {_BlockRqCompleteFtraceEvent'cmd = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockRqCompleteFtraceEvent "maybe'cmd" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqCompleteFtraceEvent'cmd
           (\ x__ y__ -> x__ {_BlockRqCompleteFtraceEvent'cmd = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockRqCompleteFtraceEvent "error" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqCompleteFtraceEvent'error
           (\ x__ y__ -> x__ {_BlockRqCompleteFtraceEvent'error = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockRqCompleteFtraceEvent "maybe'error" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqCompleteFtraceEvent'error
           (\ x__ y__ -> x__ {_BlockRqCompleteFtraceEvent'error = y__}))
        Prelude.id
instance Data.ProtoLens.Message BlockRqCompleteFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.BlockRqCompleteFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SUBBlockRqCompleteFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\SYN\n\
      \\ACKsector\CAN\STX \SOH(\EOTR\ACKsector\DC2\ESC\n\
      \\tnr_sector\CAN\ETX \SOH(\rR\bnrSector\DC2\SYN\n\
      \\ACKerrors\CAN\EOT \SOH(\ENQR\ACKerrors\DC2\DC2\n\
      \\EOTrwbs\CAN\ENQ \SOH(\tR\EOTrwbs\DC2\DLE\n\
      \\ETXcmd\CAN\ACK \SOH(\tR\ETXcmd\DC2\DC4\n\
      \\ENQerror\CAN\a \SOH(\ENQR\ENQerror"
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
              Data.ProtoLens.FieldDescriptor BlockRqCompleteFtraceEvent
        sector__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sector"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sector")) ::
              Data.ProtoLens.FieldDescriptor BlockRqCompleteFtraceEvent
        nrSector__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nr_sector"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nrSector")) ::
              Data.ProtoLens.FieldDescriptor BlockRqCompleteFtraceEvent
        errors__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "errors"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'errors")) ::
              Data.ProtoLens.FieldDescriptor BlockRqCompleteFtraceEvent
        rwbs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rwbs"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rwbs")) ::
              Data.ProtoLens.FieldDescriptor BlockRqCompleteFtraceEvent
        cmd__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cmd"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cmd")) ::
              Data.ProtoLens.FieldDescriptor BlockRqCompleteFtraceEvent
        error__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "error"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'error")) ::
              Data.ProtoLens.FieldDescriptor BlockRqCompleteFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, sector__field_descriptor),
           (Data.ProtoLens.Tag 3, nrSector__field_descriptor),
           (Data.ProtoLens.Tag 4, errors__field_descriptor),
           (Data.ProtoLens.Tag 5, rwbs__field_descriptor),
           (Data.ProtoLens.Tag 6, cmd__field_descriptor),
           (Data.ProtoLens.Tag 7, error__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BlockRqCompleteFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_BlockRqCompleteFtraceEvent'_unknownFields = y__})
  defMessage
    = BlockRqCompleteFtraceEvent'_constructor
        {_BlockRqCompleteFtraceEvent'dev = Prelude.Nothing,
         _BlockRqCompleteFtraceEvent'sector = Prelude.Nothing,
         _BlockRqCompleteFtraceEvent'nrSector = Prelude.Nothing,
         _BlockRqCompleteFtraceEvent'errors = Prelude.Nothing,
         _BlockRqCompleteFtraceEvent'rwbs = Prelude.Nothing,
         _BlockRqCompleteFtraceEvent'cmd = Prelude.Nothing,
         _BlockRqCompleteFtraceEvent'error = Prelude.Nothing,
         _BlockRqCompleteFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BlockRqCompleteFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser BlockRqCompleteFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "sector"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"sector") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "nr_sector"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nrSector") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "errors"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"errors") y x)
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
                                       "rwbs"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"rwbs") y x)
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
                                       "cmd"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cmd") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "error"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"error") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BlockRqCompleteFtraceEvent"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'sector") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nrSector") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'errors") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'rwbs") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cmd") _x
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
                                    Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'error") _x
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
instance Control.DeepSeq.NFData BlockRqCompleteFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BlockRqCompleteFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BlockRqCompleteFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_BlockRqCompleteFtraceEvent'sector x__)
                   (Control.DeepSeq.deepseq
                      (_BlockRqCompleteFtraceEvent'nrSector x__)
                      (Control.DeepSeq.deepseq
                         (_BlockRqCompleteFtraceEvent'errors x__)
                         (Control.DeepSeq.deepseq
                            (_BlockRqCompleteFtraceEvent'rwbs x__)
                            (Control.DeepSeq.deepseq
                               (_BlockRqCompleteFtraceEvent'cmd x__)
                               (Control.DeepSeq.deepseq
                                  (_BlockRqCompleteFtraceEvent'error x__) ())))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.dev' @:: Lens' BlockRqInsertFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'dev' @:: Lens' BlockRqInsertFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.sector' @:: Lens' BlockRqInsertFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'sector' @:: Lens' BlockRqInsertFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.nrSector' @:: Lens' BlockRqInsertFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'nrSector' @:: Lens' BlockRqInsertFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.bytes' @:: Lens' BlockRqInsertFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'bytes' @:: Lens' BlockRqInsertFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.rwbs' @:: Lens' BlockRqInsertFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'rwbs' @:: Lens' BlockRqInsertFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.comm' @:: Lens' BlockRqInsertFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'comm' @:: Lens' BlockRqInsertFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.cmd' @:: Lens' BlockRqInsertFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'cmd' @:: Lens' BlockRqInsertFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data BlockRqInsertFtraceEvent
  = BlockRqInsertFtraceEvent'_constructor {_BlockRqInsertFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                           _BlockRqInsertFtraceEvent'sector :: !(Prelude.Maybe Data.Word.Word64),
                                           _BlockRqInsertFtraceEvent'nrSector :: !(Prelude.Maybe Data.Word.Word32),
                                           _BlockRqInsertFtraceEvent'bytes :: !(Prelude.Maybe Data.Word.Word32),
                                           _BlockRqInsertFtraceEvent'rwbs :: !(Prelude.Maybe Data.Text.Text),
                                           _BlockRqInsertFtraceEvent'comm :: !(Prelude.Maybe Data.Text.Text),
                                           _BlockRqInsertFtraceEvent'cmd :: !(Prelude.Maybe Data.Text.Text),
                                           _BlockRqInsertFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BlockRqInsertFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BlockRqInsertFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqInsertFtraceEvent'dev
           (\ x__ y__ -> x__ {_BlockRqInsertFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockRqInsertFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqInsertFtraceEvent'dev
           (\ x__ y__ -> x__ {_BlockRqInsertFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockRqInsertFtraceEvent "sector" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqInsertFtraceEvent'sector
           (\ x__ y__ -> x__ {_BlockRqInsertFtraceEvent'sector = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockRqInsertFtraceEvent "maybe'sector" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqInsertFtraceEvent'sector
           (\ x__ y__ -> x__ {_BlockRqInsertFtraceEvent'sector = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockRqInsertFtraceEvent "nrSector" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqInsertFtraceEvent'nrSector
           (\ x__ y__ -> x__ {_BlockRqInsertFtraceEvent'nrSector = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockRqInsertFtraceEvent "maybe'nrSector" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqInsertFtraceEvent'nrSector
           (\ x__ y__ -> x__ {_BlockRqInsertFtraceEvent'nrSector = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockRqInsertFtraceEvent "bytes" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqInsertFtraceEvent'bytes
           (\ x__ y__ -> x__ {_BlockRqInsertFtraceEvent'bytes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockRqInsertFtraceEvent "maybe'bytes" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqInsertFtraceEvent'bytes
           (\ x__ y__ -> x__ {_BlockRqInsertFtraceEvent'bytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockRqInsertFtraceEvent "rwbs" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqInsertFtraceEvent'rwbs
           (\ x__ y__ -> x__ {_BlockRqInsertFtraceEvent'rwbs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockRqInsertFtraceEvent "maybe'rwbs" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqInsertFtraceEvent'rwbs
           (\ x__ y__ -> x__ {_BlockRqInsertFtraceEvent'rwbs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockRqInsertFtraceEvent "comm" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqInsertFtraceEvent'comm
           (\ x__ y__ -> x__ {_BlockRqInsertFtraceEvent'comm = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockRqInsertFtraceEvent "maybe'comm" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqInsertFtraceEvent'comm
           (\ x__ y__ -> x__ {_BlockRqInsertFtraceEvent'comm = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockRqInsertFtraceEvent "cmd" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqInsertFtraceEvent'cmd
           (\ x__ y__ -> x__ {_BlockRqInsertFtraceEvent'cmd = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockRqInsertFtraceEvent "maybe'cmd" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqInsertFtraceEvent'cmd
           (\ x__ y__ -> x__ {_BlockRqInsertFtraceEvent'cmd = y__}))
        Prelude.id
instance Data.ProtoLens.Message BlockRqInsertFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.BlockRqInsertFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\CANBlockRqInsertFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\SYN\n\
      \\ACKsector\CAN\STX \SOH(\EOTR\ACKsector\DC2\ESC\n\
      \\tnr_sector\CAN\ETX \SOH(\rR\bnrSector\DC2\DC4\n\
      \\ENQbytes\CAN\EOT \SOH(\rR\ENQbytes\DC2\DC2\n\
      \\EOTrwbs\CAN\ENQ \SOH(\tR\EOTrwbs\DC2\DC2\n\
      \\EOTcomm\CAN\ACK \SOH(\tR\EOTcomm\DC2\DLE\n\
      \\ETXcmd\CAN\a \SOH(\tR\ETXcmd"
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
              Data.ProtoLens.FieldDescriptor BlockRqInsertFtraceEvent
        sector__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sector"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sector")) ::
              Data.ProtoLens.FieldDescriptor BlockRqInsertFtraceEvent
        nrSector__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nr_sector"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nrSector")) ::
              Data.ProtoLens.FieldDescriptor BlockRqInsertFtraceEvent
        bytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bytes")) ::
              Data.ProtoLens.FieldDescriptor BlockRqInsertFtraceEvent
        rwbs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rwbs"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rwbs")) ::
              Data.ProtoLens.FieldDescriptor BlockRqInsertFtraceEvent
        comm__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "comm"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'comm")) ::
              Data.ProtoLens.FieldDescriptor BlockRqInsertFtraceEvent
        cmd__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cmd"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cmd")) ::
              Data.ProtoLens.FieldDescriptor BlockRqInsertFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, sector__field_descriptor),
           (Data.ProtoLens.Tag 3, nrSector__field_descriptor),
           (Data.ProtoLens.Tag 4, bytes__field_descriptor),
           (Data.ProtoLens.Tag 5, rwbs__field_descriptor),
           (Data.ProtoLens.Tag 6, comm__field_descriptor),
           (Data.ProtoLens.Tag 7, cmd__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BlockRqInsertFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_BlockRqInsertFtraceEvent'_unknownFields = y__})
  defMessage
    = BlockRqInsertFtraceEvent'_constructor
        {_BlockRqInsertFtraceEvent'dev = Prelude.Nothing,
         _BlockRqInsertFtraceEvent'sector = Prelude.Nothing,
         _BlockRqInsertFtraceEvent'nrSector = Prelude.Nothing,
         _BlockRqInsertFtraceEvent'bytes = Prelude.Nothing,
         _BlockRqInsertFtraceEvent'rwbs = Prelude.Nothing,
         _BlockRqInsertFtraceEvent'comm = Prelude.Nothing,
         _BlockRqInsertFtraceEvent'cmd = Prelude.Nothing,
         _BlockRqInsertFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BlockRqInsertFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser BlockRqInsertFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "sector"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"sector") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "nr_sector"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nrSector") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "bytes"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"bytes") y x)
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
                                       "rwbs"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"rwbs") y x)
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
                                       "comm"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"comm") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "cmd"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cmd") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BlockRqInsertFtraceEvent"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'sector") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nrSector") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'bytes") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'rwbs") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'comm") _x
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
                                    Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cmd") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                         ((Prelude..)
                                            (\ bs
                                               -> (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (Prelude.fromIntegral
                                                          (Data.ByteString.length bs)))
                                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                            Data.Text.Encoding.encodeUtf8 _v))
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData BlockRqInsertFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BlockRqInsertFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BlockRqInsertFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_BlockRqInsertFtraceEvent'sector x__)
                   (Control.DeepSeq.deepseq
                      (_BlockRqInsertFtraceEvent'nrSector x__)
                      (Control.DeepSeq.deepseq
                         (_BlockRqInsertFtraceEvent'bytes x__)
                         (Control.DeepSeq.deepseq
                            (_BlockRqInsertFtraceEvent'rwbs x__)
                            (Control.DeepSeq.deepseq
                               (_BlockRqInsertFtraceEvent'comm x__)
                               (Control.DeepSeq.deepseq
                                  (_BlockRqInsertFtraceEvent'cmd x__) ())))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.dev' @:: Lens' BlockRqIssueFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'dev' @:: Lens' BlockRqIssueFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.sector' @:: Lens' BlockRqIssueFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'sector' @:: Lens' BlockRqIssueFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.nrSector' @:: Lens' BlockRqIssueFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'nrSector' @:: Lens' BlockRqIssueFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.bytes' @:: Lens' BlockRqIssueFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'bytes' @:: Lens' BlockRqIssueFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.rwbs' @:: Lens' BlockRqIssueFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'rwbs' @:: Lens' BlockRqIssueFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.comm' @:: Lens' BlockRqIssueFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'comm' @:: Lens' BlockRqIssueFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.cmd' @:: Lens' BlockRqIssueFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'cmd' @:: Lens' BlockRqIssueFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data BlockRqIssueFtraceEvent
  = BlockRqIssueFtraceEvent'_constructor {_BlockRqIssueFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                          _BlockRqIssueFtraceEvent'sector :: !(Prelude.Maybe Data.Word.Word64),
                                          _BlockRqIssueFtraceEvent'nrSector :: !(Prelude.Maybe Data.Word.Word32),
                                          _BlockRqIssueFtraceEvent'bytes :: !(Prelude.Maybe Data.Word.Word32),
                                          _BlockRqIssueFtraceEvent'rwbs :: !(Prelude.Maybe Data.Text.Text),
                                          _BlockRqIssueFtraceEvent'comm :: !(Prelude.Maybe Data.Text.Text),
                                          _BlockRqIssueFtraceEvent'cmd :: !(Prelude.Maybe Data.Text.Text),
                                          _BlockRqIssueFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BlockRqIssueFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BlockRqIssueFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqIssueFtraceEvent'dev
           (\ x__ y__ -> x__ {_BlockRqIssueFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockRqIssueFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqIssueFtraceEvent'dev
           (\ x__ y__ -> x__ {_BlockRqIssueFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockRqIssueFtraceEvent "sector" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqIssueFtraceEvent'sector
           (\ x__ y__ -> x__ {_BlockRqIssueFtraceEvent'sector = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockRqIssueFtraceEvent "maybe'sector" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqIssueFtraceEvent'sector
           (\ x__ y__ -> x__ {_BlockRqIssueFtraceEvent'sector = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockRqIssueFtraceEvent "nrSector" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqIssueFtraceEvent'nrSector
           (\ x__ y__ -> x__ {_BlockRqIssueFtraceEvent'nrSector = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockRqIssueFtraceEvent "maybe'nrSector" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqIssueFtraceEvent'nrSector
           (\ x__ y__ -> x__ {_BlockRqIssueFtraceEvent'nrSector = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockRqIssueFtraceEvent "bytes" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqIssueFtraceEvent'bytes
           (\ x__ y__ -> x__ {_BlockRqIssueFtraceEvent'bytes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockRqIssueFtraceEvent "maybe'bytes" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqIssueFtraceEvent'bytes
           (\ x__ y__ -> x__ {_BlockRqIssueFtraceEvent'bytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockRqIssueFtraceEvent "rwbs" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqIssueFtraceEvent'rwbs
           (\ x__ y__ -> x__ {_BlockRqIssueFtraceEvent'rwbs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockRqIssueFtraceEvent "maybe'rwbs" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqIssueFtraceEvent'rwbs
           (\ x__ y__ -> x__ {_BlockRqIssueFtraceEvent'rwbs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockRqIssueFtraceEvent "comm" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqIssueFtraceEvent'comm
           (\ x__ y__ -> x__ {_BlockRqIssueFtraceEvent'comm = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockRqIssueFtraceEvent "maybe'comm" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqIssueFtraceEvent'comm
           (\ x__ y__ -> x__ {_BlockRqIssueFtraceEvent'comm = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockRqIssueFtraceEvent "cmd" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqIssueFtraceEvent'cmd
           (\ x__ y__ -> x__ {_BlockRqIssueFtraceEvent'cmd = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockRqIssueFtraceEvent "maybe'cmd" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqIssueFtraceEvent'cmd
           (\ x__ y__ -> x__ {_BlockRqIssueFtraceEvent'cmd = y__}))
        Prelude.id
instance Data.ProtoLens.Message BlockRqIssueFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.BlockRqIssueFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ETBBlockRqIssueFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\SYN\n\
      \\ACKsector\CAN\STX \SOH(\EOTR\ACKsector\DC2\ESC\n\
      \\tnr_sector\CAN\ETX \SOH(\rR\bnrSector\DC2\DC4\n\
      \\ENQbytes\CAN\EOT \SOH(\rR\ENQbytes\DC2\DC2\n\
      \\EOTrwbs\CAN\ENQ \SOH(\tR\EOTrwbs\DC2\DC2\n\
      \\EOTcomm\CAN\ACK \SOH(\tR\EOTcomm\DC2\DLE\n\
      \\ETXcmd\CAN\a \SOH(\tR\ETXcmd"
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
              Data.ProtoLens.FieldDescriptor BlockRqIssueFtraceEvent
        sector__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sector"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sector")) ::
              Data.ProtoLens.FieldDescriptor BlockRqIssueFtraceEvent
        nrSector__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nr_sector"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nrSector")) ::
              Data.ProtoLens.FieldDescriptor BlockRqIssueFtraceEvent
        bytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bytes")) ::
              Data.ProtoLens.FieldDescriptor BlockRqIssueFtraceEvent
        rwbs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rwbs"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rwbs")) ::
              Data.ProtoLens.FieldDescriptor BlockRqIssueFtraceEvent
        comm__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "comm"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'comm")) ::
              Data.ProtoLens.FieldDescriptor BlockRqIssueFtraceEvent
        cmd__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cmd"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cmd")) ::
              Data.ProtoLens.FieldDescriptor BlockRqIssueFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, sector__field_descriptor),
           (Data.ProtoLens.Tag 3, nrSector__field_descriptor),
           (Data.ProtoLens.Tag 4, bytes__field_descriptor),
           (Data.ProtoLens.Tag 5, rwbs__field_descriptor),
           (Data.ProtoLens.Tag 6, comm__field_descriptor),
           (Data.ProtoLens.Tag 7, cmd__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BlockRqIssueFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_BlockRqIssueFtraceEvent'_unknownFields = y__})
  defMessage
    = BlockRqIssueFtraceEvent'_constructor
        {_BlockRqIssueFtraceEvent'dev = Prelude.Nothing,
         _BlockRqIssueFtraceEvent'sector = Prelude.Nothing,
         _BlockRqIssueFtraceEvent'nrSector = Prelude.Nothing,
         _BlockRqIssueFtraceEvent'bytes = Prelude.Nothing,
         _BlockRqIssueFtraceEvent'rwbs = Prelude.Nothing,
         _BlockRqIssueFtraceEvent'comm = Prelude.Nothing,
         _BlockRqIssueFtraceEvent'cmd = Prelude.Nothing,
         _BlockRqIssueFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BlockRqIssueFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser BlockRqIssueFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "sector"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"sector") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "nr_sector"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nrSector") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "bytes"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"bytes") y x)
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
                                       "rwbs"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"rwbs") y x)
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
                                       "comm"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"comm") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "cmd"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cmd") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BlockRqIssueFtraceEvent"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'sector") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nrSector") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'bytes") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'rwbs") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'comm") _x
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
                                    Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cmd") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                         ((Prelude..)
                                            (\ bs
                                               -> (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (Prelude.fromIntegral
                                                          (Data.ByteString.length bs)))
                                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                            Data.Text.Encoding.encodeUtf8 _v))
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData BlockRqIssueFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BlockRqIssueFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BlockRqIssueFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_BlockRqIssueFtraceEvent'sector x__)
                   (Control.DeepSeq.deepseq
                      (_BlockRqIssueFtraceEvent'nrSector x__)
                      (Control.DeepSeq.deepseq
                         (_BlockRqIssueFtraceEvent'bytes x__)
                         (Control.DeepSeq.deepseq
                            (_BlockRqIssueFtraceEvent'rwbs x__)
                            (Control.DeepSeq.deepseq
                               (_BlockRqIssueFtraceEvent'comm x__)
                               (Control.DeepSeq.deepseq
                                  (_BlockRqIssueFtraceEvent'cmd x__) ())))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.dev' @:: Lens' BlockRqRemapFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'dev' @:: Lens' BlockRqRemapFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.sector' @:: Lens' BlockRqRemapFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'sector' @:: Lens' BlockRqRemapFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.nrSector' @:: Lens' BlockRqRemapFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'nrSector' @:: Lens' BlockRqRemapFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.oldDev' @:: Lens' BlockRqRemapFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'oldDev' @:: Lens' BlockRqRemapFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.oldSector' @:: Lens' BlockRqRemapFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'oldSector' @:: Lens' BlockRqRemapFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.nrBios' @:: Lens' BlockRqRemapFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'nrBios' @:: Lens' BlockRqRemapFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.rwbs' @:: Lens' BlockRqRemapFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'rwbs' @:: Lens' BlockRqRemapFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data BlockRqRemapFtraceEvent
  = BlockRqRemapFtraceEvent'_constructor {_BlockRqRemapFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                          _BlockRqRemapFtraceEvent'sector :: !(Prelude.Maybe Data.Word.Word64),
                                          _BlockRqRemapFtraceEvent'nrSector :: !(Prelude.Maybe Data.Word.Word32),
                                          _BlockRqRemapFtraceEvent'oldDev :: !(Prelude.Maybe Data.Word.Word64),
                                          _BlockRqRemapFtraceEvent'oldSector :: !(Prelude.Maybe Data.Word.Word64),
                                          _BlockRqRemapFtraceEvent'nrBios :: !(Prelude.Maybe Data.Word.Word32),
                                          _BlockRqRemapFtraceEvent'rwbs :: !(Prelude.Maybe Data.Text.Text),
                                          _BlockRqRemapFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BlockRqRemapFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BlockRqRemapFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqRemapFtraceEvent'dev
           (\ x__ y__ -> x__ {_BlockRqRemapFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockRqRemapFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqRemapFtraceEvent'dev
           (\ x__ y__ -> x__ {_BlockRqRemapFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockRqRemapFtraceEvent "sector" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqRemapFtraceEvent'sector
           (\ x__ y__ -> x__ {_BlockRqRemapFtraceEvent'sector = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockRqRemapFtraceEvent "maybe'sector" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqRemapFtraceEvent'sector
           (\ x__ y__ -> x__ {_BlockRqRemapFtraceEvent'sector = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockRqRemapFtraceEvent "nrSector" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqRemapFtraceEvent'nrSector
           (\ x__ y__ -> x__ {_BlockRqRemapFtraceEvent'nrSector = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockRqRemapFtraceEvent "maybe'nrSector" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqRemapFtraceEvent'nrSector
           (\ x__ y__ -> x__ {_BlockRqRemapFtraceEvent'nrSector = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockRqRemapFtraceEvent "oldDev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqRemapFtraceEvent'oldDev
           (\ x__ y__ -> x__ {_BlockRqRemapFtraceEvent'oldDev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockRqRemapFtraceEvent "maybe'oldDev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqRemapFtraceEvent'oldDev
           (\ x__ y__ -> x__ {_BlockRqRemapFtraceEvent'oldDev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockRqRemapFtraceEvent "oldSector" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqRemapFtraceEvent'oldSector
           (\ x__ y__ -> x__ {_BlockRqRemapFtraceEvent'oldSector = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockRqRemapFtraceEvent "maybe'oldSector" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqRemapFtraceEvent'oldSector
           (\ x__ y__ -> x__ {_BlockRqRemapFtraceEvent'oldSector = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockRqRemapFtraceEvent "nrBios" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqRemapFtraceEvent'nrBios
           (\ x__ y__ -> x__ {_BlockRqRemapFtraceEvent'nrBios = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockRqRemapFtraceEvent "maybe'nrBios" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqRemapFtraceEvent'nrBios
           (\ x__ y__ -> x__ {_BlockRqRemapFtraceEvent'nrBios = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockRqRemapFtraceEvent "rwbs" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqRemapFtraceEvent'rwbs
           (\ x__ y__ -> x__ {_BlockRqRemapFtraceEvent'rwbs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockRqRemapFtraceEvent "maybe'rwbs" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqRemapFtraceEvent'rwbs
           (\ x__ y__ -> x__ {_BlockRqRemapFtraceEvent'rwbs = y__}))
        Prelude.id
instance Data.ProtoLens.Message BlockRqRemapFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.BlockRqRemapFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ETBBlockRqRemapFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\SYN\n\
      \\ACKsector\CAN\STX \SOH(\EOTR\ACKsector\DC2\ESC\n\
      \\tnr_sector\CAN\ETX \SOH(\rR\bnrSector\DC2\ETB\n\
      \\aold_dev\CAN\EOT \SOH(\EOTR\ACKoldDev\DC2\GS\n\
      \\n\
      \old_sector\CAN\ENQ \SOH(\EOTR\toldSector\DC2\ETB\n\
      \\anr_bios\CAN\ACK \SOH(\rR\ACKnrBios\DC2\DC2\n\
      \\EOTrwbs\CAN\a \SOH(\tR\EOTrwbs"
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
              Data.ProtoLens.FieldDescriptor BlockRqRemapFtraceEvent
        sector__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sector"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sector")) ::
              Data.ProtoLens.FieldDescriptor BlockRqRemapFtraceEvent
        nrSector__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nr_sector"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nrSector")) ::
              Data.ProtoLens.FieldDescriptor BlockRqRemapFtraceEvent
        oldDev__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "old_dev"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'oldDev")) ::
              Data.ProtoLens.FieldDescriptor BlockRqRemapFtraceEvent
        oldSector__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "old_sector"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'oldSector")) ::
              Data.ProtoLens.FieldDescriptor BlockRqRemapFtraceEvent
        nrBios__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nr_bios"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nrBios")) ::
              Data.ProtoLens.FieldDescriptor BlockRqRemapFtraceEvent
        rwbs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rwbs"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rwbs")) ::
              Data.ProtoLens.FieldDescriptor BlockRqRemapFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, sector__field_descriptor),
           (Data.ProtoLens.Tag 3, nrSector__field_descriptor),
           (Data.ProtoLens.Tag 4, oldDev__field_descriptor),
           (Data.ProtoLens.Tag 5, oldSector__field_descriptor),
           (Data.ProtoLens.Tag 6, nrBios__field_descriptor),
           (Data.ProtoLens.Tag 7, rwbs__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BlockRqRemapFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_BlockRqRemapFtraceEvent'_unknownFields = y__})
  defMessage
    = BlockRqRemapFtraceEvent'_constructor
        {_BlockRqRemapFtraceEvent'dev = Prelude.Nothing,
         _BlockRqRemapFtraceEvent'sector = Prelude.Nothing,
         _BlockRqRemapFtraceEvent'nrSector = Prelude.Nothing,
         _BlockRqRemapFtraceEvent'oldDev = Prelude.Nothing,
         _BlockRqRemapFtraceEvent'oldSector = Prelude.Nothing,
         _BlockRqRemapFtraceEvent'nrBios = Prelude.Nothing,
         _BlockRqRemapFtraceEvent'rwbs = Prelude.Nothing,
         _BlockRqRemapFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BlockRqRemapFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser BlockRqRemapFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "sector"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"sector") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "nr_sector"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nrSector") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "old_dev"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"oldDev") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "old_sector"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"oldSector") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "nr_bios"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nrBios") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "rwbs"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"rwbs") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BlockRqRemapFtraceEvent"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'sector") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nrSector") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'oldDev") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'oldSector") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nrBios") _x
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
                                    Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'rwbs") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                         ((Prelude..)
                                            (\ bs
                                               -> (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (Prelude.fromIntegral
                                                          (Data.ByteString.length bs)))
                                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                            Data.Text.Encoding.encodeUtf8 _v))
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData BlockRqRemapFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BlockRqRemapFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BlockRqRemapFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_BlockRqRemapFtraceEvent'sector x__)
                   (Control.DeepSeq.deepseq
                      (_BlockRqRemapFtraceEvent'nrSector x__)
                      (Control.DeepSeq.deepseq
                         (_BlockRqRemapFtraceEvent'oldDev x__)
                         (Control.DeepSeq.deepseq
                            (_BlockRqRemapFtraceEvent'oldSector x__)
                            (Control.DeepSeq.deepseq
                               (_BlockRqRemapFtraceEvent'nrBios x__)
                               (Control.DeepSeq.deepseq
                                  (_BlockRqRemapFtraceEvent'rwbs x__) ())))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.dev' @:: Lens' BlockRqRequeueFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'dev' @:: Lens' BlockRqRequeueFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.sector' @:: Lens' BlockRqRequeueFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'sector' @:: Lens' BlockRqRequeueFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.nrSector' @:: Lens' BlockRqRequeueFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'nrSector' @:: Lens' BlockRqRequeueFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.errors' @:: Lens' BlockRqRequeueFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'errors' @:: Lens' BlockRqRequeueFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.rwbs' @:: Lens' BlockRqRequeueFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'rwbs' @:: Lens' BlockRqRequeueFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.cmd' @:: Lens' BlockRqRequeueFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'cmd' @:: Lens' BlockRqRequeueFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data BlockRqRequeueFtraceEvent
  = BlockRqRequeueFtraceEvent'_constructor {_BlockRqRequeueFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                            _BlockRqRequeueFtraceEvent'sector :: !(Prelude.Maybe Data.Word.Word64),
                                            _BlockRqRequeueFtraceEvent'nrSector :: !(Prelude.Maybe Data.Word.Word32),
                                            _BlockRqRequeueFtraceEvent'errors :: !(Prelude.Maybe Data.Int.Int32),
                                            _BlockRqRequeueFtraceEvent'rwbs :: !(Prelude.Maybe Data.Text.Text),
                                            _BlockRqRequeueFtraceEvent'cmd :: !(Prelude.Maybe Data.Text.Text),
                                            _BlockRqRequeueFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BlockRqRequeueFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BlockRqRequeueFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqRequeueFtraceEvent'dev
           (\ x__ y__ -> x__ {_BlockRqRequeueFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockRqRequeueFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqRequeueFtraceEvent'dev
           (\ x__ y__ -> x__ {_BlockRqRequeueFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockRqRequeueFtraceEvent "sector" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqRequeueFtraceEvent'sector
           (\ x__ y__ -> x__ {_BlockRqRequeueFtraceEvent'sector = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockRqRequeueFtraceEvent "maybe'sector" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqRequeueFtraceEvent'sector
           (\ x__ y__ -> x__ {_BlockRqRequeueFtraceEvent'sector = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockRqRequeueFtraceEvent "nrSector" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqRequeueFtraceEvent'nrSector
           (\ x__ y__ -> x__ {_BlockRqRequeueFtraceEvent'nrSector = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockRqRequeueFtraceEvent "maybe'nrSector" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqRequeueFtraceEvent'nrSector
           (\ x__ y__ -> x__ {_BlockRqRequeueFtraceEvent'nrSector = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockRqRequeueFtraceEvent "errors" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqRequeueFtraceEvent'errors
           (\ x__ y__ -> x__ {_BlockRqRequeueFtraceEvent'errors = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockRqRequeueFtraceEvent "maybe'errors" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqRequeueFtraceEvent'errors
           (\ x__ y__ -> x__ {_BlockRqRequeueFtraceEvent'errors = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockRqRequeueFtraceEvent "rwbs" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqRequeueFtraceEvent'rwbs
           (\ x__ y__ -> x__ {_BlockRqRequeueFtraceEvent'rwbs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockRqRequeueFtraceEvent "maybe'rwbs" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqRequeueFtraceEvent'rwbs
           (\ x__ y__ -> x__ {_BlockRqRequeueFtraceEvent'rwbs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockRqRequeueFtraceEvent "cmd" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqRequeueFtraceEvent'cmd
           (\ x__ y__ -> x__ {_BlockRqRequeueFtraceEvent'cmd = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockRqRequeueFtraceEvent "maybe'cmd" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockRqRequeueFtraceEvent'cmd
           (\ x__ y__ -> x__ {_BlockRqRequeueFtraceEvent'cmd = y__}))
        Prelude.id
instance Data.ProtoLens.Message BlockRqRequeueFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.BlockRqRequeueFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\EMBlockRqRequeueFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\SYN\n\
      \\ACKsector\CAN\STX \SOH(\EOTR\ACKsector\DC2\ESC\n\
      \\tnr_sector\CAN\ETX \SOH(\rR\bnrSector\DC2\SYN\n\
      \\ACKerrors\CAN\EOT \SOH(\ENQR\ACKerrors\DC2\DC2\n\
      \\EOTrwbs\CAN\ENQ \SOH(\tR\EOTrwbs\DC2\DLE\n\
      \\ETXcmd\CAN\ACK \SOH(\tR\ETXcmd"
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
              Data.ProtoLens.FieldDescriptor BlockRqRequeueFtraceEvent
        sector__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sector"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sector")) ::
              Data.ProtoLens.FieldDescriptor BlockRqRequeueFtraceEvent
        nrSector__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nr_sector"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nrSector")) ::
              Data.ProtoLens.FieldDescriptor BlockRqRequeueFtraceEvent
        errors__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "errors"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'errors")) ::
              Data.ProtoLens.FieldDescriptor BlockRqRequeueFtraceEvent
        rwbs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rwbs"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rwbs")) ::
              Data.ProtoLens.FieldDescriptor BlockRqRequeueFtraceEvent
        cmd__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cmd"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cmd")) ::
              Data.ProtoLens.FieldDescriptor BlockRqRequeueFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, sector__field_descriptor),
           (Data.ProtoLens.Tag 3, nrSector__field_descriptor),
           (Data.ProtoLens.Tag 4, errors__field_descriptor),
           (Data.ProtoLens.Tag 5, rwbs__field_descriptor),
           (Data.ProtoLens.Tag 6, cmd__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BlockRqRequeueFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_BlockRqRequeueFtraceEvent'_unknownFields = y__})
  defMessage
    = BlockRqRequeueFtraceEvent'_constructor
        {_BlockRqRequeueFtraceEvent'dev = Prelude.Nothing,
         _BlockRqRequeueFtraceEvent'sector = Prelude.Nothing,
         _BlockRqRequeueFtraceEvent'nrSector = Prelude.Nothing,
         _BlockRqRequeueFtraceEvent'errors = Prelude.Nothing,
         _BlockRqRequeueFtraceEvent'rwbs = Prelude.Nothing,
         _BlockRqRequeueFtraceEvent'cmd = Prelude.Nothing,
         _BlockRqRequeueFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BlockRqRequeueFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser BlockRqRequeueFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "sector"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"sector") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "nr_sector"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nrSector") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "errors"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"errors") y x)
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
                                       "rwbs"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"rwbs") y x)
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
                                       "cmd"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cmd") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BlockRqRequeueFtraceEvent"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'sector") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nrSector") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'errors") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'rwbs") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cmd") _x
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
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData BlockRqRequeueFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BlockRqRequeueFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BlockRqRequeueFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_BlockRqRequeueFtraceEvent'sector x__)
                   (Control.DeepSeq.deepseq
                      (_BlockRqRequeueFtraceEvent'nrSector x__)
                      (Control.DeepSeq.deepseq
                         (_BlockRqRequeueFtraceEvent'errors x__)
                         (Control.DeepSeq.deepseq
                            (_BlockRqRequeueFtraceEvent'rwbs x__)
                            (Control.DeepSeq.deepseq
                               (_BlockRqRequeueFtraceEvent'cmd x__) ()))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.dev' @:: Lens' BlockSleeprqFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'dev' @:: Lens' BlockSleeprqFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.sector' @:: Lens' BlockSleeprqFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'sector' @:: Lens' BlockSleeprqFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.nrSector' @:: Lens' BlockSleeprqFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'nrSector' @:: Lens' BlockSleeprqFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.rwbs' @:: Lens' BlockSleeprqFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'rwbs' @:: Lens' BlockSleeprqFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.comm' @:: Lens' BlockSleeprqFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'comm' @:: Lens' BlockSleeprqFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data BlockSleeprqFtraceEvent
  = BlockSleeprqFtraceEvent'_constructor {_BlockSleeprqFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                          _BlockSleeprqFtraceEvent'sector :: !(Prelude.Maybe Data.Word.Word64),
                                          _BlockSleeprqFtraceEvent'nrSector :: !(Prelude.Maybe Data.Word.Word32),
                                          _BlockSleeprqFtraceEvent'rwbs :: !(Prelude.Maybe Data.Text.Text),
                                          _BlockSleeprqFtraceEvent'comm :: !(Prelude.Maybe Data.Text.Text),
                                          _BlockSleeprqFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BlockSleeprqFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BlockSleeprqFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockSleeprqFtraceEvent'dev
           (\ x__ y__ -> x__ {_BlockSleeprqFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockSleeprqFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockSleeprqFtraceEvent'dev
           (\ x__ y__ -> x__ {_BlockSleeprqFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockSleeprqFtraceEvent "sector" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockSleeprqFtraceEvent'sector
           (\ x__ y__ -> x__ {_BlockSleeprqFtraceEvent'sector = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockSleeprqFtraceEvent "maybe'sector" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockSleeprqFtraceEvent'sector
           (\ x__ y__ -> x__ {_BlockSleeprqFtraceEvent'sector = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockSleeprqFtraceEvent "nrSector" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockSleeprqFtraceEvent'nrSector
           (\ x__ y__ -> x__ {_BlockSleeprqFtraceEvent'nrSector = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockSleeprqFtraceEvent "maybe'nrSector" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockSleeprqFtraceEvent'nrSector
           (\ x__ y__ -> x__ {_BlockSleeprqFtraceEvent'nrSector = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockSleeprqFtraceEvent "rwbs" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockSleeprqFtraceEvent'rwbs
           (\ x__ y__ -> x__ {_BlockSleeprqFtraceEvent'rwbs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockSleeprqFtraceEvent "maybe'rwbs" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockSleeprqFtraceEvent'rwbs
           (\ x__ y__ -> x__ {_BlockSleeprqFtraceEvent'rwbs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockSleeprqFtraceEvent "comm" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockSleeprqFtraceEvent'comm
           (\ x__ y__ -> x__ {_BlockSleeprqFtraceEvent'comm = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockSleeprqFtraceEvent "maybe'comm" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockSleeprqFtraceEvent'comm
           (\ x__ y__ -> x__ {_BlockSleeprqFtraceEvent'comm = y__}))
        Prelude.id
instance Data.ProtoLens.Message BlockSleeprqFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.BlockSleeprqFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ETBBlockSleeprqFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\SYN\n\
      \\ACKsector\CAN\STX \SOH(\EOTR\ACKsector\DC2\ESC\n\
      \\tnr_sector\CAN\ETX \SOH(\rR\bnrSector\DC2\DC2\n\
      \\EOTrwbs\CAN\EOT \SOH(\tR\EOTrwbs\DC2\DC2\n\
      \\EOTcomm\CAN\ENQ \SOH(\tR\EOTcomm"
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
              Data.ProtoLens.FieldDescriptor BlockSleeprqFtraceEvent
        sector__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sector"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sector")) ::
              Data.ProtoLens.FieldDescriptor BlockSleeprqFtraceEvent
        nrSector__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nr_sector"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nrSector")) ::
              Data.ProtoLens.FieldDescriptor BlockSleeprqFtraceEvent
        rwbs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rwbs"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rwbs")) ::
              Data.ProtoLens.FieldDescriptor BlockSleeprqFtraceEvent
        comm__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "comm"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'comm")) ::
              Data.ProtoLens.FieldDescriptor BlockSleeprqFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, sector__field_descriptor),
           (Data.ProtoLens.Tag 3, nrSector__field_descriptor),
           (Data.ProtoLens.Tag 4, rwbs__field_descriptor),
           (Data.ProtoLens.Tag 5, comm__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BlockSleeprqFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_BlockSleeprqFtraceEvent'_unknownFields = y__})
  defMessage
    = BlockSleeprqFtraceEvent'_constructor
        {_BlockSleeprqFtraceEvent'dev = Prelude.Nothing,
         _BlockSleeprqFtraceEvent'sector = Prelude.Nothing,
         _BlockSleeprqFtraceEvent'nrSector = Prelude.Nothing,
         _BlockSleeprqFtraceEvent'rwbs = Prelude.Nothing,
         _BlockSleeprqFtraceEvent'comm = Prelude.Nothing,
         _BlockSleeprqFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BlockSleeprqFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser BlockSleeprqFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "sector"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"sector") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "nr_sector"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nrSector") y x)
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
                                       "rwbs"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"rwbs") y x)
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
                                       "comm"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"comm") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BlockSleeprqFtraceEvent"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'sector") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nrSector") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'rwbs") _x
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
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'comm") _x
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
instance Control.DeepSeq.NFData BlockSleeprqFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BlockSleeprqFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BlockSleeprqFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_BlockSleeprqFtraceEvent'sector x__)
                   (Control.DeepSeq.deepseq
                      (_BlockSleeprqFtraceEvent'nrSector x__)
                      (Control.DeepSeq.deepseq
                         (_BlockSleeprqFtraceEvent'rwbs x__)
                         (Control.DeepSeq.deepseq
                            (_BlockSleeprqFtraceEvent'comm x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.dev' @:: Lens' BlockSplitFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'dev' @:: Lens' BlockSplitFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.sector' @:: Lens' BlockSplitFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'sector' @:: Lens' BlockSplitFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.newSector' @:: Lens' BlockSplitFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'newSector' @:: Lens' BlockSplitFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.rwbs' @:: Lens' BlockSplitFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'rwbs' @:: Lens' BlockSplitFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.comm' @:: Lens' BlockSplitFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'comm' @:: Lens' BlockSplitFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data BlockSplitFtraceEvent
  = BlockSplitFtraceEvent'_constructor {_BlockSplitFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                        _BlockSplitFtraceEvent'sector :: !(Prelude.Maybe Data.Word.Word64),
                                        _BlockSplitFtraceEvent'newSector :: !(Prelude.Maybe Data.Word.Word64),
                                        _BlockSplitFtraceEvent'rwbs :: !(Prelude.Maybe Data.Text.Text),
                                        _BlockSplitFtraceEvent'comm :: !(Prelude.Maybe Data.Text.Text),
                                        _BlockSplitFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BlockSplitFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BlockSplitFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockSplitFtraceEvent'dev
           (\ x__ y__ -> x__ {_BlockSplitFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockSplitFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockSplitFtraceEvent'dev
           (\ x__ y__ -> x__ {_BlockSplitFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockSplitFtraceEvent "sector" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockSplitFtraceEvent'sector
           (\ x__ y__ -> x__ {_BlockSplitFtraceEvent'sector = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockSplitFtraceEvent "maybe'sector" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockSplitFtraceEvent'sector
           (\ x__ y__ -> x__ {_BlockSplitFtraceEvent'sector = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockSplitFtraceEvent "newSector" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockSplitFtraceEvent'newSector
           (\ x__ y__ -> x__ {_BlockSplitFtraceEvent'newSector = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockSplitFtraceEvent "maybe'newSector" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockSplitFtraceEvent'newSector
           (\ x__ y__ -> x__ {_BlockSplitFtraceEvent'newSector = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockSplitFtraceEvent "rwbs" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockSplitFtraceEvent'rwbs
           (\ x__ y__ -> x__ {_BlockSplitFtraceEvent'rwbs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockSplitFtraceEvent "maybe'rwbs" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockSplitFtraceEvent'rwbs
           (\ x__ y__ -> x__ {_BlockSplitFtraceEvent'rwbs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockSplitFtraceEvent "comm" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockSplitFtraceEvent'comm
           (\ x__ y__ -> x__ {_BlockSplitFtraceEvent'comm = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockSplitFtraceEvent "maybe'comm" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockSplitFtraceEvent'comm
           (\ x__ y__ -> x__ {_BlockSplitFtraceEvent'comm = y__}))
        Prelude.id
instance Data.ProtoLens.Message BlockSplitFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.BlockSplitFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\NAKBlockSplitFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\SYN\n\
      \\ACKsector\CAN\STX \SOH(\EOTR\ACKsector\DC2\GS\n\
      \\n\
      \new_sector\CAN\ETX \SOH(\EOTR\tnewSector\DC2\DC2\n\
      \\EOTrwbs\CAN\EOT \SOH(\tR\EOTrwbs\DC2\DC2\n\
      \\EOTcomm\CAN\ENQ \SOH(\tR\EOTcomm"
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
              Data.ProtoLens.FieldDescriptor BlockSplitFtraceEvent
        sector__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sector"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sector")) ::
              Data.ProtoLens.FieldDescriptor BlockSplitFtraceEvent
        newSector__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "new_sector"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'newSector")) ::
              Data.ProtoLens.FieldDescriptor BlockSplitFtraceEvent
        rwbs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rwbs"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rwbs")) ::
              Data.ProtoLens.FieldDescriptor BlockSplitFtraceEvent
        comm__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "comm"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'comm")) ::
              Data.ProtoLens.FieldDescriptor BlockSplitFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, sector__field_descriptor),
           (Data.ProtoLens.Tag 3, newSector__field_descriptor),
           (Data.ProtoLens.Tag 4, rwbs__field_descriptor),
           (Data.ProtoLens.Tag 5, comm__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BlockSplitFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_BlockSplitFtraceEvent'_unknownFields = y__})
  defMessage
    = BlockSplitFtraceEvent'_constructor
        {_BlockSplitFtraceEvent'dev = Prelude.Nothing,
         _BlockSplitFtraceEvent'sector = Prelude.Nothing,
         _BlockSplitFtraceEvent'newSector = Prelude.Nothing,
         _BlockSplitFtraceEvent'rwbs = Prelude.Nothing,
         _BlockSplitFtraceEvent'comm = Prelude.Nothing,
         _BlockSplitFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BlockSplitFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser BlockSplitFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "sector"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"sector") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "new_sector"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"newSector") y x)
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
                                       "rwbs"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"rwbs") y x)
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
                                       "comm"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"comm") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BlockSplitFtraceEvent"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'sector") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'newSector") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'rwbs") _x
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
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'comm") _x
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
instance Control.DeepSeq.NFData BlockSplitFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BlockSplitFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BlockSplitFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_BlockSplitFtraceEvent'sector x__)
                   (Control.DeepSeq.deepseq
                      (_BlockSplitFtraceEvent'newSector x__)
                      (Control.DeepSeq.deepseq
                         (_BlockSplitFtraceEvent'rwbs x__)
                         (Control.DeepSeq.deepseq (_BlockSplitFtraceEvent'comm x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.dev' @:: Lens' BlockTouchBufferFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'dev' @:: Lens' BlockTouchBufferFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.sector' @:: Lens' BlockTouchBufferFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'sector' @:: Lens' BlockTouchBufferFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.size' @:: Lens' BlockTouchBufferFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'size' @:: Lens' BlockTouchBufferFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data BlockTouchBufferFtraceEvent
  = BlockTouchBufferFtraceEvent'_constructor {_BlockTouchBufferFtraceEvent'dev :: !(Prelude.Maybe Data.Word.Word64),
                                              _BlockTouchBufferFtraceEvent'sector :: !(Prelude.Maybe Data.Word.Word64),
                                              _BlockTouchBufferFtraceEvent'size :: !(Prelude.Maybe Data.Word.Word64),
                                              _BlockTouchBufferFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BlockTouchBufferFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BlockTouchBufferFtraceEvent "dev" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockTouchBufferFtraceEvent'dev
           (\ x__ y__ -> x__ {_BlockTouchBufferFtraceEvent'dev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockTouchBufferFtraceEvent "maybe'dev" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockTouchBufferFtraceEvent'dev
           (\ x__ y__ -> x__ {_BlockTouchBufferFtraceEvent'dev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockTouchBufferFtraceEvent "sector" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockTouchBufferFtraceEvent'sector
           (\ x__ y__ -> x__ {_BlockTouchBufferFtraceEvent'sector = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockTouchBufferFtraceEvent "maybe'sector" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockTouchBufferFtraceEvent'sector
           (\ x__ y__ -> x__ {_BlockTouchBufferFtraceEvent'sector = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockTouchBufferFtraceEvent "size" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockTouchBufferFtraceEvent'size
           (\ x__ y__ -> x__ {_BlockTouchBufferFtraceEvent'size = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockTouchBufferFtraceEvent "maybe'size" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockTouchBufferFtraceEvent'size
           (\ x__ y__ -> x__ {_BlockTouchBufferFtraceEvent'size = y__}))
        Prelude.id
instance Data.ProtoLens.Message BlockTouchBufferFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.BlockTouchBufferFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ESCBlockTouchBufferFtraceEvent\DC2\DLE\n\
      \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\SYN\n\
      \\ACKsector\CAN\STX \SOH(\EOTR\ACKsector\DC2\DC2\n\
      \\EOTsize\CAN\ETX \SOH(\EOTR\EOTsize"
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
              Data.ProtoLens.FieldDescriptor BlockTouchBufferFtraceEvent
        sector__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sector"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sector")) ::
              Data.ProtoLens.FieldDescriptor BlockTouchBufferFtraceEvent
        size__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'size")) ::
              Data.ProtoLens.FieldDescriptor BlockTouchBufferFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dev__field_descriptor),
           (Data.ProtoLens.Tag 2, sector__field_descriptor),
           (Data.ProtoLens.Tag 3, size__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BlockTouchBufferFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_BlockTouchBufferFtraceEvent'_unknownFields = y__})
  defMessage
    = BlockTouchBufferFtraceEvent'_constructor
        {_BlockTouchBufferFtraceEvent'dev = Prelude.Nothing,
         _BlockTouchBufferFtraceEvent'sector = Prelude.Nothing,
         _BlockTouchBufferFtraceEvent'size = Prelude.Nothing,
         _BlockTouchBufferFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BlockTouchBufferFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser BlockTouchBufferFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "sector"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"sector") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "size"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"size") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BlockTouchBufferFtraceEvent"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'sector") _x
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
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData BlockTouchBufferFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BlockTouchBufferFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BlockTouchBufferFtraceEvent'dev x__)
                (Control.DeepSeq.deepseq
                   (_BlockTouchBufferFtraceEvent'sector x__)
                   (Control.DeepSeq.deepseq
                      (_BlockTouchBufferFtraceEvent'size x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.nrRq' @:: Lens' BlockUnplugFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'nrRq' @:: Lens' BlockUnplugFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.comm' @:: Lens' BlockUnplugFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields.maybe'comm' @:: Lens' BlockUnplugFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data BlockUnplugFtraceEvent
  = BlockUnplugFtraceEvent'_constructor {_BlockUnplugFtraceEvent'nrRq :: !(Prelude.Maybe Data.Int.Int32),
                                         _BlockUnplugFtraceEvent'comm :: !(Prelude.Maybe Data.Text.Text),
                                         _BlockUnplugFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BlockUnplugFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BlockUnplugFtraceEvent "nrRq" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockUnplugFtraceEvent'nrRq
           (\ x__ y__ -> x__ {_BlockUnplugFtraceEvent'nrRq = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockUnplugFtraceEvent "maybe'nrRq" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockUnplugFtraceEvent'nrRq
           (\ x__ y__ -> x__ {_BlockUnplugFtraceEvent'nrRq = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BlockUnplugFtraceEvent "comm" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockUnplugFtraceEvent'comm
           (\ x__ y__ -> x__ {_BlockUnplugFtraceEvent'comm = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BlockUnplugFtraceEvent "maybe'comm" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BlockUnplugFtraceEvent'comm
           (\ x__ y__ -> x__ {_BlockUnplugFtraceEvent'comm = y__}))
        Prelude.id
instance Data.ProtoLens.Message BlockUnplugFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.BlockUnplugFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SYNBlockUnplugFtraceEvent\DC2\DC3\n\
      \\ENQnr_rq\CAN\SOH \SOH(\ENQR\EOTnrRq\DC2\DC2\n\
      \\EOTcomm\CAN\STX \SOH(\tR\EOTcomm"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        nrRq__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nr_rq"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nrRq")) ::
              Data.ProtoLens.FieldDescriptor BlockUnplugFtraceEvent
        comm__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "comm"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'comm")) ::
              Data.ProtoLens.FieldDescriptor BlockUnplugFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, nrRq__field_descriptor),
           (Data.ProtoLens.Tag 2, comm__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BlockUnplugFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_BlockUnplugFtraceEvent'_unknownFields = y__})
  defMessage
    = BlockUnplugFtraceEvent'_constructor
        {_BlockUnplugFtraceEvent'nrRq = Prelude.Nothing,
         _BlockUnplugFtraceEvent'comm = Prelude.Nothing,
         _BlockUnplugFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BlockUnplugFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser BlockUnplugFtraceEvent
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
                                       "nr_rq"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nrRq") y x)
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
                                       "comm"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"comm") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BlockUnplugFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nrRq") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'comm") _x
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
instance Control.DeepSeq.NFData BlockUnplugFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BlockUnplugFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BlockUnplugFtraceEvent'nrRq x__)
                (Control.DeepSeq.deepseq (_BlockUnplugFtraceEvent'comm x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \(protos/perfetto/trace/ftrace/block.proto\DC2\SIperfetto.protos\"\176\SOH\n\
    \\ETBBlockRqIssueFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\SYN\n\
    \\ACKsector\CAN\STX \SOH(\EOTR\ACKsector\DC2\ESC\n\
    \\tnr_sector\CAN\ETX \SOH(\rR\bnrSector\DC2\DC4\n\
    \\ENQbytes\CAN\EOT \SOH(\rR\ENQbytes\DC2\DC2\n\
    \\EOTrwbs\CAN\ENQ \SOH(\tR\EOTrwbs\DC2\DC2\n\
    \\EOTcomm\CAN\ACK \SOH(\tR\EOTcomm\DC2\DLE\n\
    \\ETXcmd\CAN\a \SOH(\tR\ETXcmd\"\141\SOH\n\
    \\FSBlockBioBackmergeFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\SYN\n\
    \\ACKsector\CAN\STX \SOH(\EOTR\ACKsector\DC2\ESC\n\
    \\tnr_sector\CAN\ETX \SOH(\rR\bnrSector\DC2\DC2\n\
    \\EOTrwbs\CAN\EOT \SOH(\tR\EOTrwbs\DC2\DC2\n\
    \\EOTcomm\CAN\ENQ \SOH(\tR\EOTcomm\"\138\SOH\n\
    \\EMBlockBioBounceFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\SYN\n\
    \\ACKsector\CAN\STX \SOH(\EOTR\ACKsector\DC2\ESC\n\
    \\tnr_sector\CAN\ETX \SOH(\rR\bnrSector\DC2\DC2\n\
    \\EOTrwbs\CAN\EOT \SOH(\tR\EOTrwbs\DC2\DC2\n\
    \\EOTcomm\CAN\ENQ \SOH(\tR\EOTcomm\"\142\SOH\n\
    \\ESCBlockBioCompleteFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\SYN\n\
    \\ACKsector\CAN\STX \SOH(\EOTR\ACKsector\DC2\ESC\n\
    \\tnr_sector\CAN\ETX \SOH(\rR\bnrSector\DC2\DC4\n\
    \\ENQerror\CAN\EOT \SOH(\ENQR\ENQerror\DC2\DC2\n\
    \\EOTrwbs\CAN\ENQ \SOH(\tR\EOTrwbs\"\142\SOH\n\
    \\GSBlockBioFrontmergeFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\SYN\n\
    \\ACKsector\CAN\STX \SOH(\EOTR\ACKsector\DC2\ESC\n\
    \\tnr_sector\CAN\ETX \SOH(\rR\bnrSector\DC2\DC2\n\
    \\EOTrwbs\CAN\EOT \SOH(\tR\EOTrwbs\DC2\DC2\n\
    \\EOTcomm\CAN\ENQ \SOH(\tR\EOTcomm\"\137\SOH\n\
    \\CANBlockBioQueueFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\SYN\n\
    \\ACKsector\CAN\STX \SOH(\EOTR\ACKsector\DC2\ESC\n\
    \\tnr_sector\CAN\ETX \SOH(\rR\bnrSector\DC2\DC2\n\
    \\EOTrwbs\CAN\EOT \SOH(\tR\EOTrwbs\DC2\DC2\n\
    \\EOTcomm\CAN\ENQ \SOH(\tR\EOTcomm\"\173\SOH\n\
    \\CANBlockBioRemapFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\SYN\n\
    \\ACKsector\CAN\STX \SOH(\EOTR\ACKsector\DC2\ESC\n\
    \\tnr_sector\CAN\ETX \SOH(\rR\bnrSector\DC2\ETB\n\
    \\aold_dev\CAN\EOT \SOH(\EOTR\ACKoldDev\DC2\GS\n\
    \\n\
    \old_sector\CAN\ENQ \SOH(\EOTR\toldSector\DC2\DC2\n\
    \\EOTrwbs\CAN\ACK \SOH(\tR\EOTrwbs\"[\n\
    \\ESCBlockDirtyBufferFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\SYN\n\
    \\ACKsector\CAN\STX \SOH(\EOTR\ACKsector\DC2\DC2\n\
    \\EOTsize\CAN\ETX \SOH(\EOTR\EOTsize\"\134\SOH\n\
    \\NAKBlockGetrqFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\SYN\n\
    \\ACKsector\CAN\STX \SOH(\EOTR\ACKsector\DC2\ESC\n\
    \\tnr_sector\CAN\ETX \SOH(\rR\bnrSector\DC2\DC2\n\
    \\EOTrwbs\CAN\EOT \SOH(\tR\EOTrwbs\DC2\DC2\n\
    \\EOTcomm\CAN\ENQ \SOH(\tR\EOTcomm\"*\n\
    \\DC4BlockPlugFtraceEvent\DC2\DC2\n\
    \\EOTcomm\CAN\SOH \SOH(\tR\EOTcomm\"\158\SOH\n\
    \\ETBBlockRqAbortFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\SYN\n\
    \\ACKsector\CAN\STX \SOH(\EOTR\ACKsector\DC2\ESC\n\
    \\tnr_sector\CAN\ETX \SOH(\rR\bnrSector\DC2\SYN\n\
    \\ACKerrors\CAN\EOT \SOH(\ENQR\ACKerrors\DC2\DC2\n\
    \\EOTrwbs\CAN\ENQ \SOH(\tR\EOTrwbs\DC2\DLE\n\
    \\ETXcmd\CAN\ACK \SOH(\tR\ETXcmd\"\183\SOH\n\
    \\SUBBlockRqCompleteFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\SYN\n\
    \\ACKsector\CAN\STX \SOH(\EOTR\ACKsector\DC2\ESC\n\
    \\tnr_sector\CAN\ETX \SOH(\rR\bnrSector\DC2\SYN\n\
    \\ACKerrors\CAN\EOT \SOH(\ENQR\ACKerrors\DC2\DC2\n\
    \\EOTrwbs\CAN\ENQ \SOH(\tR\EOTrwbs\DC2\DLE\n\
    \\ETXcmd\CAN\ACK \SOH(\tR\ETXcmd\DC2\DC4\n\
    \\ENQerror\CAN\a \SOH(\ENQR\ENQerror\"\177\SOH\n\
    \\CANBlockRqInsertFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\SYN\n\
    \\ACKsector\CAN\STX \SOH(\EOTR\ACKsector\DC2\ESC\n\
    \\tnr_sector\CAN\ETX \SOH(\rR\bnrSector\DC2\DC4\n\
    \\ENQbytes\CAN\EOT \SOH(\rR\ENQbytes\DC2\DC2\n\
    \\EOTrwbs\CAN\ENQ \SOH(\tR\EOTrwbs\DC2\DC2\n\
    \\EOTcomm\CAN\ACK \SOH(\tR\EOTcomm\DC2\DLE\n\
    \\ETXcmd\CAN\a \SOH(\tR\ETXcmd\"\197\SOH\n\
    \\ETBBlockRqRemapFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\SYN\n\
    \\ACKsector\CAN\STX \SOH(\EOTR\ACKsector\DC2\ESC\n\
    \\tnr_sector\CAN\ETX \SOH(\rR\bnrSector\DC2\ETB\n\
    \\aold_dev\CAN\EOT \SOH(\EOTR\ACKoldDev\DC2\GS\n\
    \\n\
    \old_sector\CAN\ENQ \SOH(\EOTR\toldSector\DC2\ETB\n\
    \\anr_bios\CAN\ACK \SOH(\rR\ACKnrBios\DC2\DC2\n\
    \\EOTrwbs\CAN\a \SOH(\tR\EOTrwbs\"\160\SOH\n\
    \\EMBlockRqRequeueFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\SYN\n\
    \\ACKsector\CAN\STX \SOH(\EOTR\ACKsector\DC2\ESC\n\
    \\tnr_sector\CAN\ETX \SOH(\rR\bnrSector\DC2\SYN\n\
    \\ACKerrors\CAN\EOT \SOH(\ENQR\ACKerrors\DC2\DC2\n\
    \\EOTrwbs\CAN\ENQ \SOH(\tR\EOTrwbs\DC2\DLE\n\
    \\ETXcmd\CAN\ACK \SOH(\tR\ETXcmd\"\136\SOH\n\
    \\ETBBlockSleeprqFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\SYN\n\
    \\ACKsector\CAN\STX \SOH(\EOTR\ACKsector\DC2\ESC\n\
    \\tnr_sector\CAN\ETX \SOH(\rR\bnrSector\DC2\DC2\n\
    \\EOTrwbs\CAN\EOT \SOH(\tR\EOTrwbs\DC2\DC2\n\
    \\EOTcomm\CAN\ENQ \SOH(\tR\EOTcomm\"\136\SOH\n\
    \\NAKBlockSplitFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\SYN\n\
    \\ACKsector\CAN\STX \SOH(\EOTR\ACKsector\DC2\GS\n\
    \\n\
    \new_sector\CAN\ETX \SOH(\EOTR\tnewSector\DC2\DC2\n\
    \\EOTrwbs\CAN\EOT \SOH(\tR\EOTrwbs\DC2\DC2\n\
    \\EOTcomm\CAN\ENQ \SOH(\tR\EOTcomm\"[\n\
    \\ESCBlockTouchBufferFtraceEvent\DC2\DLE\n\
    \\ETXdev\CAN\SOH \SOH(\EOTR\ETXdev\DC2\SYN\n\
    \\ACKsector\CAN\STX \SOH(\EOTR\ACKsector\DC2\DC2\n\
    \\EOTsize\CAN\ETX \SOH(\EOTR\EOTsize\"A\n\
    \\SYNBlockUnplugFtraceEvent\DC2\DC3\n\
    \\ENQnr_rq\CAN\SOH \SOH(\ENQR\EOTnrRq\DC2\DC2\n\
    \\EOTcomm\CAN\STX \SOH(\tR\EOTcommJ\131\&8\n\
    \\a\DC2\ENQ\EOT\NUL\139\SOH\SOH\n\
    \a\n\
    \\SOH\f\DC2\ETX\EOT\NUL\DC22W Autogenerated by:\n\
    \ ../../src/tools/ftrace_proto_gen/ftrace_proto_gen.cc\n\
    \ Do not edit.\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\ENQ\NUL\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\a\NUL\SI\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b\US\n\
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
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\t\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\t\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\t\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\t\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\t\ESC\FS\n\
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
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX\r\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\EOT\DC2\ETX\r\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETX\r\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX\r\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX\r\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETX\SO\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\EOT\DC2\ETX\SO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ENQ\DC2\ETX\SO\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETX\SO\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETX\SO\CAN\EM\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\DLE\NUL\SYN\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\DLE\b$\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\DC1\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\DC1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\DC1\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\DC1\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\DC1\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\DC2\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX\DC2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\DC2\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\DC2\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\DC2\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX\DC3\STX \n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\EOT\DC2\ETX\DC3\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX\DC3\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX\DC3\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX\DC3\RS\US\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX\DC4\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\EOT\DC2\ETX\DC4\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX\DC4\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX\DC4\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX\DC4\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETX\NAK\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\EOT\DC2\ETX\NAK\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ENQ\DC2\ETX\NAK\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETX\NAK\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETX\NAK\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT\ETB\NUL\GS\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\ETB\b!\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\CAN\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETX\CAN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX\CAN\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\CAN\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\CAN\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX\EM\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETX\EM\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX\EM\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX\EM\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX\EM\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX\SUB\STX \n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\EOT\DC2\ETX\SUB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETX\SUB\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX\SUB\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX\SUB\RS\US\n\
    \\v\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETX\ESC\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\EOT\DC2\ETX\ESC\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ENQ\DC2\ETX\ESC\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETX\ESC\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETX\ESC\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\STX\STX\EOT\DC2\ETX\FS\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\EOT\DC2\ETX\FS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ENQ\DC2\ETX\FS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\ETX\FS\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\ETX\FS\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOT\RS\NUL$\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX\RS\b#\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX\US\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETX\US\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX\US\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX\US\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX\US\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX \STX\GS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\EOT\DC2\ETX \STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETX \v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX \DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX \ESC\FS\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETX!\STX \n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\EOT\DC2\ETX!\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\ETX!\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETX!\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETX!\RS\US\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\ETX\"\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\EOT\DC2\ETX\"\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ENQ\DC2\ETX\"\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\ETX\"\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\ETX\"\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\EOT\DC2\ETX#\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\EOT\DC2\ETX#\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ENQ\DC2\ETX#\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\SOH\DC2\ETX#\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ETX\DC2\ETX#\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOT%\NUL+\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX%\b%\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX&\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\EOT\DC2\ETX&\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX&\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX&\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX&\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETX'\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\EOT\DC2\ETX'\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETX'\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETX'\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETX'\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETX(\STX \n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\EOT\DC2\ETX(\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ENQ\DC2\ETX(\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETX(\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETX(\RS\US\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\ETX)\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\EOT\DC2\ETX)\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ENQ\DC2\ETX)\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\ETX)\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\ETX)\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\EOT\DC2\ETX*\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\EOT\DC2\ETX*\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\ENQ\DC2\ETX*\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\SOH\DC2\ETX*\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\ETX\DC2\ETX*\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\ENQ\DC2\EOT,\NUL2\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX,\b \n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETX-\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\ETX-\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETX-\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX-\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX-\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ETX.\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\EOT\DC2\ETX.\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\ETX.\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETX.\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETX.\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\ETX/\STX \n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\EOT\DC2\ETX/\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ENQ\DC2\ETX/\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\ETX/\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\ETX/\RS\US\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\ETX\DC2\ETX0\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\EOT\DC2\ETX0\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\ENQ\DC2\ETX0\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\SOH\DC2\ETX0\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\ETX\DC2\ETX0\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\EOT\DC2\ETX1\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\EOT\DC2\ETX1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\ENQ\DC2\ETX1\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\SOH\DC2\ETX1\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\ETX\DC2\ETX1\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\ACK\DC2\EOT3\NUL:\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETX3\b \n\
    \\v\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETX4\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\EOT\DC2\ETX4\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETX4\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETX4\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETX4\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\ETX5\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\EOT\DC2\ETX5\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\ETX5\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\ETX5\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\ETX5\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\STX\DC2\ETX6\STX \n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\EOT\DC2\ETX6\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ENQ\DC2\ETX6\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\SOH\DC2\ETX6\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ETX\DC2\ETX6\RS\US\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\ETX\DC2\ETX7\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\EOT\DC2\ETX7\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\ENQ\DC2\ETX7\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\SOH\DC2\ETX7\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\ETX\DC2\ETX7\FS\GS\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\EOT\DC2\ETX8\STX!\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\EOT\EOT\DC2\ETX8\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\EOT\ENQ\DC2\ETX8\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\EOT\SOH\DC2\ETX8\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\EOT\ETX\DC2\ETX8\US \n\
    \\v\n\
    \\EOT\EOT\ACK\STX\ENQ\DC2\ETX9\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ENQ\EOT\DC2\ETX9\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ENQ\ENQ\DC2\ETX9\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ENQ\SOH\DC2\ETX9\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ENQ\ETX\DC2\ETX9\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\a\DC2\EOT;\NUL?\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETX;\b#\n\
    \\v\n\
    \\EOT\EOT\a\STX\NUL\DC2\ETX<\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\EOT\DC2\ETX<\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ENQ\DC2\ETX<\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\ETX<\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\ETX<\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\a\STX\SOH\DC2\ETX=\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\EOT\DC2\ETX=\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ENQ\DC2\ETX=\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\ETX=\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\ETX=\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\a\STX\STX\DC2\ETX>\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\EOT\DC2\ETX>\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\ENQ\DC2\ETX>\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\SOH\DC2\ETX>\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\ETX\DC2\ETX>\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\b\DC2\EOT@\NULF\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\b\SOH\DC2\ETX@\b\GS\n\
    \\v\n\
    \\EOT\EOT\b\STX\NUL\DC2\ETXA\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\EOT\DC2\ETXA\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\ETXA\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\ETXA\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\ETXA\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\b\STX\SOH\DC2\ETXB\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\EOT\DC2\ETXB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ENQ\DC2\ETXB\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\ETXB\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\ETXB\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\b\STX\STX\DC2\ETXC\STX \n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\EOT\DC2\ETXC\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\ENQ\DC2\ETXC\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\SOH\DC2\ETXC\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\ETX\DC2\ETXC\RS\US\n\
    \\v\n\
    \\EOT\EOT\b\STX\ETX\DC2\ETXD\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ETX\EOT\DC2\ETXD\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ETX\ENQ\DC2\ETXD\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ETX\SOH\DC2\ETXD\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ETX\ETX\DC2\ETXD\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\b\STX\EOT\DC2\ETXE\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\b\STX\EOT\EOT\DC2\ETXE\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\EOT\ENQ\DC2\ETXE\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\EOT\SOH\DC2\ETXE\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\b\STX\EOT\ETX\DC2\ETXE\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\t\DC2\EOTG\NULI\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\t\SOH\DC2\ETXG\b\FS\n\
    \\v\n\
    \\EOT\EOT\t\STX\NUL\DC2\ETXH\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\EOT\DC2\ETXH\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ENQ\DC2\ETXH\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\ETXH\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\ETXH\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\n\
    \\DC2\EOTJ\NULQ\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\n\
    \\SOH\DC2\ETXJ\b\US\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\ETXK\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\EOT\DC2\ETXK\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ENQ\DC2\ETXK\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\ETXK\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\ETXK\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\SOH\DC2\ETXL\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\EOT\DC2\ETXL\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ENQ\DC2\ETXL\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\SOH\DC2\ETXL\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ETX\DC2\ETXL\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\STX\DC2\ETXM\STX \n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\STX\EOT\DC2\ETXM\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\STX\ENQ\DC2\ETXM\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\STX\SOH\DC2\ETXM\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\STX\ETX\DC2\ETXM\RS\US\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\ETX\DC2\ETXN\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ETX\EOT\DC2\ETXN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ETX\ENQ\DC2\ETXN\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ETX\SOH\DC2\ETXN\DC1\ETB\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ETX\ETX\DC2\ETXN\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\EOT\DC2\ETXO\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\EOT\EOT\DC2\ETXO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\EOT\ENQ\DC2\ETXO\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\EOT\SOH\DC2\ETXO\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\EOT\ETX\DC2\ETXO\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\ENQ\DC2\ETXP\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ENQ\EOT\DC2\ETXP\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ENQ\ENQ\DC2\ETXP\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ENQ\SOH\DC2\ETXP\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ENQ\ETX\DC2\ETXP\CAN\EM\n\
    \\n\
    \\n\
    \\STX\EOT\v\DC2\EOTR\NULZ\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\v\SOH\DC2\ETXR\b\"\n\
    \\v\n\
    \\EOT\EOT\v\STX\NUL\DC2\ETXS\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\EOT\DC2\ETXS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\ENQ\DC2\ETXS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\ETXS\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\ETXS\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\v\STX\SOH\DC2\ETXT\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\EOT\DC2\ETXT\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\ENQ\DC2\ETXT\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\SOH\DC2\ETXT\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\ETX\DC2\ETXT\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\v\STX\STX\DC2\ETXU\STX \n\
    \\f\n\
    \\ENQ\EOT\v\STX\STX\EOT\DC2\ETXU\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\STX\ENQ\DC2\ETXU\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\v\STX\STX\SOH\DC2\ETXU\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\v\STX\STX\ETX\DC2\ETXU\RS\US\n\
    \\v\n\
    \\EOT\EOT\v\STX\ETX\DC2\ETXV\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\v\STX\ETX\EOT\DC2\ETXV\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\ETX\ENQ\DC2\ETXV\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\v\STX\ETX\SOH\DC2\ETXV\DC1\ETB\n\
    \\f\n\
    \\ENQ\EOT\v\STX\ETX\ETX\DC2\ETXV\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\v\STX\EOT\DC2\ETXW\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\v\STX\EOT\EOT\DC2\ETXW\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\EOT\ENQ\DC2\ETXW\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\v\STX\EOT\SOH\DC2\ETXW\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\v\STX\EOT\ETX\DC2\ETXW\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\v\STX\ENQ\DC2\ETXX\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\v\STX\ENQ\EOT\DC2\ETXX\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\ENQ\ENQ\DC2\ETXX\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\v\STX\ENQ\SOH\DC2\ETXX\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\v\STX\ENQ\ETX\DC2\ETXX\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\v\STX\ACK\DC2\ETXY\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\v\STX\ACK\EOT\DC2\ETXY\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\ACK\ENQ\DC2\ETXY\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\v\STX\ACK\SOH\DC2\ETXY\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\v\STX\ACK\ETX\DC2\ETXY\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\f\DC2\EOT[\NULc\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\f\SOH\DC2\ETX[\b \n\
    \\v\n\
    \\EOT\EOT\f\STX\NUL\DC2\ETX\\\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\EOT\DC2\ETX\\\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\ENQ\DC2\ETX\\\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\ETX\\\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\ETX\\\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\f\STX\SOH\DC2\ETX]\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\f\STX\SOH\EOT\DC2\ETX]\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\SOH\ENQ\DC2\ETX]\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\f\STX\SOH\SOH\DC2\ETX]\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\f\STX\SOH\ETX\DC2\ETX]\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\f\STX\STX\DC2\ETX^\STX \n\
    \\f\n\
    \\ENQ\EOT\f\STX\STX\EOT\DC2\ETX^\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\STX\ENQ\DC2\ETX^\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\f\STX\STX\SOH\DC2\ETX^\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\f\STX\STX\ETX\DC2\ETX^\RS\US\n\
    \\v\n\
    \\EOT\EOT\f\STX\ETX\DC2\ETX_\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ETX\EOT\DC2\ETX_\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ETX\ENQ\DC2\ETX_\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ETX\SOH\DC2\ETX_\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ETX\ETX\DC2\ETX_\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\f\STX\EOT\DC2\ETX`\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\f\STX\EOT\EOT\DC2\ETX`\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\EOT\ENQ\DC2\ETX`\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\f\STX\EOT\SOH\DC2\ETX`\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\f\STX\EOT\ETX\DC2\ETX`\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\f\STX\ENQ\DC2\ETXa\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ENQ\EOT\DC2\ETXa\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ENQ\ENQ\DC2\ETXa\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ENQ\SOH\DC2\ETXa\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ENQ\ETX\DC2\ETXa\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\f\STX\ACK\DC2\ETXb\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ACK\EOT\DC2\ETXb\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ACK\ENQ\DC2\ETXb\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ACK\SOH\DC2\ETXb\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\f\STX\ACK\ETX\DC2\ETXb\CAN\EM\n\
    \\n\
    \\n\
    \\STX\EOT\r\DC2\EOTd\NULl\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\r\SOH\DC2\ETXd\b\US\n\
    \\v\n\
    \\EOT\EOT\r\STX\NUL\DC2\ETXe\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\EOT\DC2\ETXe\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\ENQ\DC2\ETXe\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\SOH\DC2\ETXe\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\ETX\DC2\ETXe\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\r\STX\SOH\DC2\ETXf\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\r\STX\SOH\EOT\DC2\ETXf\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\SOH\ENQ\DC2\ETXf\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\r\STX\SOH\SOH\DC2\ETXf\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\r\STX\SOH\ETX\DC2\ETXf\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\r\STX\STX\DC2\ETXg\STX \n\
    \\f\n\
    \\ENQ\EOT\r\STX\STX\EOT\DC2\ETXg\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\STX\ENQ\DC2\ETXg\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\r\STX\STX\SOH\DC2\ETXg\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\r\STX\STX\ETX\DC2\ETXg\RS\US\n\
    \\v\n\
    \\EOT\EOT\r\STX\ETX\DC2\ETXh\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ETX\EOT\DC2\ETXh\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ETX\ENQ\DC2\ETXh\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ETX\SOH\DC2\ETXh\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ETX\ETX\DC2\ETXh\FS\GS\n\
    \\v\n\
    \\EOT\EOT\r\STX\EOT\DC2\ETXi\STX!\n\
    \\f\n\
    \\ENQ\EOT\r\STX\EOT\EOT\DC2\ETXi\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\EOT\ENQ\DC2\ETXi\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\r\STX\EOT\SOH\DC2\ETXi\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\r\STX\EOT\ETX\DC2\ETXi\US \n\
    \\v\n\
    \\EOT\EOT\r\STX\ENQ\DC2\ETXj\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ENQ\EOT\DC2\ETXj\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ENQ\ENQ\DC2\ETXj\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ENQ\SOH\DC2\ETXj\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ENQ\ETX\DC2\ETXj\FS\GS\n\
    \\v\n\
    \\EOT\EOT\r\STX\ACK\DC2\ETXk\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ACK\EOT\DC2\ETXk\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ACK\ENQ\DC2\ETXk\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ACK\SOH\DC2\ETXk\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ACK\ETX\DC2\ETXk\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\SO\DC2\EOTm\NULt\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SO\SOH\DC2\ETXm\b!\n\
    \\v\n\
    \\EOT\EOT\SO\STX\NUL\DC2\ETXn\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\NUL\EOT\DC2\ETXn\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\NUL\ENQ\DC2\ETXn\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\NUL\SOH\DC2\ETXn\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\NUL\ETX\DC2\ETXn\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\SO\STX\SOH\DC2\ETXo\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\SOH\EOT\DC2\ETXo\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\SOH\ENQ\DC2\ETXo\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\SOH\SOH\DC2\ETXo\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\SOH\ETX\DC2\ETXo\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\SO\STX\STX\DC2\ETXp\STX \n\
    \\f\n\
    \\ENQ\EOT\SO\STX\STX\EOT\DC2\ETXp\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\STX\ENQ\DC2\ETXp\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\STX\SOH\DC2\ETXp\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\STX\ETX\DC2\ETXp\RS\US\n\
    \\v\n\
    \\EOT\EOT\SO\STX\ETX\DC2\ETXq\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\ETX\EOT\DC2\ETXq\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\ETX\ENQ\DC2\ETXq\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\ETX\SOH\DC2\ETXq\DC1\ETB\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\ETX\ETX\DC2\ETXq\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\SO\STX\EOT\DC2\ETXr\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\EOT\EOT\DC2\ETXr\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\EOT\ENQ\DC2\ETXr\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\EOT\SOH\DC2\ETXr\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\EOT\ETX\DC2\ETXr\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\SO\STX\ENQ\DC2\ETXs\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\ENQ\EOT\DC2\ETXs\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\ENQ\ENQ\DC2\ETXs\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\ENQ\SOH\DC2\ETXs\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\ENQ\ETX\DC2\ETXs\CAN\EM\n\
    \\n\
    \\n\
    \\STX\EOT\SI\DC2\EOTu\NUL{\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SI\SOH\DC2\ETXu\b\US\n\
    \\v\n\
    \\EOT\EOT\SI\STX\NUL\DC2\ETXv\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\NUL\EOT\DC2\ETXv\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\NUL\ENQ\DC2\ETXv\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\NUL\SOH\DC2\ETXv\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\NUL\ETX\DC2\ETXv\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\SI\STX\SOH\DC2\ETXw\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\SOH\EOT\DC2\ETXw\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\SOH\ENQ\DC2\ETXw\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\SOH\SOH\DC2\ETXw\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\SOH\ETX\DC2\ETXw\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\SI\STX\STX\DC2\ETXx\STX \n\
    \\f\n\
    \\ENQ\EOT\SI\STX\STX\EOT\DC2\ETXx\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\STX\ENQ\DC2\ETXx\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\STX\SOH\DC2\ETXx\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\STX\ETX\DC2\ETXx\RS\US\n\
    \\v\n\
    \\EOT\EOT\SI\STX\ETX\DC2\ETXy\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\ETX\EOT\DC2\ETXy\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\ETX\ENQ\DC2\ETXy\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\ETX\SOH\DC2\ETXy\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\ETX\ETX\DC2\ETXy\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\SI\STX\EOT\DC2\ETXz\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\EOT\EOT\DC2\ETXz\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\EOT\ENQ\DC2\ETXz\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\EOT\SOH\DC2\ETXz\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\EOT\ETX\DC2\ETXz\EM\SUB\n\
    \\v\n\
    \\STX\EOT\DLE\DC2\ENQ|\NUL\130\SOH\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\DLE\SOH\DC2\ETX|\b\GS\n\
    \\v\n\
    \\EOT\EOT\DLE\STX\NUL\DC2\ETX}\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\NUL\EOT\DC2\ETX}\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\NUL\ENQ\DC2\ETX}\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\NUL\SOH\DC2\ETX}\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\NUL\ETX\DC2\ETX}\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\DLE\STX\SOH\DC2\ETX~\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\SOH\EOT\DC2\ETX~\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\SOH\ENQ\DC2\ETX~\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\SOH\SOH\DC2\ETX~\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\SOH\ETX\DC2\ETX~\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\DLE\STX\STX\DC2\ETX\DEL\STX!\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\STX\EOT\DC2\ETX\DEL\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\STX\ENQ\DC2\ETX\DEL\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\STX\SOH\DC2\ETX\DEL\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\STX\ETX\DC2\ETX\DEL\US \n\
    \\f\n\
    \\EOT\EOT\DLE\STX\ETX\DC2\EOT\128\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ETX\EOT\DC2\EOT\128\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ETX\ENQ\DC2\EOT\128\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ETX\SOH\DC2\EOT\128\SOH\DC2\SYN\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ETX\ETX\DC2\EOT\128\SOH\EM\SUB\n\
    \\f\n\
    \\EOT\EOT\DLE\STX\EOT\DC2\EOT\129\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\EOT\EOT\DC2\EOT\129\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\EOT\ENQ\DC2\EOT\129\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\EOT\SOH\DC2\EOT\129\SOH\DC2\SYN\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\EOT\ETX\DC2\EOT\129\SOH\EM\SUB\n\
    \\f\n\
    \\STX\EOT\DC1\DC2\ACK\131\SOH\NUL\135\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\DC1\SOH\DC2\EOT\131\SOH\b#\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\NUL\DC2\EOT\132\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\EOT\DC2\EOT\132\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ENQ\DC2\EOT\132\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\SOH\DC2\EOT\132\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ETX\DC2\EOT\132\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\SOH\DC2\EOT\133\SOH\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\EOT\DC2\EOT\133\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\ENQ\DC2\EOT\133\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\SOH\DC2\EOT\133\SOH\DC2\CAN\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\ETX\DC2\EOT\133\SOH\ESC\FS\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\STX\DC2\EOT\134\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\STX\EOT\DC2\EOT\134\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\STX\ENQ\DC2\EOT\134\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\STX\SOH\DC2\EOT\134\SOH\DC2\SYN\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\STX\ETX\DC2\EOT\134\SOH\EM\SUB\n\
    \\f\n\
    \\STX\EOT\DC2\DC2\ACK\136\SOH\NUL\139\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\DC2\SOH\DC2\EOT\136\SOH\b\RS\n\
    \\f\n\
    \\EOT\EOT\DC2\STX\NUL\DC2\EOT\137\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\EOT\DC2\EOT\137\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ENQ\DC2\EOT\137\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\SOH\DC2\EOT\137\SOH\DC1\SYN\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ETX\DC2\EOT\137\SOH\EM\SUB\n\
    \\f\n\
    \\EOT\EOT\DC2\STX\SOH\DC2\EOT\138\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\EOT\DC2\EOT\138\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\ENQ\DC2\EOT\138\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\SOH\DC2\EOT\138\SOH\DC2\SYN\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\ETX\DC2\EOT\138\SOH\EM\SUB"