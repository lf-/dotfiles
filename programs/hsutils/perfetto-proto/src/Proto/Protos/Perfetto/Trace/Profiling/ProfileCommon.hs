{- This file was auto-generated from protos/perfetto/trace/profiling/profile_common.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon (
        AddressSymbols(), Callstack(), Frame(), InternedString(), Line(),
        Mapping(), ModuleSymbols(), ProfiledFrameSymbols()
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
     
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.address' @:: Lens' AddressSymbols Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.maybe'address' @:: Lens' AddressSymbols (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.lines' @:: Lens' AddressSymbols [Line]@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.vec'lines' @:: Lens' AddressSymbols (Data.Vector.Vector Line)@ -}
data AddressSymbols
  = AddressSymbols'_constructor {_AddressSymbols'address :: !(Prelude.Maybe Data.Word.Word64),
                                 _AddressSymbols'lines :: !(Data.Vector.Vector Line),
                                 _AddressSymbols'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AddressSymbols where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AddressSymbols "address" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AddressSymbols'address
           (\ x__ y__ -> x__ {_AddressSymbols'address = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AddressSymbols "maybe'address" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AddressSymbols'address
           (\ x__ y__ -> x__ {_AddressSymbols'address = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AddressSymbols "lines" [Line] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AddressSymbols'lines
           (\ x__ y__ -> x__ {_AddressSymbols'lines = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField AddressSymbols "vec'lines" (Data.Vector.Vector Line) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AddressSymbols'lines
           (\ x__ y__ -> x__ {_AddressSymbols'lines = y__}))
        Prelude.id
instance Data.ProtoLens.Message AddressSymbols where
  messageName _ = Data.Text.pack "perfetto.protos.AddressSymbols"
  packedMessageDescriptor _
    = "\n\
      \\SOAddressSymbols\DC2\CAN\n\
      \\aaddress\CAN\SOH \SOH(\EOTR\aaddress\DC2+\n\
      \\ENQlines\CAN\STX \ETX(\v2\NAK.perfetto.protos.LineR\ENQlines"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        address__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'address")) ::
              Data.ProtoLens.FieldDescriptor AddressSymbols
        lines__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lines"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Line)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"lines")) ::
              Data.ProtoLens.FieldDescriptor AddressSymbols
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor),
           (Data.ProtoLens.Tag 2, lines__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AddressSymbols'_unknownFields
        (\ x__ y__ -> x__ {_AddressSymbols'_unknownFields = y__})
  defMessage
    = AddressSymbols'_constructor
        {_AddressSymbols'address = Prelude.Nothing,
         _AddressSymbols'lines = Data.Vector.Generic.empty,
         _AddressSymbols'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AddressSymbols
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Line
             -> Data.ProtoLens.Encoding.Bytes.Parser AddressSymbols
        loop x mutable'lines
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'lines <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'lines)
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
                              (Data.ProtoLens.Field.field @"vec'lines") frozen'lines x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "address"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"address") y x)
                                  mutable'lines
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "lines"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'lines y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'lines
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'lines <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'lines)
          "AddressSymbols"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'address") _x
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
                              Data.ProtoLens.encodeMessage _v))
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'lines") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData AddressSymbols where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AddressSymbols'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AddressSymbols'address x__)
                (Control.DeepSeq.deepseq (_AddressSymbols'lines x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.iid' @:: Lens' Callstack Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.maybe'iid' @:: Lens' Callstack (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.frameIds' @:: Lens' Callstack [Data.Word.Word64]@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.vec'frameIds' @:: Lens' Callstack (Data.Vector.Unboxed.Vector Data.Word.Word64)@ -}
data Callstack
  = Callstack'_constructor {_Callstack'iid :: !(Prelude.Maybe Data.Word.Word64),
                            _Callstack'frameIds :: !(Data.Vector.Unboxed.Vector Data.Word.Word64),
                            _Callstack'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Callstack where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Callstack "iid" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Callstack'iid (\ x__ y__ -> x__ {_Callstack'iid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Callstack "maybe'iid" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Callstack'iid (\ x__ y__ -> x__ {_Callstack'iid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Callstack "frameIds" [Data.Word.Word64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Callstack'frameIds (\ x__ y__ -> x__ {_Callstack'frameIds = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Callstack "vec'frameIds" (Data.Vector.Unboxed.Vector Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Callstack'frameIds (\ x__ y__ -> x__ {_Callstack'frameIds = y__}))
        Prelude.id
instance Data.ProtoLens.Message Callstack where
  messageName _ = Data.Text.pack "perfetto.protos.Callstack"
  packedMessageDescriptor _
    = "\n\
      \\tCallstack\DC2\DLE\n\
      \\ETXiid\CAN\SOH \SOH(\EOTR\ETXiid\DC2\ESC\n\
      \\tframe_ids\CAN\STX \ETX(\EOTR\bframeIds"
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
              Data.ProtoLens.FieldDescriptor Callstack
        frameIds__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "frame_ids"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"frameIds")) ::
              Data.ProtoLens.FieldDescriptor Callstack
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, iid__field_descriptor),
           (Data.ProtoLens.Tag 2, frameIds__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Callstack'_unknownFields
        (\ x__ y__ -> x__ {_Callstack'_unknownFields = y__})
  defMessage
    = Callstack'_constructor
        {_Callstack'iid = Prelude.Nothing,
         _Callstack'frameIds = Data.Vector.Generic.empty,
         _Callstack'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Callstack
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word64
             -> Data.ProtoLens.Encoding.Bytes.Parser Callstack
        loop x mutable'frameIds
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'frameIds <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'frameIds)
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
                              (Data.ProtoLens.Field.field @"vec'frameIds") frozen'frameIds x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "iid"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"iid") y x)
                                  mutable'frameIds
                        16
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        Data.ProtoLens.Encoding.Bytes.getVarInt "frame_ids"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'frameIds y)
                                loop x v
                        18
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
                                                                    Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                    "frame_ids"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'frameIds)
                                loop x y
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'frameIds
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'frameIds <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'frameIds)
          "Callstack"
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
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'frameIds") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Callstack where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Callstack'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Callstack'iid x__)
                (Control.DeepSeq.deepseq (_Callstack'frameIds x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.iid' @:: Lens' Frame Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.maybe'iid' @:: Lens' Frame (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.functionNameId' @:: Lens' Frame Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.maybe'functionNameId' @:: Lens' Frame (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.mappingId' @:: Lens' Frame Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.maybe'mappingId' @:: Lens' Frame (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.relPc' @:: Lens' Frame Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.maybe'relPc' @:: Lens' Frame (Prelude.Maybe Data.Word.Word64)@ -}
data Frame
  = Frame'_constructor {_Frame'iid :: !(Prelude.Maybe Data.Word.Word64),
                        _Frame'functionNameId :: !(Prelude.Maybe Data.Word.Word64),
                        _Frame'mappingId :: !(Prelude.Maybe Data.Word.Word64),
                        _Frame'relPc :: !(Prelude.Maybe Data.Word.Word64),
                        _Frame'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Frame where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Frame "iid" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Frame'iid (\ x__ y__ -> x__ {_Frame'iid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Frame "maybe'iid" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Frame'iid (\ x__ y__ -> x__ {_Frame'iid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Frame "functionNameId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Frame'functionNameId
           (\ x__ y__ -> x__ {_Frame'functionNameId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Frame "maybe'functionNameId" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Frame'functionNameId
           (\ x__ y__ -> x__ {_Frame'functionNameId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Frame "mappingId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Frame'mappingId (\ x__ y__ -> x__ {_Frame'mappingId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Frame "maybe'mappingId" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Frame'mappingId (\ x__ y__ -> x__ {_Frame'mappingId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Frame "relPc" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Frame'relPc (\ x__ y__ -> x__ {_Frame'relPc = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Frame "maybe'relPc" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Frame'relPc (\ x__ y__ -> x__ {_Frame'relPc = y__}))
        Prelude.id
instance Data.ProtoLens.Message Frame where
  messageName _ = Data.Text.pack "perfetto.protos.Frame"
  packedMessageDescriptor _
    = "\n\
      \\ENQFrame\DC2\DLE\n\
      \\ETXiid\CAN\SOH \SOH(\EOTR\ETXiid\DC2(\n\
      \\DLEfunction_name_id\CAN\STX \SOH(\EOTR\SOfunctionNameId\DC2\GS\n\
      \\n\
      \mapping_id\CAN\ETX \SOH(\EOTR\tmappingId\DC2\NAK\n\
      \\ACKrel_pc\CAN\EOT \SOH(\EOTR\ENQrelPc"
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
              Data.ProtoLens.FieldDescriptor Frame
        functionNameId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "function_name_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'functionNameId")) ::
              Data.ProtoLens.FieldDescriptor Frame
        mappingId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mapping_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mappingId")) ::
              Data.ProtoLens.FieldDescriptor Frame
        relPc__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rel_pc"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'relPc")) ::
              Data.ProtoLens.FieldDescriptor Frame
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, iid__field_descriptor),
           (Data.ProtoLens.Tag 2, functionNameId__field_descriptor),
           (Data.ProtoLens.Tag 3, mappingId__field_descriptor),
           (Data.ProtoLens.Tag 4, relPc__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Frame'_unknownFields
        (\ x__ y__ -> x__ {_Frame'_unknownFields = y__})
  defMessage
    = Frame'_constructor
        {_Frame'iid = Prelude.Nothing,
         _Frame'functionNameId = Prelude.Nothing,
         _Frame'mappingId = Prelude.Nothing, _Frame'relPc = Prelude.Nothing,
         _Frame'_unknownFields = []}
  parseMessage
    = let
        loop :: Frame -> Data.ProtoLens.Encoding.Bytes.Parser Frame
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "function_name_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"functionNameId") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "mapping_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"mappingId") y x)
                        32
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
          (do loop Data.ProtoLens.defMessage) "Frame"
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
                       (Data.ProtoLens.Field.field @"maybe'functionNameId") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'mappingId") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'relPc") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData Frame where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Frame'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Frame'iid x__)
                (Control.DeepSeq.deepseq
                   (_Frame'functionNameId x__)
                   (Control.DeepSeq.deepseq
                      (_Frame'mappingId x__)
                      (Control.DeepSeq.deepseq (_Frame'relPc x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.iid' @:: Lens' InternedString Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.maybe'iid' @:: Lens' InternedString (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.str' @:: Lens' InternedString Data.ByteString.ByteString@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.maybe'str' @:: Lens' InternedString (Prelude.Maybe Data.ByteString.ByteString)@ -}
data InternedString
  = InternedString'_constructor {_InternedString'iid :: !(Prelude.Maybe Data.Word.Word64),
                                 _InternedString'str :: !(Prelude.Maybe Data.ByteString.ByteString),
                                 _InternedString'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show InternedString where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField InternedString "iid" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InternedString'iid (\ x__ y__ -> x__ {_InternedString'iid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField InternedString "maybe'iid" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InternedString'iid (\ x__ y__ -> x__ {_InternedString'iid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InternedString "str" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InternedString'str (\ x__ y__ -> x__ {_InternedString'str = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField InternedString "maybe'str" (Prelude.Maybe Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InternedString'str (\ x__ y__ -> x__ {_InternedString'str = y__}))
        Prelude.id
instance Data.ProtoLens.Message InternedString where
  messageName _ = Data.Text.pack "perfetto.protos.InternedString"
  packedMessageDescriptor _
    = "\n\
      \\SOInternedString\DC2\DLE\n\
      \\ETXiid\CAN\SOH \SOH(\EOTR\ETXiid\DC2\DLE\n\
      \\ETXstr\CAN\STX \SOH(\fR\ETXstr"
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
              Data.ProtoLens.FieldDescriptor InternedString
        str__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "str"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'str")) ::
              Data.ProtoLens.FieldDescriptor InternedString
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, iid__field_descriptor),
           (Data.ProtoLens.Tag 2, str__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _InternedString'_unknownFields
        (\ x__ y__ -> x__ {_InternedString'_unknownFields = y__})
  defMessage
    = InternedString'_constructor
        {_InternedString'iid = Prelude.Nothing,
         _InternedString'str = Prelude.Nothing,
         _InternedString'_unknownFields = []}
  parseMessage
    = let
        loop ::
          InternedString
          -> Data.ProtoLens.Encoding.Bytes.Parser InternedString
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
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "str"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"str") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "InternedString"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'str") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((\ bs
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData InternedString where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_InternedString'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_InternedString'iid x__)
                (Control.DeepSeq.deepseq (_InternedString'str x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.functionName' @:: Lens' Line Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.maybe'functionName' @:: Lens' Line (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.sourceFileName' @:: Lens' Line Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.maybe'sourceFileName' @:: Lens' Line (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.lineNumber' @:: Lens' Line Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.maybe'lineNumber' @:: Lens' Line (Prelude.Maybe Data.Word.Word32)@ -}
data Line
  = Line'_constructor {_Line'functionName :: !(Prelude.Maybe Data.Text.Text),
                       _Line'sourceFileName :: !(Prelude.Maybe Data.Text.Text),
                       _Line'lineNumber :: !(Prelude.Maybe Data.Word.Word32),
                       _Line'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Line where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Line "functionName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Line'functionName (\ x__ y__ -> x__ {_Line'functionName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Line "maybe'functionName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Line'functionName (\ x__ y__ -> x__ {_Line'functionName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Line "sourceFileName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Line'sourceFileName
           (\ x__ y__ -> x__ {_Line'sourceFileName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Line "maybe'sourceFileName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Line'sourceFileName
           (\ x__ y__ -> x__ {_Line'sourceFileName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Line "lineNumber" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Line'lineNumber (\ x__ y__ -> x__ {_Line'lineNumber = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Line "maybe'lineNumber" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Line'lineNumber (\ x__ y__ -> x__ {_Line'lineNumber = y__}))
        Prelude.id
instance Data.ProtoLens.Message Line where
  messageName _ = Data.Text.pack "perfetto.protos.Line"
  packedMessageDescriptor _
    = "\n\
      \\EOTLine\DC2#\n\
      \\rfunction_name\CAN\SOH \SOH(\tR\ffunctionName\DC2(\n\
      \\DLEsource_file_name\CAN\STX \SOH(\tR\SOsourceFileName\DC2\US\n\
      \\vline_number\CAN\ETX \SOH(\rR\n\
      \lineNumber"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        functionName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "function_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'functionName")) ::
              Data.ProtoLens.FieldDescriptor Line
        sourceFileName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "source_file_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sourceFileName")) ::
              Data.ProtoLens.FieldDescriptor Line
        lineNumber__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "line_number"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lineNumber")) ::
              Data.ProtoLens.FieldDescriptor Line
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, functionName__field_descriptor),
           (Data.ProtoLens.Tag 2, sourceFileName__field_descriptor),
           (Data.ProtoLens.Tag 3, lineNumber__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Line'_unknownFields
        (\ x__ y__ -> x__ {_Line'_unknownFields = y__})
  defMessage
    = Line'_constructor
        {_Line'functionName = Prelude.Nothing,
         _Line'sourceFileName = Prelude.Nothing,
         _Line'lineNumber = Prelude.Nothing, _Line'_unknownFields = []}
  parseMessage
    = let
        loop :: Line -> Data.ProtoLens.Encoding.Bytes.Parser Line
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
                                       "function_name"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"functionName") y x)
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
                                       "source_file_name"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"sourceFileName") y x)
                        24
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
          (do loop Data.ProtoLens.defMessage) "Line"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'functionName") _x
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
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'sourceFileName") _x
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
                          (Data.ProtoLens.Field.field @"maybe'lineNumber") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData Line where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Line'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Line'functionName x__)
                (Control.DeepSeq.deepseq
                   (_Line'sourceFileName x__)
                   (Control.DeepSeq.deepseq (_Line'lineNumber x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.iid' @:: Lens' Mapping Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.maybe'iid' @:: Lens' Mapping (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.buildId' @:: Lens' Mapping Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.maybe'buildId' @:: Lens' Mapping (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.exactOffset' @:: Lens' Mapping Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.maybe'exactOffset' @:: Lens' Mapping (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.startOffset' @:: Lens' Mapping Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.maybe'startOffset' @:: Lens' Mapping (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.start' @:: Lens' Mapping Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.maybe'start' @:: Lens' Mapping (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.end' @:: Lens' Mapping Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.maybe'end' @:: Lens' Mapping (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.loadBias' @:: Lens' Mapping Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.maybe'loadBias' @:: Lens' Mapping (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.pathStringIds' @:: Lens' Mapping [Data.Word.Word64]@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.vec'pathStringIds' @:: Lens' Mapping (Data.Vector.Unboxed.Vector Data.Word.Word64)@ -}
data Mapping
  = Mapping'_constructor {_Mapping'iid :: !(Prelude.Maybe Data.Word.Word64),
                          _Mapping'buildId :: !(Prelude.Maybe Data.Word.Word64),
                          _Mapping'exactOffset :: !(Prelude.Maybe Data.Word.Word64),
                          _Mapping'startOffset :: !(Prelude.Maybe Data.Word.Word64),
                          _Mapping'start :: !(Prelude.Maybe Data.Word.Word64),
                          _Mapping'end :: !(Prelude.Maybe Data.Word.Word64),
                          _Mapping'loadBias :: !(Prelude.Maybe Data.Word.Word64),
                          _Mapping'pathStringIds :: !(Data.Vector.Unboxed.Vector Data.Word.Word64),
                          _Mapping'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Mapping where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Mapping "iid" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Mapping'iid (\ x__ y__ -> x__ {_Mapping'iid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Mapping "maybe'iid" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Mapping'iid (\ x__ y__ -> x__ {_Mapping'iid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Mapping "buildId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Mapping'buildId (\ x__ y__ -> x__ {_Mapping'buildId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Mapping "maybe'buildId" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Mapping'buildId (\ x__ y__ -> x__ {_Mapping'buildId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Mapping "exactOffset" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Mapping'exactOffset
           (\ x__ y__ -> x__ {_Mapping'exactOffset = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Mapping "maybe'exactOffset" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Mapping'exactOffset
           (\ x__ y__ -> x__ {_Mapping'exactOffset = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Mapping "startOffset" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Mapping'startOffset
           (\ x__ y__ -> x__ {_Mapping'startOffset = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Mapping "maybe'startOffset" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Mapping'startOffset
           (\ x__ y__ -> x__ {_Mapping'startOffset = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Mapping "start" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Mapping'start (\ x__ y__ -> x__ {_Mapping'start = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Mapping "maybe'start" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Mapping'start (\ x__ y__ -> x__ {_Mapping'start = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Mapping "end" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Mapping'end (\ x__ y__ -> x__ {_Mapping'end = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Mapping "maybe'end" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Mapping'end (\ x__ y__ -> x__ {_Mapping'end = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Mapping "loadBias" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Mapping'loadBias (\ x__ y__ -> x__ {_Mapping'loadBias = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Mapping "maybe'loadBias" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Mapping'loadBias (\ x__ y__ -> x__ {_Mapping'loadBias = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Mapping "pathStringIds" [Data.Word.Word64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Mapping'pathStringIds
           (\ x__ y__ -> x__ {_Mapping'pathStringIds = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Mapping "vec'pathStringIds" (Data.Vector.Unboxed.Vector Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Mapping'pathStringIds
           (\ x__ y__ -> x__ {_Mapping'pathStringIds = y__}))
        Prelude.id
instance Data.ProtoLens.Message Mapping where
  messageName _ = Data.Text.pack "perfetto.protos.Mapping"
  packedMessageDescriptor _
    = "\n\
      \\aMapping\DC2\DLE\n\
      \\ETXiid\CAN\SOH \SOH(\EOTR\ETXiid\DC2\EM\n\
      \\bbuild_id\CAN\STX \SOH(\EOTR\abuildId\DC2!\n\
      \\fexact_offset\CAN\b \SOH(\EOTR\vexactOffset\DC2!\n\
      \\fstart_offset\CAN\ETX \SOH(\EOTR\vstartOffset\DC2\DC4\n\
      \\ENQstart\CAN\EOT \SOH(\EOTR\ENQstart\DC2\DLE\n\
      \\ETXend\CAN\ENQ \SOH(\EOTR\ETXend\DC2\ESC\n\
      \\tload_bias\CAN\ACK \SOH(\EOTR\bloadBias\DC2&\n\
      \\SIpath_string_ids\CAN\a \ETX(\EOTR\rpathStringIds"
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
              Data.ProtoLens.FieldDescriptor Mapping
        buildId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "build_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'buildId")) ::
              Data.ProtoLens.FieldDescriptor Mapping
        exactOffset__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "exact_offset"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'exactOffset")) ::
              Data.ProtoLens.FieldDescriptor Mapping
        startOffset__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_offset"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'startOffset")) ::
              Data.ProtoLens.FieldDescriptor Mapping
        start__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'start")) ::
              Data.ProtoLens.FieldDescriptor Mapping
        end__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "end"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'end")) ::
              Data.ProtoLens.FieldDescriptor Mapping
        loadBias__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "load_bias"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'loadBias")) ::
              Data.ProtoLens.FieldDescriptor Mapping
        pathStringIds__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "path_string_ids"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"pathStringIds")) ::
              Data.ProtoLens.FieldDescriptor Mapping
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, iid__field_descriptor),
           (Data.ProtoLens.Tag 2, buildId__field_descriptor),
           (Data.ProtoLens.Tag 8, exactOffset__field_descriptor),
           (Data.ProtoLens.Tag 3, startOffset__field_descriptor),
           (Data.ProtoLens.Tag 4, start__field_descriptor),
           (Data.ProtoLens.Tag 5, end__field_descriptor),
           (Data.ProtoLens.Tag 6, loadBias__field_descriptor),
           (Data.ProtoLens.Tag 7, pathStringIds__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Mapping'_unknownFields
        (\ x__ y__ -> x__ {_Mapping'_unknownFields = y__})
  defMessage
    = Mapping'_constructor
        {_Mapping'iid = Prelude.Nothing,
         _Mapping'buildId = Prelude.Nothing,
         _Mapping'exactOffset = Prelude.Nothing,
         _Mapping'startOffset = Prelude.Nothing,
         _Mapping'start = Prelude.Nothing, _Mapping'end = Prelude.Nothing,
         _Mapping'loadBias = Prelude.Nothing,
         _Mapping'pathStringIds = Data.Vector.Generic.empty,
         _Mapping'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Mapping
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word64
             -> Data.ProtoLens.Encoding.Bytes.Parser Mapping
        loop x mutable'pathStringIds
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'pathStringIds <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'pathStringIds)
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
                              (Data.ProtoLens.Field.field @"vec'pathStringIds")
                              frozen'pathStringIds x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "iid"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"iid") y x)
                                  mutable'pathStringIds
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "build_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"buildId") y x)
                                  mutable'pathStringIds
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "exact_offset"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"exactOffset") y x)
                                  mutable'pathStringIds
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "start_offset"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"startOffset") y x)
                                  mutable'pathStringIds
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "start"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"start") y x)
                                  mutable'pathStringIds
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "end"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"end") y x)
                                  mutable'pathStringIds
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "load_bias"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"loadBias") y x)
                                  mutable'pathStringIds
                        56
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        Data.ProtoLens.Encoding.Bytes.getVarInt "path_string_ids"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'pathStringIds y)
                                loop x v
                        58
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
                                                                    Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                    "path_string_ids"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'pathStringIds)
                                loop x y
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'pathStringIds
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'pathStringIds <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'pathStringIds)
          "Mapping"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'buildId") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'exactOffset") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'startOffset") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'start") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'end") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'loadBias") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                               ((Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                     (\ _v
                                        -> (Data.Monoid.<>)
                                             (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                     (Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"vec'pathStringIds") _x))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData Mapping where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Mapping'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Mapping'iid x__)
                (Control.DeepSeq.deepseq
                   (_Mapping'buildId x__)
                   (Control.DeepSeq.deepseq
                      (_Mapping'exactOffset x__)
                      (Control.DeepSeq.deepseq
                         (_Mapping'startOffset x__)
                         (Control.DeepSeq.deepseq
                            (_Mapping'start x__)
                            (Control.DeepSeq.deepseq
                               (_Mapping'end x__)
                               (Control.DeepSeq.deepseq
                                  (_Mapping'loadBias x__)
                                  (Control.DeepSeq.deepseq (_Mapping'pathStringIds x__) ()))))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.path' @:: Lens' ModuleSymbols Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.maybe'path' @:: Lens' ModuleSymbols (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.buildId' @:: Lens' ModuleSymbols Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.maybe'buildId' @:: Lens' ModuleSymbols (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.addressSymbols' @:: Lens' ModuleSymbols [AddressSymbols]@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.vec'addressSymbols' @:: Lens' ModuleSymbols (Data.Vector.Vector AddressSymbols)@ -}
data ModuleSymbols
  = ModuleSymbols'_constructor {_ModuleSymbols'path :: !(Prelude.Maybe Data.Text.Text),
                                _ModuleSymbols'buildId :: !(Prelude.Maybe Data.Text.Text),
                                _ModuleSymbols'addressSymbols :: !(Data.Vector.Vector AddressSymbols),
                                _ModuleSymbols'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ModuleSymbols where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ModuleSymbols "path" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModuleSymbols'path (\ x__ y__ -> x__ {_ModuleSymbols'path = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ModuleSymbols "maybe'path" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModuleSymbols'path (\ x__ y__ -> x__ {_ModuleSymbols'path = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ModuleSymbols "buildId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModuleSymbols'buildId
           (\ x__ y__ -> x__ {_ModuleSymbols'buildId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ModuleSymbols "maybe'buildId" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModuleSymbols'buildId
           (\ x__ y__ -> x__ {_ModuleSymbols'buildId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ModuleSymbols "addressSymbols" [AddressSymbols] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModuleSymbols'addressSymbols
           (\ x__ y__ -> x__ {_ModuleSymbols'addressSymbols = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ModuleSymbols "vec'addressSymbols" (Data.Vector.Vector AddressSymbols) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModuleSymbols'addressSymbols
           (\ x__ y__ -> x__ {_ModuleSymbols'addressSymbols = y__}))
        Prelude.id
instance Data.ProtoLens.Message ModuleSymbols where
  messageName _ = Data.Text.pack "perfetto.protos.ModuleSymbols"
  packedMessageDescriptor _
    = "\n\
      \\rModuleSymbols\DC2\DC2\n\
      \\EOTpath\CAN\SOH \SOH(\tR\EOTpath\DC2\EM\n\
      \\bbuild_id\CAN\STX \SOH(\tR\abuildId\DC2H\n\
      \\SIaddress_symbols\CAN\ETX \ETX(\v2\US.perfetto.protos.AddressSymbolsR\SOaddressSymbols"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        path__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "path"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'path")) ::
              Data.ProtoLens.FieldDescriptor ModuleSymbols
        buildId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "build_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'buildId")) ::
              Data.ProtoLens.FieldDescriptor ModuleSymbols
        addressSymbols__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address_symbols"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AddressSymbols)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"addressSymbols")) ::
              Data.ProtoLens.FieldDescriptor ModuleSymbols
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, path__field_descriptor),
           (Data.ProtoLens.Tag 2, buildId__field_descriptor),
           (Data.ProtoLens.Tag 3, addressSymbols__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ModuleSymbols'_unknownFields
        (\ x__ y__ -> x__ {_ModuleSymbols'_unknownFields = y__})
  defMessage
    = ModuleSymbols'_constructor
        {_ModuleSymbols'path = Prelude.Nothing,
         _ModuleSymbols'buildId = Prelude.Nothing,
         _ModuleSymbols'addressSymbols = Data.Vector.Generic.empty,
         _ModuleSymbols'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ModuleSymbols
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld AddressSymbols
             -> Data.ProtoLens.Encoding.Bytes.Parser ModuleSymbols
        loop x mutable'addressSymbols
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'addressSymbols <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                    mutable'addressSymbols)
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
                              (Data.ProtoLens.Field.field @"vec'addressSymbols")
                              frozen'addressSymbols x))
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
                                       "path"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"path") y x)
                                  mutable'addressSymbols
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
                                       "build_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"buildId") y x)
                                  mutable'addressSymbols
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "address_symbols"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'addressSymbols y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'addressSymbols
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'addressSymbols <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'addressSymbols)
          "ModuleSymbols"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'path") _x
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
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'buildId") _x
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
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                              ((Prelude..)
                                 (\ bs
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                         (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 Data.ProtoLens.encodeMessage _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'addressSymbols") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData ModuleSymbols where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ModuleSymbols'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ModuleSymbols'path x__)
                (Control.DeepSeq.deepseq
                   (_ModuleSymbols'buildId x__)
                   (Control.DeepSeq.deepseq (_ModuleSymbols'addressSymbols x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.frameIid' @:: Lens' ProfiledFrameSymbols Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.maybe'frameIid' @:: Lens' ProfiledFrameSymbols (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.functionNameId' @:: Lens' ProfiledFrameSymbols [Data.Word.Word64]@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.vec'functionNameId' @:: Lens' ProfiledFrameSymbols (Data.Vector.Unboxed.Vector Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.fileNameId' @:: Lens' ProfiledFrameSymbols [Data.Word.Word64]@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.vec'fileNameId' @:: Lens' ProfiledFrameSymbols (Data.Vector.Unboxed.Vector Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.lineNumber' @:: Lens' ProfiledFrameSymbols [Data.Word.Word32]@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields.vec'lineNumber' @:: Lens' ProfiledFrameSymbols (Data.Vector.Unboxed.Vector Data.Word.Word32)@ -}
data ProfiledFrameSymbols
  = ProfiledFrameSymbols'_constructor {_ProfiledFrameSymbols'frameIid :: !(Prelude.Maybe Data.Word.Word64),
                                       _ProfiledFrameSymbols'functionNameId :: !(Data.Vector.Unboxed.Vector Data.Word.Word64),
                                       _ProfiledFrameSymbols'fileNameId :: !(Data.Vector.Unboxed.Vector Data.Word.Word64),
                                       _ProfiledFrameSymbols'lineNumber :: !(Data.Vector.Unboxed.Vector Data.Word.Word32),
                                       _ProfiledFrameSymbols'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ProfiledFrameSymbols where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ProfiledFrameSymbols "frameIid" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfiledFrameSymbols'frameIid
           (\ x__ y__ -> x__ {_ProfiledFrameSymbols'frameIid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProfiledFrameSymbols "maybe'frameIid" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfiledFrameSymbols'frameIid
           (\ x__ y__ -> x__ {_ProfiledFrameSymbols'frameIid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProfiledFrameSymbols "functionNameId" [Data.Word.Word64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfiledFrameSymbols'functionNameId
           (\ x__ y__ -> x__ {_ProfiledFrameSymbols'functionNameId = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ProfiledFrameSymbols "vec'functionNameId" (Data.Vector.Unboxed.Vector Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfiledFrameSymbols'functionNameId
           (\ x__ y__ -> x__ {_ProfiledFrameSymbols'functionNameId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProfiledFrameSymbols "fileNameId" [Data.Word.Word64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfiledFrameSymbols'fileNameId
           (\ x__ y__ -> x__ {_ProfiledFrameSymbols'fileNameId = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ProfiledFrameSymbols "vec'fileNameId" (Data.Vector.Unboxed.Vector Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfiledFrameSymbols'fileNameId
           (\ x__ y__ -> x__ {_ProfiledFrameSymbols'fileNameId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProfiledFrameSymbols "lineNumber" [Data.Word.Word32] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfiledFrameSymbols'lineNumber
           (\ x__ y__ -> x__ {_ProfiledFrameSymbols'lineNumber = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ProfiledFrameSymbols "vec'lineNumber" (Data.Vector.Unboxed.Vector Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfiledFrameSymbols'lineNumber
           (\ x__ y__ -> x__ {_ProfiledFrameSymbols'lineNumber = y__}))
        Prelude.id
instance Data.ProtoLens.Message ProfiledFrameSymbols where
  messageName _
    = Data.Text.pack "perfetto.protos.ProfiledFrameSymbols"
  packedMessageDescriptor _
    = "\n\
      \\DC4ProfiledFrameSymbols\DC2\ESC\n\
      \\tframe_iid\CAN\SOH \SOH(\EOTR\bframeIid\DC2(\n\
      \\DLEfunction_name_id\CAN\STX \ETX(\EOTR\SOfunctionNameId\DC2 \n\
      \\ffile_name_id\CAN\ETX \ETX(\EOTR\n\
      \fileNameId\DC2\US\n\
      \\vline_number\CAN\EOT \ETX(\rR\n\
      \lineNumber"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        frameIid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "frame_iid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'frameIid")) ::
              Data.ProtoLens.FieldDescriptor ProfiledFrameSymbols
        functionNameId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "function_name_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"functionNameId")) ::
              Data.ProtoLens.FieldDescriptor ProfiledFrameSymbols
        fileNameId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "file_name_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"fileNameId")) ::
              Data.ProtoLens.FieldDescriptor ProfiledFrameSymbols
        lineNumber__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "line_number"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"lineNumber")) ::
              Data.ProtoLens.FieldDescriptor ProfiledFrameSymbols
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, frameIid__field_descriptor),
           (Data.ProtoLens.Tag 2, functionNameId__field_descriptor),
           (Data.ProtoLens.Tag 3, fileNameId__field_descriptor),
           (Data.ProtoLens.Tag 4, lineNumber__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ProfiledFrameSymbols'_unknownFields
        (\ x__ y__ -> x__ {_ProfiledFrameSymbols'_unknownFields = y__})
  defMessage
    = ProfiledFrameSymbols'_constructor
        {_ProfiledFrameSymbols'frameIid = Prelude.Nothing,
         _ProfiledFrameSymbols'functionNameId = Data.Vector.Generic.empty,
         _ProfiledFrameSymbols'fileNameId = Data.Vector.Generic.empty,
         _ProfiledFrameSymbols'lineNumber = Data.Vector.Generic.empty,
         _ProfiledFrameSymbols'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ProfiledFrameSymbols
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word64
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word64
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word32
                   -> Data.ProtoLens.Encoding.Bytes.Parser ProfiledFrameSymbols
        loop x mutable'fileNameId mutable'functionNameId mutable'lineNumber
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'fileNameId <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'fileNameId)
                      frozen'functionNameId <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                    mutable'functionNameId)
                      frozen'lineNumber <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'lineNumber)
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
                              (Data.ProtoLens.Field.field @"vec'fileNameId") frozen'fileNameId
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'functionNameId")
                                 frozen'functionNameId
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'lineNumber") frozen'lineNumber
                                    x))))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "frame_iid"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"frameIid") y x)
                                  mutable'fileNameId mutable'functionNameId mutable'lineNumber
                        16
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        Data.ProtoLens.Encoding.Bytes.getVarInt "function_name_id"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'functionNameId y)
                                loop x mutable'fileNameId v mutable'lineNumber
                        18
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
                                                                    Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                    "function_name_id"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'functionNameId)
                                loop x mutable'fileNameId y mutable'lineNumber
                        24
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        Data.ProtoLens.Encoding.Bytes.getVarInt "file_name_id"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'fileNameId y)
                                loop x v mutable'functionNameId mutable'lineNumber
                        26
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
                                                                    Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                    "file_name_id"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'fileNameId)
                                loop x y mutable'functionNameId mutable'lineNumber
                        32
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "line_number"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'lineNumber y)
                                loop x mutable'fileNameId mutable'functionNameId v
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
                                                                    "line_number"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'lineNumber)
                                loop x mutable'fileNameId mutable'functionNameId y
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'fileNameId mutable'functionNameId mutable'lineNumber
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'fileNameId <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              mutable'functionNameId <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          Data.ProtoLens.Encoding.Growing.new
              mutable'lineNumber <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'fileNameId mutable'functionNameId
                mutable'lineNumber)
          "ProfiledFrameSymbols"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'frameIid") _x
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
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'functionNameId") _x))
                ((Data.Monoid.<>)
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'fileNameId") _x))
                   ((Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                         (\ _v
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                 ((Prelude..)
                                    Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                    _v))
                         (Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vec'lineNumber") _x))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData ProfiledFrameSymbols where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ProfiledFrameSymbols'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ProfiledFrameSymbols'frameIid x__)
                (Control.DeepSeq.deepseq
                   (_ProfiledFrameSymbols'functionNameId x__)
                   (Control.DeepSeq.deepseq
                      (_ProfiledFrameSymbols'fileNameId x__)
                      (Control.DeepSeq.deepseq
                         (_ProfiledFrameSymbols'lineNumber x__) ()))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \4protos/perfetto/trace/profiling/profile_common.proto\DC2\SIperfetto.protos\"4\n\
    \\SOInternedString\DC2\DLE\n\
    \\ETXiid\CAN\SOH \SOH(\EOTR\ETXiid\DC2\DLE\n\
    \\ETXstr\CAN\STX \SOH(\fR\ETXstr\"\160\SOH\n\
    \\DC4ProfiledFrameSymbols\DC2\ESC\n\
    \\tframe_iid\CAN\SOH \SOH(\EOTR\bframeIid\DC2(\n\
    \\DLEfunction_name_id\CAN\STX \ETX(\EOTR\SOfunctionNameId\DC2 \n\
    \\ffile_name_id\CAN\ETX \ETX(\EOTR\n\
    \fileNameId\DC2\US\n\
    \\vline_number\CAN\EOT \ETX(\rR\n\
    \lineNumber\"v\n\
    \\EOTLine\DC2#\n\
    \\rfunction_name\CAN\SOH \SOH(\tR\ffunctionName\DC2(\n\
    \\DLEsource_file_name\CAN\STX \SOH(\tR\SOsourceFileName\DC2\US\n\
    \\vline_number\CAN\ETX \SOH(\rR\n\
    \lineNumber\"W\n\
    \\SOAddressSymbols\DC2\CAN\n\
    \\aaddress\CAN\SOH \SOH(\EOTR\aaddress\DC2+\n\
    \\ENQlines\CAN\STX \ETX(\v2\NAK.perfetto.protos.LineR\ENQlines\"\136\SOH\n\
    \\rModuleSymbols\DC2\DC2\n\
    \\EOTpath\CAN\SOH \SOH(\tR\EOTpath\DC2\EM\n\
    \\bbuild_id\CAN\STX \SOH(\tR\abuildId\DC2H\n\
    \\SIaddress_symbols\CAN\ETX \ETX(\v2\US.perfetto.protos.AddressSymbolsR\SOaddressSymbols\"\233\SOH\n\
    \\aMapping\DC2\DLE\n\
    \\ETXiid\CAN\SOH \SOH(\EOTR\ETXiid\DC2\EM\n\
    \\bbuild_id\CAN\STX \SOH(\EOTR\abuildId\DC2!\n\
    \\fexact_offset\CAN\b \SOH(\EOTR\vexactOffset\DC2!\n\
    \\fstart_offset\CAN\ETX \SOH(\EOTR\vstartOffset\DC2\DC4\n\
    \\ENQstart\CAN\EOT \SOH(\EOTR\ENQstart\DC2\DLE\n\
    \\ETXend\CAN\ENQ \SOH(\EOTR\ETXend\DC2\ESC\n\
    \\tload_bias\CAN\ACK \SOH(\EOTR\bloadBias\DC2&\n\
    \\SIpath_string_ids\CAN\a \ETX(\EOTR\rpathStringIds\"y\n\
    \\ENQFrame\DC2\DLE\n\
    \\ETXiid\CAN\SOH \SOH(\EOTR\ETXiid\DC2(\n\
    \\DLEfunction_name_id\CAN\STX \SOH(\EOTR\SOfunctionNameId\DC2\GS\n\
    \\n\
    \mapping_id\CAN\ETX \SOH(\EOTR\tmappingId\DC2\NAK\n\
    \\ACKrel_pc\CAN\EOT \SOH(\EOTR\ENQrelPc\":\n\
    \\tCallstack\DC2\DLE\n\
    \\ETXiid\CAN\SOH \SOH(\EOTR\ETXiid\DC2\ESC\n\
    \\tframe_ids\CAN\STX \ETX(\EOTR\bframeIdsJ\154-\n\
    \\a\DC2\ENQ\DLE\NUL\151\SOH\SOH\n\
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
    \\246\EOT\n\
    \\STX\EOT\NUL\DC2\EOT\RS\NUL!\SOH\SUB\243\ETX The interning fields in this file can refer to 2 different intern tables,\n\
    \ depending on the message they are used in. If the interned fields are present\n\
    \ in ProfilePacket proto, then the intern tables included in the ProfilePacket\n\
    \ should be used. If the intered fields are present in the\n\
    \ StreamingProfilePacket proto, then the intern tables included in all of the\n\
    \ previous InternedData message with same sequence ID should be used.\n\
    \ TODO(fmayer): Move to the intern tables to a common location.\n\
    \2t TODO(fmayer): Figure out naming thoroughout this file to get a\n\
    \ nomenclature that works between Windows and Linux.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\RS\b\SYN\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\US\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\US\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\US\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\US\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\US\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX \STX\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX \STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX \v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX \DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX \ETB\CAN\n\
    \\241\SOH\n\
    \\STX\EOT\SOH\DC2\EOT&\NUL7\SOH\SUB\228\SOH A symbol field that is emitted after the trace is written. These tables would\n\
    \ be appended as the last packets in the trace that the profiler will use, so\n\
    \ that the actual trace need not be rewritten to symbolize the profiles.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX&\b\FS\n\
    \E\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX(\STX \SUB8 Use the frame id as the interning key for the symbols.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX(\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX(\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX(\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX(\RS\US\n\
    \\202\STX\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX1\STX'\SUB\ETB key to InternedString\n\
    \2\163\STX These are repeated because when inlining happens, multiple functions'\n\
    \ frames can be at a single address. Imagine function Foo calling the\n\
    \ std::vector<int> constructor, which gets inlined at 0xf00. We then get\n\
    \ both Foo and the std::vector<int> constructor when we symbolize the\n\
    \ address.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX1\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX1\DC2\"\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX1%&\n\
    \$\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX4\STX#\SUB\ETB key to InternedString\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\EOT\DC2\ETX4\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX4\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX4\DC2\RS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX4!\"\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX6\STX\"\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\EOT\DC2\ETX6\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX6\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX6\DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX6 !\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT9\NUL=\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX9\b\f\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX:\STX$\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETX:\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX:\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX:\DC2\US\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX:\"#\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX;\STX'\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETX;\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX;\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX;\DC2\"\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX;%&\n\
    \\v\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX<\STX\"\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\EOT\DC2\ETX<\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETX<\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX<\DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX< !\n\
    \6\n\
    \\STX\EOT\ETX\DC2\EOT@\NULK\SOH\SUB* Symbols for a given address in a module.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX@\b\SYN\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETXA\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETXA\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETXA\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXA\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXA\FS\GS\n\
    \\225\STX\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETXJ\STX\SUB\SUB\211\STX Source lines that correspond to this address.\n\
    \\n\
    \ These are repeated because when inlining happens, multiple functions'\n\
    \ frames can be at a single address. Imagine function Foo calling the\n\
    \ std::vector<int> constructor, which gets inlined at 0xf00. We then get\n\
    \ both Foo and the std::vector<int> constructor when we symbolize the\n\
    \ address.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\EOT\DC2\ETXJ\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\ETXJ\v\SI\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETXJ\DLE\NAK\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETXJ\CAN\EM\n\
    \5\n\
    \\STX\EOT\EOT\DC2\EOTN\NULX\SOH\SUB) Symbols for addresses seen in a module.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXN\b\NAK\n\
    \P\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXQ\STX\ESC\SUBC Fully qualified path to the mapping.\n\
    \ E.g. /system/lib64/libc.so.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\EOT\DC2\ETXQ\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETXQ\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXQ\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXQ\EM\SUB\n\
    \f\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETXV\STX\US\SUBY .note.gnu.build-id on Linux (not hex encoded).\n\
    \ uuid on MacOS.\n\
    \ Module GUID on Windows.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\EOT\DC2\ETXV\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETXV\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETXV\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETXV\GS\RS\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETXW\STX.\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\EOT\DC2\ETXW\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ACK\DC2\ETXW\v\EM\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETXW\SUB)\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETXW,-\n\
    \\v\n\
    \\STX\EOT\ENQ\DC2\ENQZ\NUL\133\SOH\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETXZ\b\SI\n\
    \\GS\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETX\\\STX\SUB\SUB\DLE Interning key.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\ETX\\\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETX\\\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX\\\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX\\\CAN\EM\n\
    \\GS\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ETX_\STX\US\SUB\DLE Interning key.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\EOT\DC2\ETX_\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\ETX_\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETX_\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETX_\GS\RS\n\
    \\203\a\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\ETX{\STX#\SUB  This is not set on Android 10.\n\
    \2\155\a The linker may create multiple memory mappings for the same shared\n\
    \ library.\n\
    \ This is so that the ELF header is mapped as read only, while the\n\
    \ executable memory is mapped as executable only.\n\
    \ The details of this depend on the linker, a possible mapping of an ELF\n\
    \ file is this:\n\
    \         +----------------------+\n\
    \ ELF     |xxxxxxxxxyyyyyyyyyyyyy|\n\
    \         +---------+------------+\n\
    \         |         |\n\
    \         | read    | executable\n\
    \         v mapping v mapping\n\
    \         +----------------------+\n\
    \ Memory  |xxxxxxxxx|yyyyyyyyyyyy|\n\
    \         +------------------+---+\n\
    \         ^         ^        ^\n\
    \         +         +        +\n\
    \       start     exact    relpc\n\
    \       offset   offset    0x1800\n\
    \       0x0000   0x1000\n\
    \\n\
    \ exact_offset is the offset into the library file of this mapping.\n\
    \ start_offset is the offset into the library file of the first mapping\n\
    \ for that library. For native libraries (.so files) this should be 0.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\EOT\DC2\ETX{\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ENQ\DC2\ETX{\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\ETX{\DC2\RS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\ETX{!\"\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\ETX\DC2\ETX}\STX#\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\EOT\DC2\ETX}\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\ENQ\DC2\ETX}\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\SOH\DC2\ETX}\DC2\RS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\ETX\DC2\ETX}!\"\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\EOT\DC2\ETX~\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\EOT\DC2\ETX~\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\ENQ\DC2\ETX~\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\SOH\DC2\ETX~\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\ETX\DC2\ETX~\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\ENQ\DC2\ETX\DEL\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ENQ\EOT\DC2\ETX\DEL\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ENQ\ENQ\DC2\ETX\DEL\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ENQ\SOH\DC2\ETX\DEL\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ENQ\ETX\DC2\ETX\DEL\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\ENQ\STX\ACK\DC2\EOT\128\SOH\STX \n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ACK\EOT\DC2\EOT\128\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ACK\ENQ\DC2\EOT\128\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ACK\SOH\DC2\EOT\128\SOH\DC2\ESC\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ACK\ETX\DC2\EOT\128\SOH\RS\US\n\
    \B\n\
    \\EOT\EOT\ENQ\STX\a\DC2\EOT\132\SOH\STX&\SUB4 E.g. [\"system\", \"lib64\", \"libc.so\"]\n\
    \ id of string.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\a\EOT\DC2\EOT\132\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\a\ENQ\DC2\EOT\132\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\a\SOH\DC2\EOT\132\SOH\DC2!\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\a\ETX\DC2\EOT\132\SOH$%\n\
    \\f\n\
    \\STX\EOT\ACK\DC2\ACK\135\SOH\NUL\145\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\ACK\SOH\DC2\EOT\135\SOH\b\r\n\
    \\GS\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\EOT\137\SOH\STX\SUB\SUB\SI Interning key\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\EOT\DC2\EOT\137\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\EOT\137\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\EOT\137\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\EOT\137\SOH\CAN\EM\n\
    \+\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\EOT\141\SOH\STX'\SUB\GS E.g. \"fopen\"\n\
    \ id of string.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\EOT\DC2\EOT\141\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\EOT\141\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\EOT\141\SOH\DC2\"\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\EOT\141\SOH%&\n\
    \\f\n\
    \\EOT\EOT\ACK\STX\STX\DC2\EOT\143\SOH\STX!\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\EOT\DC2\EOT\143\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\ENQ\DC2\EOT\143\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\SOH\DC2\EOT\143\SOH\DC2\FS\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\ETX\DC2\EOT\143\SOH\US \n\
    \\f\n\
    \\EOT\EOT\ACK\STX\ETX\DC2\EOT\144\SOH\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ETX\EOT\DC2\EOT\144\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ETX\ENQ\DC2\EOT\144\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ETX\SOH\DC2\EOT\144\SOH\DC2\CAN\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ETX\ETX\DC2\EOT\144\SOH\ESC\FS\n\
    \\f\n\
    \\STX\EOT\a\DC2\ACK\147\SOH\NUL\151\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\a\SOH\DC2\EOT\147\SOH\b\DC1\n\
    \\f\n\
    \\EOT\EOT\a\STX\NUL\DC2\EOT\148\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\EOT\DC2\EOT\148\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ENQ\DC2\EOT\148\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\EOT\148\SOH\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\EOT\148\SOH\CAN\EM\n\
    \=\n\
    \\EOT\EOT\a\STX\SOH\DC2\EOT\150\SOH\STX \SUB/ Frames of this callstack. Bottom frame first.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\EOT\DC2\EOT\150\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ENQ\DC2\EOT\150\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\EOT\150\SOH\DC2\ESC\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\EOT\150\SOH\RS\US"