{- This file was auto-generated from protos/perfetto/trace/ftrace/android_fs.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs (
        AndroidFsDatareadEndFtraceEvent(),
        AndroidFsDatareadStartFtraceEvent(),
        AndroidFsDatawriteEndFtraceEvent(),
        AndroidFsDatawriteStartFtraceEvent(),
        AndroidFsFsyncEndFtraceEvent(), AndroidFsFsyncStartFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.bytes' @:: Lens' AndroidFsDatareadEndFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.maybe'bytes' @:: Lens' AndroidFsDatareadEndFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.ino' @:: Lens' AndroidFsDatareadEndFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.maybe'ino' @:: Lens' AndroidFsDatareadEndFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.offset' @:: Lens' AndroidFsDatareadEndFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.maybe'offset' @:: Lens' AndroidFsDatareadEndFtraceEvent (Prelude.Maybe Data.Int.Int64)@ -}
data AndroidFsDatareadEndFtraceEvent
  = AndroidFsDatareadEndFtraceEvent'_constructor {_AndroidFsDatareadEndFtraceEvent'bytes :: !(Prelude.Maybe Data.Int.Int32),
                                                  _AndroidFsDatareadEndFtraceEvent'ino :: !(Prelude.Maybe Data.Word.Word64),
                                                  _AndroidFsDatareadEndFtraceEvent'offset :: !(Prelude.Maybe Data.Int.Int64),
                                                  _AndroidFsDatareadEndFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AndroidFsDatareadEndFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AndroidFsDatareadEndFtraceEvent "bytes" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsDatareadEndFtraceEvent'bytes
           (\ x__ y__ -> x__ {_AndroidFsDatareadEndFtraceEvent'bytes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AndroidFsDatareadEndFtraceEvent "maybe'bytes" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsDatareadEndFtraceEvent'bytes
           (\ x__ y__ -> x__ {_AndroidFsDatareadEndFtraceEvent'bytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AndroidFsDatareadEndFtraceEvent "ino" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsDatareadEndFtraceEvent'ino
           (\ x__ y__ -> x__ {_AndroidFsDatareadEndFtraceEvent'ino = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AndroidFsDatareadEndFtraceEvent "maybe'ino" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsDatareadEndFtraceEvent'ino
           (\ x__ y__ -> x__ {_AndroidFsDatareadEndFtraceEvent'ino = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AndroidFsDatareadEndFtraceEvent "offset" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsDatareadEndFtraceEvent'offset
           (\ x__ y__ -> x__ {_AndroidFsDatareadEndFtraceEvent'offset = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AndroidFsDatareadEndFtraceEvent "maybe'offset" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsDatareadEndFtraceEvent'offset
           (\ x__ y__ -> x__ {_AndroidFsDatareadEndFtraceEvent'offset = y__}))
        Prelude.id
instance Data.ProtoLens.Message AndroidFsDatareadEndFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.AndroidFsDatareadEndFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\USAndroidFsDatareadEndFtraceEvent\DC2\DC4\n\
      \\ENQbytes\CAN\SOH \SOH(\ENQR\ENQbytes\DC2\DLE\n\
      \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\SYN\n\
      \\ACKoffset\CAN\ETX \SOH(\ETXR\ACKoffset"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        bytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bytes")) ::
              Data.ProtoLens.FieldDescriptor AndroidFsDatareadEndFtraceEvent
        ino__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ino"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ino")) ::
              Data.ProtoLens.FieldDescriptor AndroidFsDatareadEndFtraceEvent
        offset__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "offset"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'offset")) ::
              Data.ProtoLens.FieldDescriptor AndroidFsDatareadEndFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, bytes__field_descriptor),
           (Data.ProtoLens.Tag 2, ino__field_descriptor),
           (Data.ProtoLens.Tag 3, offset__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AndroidFsDatareadEndFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_AndroidFsDatareadEndFtraceEvent'_unknownFields = y__})
  defMessage
    = AndroidFsDatareadEndFtraceEvent'_constructor
        {_AndroidFsDatareadEndFtraceEvent'bytes = Prelude.Nothing,
         _AndroidFsDatareadEndFtraceEvent'ino = Prelude.Nothing,
         _AndroidFsDatareadEndFtraceEvent'offset = Prelude.Nothing,
         _AndroidFsDatareadEndFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AndroidFsDatareadEndFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser AndroidFsDatareadEndFtraceEvent
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
                                       "bytes"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"bytes") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ino"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ino") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "offset"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"offset") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "AndroidFsDatareadEndFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'bytes") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ino") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'offset") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData AndroidFsDatareadEndFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AndroidFsDatareadEndFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AndroidFsDatareadEndFtraceEvent'bytes x__)
                (Control.DeepSeq.deepseq
                   (_AndroidFsDatareadEndFtraceEvent'ino x__)
                   (Control.DeepSeq.deepseq
                      (_AndroidFsDatareadEndFtraceEvent'offset x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.bytes' @:: Lens' AndroidFsDatareadStartFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.maybe'bytes' @:: Lens' AndroidFsDatareadStartFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.cmdline' @:: Lens' AndroidFsDatareadStartFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.maybe'cmdline' @:: Lens' AndroidFsDatareadStartFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.iSize' @:: Lens' AndroidFsDatareadStartFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.maybe'iSize' @:: Lens' AndroidFsDatareadStartFtraceEvent (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.ino' @:: Lens' AndroidFsDatareadStartFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.maybe'ino' @:: Lens' AndroidFsDatareadStartFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.offset' @:: Lens' AndroidFsDatareadStartFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.maybe'offset' @:: Lens' AndroidFsDatareadStartFtraceEvent (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.pathbuf' @:: Lens' AndroidFsDatareadStartFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.maybe'pathbuf' @:: Lens' AndroidFsDatareadStartFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.pid' @:: Lens' AndroidFsDatareadStartFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.maybe'pid' @:: Lens' AndroidFsDatareadStartFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data AndroidFsDatareadStartFtraceEvent
  = AndroidFsDatareadStartFtraceEvent'_constructor {_AndroidFsDatareadStartFtraceEvent'bytes :: !(Prelude.Maybe Data.Int.Int32),
                                                    _AndroidFsDatareadStartFtraceEvent'cmdline :: !(Prelude.Maybe Data.Text.Text),
                                                    _AndroidFsDatareadStartFtraceEvent'iSize :: !(Prelude.Maybe Data.Int.Int64),
                                                    _AndroidFsDatareadStartFtraceEvent'ino :: !(Prelude.Maybe Data.Word.Word64),
                                                    _AndroidFsDatareadStartFtraceEvent'offset :: !(Prelude.Maybe Data.Int.Int64),
                                                    _AndroidFsDatareadStartFtraceEvent'pathbuf :: !(Prelude.Maybe Data.Text.Text),
                                                    _AndroidFsDatareadStartFtraceEvent'pid :: !(Prelude.Maybe Data.Int.Int32),
                                                    _AndroidFsDatareadStartFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AndroidFsDatareadStartFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AndroidFsDatareadStartFtraceEvent "bytes" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsDatareadStartFtraceEvent'bytes
           (\ x__ y__
              -> x__ {_AndroidFsDatareadStartFtraceEvent'bytes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AndroidFsDatareadStartFtraceEvent "maybe'bytes" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsDatareadStartFtraceEvent'bytes
           (\ x__ y__
              -> x__ {_AndroidFsDatareadStartFtraceEvent'bytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AndroidFsDatareadStartFtraceEvent "cmdline" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsDatareadStartFtraceEvent'cmdline
           (\ x__ y__
              -> x__ {_AndroidFsDatareadStartFtraceEvent'cmdline = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AndroidFsDatareadStartFtraceEvent "maybe'cmdline" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsDatareadStartFtraceEvent'cmdline
           (\ x__ y__
              -> x__ {_AndroidFsDatareadStartFtraceEvent'cmdline = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AndroidFsDatareadStartFtraceEvent "iSize" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsDatareadStartFtraceEvent'iSize
           (\ x__ y__
              -> x__ {_AndroidFsDatareadStartFtraceEvent'iSize = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AndroidFsDatareadStartFtraceEvent "maybe'iSize" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsDatareadStartFtraceEvent'iSize
           (\ x__ y__
              -> x__ {_AndroidFsDatareadStartFtraceEvent'iSize = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AndroidFsDatareadStartFtraceEvent "ino" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsDatareadStartFtraceEvent'ino
           (\ x__ y__ -> x__ {_AndroidFsDatareadStartFtraceEvent'ino = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AndroidFsDatareadStartFtraceEvent "maybe'ino" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsDatareadStartFtraceEvent'ino
           (\ x__ y__ -> x__ {_AndroidFsDatareadStartFtraceEvent'ino = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AndroidFsDatareadStartFtraceEvent "offset" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsDatareadStartFtraceEvent'offset
           (\ x__ y__
              -> x__ {_AndroidFsDatareadStartFtraceEvent'offset = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AndroidFsDatareadStartFtraceEvent "maybe'offset" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsDatareadStartFtraceEvent'offset
           (\ x__ y__
              -> x__ {_AndroidFsDatareadStartFtraceEvent'offset = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AndroidFsDatareadStartFtraceEvent "pathbuf" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsDatareadStartFtraceEvent'pathbuf
           (\ x__ y__
              -> x__ {_AndroidFsDatareadStartFtraceEvent'pathbuf = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AndroidFsDatareadStartFtraceEvent "maybe'pathbuf" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsDatareadStartFtraceEvent'pathbuf
           (\ x__ y__
              -> x__ {_AndroidFsDatareadStartFtraceEvent'pathbuf = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AndroidFsDatareadStartFtraceEvent "pid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsDatareadStartFtraceEvent'pid
           (\ x__ y__ -> x__ {_AndroidFsDatareadStartFtraceEvent'pid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AndroidFsDatareadStartFtraceEvent "maybe'pid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsDatareadStartFtraceEvent'pid
           (\ x__ y__ -> x__ {_AndroidFsDatareadStartFtraceEvent'pid = y__}))
        Prelude.id
instance Data.ProtoLens.Message AndroidFsDatareadStartFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.AndroidFsDatareadStartFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \!AndroidFsDatareadStartFtraceEvent\DC2\DC4\n\
      \\ENQbytes\CAN\SOH \SOH(\ENQR\ENQbytes\DC2\CAN\n\
      \\acmdline\CAN\STX \SOH(\tR\acmdline\DC2\NAK\n\
      \\ACKi_size\CAN\ETX \SOH(\ETXR\ENQiSize\DC2\DLE\n\
      \\ETXino\CAN\EOT \SOH(\EOTR\ETXino\DC2\SYN\n\
      \\ACKoffset\CAN\ENQ \SOH(\ETXR\ACKoffset\DC2\CAN\n\
      \\apathbuf\CAN\ACK \SOH(\tR\apathbuf\DC2\DLE\n\
      \\ETXpid\CAN\a \SOH(\ENQR\ETXpid"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        bytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bytes")) ::
              Data.ProtoLens.FieldDescriptor AndroidFsDatareadStartFtraceEvent
        cmdline__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cmdline"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cmdline")) ::
              Data.ProtoLens.FieldDescriptor AndroidFsDatareadStartFtraceEvent
        iSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "i_size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'iSize")) ::
              Data.ProtoLens.FieldDescriptor AndroidFsDatareadStartFtraceEvent
        ino__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ino"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ino")) ::
              Data.ProtoLens.FieldDescriptor AndroidFsDatareadStartFtraceEvent
        offset__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "offset"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'offset")) ::
              Data.ProtoLens.FieldDescriptor AndroidFsDatareadStartFtraceEvent
        pathbuf__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pathbuf"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pathbuf")) ::
              Data.ProtoLens.FieldDescriptor AndroidFsDatareadStartFtraceEvent
        pid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pid")) ::
              Data.ProtoLens.FieldDescriptor AndroidFsDatareadStartFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, bytes__field_descriptor),
           (Data.ProtoLens.Tag 2, cmdline__field_descriptor),
           (Data.ProtoLens.Tag 3, iSize__field_descriptor),
           (Data.ProtoLens.Tag 4, ino__field_descriptor),
           (Data.ProtoLens.Tag 5, offset__field_descriptor),
           (Data.ProtoLens.Tag 6, pathbuf__field_descriptor),
           (Data.ProtoLens.Tag 7, pid__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AndroidFsDatareadStartFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_AndroidFsDatareadStartFtraceEvent'_unknownFields = y__})
  defMessage
    = AndroidFsDatareadStartFtraceEvent'_constructor
        {_AndroidFsDatareadStartFtraceEvent'bytes = Prelude.Nothing,
         _AndroidFsDatareadStartFtraceEvent'cmdline = Prelude.Nothing,
         _AndroidFsDatareadStartFtraceEvent'iSize = Prelude.Nothing,
         _AndroidFsDatareadStartFtraceEvent'ino = Prelude.Nothing,
         _AndroidFsDatareadStartFtraceEvent'offset = Prelude.Nothing,
         _AndroidFsDatareadStartFtraceEvent'pathbuf = Prelude.Nothing,
         _AndroidFsDatareadStartFtraceEvent'pid = Prelude.Nothing,
         _AndroidFsDatareadStartFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AndroidFsDatareadStartFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser AndroidFsDatareadStartFtraceEvent
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
                                       "bytes"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"bytes") y x)
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
                                       "cmdline"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cmdline") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "i_size"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"iSize") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ino"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ino") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "offset"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"offset") y x)
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
                                       "pathbuf"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pathbuf") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "pid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pid") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "AndroidFsDatareadStartFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'bytes") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cmdline") _x
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'iSize") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ino") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'offset") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pathbuf") _x
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
                                    Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pid") _x
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
instance Control.DeepSeq.NFData AndroidFsDatareadStartFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AndroidFsDatareadStartFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AndroidFsDatareadStartFtraceEvent'bytes x__)
                (Control.DeepSeq.deepseq
                   (_AndroidFsDatareadStartFtraceEvent'cmdline x__)
                   (Control.DeepSeq.deepseq
                      (_AndroidFsDatareadStartFtraceEvent'iSize x__)
                      (Control.DeepSeq.deepseq
                         (_AndroidFsDatareadStartFtraceEvent'ino x__)
                         (Control.DeepSeq.deepseq
                            (_AndroidFsDatareadStartFtraceEvent'offset x__)
                            (Control.DeepSeq.deepseq
                               (_AndroidFsDatareadStartFtraceEvent'pathbuf x__)
                               (Control.DeepSeq.deepseq
                                  (_AndroidFsDatareadStartFtraceEvent'pid x__) ())))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.bytes' @:: Lens' AndroidFsDatawriteEndFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.maybe'bytes' @:: Lens' AndroidFsDatawriteEndFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.ino' @:: Lens' AndroidFsDatawriteEndFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.maybe'ino' @:: Lens' AndroidFsDatawriteEndFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.offset' @:: Lens' AndroidFsDatawriteEndFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.maybe'offset' @:: Lens' AndroidFsDatawriteEndFtraceEvent (Prelude.Maybe Data.Int.Int64)@ -}
data AndroidFsDatawriteEndFtraceEvent
  = AndroidFsDatawriteEndFtraceEvent'_constructor {_AndroidFsDatawriteEndFtraceEvent'bytes :: !(Prelude.Maybe Data.Int.Int32),
                                                   _AndroidFsDatawriteEndFtraceEvent'ino :: !(Prelude.Maybe Data.Word.Word64),
                                                   _AndroidFsDatawriteEndFtraceEvent'offset :: !(Prelude.Maybe Data.Int.Int64),
                                                   _AndroidFsDatawriteEndFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AndroidFsDatawriteEndFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AndroidFsDatawriteEndFtraceEvent "bytes" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsDatawriteEndFtraceEvent'bytes
           (\ x__ y__ -> x__ {_AndroidFsDatawriteEndFtraceEvent'bytes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AndroidFsDatawriteEndFtraceEvent "maybe'bytes" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsDatawriteEndFtraceEvent'bytes
           (\ x__ y__ -> x__ {_AndroidFsDatawriteEndFtraceEvent'bytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AndroidFsDatawriteEndFtraceEvent "ino" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsDatawriteEndFtraceEvent'ino
           (\ x__ y__ -> x__ {_AndroidFsDatawriteEndFtraceEvent'ino = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AndroidFsDatawriteEndFtraceEvent "maybe'ino" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsDatawriteEndFtraceEvent'ino
           (\ x__ y__ -> x__ {_AndroidFsDatawriteEndFtraceEvent'ino = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AndroidFsDatawriteEndFtraceEvent "offset" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsDatawriteEndFtraceEvent'offset
           (\ x__ y__
              -> x__ {_AndroidFsDatawriteEndFtraceEvent'offset = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AndroidFsDatawriteEndFtraceEvent "maybe'offset" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsDatawriteEndFtraceEvent'offset
           (\ x__ y__
              -> x__ {_AndroidFsDatawriteEndFtraceEvent'offset = y__}))
        Prelude.id
instance Data.ProtoLens.Message AndroidFsDatawriteEndFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.AndroidFsDatawriteEndFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \ AndroidFsDatawriteEndFtraceEvent\DC2\DC4\n\
      \\ENQbytes\CAN\SOH \SOH(\ENQR\ENQbytes\DC2\DLE\n\
      \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\SYN\n\
      \\ACKoffset\CAN\ETX \SOH(\ETXR\ACKoffset"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        bytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bytes")) ::
              Data.ProtoLens.FieldDescriptor AndroidFsDatawriteEndFtraceEvent
        ino__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ino"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ino")) ::
              Data.ProtoLens.FieldDescriptor AndroidFsDatawriteEndFtraceEvent
        offset__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "offset"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'offset")) ::
              Data.ProtoLens.FieldDescriptor AndroidFsDatawriteEndFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, bytes__field_descriptor),
           (Data.ProtoLens.Tag 2, ino__field_descriptor),
           (Data.ProtoLens.Tag 3, offset__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AndroidFsDatawriteEndFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_AndroidFsDatawriteEndFtraceEvent'_unknownFields = y__})
  defMessage
    = AndroidFsDatawriteEndFtraceEvent'_constructor
        {_AndroidFsDatawriteEndFtraceEvent'bytes = Prelude.Nothing,
         _AndroidFsDatawriteEndFtraceEvent'ino = Prelude.Nothing,
         _AndroidFsDatawriteEndFtraceEvent'offset = Prelude.Nothing,
         _AndroidFsDatawriteEndFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AndroidFsDatawriteEndFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser AndroidFsDatawriteEndFtraceEvent
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
                                       "bytes"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"bytes") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ino"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ino") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "offset"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"offset") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "AndroidFsDatawriteEndFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'bytes") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ino") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'offset") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData AndroidFsDatawriteEndFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AndroidFsDatawriteEndFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AndroidFsDatawriteEndFtraceEvent'bytes x__)
                (Control.DeepSeq.deepseq
                   (_AndroidFsDatawriteEndFtraceEvent'ino x__)
                   (Control.DeepSeq.deepseq
                      (_AndroidFsDatawriteEndFtraceEvent'offset x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.bytes' @:: Lens' AndroidFsDatawriteStartFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.maybe'bytes' @:: Lens' AndroidFsDatawriteStartFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.cmdline' @:: Lens' AndroidFsDatawriteStartFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.maybe'cmdline' @:: Lens' AndroidFsDatawriteStartFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.iSize' @:: Lens' AndroidFsDatawriteStartFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.maybe'iSize' @:: Lens' AndroidFsDatawriteStartFtraceEvent (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.ino' @:: Lens' AndroidFsDatawriteStartFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.maybe'ino' @:: Lens' AndroidFsDatawriteStartFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.offset' @:: Lens' AndroidFsDatawriteStartFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.maybe'offset' @:: Lens' AndroidFsDatawriteStartFtraceEvent (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.pathbuf' @:: Lens' AndroidFsDatawriteStartFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.maybe'pathbuf' @:: Lens' AndroidFsDatawriteStartFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.pid' @:: Lens' AndroidFsDatawriteStartFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.maybe'pid' @:: Lens' AndroidFsDatawriteStartFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data AndroidFsDatawriteStartFtraceEvent
  = AndroidFsDatawriteStartFtraceEvent'_constructor {_AndroidFsDatawriteStartFtraceEvent'bytes :: !(Prelude.Maybe Data.Int.Int32),
                                                     _AndroidFsDatawriteStartFtraceEvent'cmdline :: !(Prelude.Maybe Data.Text.Text),
                                                     _AndroidFsDatawriteStartFtraceEvent'iSize :: !(Prelude.Maybe Data.Int.Int64),
                                                     _AndroidFsDatawriteStartFtraceEvent'ino :: !(Prelude.Maybe Data.Word.Word64),
                                                     _AndroidFsDatawriteStartFtraceEvent'offset :: !(Prelude.Maybe Data.Int.Int64),
                                                     _AndroidFsDatawriteStartFtraceEvent'pathbuf :: !(Prelude.Maybe Data.Text.Text),
                                                     _AndroidFsDatawriteStartFtraceEvent'pid :: !(Prelude.Maybe Data.Int.Int32),
                                                     _AndroidFsDatawriteStartFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AndroidFsDatawriteStartFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AndroidFsDatawriteStartFtraceEvent "bytes" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsDatawriteStartFtraceEvent'bytes
           (\ x__ y__
              -> x__ {_AndroidFsDatawriteStartFtraceEvent'bytes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AndroidFsDatawriteStartFtraceEvent "maybe'bytes" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsDatawriteStartFtraceEvent'bytes
           (\ x__ y__
              -> x__ {_AndroidFsDatawriteStartFtraceEvent'bytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AndroidFsDatawriteStartFtraceEvent "cmdline" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsDatawriteStartFtraceEvent'cmdline
           (\ x__ y__
              -> x__ {_AndroidFsDatawriteStartFtraceEvent'cmdline = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AndroidFsDatawriteStartFtraceEvent "maybe'cmdline" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsDatawriteStartFtraceEvent'cmdline
           (\ x__ y__
              -> x__ {_AndroidFsDatawriteStartFtraceEvent'cmdline = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AndroidFsDatawriteStartFtraceEvent "iSize" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsDatawriteStartFtraceEvent'iSize
           (\ x__ y__
              -> x__ {_AndroidFsDatawriteStartFtraceEvent'iSize = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AndroidFsDatawriteStartFtraceEvent "maybe'iSize" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsDatawriteStartFtraceEvent'iSize
           (\ x__ y__
              -> x__ {_AndroidFsDatawriteStartFtraceEvent'iSize = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AndroidFsDatawriteStartFtraceEvent "ino" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsDatawriteStartFtraceEvent'ino
           (\ x__ y__ -> x__ {_AndroidFsDatawriteStartFtraceEvent'ino = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AndroidFsDatawriteStartFtraceEvent "maybe'ino" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsDatawriteStartFtraceEvent'ino
           (\ x__ y__ -> x__ {_AndroidFsDatawriteStartFtraceEvent'ino = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AndroidFsDatawriteStartFtraceEvent "offset" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsDatawriteStartFtraceEvent'offset
           (\ x__ y__
              -> x__ {_AndroidFsDatawriteStartFtraceEvent'offset = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AndroidFsDatawriteStartFtraceEvent "maybe'offset" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsDatawriteStartFtraceEvent'offset
           (\ x__ y__
              -> x__ {_AndroidFsDatawriteStartFtraceEvent'offset = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AndroidFsDatawriteStartFtraceEvent "pathbuf" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsDatawriteStartFtraceEvent'pathbuf
           (\ x__ y__
              -> x__ {_AndroidFsDatawriteStartFtraceEvent'pathbuf = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AndroidFsDatawriteStartFtraceEvent "maybe'pathbuf" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsDatawriteStartFtraceEvent'pathbuf
           (\ x__ y__
              -> x__ {_AndroidFsDatawriteStartFtraceEvent'pathbuf = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AndroidFsDatawriteStartFtraceEvent "pid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsDatawriteStartFtraceEvent'pid
           (\ x__ y__ -> x__ {_AndroidFsDatawriteStartFtraceEvent'pid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AndroidFsDatawriteStartFtraceEvent "maybe'pid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsDatawriteStartFtraceEvent'pid
           (\ x__ y__ -> x__ {_AndroidFsDatawriteStartFtraceEvent'pid = y__}))
        Prelude.id
instance Data.ProtoLens.Message AndroidFsDatawriteStartFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.AndroidFsDatawriteStartFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\"AndroidFsDatawriteStartFtraceEvent\DC2\DC4\n\
      \\ENQbytes\CAN\SOH \SOH(\ENQR\ENQbytes\DC2\CAN\n\
      \\acmdline\CAN\STX \SOH(\tR\acmdline\DC2\NAK\n\
      \\ACKi_size\CAN\ETX \SOH(\ETXR\ENQiSize\DC2\DLE\n\
      \\ETXino\CAN\EOT \SOH(\EOTR\ETXino\DC2\SYN\n\
      \\ACKoffset\CAN\ENQ \SOH(\ETXR\ACKoffset\DC2\CAN\n\
      \\apathbuf\CAN\ACK \SOH(\tR\apathbuf\DC2\DLE\n\
      \\ETXpid\CAN\a \SOH(\ENQR\ETXpid"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        bytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bytes")) ::
              Data.ProtoLens.FieldDescriptor AndroidFsDatawriteStartFtraceEvent
        cmdline__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cmdline"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cmdline")) ::
              Data.ProtoLens.FieldDescriptor AndroidFsDatawriteStartFtraceEvent
        iSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "i_size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'iSize")) ::
              Data.ProtoLens.FieldDescriptor AndroidFsDatawriteStartFtraceEvent
        ino__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ino"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ino")) ::
              Data.ProtoLens.FieldDescriptor AndroidFsDatawriteStartFtraceEvent
        offset__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "offset"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'offset")) ::
              Data.ProtoLens.FieldDescriptor AndroidFsDatawriteStartFtraceEvent
        pathbuf__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pathbuf"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pathbuf")) ::
              Data.ProtoLens.FieldDescriptor AndroidFsDatawriteStartFtraceEvent
        pid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pid")) ::
              Data.ProtoLens.FieldDescriptor AndroidFsDatawriteStartFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, bytes__field_descriptor),
           (Data.ProtoLens.Tag 2, cmdline__field_descriptor),
           (Data.ProtoLens.Tag 3, iSize__field_descriptor),
           (Data.ProtoLens.Tag 4, ino__field_descriptor),
           (Data.ProtoLens.Tag 5, offset__field_descriptor),
           (Data.ProtoLens.Tag 6, pathbuf__field_descriptor),
           (Data.ProtoLens.Tag 7, pid__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AndroidFsDatawriteStartFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_AndroidFsDatawriteStartFtraceEvent'_unknownFields = y__})
  defMessage
    = AndroidFsDatawriteStartFtraceEvent'_constructor
        {_AndroidFsDatawriteStartFtraceEvent'bytes = Prelude.Nothing,
         _AndroidFsDatawriteStartFtraceEvent'cmdline = Prelude.Nothing,
         _AndroidFsDatawriteStartFtraceEvent'iSize = Prelude.Nothing,
         _AndroidFsDatawriteStartFtraceEvent'ino = Prelude.Nothing,
         _AndroidFsDatawriteStartFtraceEvent'offset = Prelude.Nothing,
         _AndroidFsDatawriteStartFtraceEvent'pathbuf = Prelude.Nothing,
         _AndroidFsDatawriteStartFtraceEvent'pid = Prelude.Nothing,
         _AndroidFsDatawriteStartFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AndroidFsDatawriteStartFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser AndroidFsDatawriteStartFtraceEvent
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
                                       "bytes"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"bytes") y x)
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
                                       "cmdline"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cmdline") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "i_size"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"iSize") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ino"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ino") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "offset"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"offset") y x)
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
                                       "pathbuf"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pathbuf") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "pid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pid") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "AndroidFsDatawriteStartFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'bytes") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cmdline") _x
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'iSize") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ino") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'offset") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pathbuf") _x
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
                                    Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pid") _x
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
instance Control.DeepSeq.NFData AndroidFsDatawriteStartFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AndroidFsDatawriteStartFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AndroidFsDatawriteStartFtraceEvent'bytes x__)
                (Control.DeepSeq.deepseq
                   (_AndroidFsDatawriteStartFtraceEvent'cmdline x__)
                   (Control.DeepSeq.deepseq
                      (_AndroidFsDatawriteStartFtraceEvent'iSize x__)
                      (Control.DeepSeq.deepseq
                         (_AndroidFsDatawriteStartFtraceEvent'ino x__)
                         (Control.DeepSeq.deepseq
                            (_AndroidFsDatawriteStartFtraceEvent'offset x__)
                            (Control.DeepSeq.deepseq
                               (_AndroidFsDatawriteStartFtraceEvent'pathbuf x__)
                               (Control.DeepSeq.deepseq
                                  (_AndroidFsDatawriteStartFtraceEvent'pid x__) ())))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.bytes' @:: Lens' AndroidFsFsyncEndFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.maybe'bytes' @:: Lens' AndroidFsFsyncEndFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.ino' @:: Lens' AndroidFsFsyncEndFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.maybe'ino' @:: Lens' AndroidFsFsyncEndFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.offset' @:: Lens' AndroidFsFsyncEndFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.maybe'offset' @:: Lens' AndroidFsFsyncEndFtraceEvent (Prelude.Maybe Data.Int.Int64)@ -}
data AndroidFsFsyncEndFtraceEvent
  = AndroidFsFsyncEndFtraceEvent'_constructor {_AndroidFsFsyncEndFtraceEvent'bytes :: !(Prelude.Maybe Data.Int.Int32),
                                               _AndroidFsFsyncEndFtraceEvent'ino :: !(Prelude.Maybe Data.Word.Word64),
                                               _AndroidFsFsyncEndFtraceEvent'offset :: !(Prelude.Maybe Data.Int.Int64),
                                               _AndroidFsFsyncEndFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AndroidFsFsyncEndFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AndroidFsFsyncEndFtraceEvent "bytes" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsFsyncEndFtraceEvent'bytes
           (\ x__ y__ -> x__ {_AndroidFsFsyncEndFtraceEvent'bytes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AndroidFsFsyncEndFtraceEvent "maybe'bytes" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsFsyncEndFtraceEvent'bytes
           (\ x__ y__ -> x__ {_AndroidFsFsyncEndFtraceEvent'bytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AndroidFsFsyncEndFtraceEvent "ino" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsFsyncEndFtraceEvent'ino
           (\ x__ y__ -> x__ {_AndroidFsFsyncEndFtraceEvent'ino = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AndroidFsFsyncEndFtraceEvent "maybe'ino" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsFsyncEndFtraceEvent'ino
           (\ x__ y__ -> x__ {_AndroidFsFsyncEndFtraceEvent'ino = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AndroidFsFsyncEndFtraceEvent "offset" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsFsyncEndFtraceEvent'offset
           (\ x__ y__ -> x__ {_AndroidFsFsyncEndFtraceEvent'offset = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AndroidFsFsyncEndFtraceEvent "maybe'offset" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsFsyncEndFtraceEvent'offset
           (\ x__ y__ -> x__ {_AndroidFsFsyncEndFtraceEvent'offset = y__}))
        Prelude.id
instance Data.ProtoLens.Message AndroidFsFsyncEndFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.AndroidFsFsyncEndFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\FSAndroidFsFsyncEndFtraceEvent\DC2\DC4\n\
      \\ENQbytes\CAN\SOH \SOH(\ENQR\ENQbytes\DC2\DLE\n\
      \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\SYN\n\
      \\ACKoffset\CAN\ETX \SOH(\ETXR\ACKoffset"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        bytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bytes")) ::
              Data.ProtoLens.FieldDescriptor AndroidFsFsyncEndFtraceEvent
        ino__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ino"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ino")) ::
              Data.ProtoLens.FieldDescriptor AndroidFsFsyncEndFtraceEvent
        offset__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "offset"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'offset")) ::
              Data.ProtoLens.FieldDescriptor AndroidFsFsyncEndFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, bytes__field_descriptor),
           (Data.ProtoLens.Tag 2, ino__field_descriptor),
           (Data.ProtoLens.Tag 3, offset__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AndroidFsFsyncEndFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_AndroidFsFsyncEndFtraceEvent'_unknownFields = y__})
  defMessage
    = AndroidFsFsyncEndFtraceEvent'_constructor
        {_AndroidFsFsyncEndFtraceEvent'bytes = Prelude.Nothing,
         _AndroidFsFsyncEndFtraceEvent'ino = Prelude.Nothing,
         _AndroidFsFsyncEndFtraceEvent'offset = Prelude.Nothing,
         _AndroidFsFsyncEndFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AndroidFsFsyncEndFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser AndroidFsFsyncEndFtraceEvent
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
                                       "bytes"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"bytes") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ino"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ino") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "offset"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"offset") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "AndroidFsFsyncEndFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'bytes") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ino") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'offset") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData AndroidFsFsyncEndFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AndroidFsFsyncEndFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AndroidFsFsyncEndFtraceEvent'bytes x__)
                (Control.DeepSeq.deepseq
                   (_AndroidFsFsyncEndFtraceEvent'ino x__)
                   (Control.DeepSeq.deepseq
                      (_AndroidFsFsyncEndFtraceEvent'offset x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.cmdline' @:: Lens' AndroidFsFsyncStartFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.maybe'cmdline' @:: Lens' AndroidFsFsyncStartFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.iSize' @:: Lens' AndroidFsFsyncStartFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.maybe'iSize' @:: Lens' AndroidFsFsyncStartFtraceEvent (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.ino' @:: Lens' AndroidFsFsyncStartFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.maybe'ino' @:: Lens' AndroidFsFsyncStartFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.pathbuf' @:: Lens' AndroidFsFsyncStartFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.maybe'pathbuf' @:: Lens' AndroidFsFsyncStartFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.pid' @:: Lens' AndroidFsFsyncStartFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields.maybe'pid' @:: Lens' AndroidFsFsyncStartFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data AndroidFsFsyncStartFtraceEvent
  = AndroidFsFsyncStartFtraceEvent'_constructor {_AndroidFsFsyncStartFtraceEvent'cmdline :: !(Prelude.Maybe Data.Text.Text),
                                                 _AndroidFsFsyncStartFtraceEvent'iSize :: !(Prelude.Maybe Data.Int.Int64),
                                                 _AndroidFsFsyncStartFtraceEvent'ino :: !(Prelude.Maybe Data.Word.Word64),
                                                 _AndroidFsFsyncStartFtraceEvent'pathbuf :: !(Prelude.Maybe Data.Text.Text),
                                                 _AndroidFsFsyncStartFtraceEvent'pid :: !(Prelude.Maybe Data.Int.Int32),
                                                 _AndroidFsFsyncStartFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AndroidFsFsyncStartFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AndroidFsFsyncStartFtraceEvent "cmdline" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsFsyncStartFtraceEvent'cmdline
           (\ x__ y__ -> x__ {_AndroidFsFsyncStartFtraceEvent'cmdline = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AndroidFsFsyncStartFtraceEvent "maybe'cmdline" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsFsyncStartFtraceEvent'cmdline
           (\ x__ y__ -> x__ {_AndroidFsFsyncStartFtraceEvent'cmdline = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AndroidFsFsyncStartFtraceEvent "iSize" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsFsyncStartFtraceEvent'iSize
           (\ x__ y__ -> x__ {_AndroidFsFsyncStartFtraceEvent'iSize = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AndroidFsFsyncStartFtraceEvent "maybe'iSize" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsFsyncStartFtraceEvent'iSize
           (\ x__ y__ -> x__ {_AndroidFsFsyncStartFtraceEvent'iSize = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AndroidFsFsyncStartFtraceEvent "ino" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsFsyncStartFtraceEvent'ino
           (\ x__ y__ -> x__ {_AndroidFsFsyncStartFtraceEvent'ino = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AndroidFsFsyncStartFtraceEvent "maybe'ino" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsFsyncStartFtraceEvent'ino
           (\ x__ y__ -> x__ {_AndroidFsFsyncStartFtraceEvent'ino = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AndroidFsFsyncStartFtraceEvent "pathbuf" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsFsyncStartFtraceEvent'pathbuf
           (\ x__ y__ -> x__ {_AndroidFsFsyncStartFtraceEvent'pathbuf = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AndroidFsFsyncStartFtraceEvent "maybe'pathbuf" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsFsyncStartFtraceEvent'pathbuf
           (\ x__ y__ -> x__ {_AndroidFsFsyncStartFtraceEvent'pathbuf = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AndroidFsFsyncStartFtraceEvent "pid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsFsyncStartFtraceEvent'pid
           (\ x__ y__ -> x__ {_AndroidFsFsyncStartFtraceEvent'pid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AndroidFsFsyncStartFtraceEvent "maybe'pid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidFsFsyncStartFtraceEvent'pid
           (\ x__ y__ -> x__ {_AndroidFsFsyncStartFtraceEvent'pid = y__}))
        Prelude.id
instance Data.ProtoLens.Message AndroidFsFsyncStartFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.AndroidFsFsyncStartFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\RSAndroidFsFsyncStartFtraceEvent\DC2\CAN\n\
      \\acmdline\CAN\SOH \SOH(\tR\acmdline\DC2\NAK\n\
      \\ACKi_size\CAN\STX \SOH(\ETXR\ENQiSize\DC2\DLE\n\
      \\ETXino\CAN\ETX \SOH(\EOTR\ETXino\DC2\CAN\n\
      \\apathbuf\CAN\EOT \SOH(\tR\apathbuf\DC2\DLE\n\
      \\ETXpid\CAN\ENQ \SOH(\ENQR\ETXpid"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        cmdline__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cmdline"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cmdline")) ::
              Data.ProtoLens.FieldDescriptor AndroidFsFsyncStartFtraceEvent
        iSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "i_size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'iSize")) ::
              Data.ProtoLens.FieldDescriptor AndroidFsFsyncStartFtraceEvent
        ino__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ino"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ino")) ::
              Data.ProtoLens.FieldDescriptor AndroidFsFsyncStartFtraceEvent
        pathbuf__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pathbuf"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pathbuf")) ::
              Data.ProtoLens.FieldDescriptor AndroidFsFsyncStartFtraceEvent
        pid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pid")) ::
              Data.ProtoLens.FieldDescriptor AndroidFsFsyncStartFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, cmdline__field_descriptor),
           (Data.ProtoLens.Tag 2, iSize__field_descriptor),
           (Data.ProtoLens.Tag 3, ino__field_descriptor),
           (Data.ProtoLens.Tag 4, pathbuf__field_descriptor),
           (Data.ProtoLens.Tag 5, pid__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AndroidFsFsyncStartFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_AndroidFsFsyncStartFtraceEvent'_unknownFields = y__})
  defMessage
    = AndroidFsFsyncStartFtraceEvent'_constructor
        {_AndroidFsFsyncStartFtraceEvent'cmdline = Prelude.Nothing,
         _AndroidFsFsyncStartFtraceEvent'iSize = Prelude.Nothing,
         _AndroidFsFsyncStartFtraceEvent'ino = Prelude.Nothing,
         _AndroidFsFsyncStartFtraceEvent'pathbuf = Prelude.Nothing,
         _AndroidFsFsyncStartFtraceEvent'pid = Prelude.Nothing,
         _AndroidFsFsyncStartFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AndroidFsFsyncStartFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser AndroidFsFsyncStartFtraceEvent
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
                                       "cmdline"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cmdline") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "i_size"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"iSize") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ino"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ino") y x)
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
                                       "pathbuf"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pathbuf") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "pid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pid") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "AndroidFsFsyncStartFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cmdline") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'iSize") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ino") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pathbuf") _x
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
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pid") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   ((Prelude..)
                                      Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                      _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData AndroidFsFsyncStartFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AndroidFsFsyncStartFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AndroidFsFsyncStartFtraceEvent'cmdline x__)
                (Control.DeepSeq.deepseq
                   (_AndroidFsFsyncStartFtraceEvent'iSize x__)
                   (Control.DeepSeq.deepseq
                      (_AndroidFsFsyncStartFtraceEvent'ino x__)
                      (Control.DeepSeq.deepseq
                         (_AndroidFsFsyncStartFtraceEvent'pathbuf x__)
                         (Control.DeepSeq.deepseq
                            (_AndroidFsFsyncStartFtraceEvent'pid x__) ())))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \-protos/perfetto/trace/ftrace/android_fs.proto\DC2\SIperfetto.protos\"a\n\
    \\USAndroidFsDatareadEndFtraceEvent\DC2\DC4\n\
    \\ENQbytes\CAN\SOH \SOH(\ENQR\ENQbytes\DC2\DLE\n\
    \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\SYN\n\
    \\ACKoffset\CAN\ETX \SOH(\ETXR\ACKoffset\"\192\SOH\n\
    \!AndroidFsDatareadStartFtraceEvent\DC2\DC4\n\
    \\ENQbytes\CAN\SOH \SOH(\ENQR\ENQbytes\DC2\CAN\n\
    \\acmdline\CAN\STX \SOH(\tR\acmdline\DC2\NAK\n\
    \\ACKi_size\CAN\ETX \SOH(\ETXR\ENQiSize\DC2\DLE\n\
    \\ETXino\CAN\EOT \SOH(\EOTR\ETXino\DC2\SYN\n\
    \\ACKoffset\CAN\ENQ \SOH(\ETXR\ACKoffset\DC2\CAN\n\
    \\apathbuf\CAN\ACK \SOH(\tR\apathbuf\DC2\DLE\n\
    \\ETXpid\CAN\a \SOH(\ENQR\ETXpid\"b\n\
    \ AndroidFsDatawriteEndFtraceEvent\DC2\DC4\n\
    \\ENQbytes\CAN\SOH \SOH(\ENQR\ENQbytes\DC2\DLE\n\
    \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\SYN\n\
    \\ACKoffset\CAN\ETX \SOH(\ETXR\ACKoffset\"\193\SOH\n\
    \\"AndroidFsDatawriteStartFtraceEvent\DC2\DC4\n\
    \\ENQbytes\CAN\SOH \SOH(\ENQR\ENQbytes\DC2\CAN\n\
    \\acmdline\CAN\STX \SOH(\tR\acmdline\DC2\NAK\n\
    \\ACKi_size\CAN\ETX \SOH(\ETXR\ENQiSize\DC2\DLE\n\
    \\ETXino\CAN\EOT \SOH(\EOTR\ETXino\DC2\SYN\n\
    \\ACKoffset\CAN\ENQ \SOH(\ETXR\ACKoffset\DC2\CAN\n\
    \\apathbuf\CAN\ACK \SOH(\tR\apathbuf\DC2\DLE\n\
    \\ETXpid\CAN\a \SOH(\ENQR\ETXpid\"^\n\
    \\FSAndroidFsFsyncEndFtraceEvent\DC2\DC4\n\
    \\ENQbytes\CAN\SOH \SOH(\ENQR\ENQbytes\DC2\DLE\n\
    \\ETXino\CAN\STX \SOH(\EOTR\ETXino\DC2\SYN\n\
    \\ACKoffset\CAN\ETX \SOH(\ETXR\ACKoffset\"\143\SOH\n\
    \\RSAndroidFsFsyncStartFtraceEvent\DC2\CAN\n\
    \\acmdline\CAN\SOH \SOH(\tR\acmdline\DC2\NAK\n\
    \\ACKi_size\CAN\STX \SOH(\ETXR\ENQiSize\DC2\DLE\n\
    \\ETXino\CAN\ETX \SOH(\EOTR\ETXino\DC2\CAN\n\
    \\apathbuf\CAN\EOT \SOH(\tR\apathbuf\DC2\DLE\n\
    \\ETXpid\CAN\ENQ \SOH(\ENQR\ETXpidJ\145\DC1\n\
    \\ACK\DC2\EOT\EOT\NUL.\SOH\n\
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
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b'\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\b\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\b\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\b\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\b\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\b\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\t\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\t\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\t\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\t\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\t\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\n\
    \\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\n\
    \\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\n\
    \\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\n\
    \\DC1\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\n\
    \\SUB\ESC\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\f\NUL\DC4\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\f\b)\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\r\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\r\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\r\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\r\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\r\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\SO\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX\SO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\SO\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\SO\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\SO\FS\GS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX\SI\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\EOT\DC2\ETX\SI\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX\SI\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX\SI\DC1\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX\SI\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX\DLE\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\EOT\DC2\ETX\DLE\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX\DLE\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX\DLE\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX\DLE\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETX\DC1\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\EOT\DC2\ETX\DC1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ENQ\DC2\ETX\DC1\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETX\DC1\DC1\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETX\DC1\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\ETX\DC2\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\EOT\DC2\ETX\DC2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ENQ\DC2\ETX\DC2\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\ETX\DC2\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\ETX\DC2\FS\GS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ACK\DC2\ETX\DC3\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\EOT\DC2\ETX\DC3\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ENQ\DC2\ETX\DC3\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\SOH\DC2\ETX\DC3\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ETX\DC2\ETX\DC3\ETB\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT\NAK\NUL\EM\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\NAK\b(\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\SYN\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETX\SYN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX\SYN\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\SYN\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\SYN\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX\ETB\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETX\ETB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX\ETB\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX\ETB\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX\ETB\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX\CAN\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\EOT\DC2\ETX\CAN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETX\CAN\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX\CAN\DC1\ETB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX\CAN\SUB\ESC\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOT\SUB\NUL\"\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX\SUB\b*\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX\ESC\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETX\ESC\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX\ESC\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX\ESC\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX\ESC\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX\FS\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\EOT\DC2\ETX\FS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETX\FS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX\FS\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX\FS\FS\GS\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETX\GS\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\EOT\DC2\ETX\GS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\ETX\GS\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETX\GS\DC1\ETB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETX\GS\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\ETX\RS\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\EOT\DC2\ETX\RS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ENQ\DC2\ETX\RS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\ETX\RS\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\ETX\RS\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\EOT\DC2\ETX\US\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\EOT\DC2\ETX\US\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ENQ\DC2\ETX\US\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\SOH\DC2\ETX\US\DC1\ETB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ETX\DC2\ETX\US\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ENQ\DC2\ETX \STX\RS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\EOT\DC2\ETX \STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\ENQ\DC2\ETX \v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\SOH\DC2\ETX \DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\ETX\DC2\ETX \FS\GS\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ACK\DC2\ETX!\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\EOT\DC2\ETX!\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\ENQ\DC2\ETX!\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\SOH\DC2\ETX!\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\ETX\DC2\ETX!\ETB\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOT#\NUL'\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX#\b$\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX$\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\EOT\DC2\ETX$\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX$\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX$\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX$\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETX%\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\EOT\DC2\ETX%\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETX%\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETX%\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETX%\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETX&\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\EOT\DC2\ETX&\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ENQ\DC2\ETX&\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETX&\DC1\ETB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETX&\SUB\ESC\n\
    \\n\
    \\n\
    \\STX\EOT\ENQ\DC2\EOT(\NUL.\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX(\b&\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETX)\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\ETX)\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETX)\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX)\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX)\FS\GS\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ETX*\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\EOT\DC2\ETX*\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\ETX*\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETX*\DC1\ETB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETX*\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\ETX+\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\EOT\DC2\ETX+\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ENQ\DC2\ETX+\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\ETX+\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\ETX+\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\ETX\DC2\ETX,\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\EOT\DC2\ETX,\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\ENQ\DC2\ETX,\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\SOH\DC2\ETX,\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\ETX\DC2\ETX,\FS\GS\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\EOT\DC2\ETX-\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\EOT\DC2\ETX-\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\ENQ\DC2\ETX-\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\SOH\DC2\ETX-\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\ETX\DC2\ETX-\ETB\CAN"