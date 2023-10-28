{- This file was auto-generated from protos/perfetto/trace/track_event/source_location.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.TrackEvent.SourceLocation (
        SourceLocation(), UnsymbolizedSourceLocation()
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
     
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.SourceLocation_Fields.iid' @:: Lens' SourceLocation Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.SourceLocation_Fields.maybe'iid' @:: Lens' SourceLocation (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.SourceLocation_Fields.fileName' @:: Lens' SourceLocation Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.SourceLocation_Fields.maybe'fileName' @:: Lens' SourceLocation (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.SourceLocation_Fields.functionName' @:: Lens' SourceLocation Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.SourceLocation_Fields.maybe'functionName' @:: Lens' SourceLocation (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.SourceLocation_Fields.lineNumber' @:: Lens' SourceLocation Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.SourceLocation_Fields.maybe'lineNumber' @:: Lens' SourceLocation (Prelude.Maybe Data.Word.Word32)@ -}
data SourceLocation
  = SourceLocation'_constructor {_SourceLocation'iid :: !(Prelude.Maybe Data.Word.Word64),
                                 _SourceLocation'fileName :: !(Prelude.Maybe Data.Text.Text),
                                 _SourceLocation'functionName :: !(Prelude.Maybe Data.Text.Text),
                                 _SourceLocation'lineNumber :: !(Prelude.Maybe Data.Word.Word32),
                                 _SourceLocation'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SourceLocation where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SourceLocation "iid" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SourceLocation'iid (\ x__ y__ -> x__ {_SourceLocation'iid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SourceLocation "maybe'iid" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SourceLocation'iid (\ x__ y__ -> x__ {_SourceLocation'iid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SourceLocation "fileName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SourceLocation'fileName
           (\ x__ y__ -> x__ {_SourceLocation'fileName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SourceLocation "maybe'fileName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SourceLocation'fileName
           (\ x__ y__ -> x__ {_SourceLocation'fileName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SourceLocation "functionName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SourceLocation'functionName
           (\ x__ y__ -> x__ {_SourceLocation'functionName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SourceLocation "maybe'functionName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SourceLocation'functionName
           (\ x__ y__ -> x__ {_SourceLocation'functionName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SourceLocation "lineNumber" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SourceLocation'lineNumber
           (\ x__ y__ -> x__ {_SourceLocation'lineNumber = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SourceLocation "maybe'lineNumber" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SourceLocation'lineNumber
           (\ x__ y__ -> x__ {_SourceLocation'lineNumber = y__}))
        Prelude.id
instance Data.ProtoLens.Message SourceLocation where
  messageName _ = Data.Text.pack "perfetto.protos.SourceLocation"
  packedMessageDescriptor _
    = "\n\
      \\SOSourceLocation\DC2\DLE\n\
      \\ETXiid\CAN\SOH \SOH(\EOTR\ETXiid\DC2\ESC\n\
      \\tfile_name\CAN\STX \SOH(\tR\bfileName\DC2#\n\
      \\rfunction_name\CAN\ETX \SOH(\tR\ffunctionName\DC2\US\n\
      \\vline_number\CAN\EOT \SOH(\rR\n\
      \lineNumber"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        iid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "iid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'iid")) ::
              Data.ProtoLens.FieldDescriptor SourceLocation
        fileName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "file_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fileName")) ::
              Data.ProtoLens.FieldDescriptor SourceLocation
        functionName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "function_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'functionName")) ::
              Data.ProtoLens.FieldDescriptor SourceLocation
        lineNumber__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "line_number"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lineNumber")) ::
              Data.ProtoLens.FieldDescriptor SourceLocation
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, iid__field_descriptor),
           (Data.ProtoLens.Tag 2, fileName__field_descriptor),
           (Data.ProtoLens.Tag 3, functionName__field_descriptor),
           (Data.ProtoLens.Tag 4, lineNumber__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SourceLocation'_unknownFields
        (\ x__ y__ -> x__ {_SourceLocation'_unknownFields = y__})
  defMessage
    = SourceLocation'_constructor
        {_SourceLocation'iid = Prelude.Nothing,
         _SourceLocation'fileName = Prelude.Nothing,
         _SourceLocation'functionName = Prelude.Nothing,
         _SourceLocation'lineNumber = Prelude.Nothing,
         _SourceLocation'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SourceLocation
          -> Data.ProtoLens.Encoding.Bytes.Parser SourceLocation
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "iid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"iid") y x)
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
                                       "file_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"fileName") y x)
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
                                       "function_name"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"functionName") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "line_number"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lineNumber") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SourceLocation"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'iid") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'fileName") _x
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
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'functionName") _x
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
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'lineNumber") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData SourceLocation where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SourceLocation'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SourceLocation'iid x__)
                (Control.DeepSeq.deepseq
                   (_SourceLocation'fileName x__)
                   (Control.DeepSeq.deepseq
                      (_SourceLocation'functionName x__)
                      (Control.DeepSeq.deepseq (_SourceLocation'lineNumber x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.SourceLocation_Fields.iid' @:: Lens' UnsymbolizedSourceLocation Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.SourceLocation_Fields.maybe'iid' @:: Lens' UnsymbolizedSourceLocation (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.SourceLocation_Fields.mappingId' @:: Lens' UnsymbolizedSourceLocation Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.SourceLocation_Fields.maybe'mappingId' @:: Lens' UnsymbolizedSourceLocation (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.SourceLocation_Fields.relPc' @:: Lens' UnsymbolizedSourceLocation Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.SourceLocation_Fields.maybe'relPc' @:: Lens' UnsymbolizedSourceLocation (Prelude.Maybe Data.Word.Word64)@ -}
data UnsymbolizedSourceLocation
  = UnsymbolizedSourceLocation'_constructor {_UnsymbolizedSourceLocation'iid :: !(Prelude.Maybe Data.Word.Word64),
                                             _UnsymbolizedSourceLocation'mappingId :: !(Prelude.Maybe Data.Word.Word64),
                                             _UnsymbolizedSourceLocation'relPc :: !(Prelude.Maybe Data.Word.Word64),
                                             _UnsymbolizedSourceLocation'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UnsymbolizedSourceLocation where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField UnsymbolizedSourceLocation "iid" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UnsymbolizedSourceLocation'iid
           (\ x__ y__ -> x__ {_UnsymbolizedSourceLocation'iid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField UnsymbolizedSourceLocation "maybe'iid" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UnsymbolizedSourceLocation'iid
           (\ x__ y__ -> x__ {_UnsymbolizedSourceLocation'iid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UnsymbolizedSourceLocation "mappingId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UnsymbolizedSourceLocation'mappingId
           (\ x__ y__ -> x__ {_UnsymbolizedSourceLocation'mappingId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField UnsymbolizedSourceLocation "maybe'mappingId" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UnsymbolizedSourceLocation'mappingId
           (\ x__ y__ -> x__ {_UnsymbolizedSourceLocation'mappingId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UnsymbolizedSourceLocation "relPc" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UnsymbolizedSourceLocation'relPc
           (\ x__ y__ -> x__ {_UnsymbolizedSourceLocation'relPc = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField UnsymbolizedSourceLocation "maybe'relPc" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UnsymbolizedSourceLocation'relPc
           (\ x__ y__ -> x__ {_UnsymbolizedSourceLocation'relPc = y__}))
        Prelude.id
instance Data.ProtoLens.Message UnsymbolizedSourceLocation where
  messageName _
    = Data.Text.pack "perfetto.protos.UnsymbolizedSourceLocation"
  packedMessageDescriptor _
    = "\n\
      \\SUBUnsymbolizedSourceLocation\DC2\DLE\n\
      \\ETXiid\CAN\SOH \SOH(\EOTR\ETXiid\DC2\GS\n\
      \\n\
      \mapping_id\CAN\STX \SOH(\EOTR\tmappingId\DC2\NAK\n\
      \\ACKrel_pc\CAN\ETX \SOH(\EOTR\ENQrelPc"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        iid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "iid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'iid")) ::
              Data.ProtoLens.FieldDescriptor UnsymbolizedSourceLocation
        mappingId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mapping_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mappingId")) ::
              Data.ProtoLens.FieldDescriptor UnsymbolizedSourceLocation
        relPc__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rel_pc"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'relPc")) ::
              Data.ProtoLens.FieldDescriptor UnsymbolizedSourceLocation
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, iid__field_descriptor),
           (Data.ProtoLens.Tag 2, mappingId__field_descriptor),
           (Data.ProtoLens.Tag 3, relPc__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _UnsymbolizedSourceLocation'_unknownFields
        (\ x__ y__
           -> x__ {_UnsymbolizedSourceLocation'_unknownFields = y__})
  defMessage
    = UnsymbolizedSourceLocation'_constructor
        {_UnsymbolizedSourceLocation'iid = Prelude.Nothing,
         _UnsymbolizedSourceLocation'mappingId = Prelude.Nothing,
         _UnsymbolizedSourceLocation'relPc = Prelude.Nothing,
         _UnsymbolizedSourceLocation'_unknownFields = []}
  parseMessage
    = let
        loop ::
          UnsymbolizedSourceLocation
          -> Data.ProtoLens.Encoding.Bytes.Parser UnsymbolizedSourceLocation
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "iid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"iid") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "mapping_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"mappingId") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "rel_pc"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"relPc") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "UnsymbolizedSourceLocation"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'iid") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'mappingId") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'relPc") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData UnsymbolizedSourceLocation where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_UnsymbolizedSourceLocation'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_UnsymbolizedSourceLocation'iid x__)
                (Control.DeepSeq.deepseq
                   (_UnsymbolizedSourceLocation'mappingId x__)
                   (Control.DeepSeq.deepseq
                      (_UnsymbolizedSourceLocation'relPc x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \7protos/perfetto/trace/track_event/source_location.proto\DC2\SIperfetto.protos\"d\n\
    \\SUBUnsymbolizedSourceLocation\DC2\DLE\n\
    \\ETXiid\CAN\SOH \SOH(\EOTR\ETXiid\DC2\GS\n\
    \\n\
    \mapping_id\CAN\STX \SOH(\EOTR\tmappingId\DC2\NAK\n\
    \\ACKrel_pc\CAN\ETX \SOH(\EOTR\ENQrelPc\"\133\SOH\n\
    \\SOSourceLocation\DC2\DLE\n\
    \\ETXiid\CAN\SOH \SOH(\EOTR\ETXiid\DC2\ESC\n\
    \\tfile_name\CAN\STX \SOH(\tR\bfileName\DC2#\n\
    \\rfunction_name\CAN\ETX \SOH(\tR\ffunctionName\DC2\US\n\
    \\vline_number\CAN\EOT \SOH(\rR\n\
    \lineNumberJ\184\v\n\
    \\ACK\DC2\EOT\DLE\NUL'\SOH\n\
    \\215\EOT\n\
    \\SOH\f\DC2\ETX\DLE\NUL\DC22\204\EOT\n\
    \ Copyright (C) 2019 The Android Open Source Project\n\
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
    \\SOH\STX\DC2\ETX\DC2\NUL\CAN\n\
    \\194\STX\n\
    \\STX\EOT\NUL\DC2\EOT\FS\NUL \SOH\SUB\241\SOH A source location, represented as a native symbol.\n\
    \ This is similar to `message Frame` from\n\
    \ protos/perfetto/trace/profiling/profile_common.proto, but for abitrary\n\
    \ source code locations (for example in track event args), not stack frames.\n\
    \2B --------------------\n\
    \ Interned data types:\n\
    \ --------------------\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\FS\b\"\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\GS\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\GS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\GS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\GS\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\GS\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\RS\STX!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\RS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\RS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\RS\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\RS\US \n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\US\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\US\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\US\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\US\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\US\ESC\FS\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\"\NUL'\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\"\b\SYN\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX#\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX#\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX#\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX#\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX#\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX$\STX \n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX$\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX$\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX$\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX$\RS\US\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX%\STX$\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\EOT\DC2\ETX%\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX%\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX%\DC2\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX%\"#\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX&\STX\"\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\EOT\DC2\ETX&\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX&\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX&\DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX& !"