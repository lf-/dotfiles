{- This file was auto-generated from protos/perfetto/trace/filesystem/inode_file_map.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Filesystem.InodeFileMap (
        InodeFileMap(), InodeFileMap'Entry(), InodeFileMap'Entry'Type(..),
        InodeFileMap'Entry'Type()
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
     
         * 'Proto.Protos.Perfetto.Trace.Filesystem.InodeFileMap_Fields.blockDeviceId' @:: Lens' InodeFileMap Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Filesystem.InodeFileMap_Fields.maybe'blockDeviceId' @:: Lens' InodeFileMap (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Filesystem.InodeFileMap_Fields.mountPoints' @:: Lens' InodeFileMap [Data.Text.Text]@
         * 'Proto.Protos.Perfetto.Trace.Filesystem.InodeFileMap_Fields.vec'mountPoints' @:: Lens' InodeFileMap (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Filesystem.InodeFileMap_Fields.entries' @:: Lens' InodeFileMap [InodeFileMap'Entry]@
         * 'Proto.Protos.Perfetto.Trace.Filesystem.InodeFileMap_Fields.vec'entries' @:: Lens' InodeFileMap (Data.Vector.Vector InodeFileMap'Entry)@ -}
data InodeFileMap
  = InodeFileMap'_constructor {_InodeFileMap'blockDeviceId :: !(Prelude.Maybe Data.Word.Word64),
                               _InodeFileMap'mountPoints :: !(Data.Vector.Vector Data.Text.Text),
                               _InodeFileMap'entries :: !(Data.Vector.Vector InodeFileMap'Entry),
                               _InodeFileMap'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show InodeFileMap where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField InodeFileMap "blockDeviceId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InodeFileMap'blockDeviceId
           (\ x__ y__ -> x__ {_InodeFileMap'blockDeviceId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField InodeFileMap "maybe'blockDeviceId" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InodeFileMap'blockDeviceId
           (\ x__ y__ -> x__ {_InodeFileMap'blockDeviceId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InodeFileMap "mountPoints" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InodeFileMap'mountPoints
           (\ x__ y__ -> x__ {_InodeFileMap'mountPoints = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField InodeFileMap "vec'mountPoints" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InodeFileMap'mountPoints
           (\ x__ y__ -> x__ {_InodeFileMap'mountPoints = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InodeFileMap "entries" [InodeFileMap'Entry] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InodeFileMap'entries
           (\ x__ y__ -> x__ {_InodeFileMap'entries = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField InodeFileMap "vec'entries" (Data.Vector.Vector InodeFileMap'Entry) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InodeFileMap'entries
           (\ x__ y__ -> x__ {_InodeFileMap'entries = y__}))
        Prelude.id
instance Data.ProtoLens.Message InodeFileMap where
  messageName _ = Data.Text.pack "perfetto.protos.InodeFileMap"
  packedMessageDescriptor _
    = "\n\
      \\fInodeFileMap\DC2&\n\
      \\SIblock_device_id\CAN\SOH \SOH(\EOTR\rblockDeviceId\DC2!\n\
      \\fmount_points\CAN\STX \ETX(\tR\vmountPoints\DC2=\n\
      \\aentries\CAN\ETX \ETX(\v2#.perfetto.protos.InodeFileMap.EntryR\aentries\SUB\172\SOH\n\
      \\ENQEntry\DC2!\n\
      \\finode_number\CAN\SOH \SOH(\EOTR\vinodeNumber\DC2\DC4\n\
      \\ENQpaths\CAN\STX \ETX(\tR\ENQpaths\DC2<\n\
      \\EOTtype\CAN\ETX \SOH(\SO2(.perfetto.protos.InodeFileMap.Entry.TypeR\EOTtype\",\n\
      \\EOTType\DC2\v\n\
      \\aUNKNOWN\DLE\NUL\DC2\b\n\
      \\EOTFILE\DLE\SOH\DC2\r\n\
      \\tDIRECTORY\DLE\STX"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        blockDeviceId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "block_device_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'blockDeviceId")) ::
              Data.ProtoLens.FieldDescriptor InodeFileMap
        mountPoints__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mount_points"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"mountPoints")) ::
              Data.ProtoLens.FieldDescriptor InodeFileMap
        entries__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "entries"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor InodeFileMap'Entry)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"entries")) ::
              Data.ProtoLens.FieldDescriptor InodeFileMap
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, blockDeviceId__field_descriptor),
           (Data.ProtoLens.Tag 2, mountPoints__field_descriptor),
           (Data.ProtoLens.Tag 3, entries__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _InodeFileMap'_unknownFields
        (\ x__ y__ -> x__ {_InodeFileMap'_unknownFields = y__})
  defMessage
    = InodeFileMap'_constructor
        {_InodeFileMap'blockDeviceId = Prelude.Nothing,
         _InodeFileMap'mountPoints = Data.Vector.Generic.empty,
         _InodeFileMap'entries = Data.Vector.Generic.empty,
         _InodeFileMap'_unknownFields = []}
  parseMessage
    = let
        loop ::
          InodeFileMap
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld InodeFileMap'Entry
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                -> Data.ProtoLens.Encoding.Bytes.Parser InodeFileMap
        loop x mutable'entries mutable'mountPoints
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'entries <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'entries)
                      frozen'mountPoints <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'mountPoints)
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
                              (Data.ProtoLens.Field.field @"vec'entries") frozen'entries
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'mountPoints") frozen'mountPoints
                                 x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "block_device_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"blockDeviceId") y x)
                                  mutable'entries mutable'mountPoints
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "mount_points"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'mountPoints y)
                                loop x mutable'entries v
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "entries"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'entries y)
                                loop x v mutable'mountPoints
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'entries mutable'mountPoints
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'entries <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              mutable'mountPoints <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'entries mutable'mountPoints)
          "InodeFileMap"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'blockDeviceId") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
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
                              Data.Text.Encoding.encodeUtf8 _v))
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'mountPoints") _x))
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
                                 Data.ProtoLens.encodeMessage _v))
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'entries") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData InodeFileMap where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_InodeFileMap'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_InodeFileMap'blockDeviceId x__)
                (Control.DeepSeq.deepseq
                   (_InodeFileMap'mountPoints x__)
                   (Control.DeepSeq.deepseq (_InodeFileMap'entries x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Filesystem.InodeFileMap_Fields.inodeNumber' @:: Lens' InodeFileMap'Entry Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Filesystem.InodeFileMap_Fields.maybe'inodeNumber' @:: Lens' InodeFileMap'Entry (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Filesystem.InodeFileMap_Fields.paths' @:: Lens' InodeFileMap'Entry [Data.Text.Text]@
         * 'Proto.Protos.Perfetto.Trace.Filesystem.InodeFileMap_Fields.vec'paths' @:: Lens' InodeFileMap'Entry (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Filesystem.InodeFileMap_Fields.type'' @:: Lens' InodeFileMap'Entry InodeFileMap'Entry'Type@
         * 'Proto.Protos.Perfetto.Trace.Filesystem.InodeFileMap_Fields.maybe'type'' @:: Lens' InodeFileMap'Entry (Prelude.Maybe InodeFileMap'Entry'Type)@ -}
data InodeFileMap'Entry
  = InodeFileMap'Entry'_constructor {_InodeFileMap'Entry'inodeNumber :: !(Prelude.Maybe Data.Word.Word64),
                                     _InodeFileMap'Entry'paths :: !(Data.Vector.Vector Data.Text.Text),
                                     _InodeFileMap'Entry'type' :: !(Prelude.Maybe InodeFileMap'Entry'Type),
                                     _InodeFileMap'Entry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show InodeFileMap'Entry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField InodeFileMap'Entry "inodeNumber" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InodeFileMap'Entry'inodeNumber
           (\ x__ y__ -> x__ {_InodeFileMap'Entry'inodeNumber = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField InodeFileMap'Entry "maybe'inodeNumber" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InodeFileMap'Entry'inodeNumber
           (\ x__ y__ -> x__ {_InodeFileMap'Entry'inodeNumber = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InodeFileMap'Entry "paths" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InodeFileMap'Entry'paths
           (\ x__ y__ -> x__ {_InodeFileMap'Entry'paths = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField InodeFileMap'Entry "vec'paths" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InodeFileMap'Entry'paths
           (\ x__ y__ -> x__ {_InodeFileMap'Entry'paths = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InodeFileMap'Entry "type'" InodeFileMap'Entry'Type where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InodeFileMap'Entry'type'
           (\ x__ y__ -> x__ {_InodeFileMap'Entry'type' = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField InodeFileMap'Entry "maybe'type'" (Prelude.Maybe InodeFileMap'Entry'Type) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InodeFileMap'Entry'type'
           (\ x__ y__ -> x__ {_InodeFileMap'Entry'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Message InodeFileMap'Entry where
  messageName _ = Data.Text.pack "perfetto.protos.InodeFileMap.Entry"
  packedMessageDescriptor _
    = "\n\
      \\ENQEntry\DC2!\n\
      \\finode_number\CAN\SOH \SOH(\EOTR\vinodeNumber\DC2\DC4\n\
      \\ENQpaths\CAN\STX \ETX(\tR\ENQpaths\DC2<\n\
      \\EOTtype\CAN\ETX \SOH(\SO2(.perfetto.protos.InodeFileMap.Entry.TypeR\EOTtype\",\n\
      \\EOTType\DC2\v\n\
      \\aUNKNOWN\DLE\NUL\DC2\b\n\
      \\EOTFILE\DLE\SOH\DC2\r\n\
      \\tDIRECTORY\DLE\STX"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        inodeNumber__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "inode_number"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'inodeNumber")) ::
              Data.ProtoLens.FieldDescriptor InodeFileMap'Entry
        paths__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "paths"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"paths")) ::
              Data.ProtoLens.FieldDescriptor InodeFileMap'Entry
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor InodeFileMap'Entry'Type)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'type'")) ::
              Data.ProtoLens.FieldDescriptor InodeFileMap'Entry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, inodeNumber__field_descriptor),
           (Data.ProtoLens.Tag 2, paths__field_descriptor),
           (Data.ProtoLens.Tag 3, type'__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _InodeFileMap'Entry'_unknownFields
        (\ x__ y__ -> x__ {_InodeFileMap'Entry'_unknownFields = y__})
  defMessage
    = InodeFileMap'Entry'_constructor
        {_InodeFileMap'Entry'inodeNumber = Prelude.Nothing,
         _InodeFileMap'Entry'paths = Data.Vector.Generic.empty,
         _InodeFileMap'Entry'type' = Prelude.Nothing,
         _InodeFileMap'Entry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          InodeFileMap'Entry
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser InodeFileMap'Entry
        loop x mutable'paths
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'paths <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'paths)
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
                              (Data.ProtoLens.Field.field @"vec'paths") frozen'paths x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "inode_number"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"inodeNumber") y x)
                                  mutable'paths
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "paths"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'paths y)
                                loop x v
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                                  mutable'paths
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'paths
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'paths <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'paths)
          "Entry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'inodeNumber") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
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
                              Data.Text.Encoding.encodeUtf8 _v))
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'paths") _x))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'type'") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                                Prelude.fromEnum _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData InodeFileMap'Entry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_InodeFileMap'Entry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_InodeFileMap'Entry'inodeNumber x__)
                (Control.DeepSeq.deepseq
                   (_InodeFileMap'Entry'paths x__)
                   (Control.DeepSeq.deepseq (_InodeFileMap'Entry'type' x__) ())))
data InodeFileMap'Entry'Type
  = InodeFileMap'Entry'UNKNOWN |
    InodeFileMap'Entry'FILE |
    InodeFileMap'Entry'DIRECTORY
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum InodeFileMap'Entry'Type where
  maybeToEnum 0 = Prelude.Just InodeFileMap'Entry'UNKNOWN
  maybeToEnum 1 = Prelude.Just InodeFileMap'Entry'FILE
  maybeToEnum 2 = Prelude.Just InodeFileMap'Entry'DIRECTORY
  maybeToEnum _ = Prelude.Nothing
  showEnum InodeFileMap'Entry'UNKNOWN = "UNKNOWN"
  showEnum InodeFileMap'Entry'FILE = "FILE"
  showEnum InodeFileMap'Entry'DIRECTORY = "DIRECTORY"
  readEnum k
    | (Prelude.==) k "UNKNOWN"
    = Prelude.Just InodeFileMap'Entry'UNKNOWN
    | (Prelude.==) k "FILE" = Prelude.Just InodeFileMap'Entry'FILE
    | (Prelude.==) k "DIRECTORY"
    = Prelude.Just InodeFileMap'Entry'DIRECTORY
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded InodeFileMap'Entry'Type where
  minBound = InodeFileMap'Entry'UNKNOWN
  maxBound = InodeFileMap'Entry'DIRECTORY
instance Prelude.Enum InodeFileMap'Entry'Type where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum Type: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum InodeFileMap'Entry'UNKNOWN = 0
  fromEnum InodeFileMap'Entry'FILE = 1
  fromEnum InodeFileMap'Entry'DIRECTORY = 2
  succ InodeFileMap'Entry'DIRECTORY
    = Prelude.error
        "InodeFileMap'Entry'Type.succ: bad argument InodeFileMap'Entry'DIRECTORY. This value would be out of bounds."
  succ InodeFileMap'Entry'UNKNOWN = InodeFileMap'Entry'FILE
  succ InodeFileMap'Entry'FILE = InodeFileMap'Entry'DIRECTORY
  pred InodeFileMap'Entry'UNKNOWN
    = Prelude.error
        "InodeFileMap'Entry'Type.pred: bad argument InodeFileMap'Entry'UNKNOWN. This value would be out of bounds."
  pred InodeFileMap'Entry'FILE = InodeFileMap'Entry'UNKNOWN
  pred InodeFileMap'Entry'DIRECTORY = InodeFileMap'Entry'FILE
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault InodeFileMap'Entry'Type where
  fieldDefault = InodeFileMap'Entry'UNKNOWN
instance Control.DeepSeq.NFData InodeFileMap'Entry'Type where
  rnf x__ = Prelude.seq x__ ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \5protos/perfetto/trace/filesystem/inode_file_map.proto\DC2\SIperfetto.protos\"\199\STX\n\
    \\fInodeFileMap\DC2&\n\
    \\SIblock_device_id\CAN\SOH \SOH(\EOTR\rblockDeviceId\DC2!\n\
    \\fmount_points\CAN\STX \ETX(\tR\vmountPoints\DC2=\n\
    \\aentries\CAN\ETX \ETX(\v2#.perfetto.protos.InodeFileMap.EntryR\aentries\SUB\172\SOH\n\
    \\ENQEntry\DC2!\n\
    \\finode_number\CAN\SOH \SOH(\EOTR\vinodeNumber\DC2\DC4\n\
    \\ENQpaths\CAN\STX \ETX(\tR\ENQpaths\DC2<\n\
    \\EOTtype\CAN\ETX \SOH(\SO2(.perfetto.protos.InodeFileMap.Entry.TypeR\EOTtype\",\n\
    \\EOTType\DC2\v\n\
    \\aUNKNOWN\DLE\NUL\DC2\b\n\
    \\EOTFILE\DLE\SOH\DC2\r\n\
    \\tDIRECTORY\DLE\STXJ\239\f\n\
    \\ACK\DC2\EOT\DLE\NUL.\SOH\n\
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
    \n\n\
    \\STX\EOT\NUL\DC2\EOT\NAK\NUL.\SOH\SUBb Represents the mapping between inode numbers in a block device and their path\n\
    \ on the filesystem\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\NAK\b\DC4\n\
    \'\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT\ETB\STX%\ETX\SUB\EM Representation of Entry\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX\ETB\n\
    \\SI\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX\CAN\EOT%\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\EOT\DC2\ETX\CAN\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ENQ\DC2\ETX\CAN\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX\CAN\DC4 \n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX\CAN#$\n\
    \b\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\ETX\FS\EOT\RS\SUBS The path to the file, e.g. \"etc/file.xml\"\n\
    \ List of strings for multiple hardlinks\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\EOT\DC2\ETX\FS\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ENQ\DC2\ETX\FS\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX\FS\DC4\EM\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX\FS\FS\GS\n\
    \\US\n\
    \\ACK\EOT\NUL\ETX\NUL\EOT\NUL\DC2\EOT\US\EOT#\ENQ\SUB\SI The file type\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\EOT\NUL\SOH\DC2\ETX\US\t\r\n\
    \\SI\n\
    \\b\EOT\NUL\ETX\NUL\EOT\NUL\STX\NUL\DC2\ETX \ACK\DC2\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\NUL\SOH\DC2\ETX \ACK\r\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\NUL\STX\DC2\ETX \DLE\DC1\n\
    \\SI\n\
    \\b\EOT\NUL\ETX\NUL\EOT\NUL\STX\SOH\DC2\ETX!\ACK\SI\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\SOH\SOH\DC2\ETX!\ACK\n\
    \\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\SOH\STX\DC2\ETX!\r\SO\n\
    \\SI\n\
    \\b\EOT\NUL\ETX\NUL\EOT\NUL\STX\STX\DC2\ETX\"\ACK\DC4\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\STX\SOH\DC2\ETX\"\ACK\SI\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\STX\STX\DC2\ETX\"\DC2\DC3\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\STX\DC2\ETX$\EOT\ESC\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\EOT\DC2\ETX$\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ACK\DC2\ETX$\r\DC1\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\SOH\DC2\ETX$\DC2\SYN\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ETX\DC2\ETX$\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX'\STX&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX'\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX'\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX'\DC2!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX'$%\n\
    \E\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX*\STX#\SUB8 The mount points of the block device, e.g. [\"system\"].\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX*\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX*\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX*\DC2\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX*!\"\n\
    \@\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX-\STX\GS\SUB3 The list of all the entries from the block device\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX-\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX-\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX-\DC1\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX-\ESC\FS"