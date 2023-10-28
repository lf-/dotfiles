{- This file was auto-generated from protos/perfetto/trace/ftrace/ufs.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Ufs (
        UfshcdClkGatingFtraceEvent(), UfshcdCommandFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ufs_Fields.devName' @:: Lens' UfshcdClkGatingFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ufs_Fields.maybe'devName' @:: Lens' UfshcdClkGatingFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ufs_Fields.state' @:: Lens' UfshcdClkGatingFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ufs_Fields.maybe'state' @:: Lens' UfshcdClkGatingFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data UfshcdClkGatingFtraceEvent
  = UfshcdClkGatingFtraceEvent'_constructor {_UfshcdClkGatingFtraceEvent'devName :: !(Prelude.Maybe Data.Text.Text),
                                             _UfshcdClkGatingFtraceEvent'state :: !(Prelude.Maybe Data.Int.Int32),
                                             _UfshcdClkGatingFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UfshcdClkGatingFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField UfshcdClkGatingFtraceEvent "devName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UfshcdClkGatingFtraceEvent'devName
           (\ x__ y__ -> x__ {_UfshcdClkGatingFtraceEvent'devName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField UfshcdClkGatingFtraceEvent "maybe'devName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UfshcdClkGatingFtraceEvent'devName
           (\ x__ y__ -> x__ {_UfshcdClkGatingFtraceEvent'devName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UfshcdClkGatingFtraceEvent "state" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UfshcdClkGatingFtraceEvent'state
           (\ x__ y__ -> x__ {_UfshcdClkGatingFtraceEvent'state = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField UfshcdClkGatingFtraceEvent "maybe'state" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UfshcdClkGatingFtraceEvent'state
           (\ x__ y__ -> x__ {_UfshcdClkGatingFtraceEvent'state = y__}))
        Prelude.id
instance Data.ProtoLens.Message UfshcdClkGatingFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.UfshcdClkGatingFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SUBUfshcdClkGatingFtraceEvent\DC2\EM\n\
      \\bdev_name\CAN\SOH \SOH(\tR\adevName\DC2\DC4\n\
      \\ENQstate\CAN\STX \SOH(\ENQR\ENQstate"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        devName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dev_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'devName")) ::
              Data.ProtoLens.FieldDescriptor UfshcdClkGatingFtraceEvent
        state__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'state")) ::
              Data.ProtoLens.FieldDescriptor UfshcdClkGatingFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, devName__field_descriptor),
           (Data.ProtoLens.Tag 2, state__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _UfshcdClkGatingFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_UfshcdClkGatingFtraceEvent'_unknownFields = y__})
  defMessage
    = UfshcdClkGatingFtraceEvent'_constructor
        {_UfshcdClkGatingFtraceEvent'devName = Prelude.Nothing,
         _UfshcdClkGatingFtraceEvent'state = Prelude.Nothing,
         _UfshcdClkGatingFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          UfshcdClkGatingFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser UfshcdClkGatingFtraceEvent
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
                                       "dev_name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"devName") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "state"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"state") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "UfshcdClkGatingFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'devName") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'state") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData UfshcdClkGatingFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_UfshcdClkGatingFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_UfshcdClkGatingFtraceEvent'devName x__)
                (Control.DeepSeq.deepseq
                   (_UfshcdClkGatingFtraceEvent'state x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ufs_Fields.devName' @:: Lens' UfshcdCommandFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ufs_Fields.maybe'devName' @:: Lens' UfshcdCommandFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ufs_Fields.doorbell' @:: Lens' UfshcdCommandFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ufs_Fields.maybe'doorbell' @:: Lens' UfshcdCommandFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ufs_Fields.intr' @:: Lens' UfshcdCommandFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ufs_Fields.maybe'intr' @:: Lens' UfshcdCommandFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ufs_Fields.lba' @:: Lens' UfshcdCommandFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ufs_Fields.maybe'lba' @:: Lens' UfshcdCommandFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ufs_Fields.opcode' @:: Lens' UfshcdCommandFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ufs_Fields.maybe'opcode' @:: Lens' UfshcdCommandFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ufs_Fields.str' @:: Lens' UfshcdCommandFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ufs_Fields.maybe'str' @:: Lens' UfshcdCommandFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ufs_Fields.tag' @:: Lens' UfshcdCommandFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ufs_Fields.maybe'tag' @:: Lens' UfshcdCommandFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ufs_Fields.transferLen' @:: Lens' UfshcdCommandFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ufs_Fields.maybe'transferLen' @:: Lens' UfshcdCommandFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ufs_Fields.groupId' @:: Lens' UfshcdCommandFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ufs_Fields.maybe'groupId' @:: Lens' UfshcdCommandFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ufs_Fields.strT' @:: Lens' UfshcdCommandFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ufs_Fields.maybe'strT' @:: Lens' UfshcdCommandFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data UfshcdCommandFtraceEvent
  = UfshcdCommandFtraceEvent'_constructor {_UfshcdCommandFtraceEvent'devName :: !(Prelude.Maybe Data.Text.Text),
                                           _UfshcdCommandFtraceEvent'doorbell :: !(Prelude.Maybe Data.Word.Word32),
                                           _UfshcdCommandFtraceEvent'intr :: !(Prelude.Maybe Data.Word.Word32),
                                           _UfshcdCommandFtraceEvent'lba :: !(Prelude.Maybe Data.Word.Word64),
                                           _UfshcdCommandFtraceEvent'opcode :: !(Prelude.Maybe Data.Word.Word32),
                                           _UfshcdCommandFtraceEvent'str :: !(Prelude.Maybe Data.Text.Text),
                                           _UfshcdCommandFtraceEvent'tag :: !(Prelude.Maybe Data.Word.Word32),
                                           _UfshcdCommandFtraceEvent'transferLen :: !(Prelude.Maybe Data.Int.Int32),
                                           _UfshcdCommandFtraceEvent'groupId :: !(Prelude.Maybe Data.Word.Word32),
                                           _UfshcdCommandFtraceEvent'strT :: !(Prelude.Maybe Data.Word.Word32),
                                           _UfshcdCommandFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UfshcdCommandFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField UfshcdCommandFtraceEvent "devName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UfshcdCommandFtraceEvent'devName
           (\ x__ y__ -> x__ {_UfshcdCommandFtraceEvent'devName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField UfshcdCommandFtraceEvent "maybe'devName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UfshcdCommandFtraceEvent'devName
           (\ x__ y__ -> x__ {_UfshcdCommandFtraceEvent'devName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UfshcdCommandFtraceEvent "doorbell" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UfshcdCommandFtraceEvent'doorbell
           (\ x__ y__ -> x__ {_UfshcdCommandFtraceEvent'doorbell = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField UfshcdCommandFtraceEvent "maybe'doorbell" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UfshcdCommandFtraceEvent'doorbell
           (\ x__ y__ -> x__ {_UfshcdCommandFtraceEvent'doorbell = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UfshcdCommandFtraceEvent "intr" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UfshcdCommandFtraceEvent'intr
           (\ x__ y__ -> x__ {_UfshcdCommandFtraceEvent'intr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField UfshcdCommandFtraceEvent "maybe'intr" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UfshcdCommandFtraceEvent'intr
           (\ x__ y__ -> x__ {_UfshcdCommandFtraceEvent'intr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UfshcdCommandFtraceEvent "lba" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UfshcdCommandFtraceEvent'lba
           (\ x__ y__ -> x__ {_UfshcdCommandFtraceEvent'lba = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField UfshcdCommandFtraceEvent "maybe'lba" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UfshcdCommandFtraceEvent'lba
           (\ x__ y__ -> x__ {_UfshcdCommandFtraceEvent'lba = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UfshcdCommandFtraceEvent "opcode" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UfshcdCommandFtraceEvent'opcode
           (\ x__ y__ -> x__ {_UfshcdCommandFtraceEvent'opcode = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField UfshcdCommandFtraceEvent "maybe'opcode" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UfshcdCommandFtraceEvent'opcode
           (\ x__ y__ -> x__ {_UfshcdCommandFtraceEvent'opcode = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UfshcdCommandFtraceEvent "str" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UfshcdCommandFtraceEvent'str
           (\ x__ y__ -> x__ {_UfshcdCommandFtraceEvent'str = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField UfshcdCommandFtraceEvent "maybe'str" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UfshcdCommandFtraceEvent'str
           (\ x__ y__ -> x__ {_UfshcdCommandFtraceEvent'str = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UfshcdCommandFtraceEvent "tag" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UfshcdCommandFtraceEvent'tag
           (\ x__ y__ -> x__ {_UfshcdCommandFtraceEvent'tag = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField UfshcdCommandFtraceEvent "maybe'tag" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UfshcdCommandFtraceEvent'tag
           (\ x__ y__ -> x__ {_UfshcdCommandFtraceEvent'tag = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UfshcdCommandFtraceEvent "transferLen" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UfshcdCommandFtraceEvent'transferLen
           (\ x__ y__ -> x__ {_UfshcdCommandFtraceEvent'transferLen = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField UfshcdCommandFtraceEvent "maybe'transferLen" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UfshcdCommandFtraceEvent'transferLen
           (\ x__ y__ -> x__ {_UfshcdCommandFtraceEvent'transferLen = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UfshcdCommandFtraceEvent "groupId" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UfshcdCommandFtraceEvent'groupId
           (\ x__ y__ -> x__ {_UfshcdCommandFtraceEvent'groupId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField UfshcdCommandFtraceEvent "maybe'groupId" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UfshcdCommandFtraceEvent'groupId
           (\ x__ y__ -> x__ {_UfshcdCommandFtraceEvent'groupId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UfshcdCommandFtraceEvent "strT" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UfshcdCommandFtraceEvent'strT
           (\ x__ y__ -> x__ {_UfshcdCommandFtraceEvent'strT = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField UfshcdCommandFtraceEvent "maybe'strT" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UfshcdCommandFtraceEvent'strT
           (\ x__ y__ -> x__ {_UfshcdCommandFtraceEvent'strT = y__}))
        Prelude.id
instance Data.ProtoLens.Message UfshcdCommandFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.UfshcdCommandFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\CANUfshcdCommandFtraceEvent\DC2\EM\n\
      \\bdev_name\CAN\SOH \SOH(\tR\adevName\DC2\SUB\n\
      \\bdoorbell\CAN\STX \SOH(\rR\bdoorbell\DC2\DC2\n\
      \\EOTintr\CAN\ETX \SOH(\rR\EOTintr\DC2\DLE\n\
      \\ETXlba\CAN\EOT \SOH(\EOTR\ETXlba\DC2\SYN\n\
      \\ACKopcode\CAN\ENQ \SOH(\rR\ACKopcode\DC2\DLE\n\
      \\ETXstr\CAN\ACK \SOH(\tR\ETXstr\DC2\DLE\n\
      \\ETXtag\CAN\a \SOH(\rR\ETXtag\DC2!\n\
      \\ftransfer_len\CAN\b \SOH(\ENQR\vtransferLen\DC2\EM\n\
      \\bgroup_id\CAN\t \SOH(\rR\agroupId\DC2\DC3\n\
      \\ENQstr_t\CAN\n\
      \ \SOH(\rR\EOTstrT"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        devName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dev_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'devName")) ::
              Data.ProtoLens.FieldDescriptor UfshcdCommandFtraceEvent
        doorbell__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "doorbell"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'doorbell")) ::
              Data.ProtoLens.FieldDescriptor UfshcdCommandFtraceEvent
        intr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "intr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'intr")) ::
              Data.ProtoLens.FieldDescriptor UfshcdCommandFtraceEvent
        lba__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lba"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lba")) ::
              Data.ProtoLens.FieldDescriptor UfshcdCommandFtraceEvent
        opcode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "opcode"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'opcode")) ::
              Data.ProtoLens.FieldDescriptor UfshcdCommandFtraceEvent
        str__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "str"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'str")) ::
              Data.ProtoLens.FieldDescriptor UfshcdCommandFtraceEvent
        tag__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tag"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tag")) ::
              Data.ProtoLens.FieldDescriptor UfshcdCommandFtraceEvent
        transferLen__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "transfer_len"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'transferLen")) ::
              Data.ProtoLens.FieldDescriptor UfshcdCommandFtraceEvent
        groupId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'groupId")) ::
              Data.ProtoLens.FieldDescriptor UfshcdCommandFtraceEvent
        strT__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "str_t"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'strT")) ::
              Data.ProtoLens.FieldDescriptor UfshcdCommandFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, devName__field_descriptor),
           (Data.ProtoLens.Tag 2, doorbell__field_descriptor),
           (Data.ProtoLens.Tag 3, intr__field_descriptor),
           (Data.ProtoLens.Tag 4, lba__field_descriptor),
           (Data.ProtoLens.Tag 5, opcode__field_descriptor),
           (Data.ProtoLens.Tag 6, str__field_descriptor),
           (Data.ProtoLens.Tag 7, tag__field_descriptor),
           (Data.ProtoLens.Tag 8, transferLen__field_descriptor),
           (Data.ProtoLens.Tag 9, groupId__field_descriptor),
           (Data.ProtoLens.Tag 10, strT__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _UfshcdCommandFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_UfshcdCommandFtraceEvent'_unknownFields = y__})
  defMessage
    = UfshcdCommandFtraceEvent'_constructor
        {_UfshcdCommandFtraceEvent'devName = Prelude.Nothing,
         _UfshcdCommandFtraceEvent'doorbell = Prelude.Nothing,
         _UfshcdCommandFtraceEvent'intr = Prelude.Nothing,
         _UfshcdCommandFtraceEvent'lba = Prelude.Nothing,
         _UfshcdCommandFtraceEvent'opcode = Prelude.Nothing,
         _UfshcdCommandFtraceEvent'str = Prelude.Nothing,
         _UfshcdCommandFtraceEvent'tag = Prelude.Nothing,
         _UfshcdCommandFtraceEvent'transferLen = Prelude.Nothing,
         _UfshcdCommandFtraceEvent'groupId = Prelude.Nothing,
         _UfshcdCommandFtraceEvent'strT = Prelude.Nothing,
         _UfshcdCommandFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          UfshcdCommandFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser UfshcdCommandFtraceEvent
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
                                       "dev_name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"devName") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "doorbell"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"doorbell") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "intr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"intr") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "lba"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"lba") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "opcode"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"opcode") y x)
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
                                       "str"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"str") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "tag"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"tag") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "transfer_len"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"transferLen") y x)
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "group_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"groupId") y x)
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "str_t"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"strT") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "UfshcdCommandFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'devName") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'doorbell") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'intr") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'lba") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'opcode") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'str") _x
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
                                    Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'tag") _x
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
                                         (Data.ProtoLens.Field.field @"maybe'transferLen") _x
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
                                            (Data.ProtoLens.Field.field @"maybe'groupId") _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                               ((Prelude..)
                                                  Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  Prelude.fromIntegral _v))
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field @"maybe'strT") _x
                                         of
                                           Prelude.Nothing -> Data.Monoid.mempty
                                           (Prelude.Just _v)
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 80)
                                                  ((Prelude..)
                                                     Data.ProtoLens.Encoding.Bytes.putVarInt
                                                     Prelude.fromIntegral _v))
                                        (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                           (Lens.Family2.view
                                              Data.ProtoLens.unknownFields _x)))))))))))
instance Control.DeepSeq.NFData UfshcdCommandFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_UfshcdCommandFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_UfshcdCommandFtraceEvent'devName x__)
                (Control.DeepSeq.deepseq
                   (_UfshcdCommandFtraceEvent'doorbell x__)
                   (Control.DeepSeq.deepseq
                      (_UfshcdCommandFtraceEvent'intr x__)
                      (Control.DeepSeq.deepseq
                         (_UfshcdCommandFtraceEvent'lba x__)
                         (Control.DeepSeq.deepseq
                            (_UfshcdCommandFtraceEvent'opcode x__)
                            (Control.DeepSeq.deepseq
                               (_UfshcdCommandFtraceEvent'str x__)
                               (Control.DeepSeq.deepseq
                                  (_UfshcdCommandFtraceEvent'tag x__)
                                  (Control.DeepSeq.deepseq
                                     (_UfshcdCommandFtraceEvent'transferLen x__)
                                     (Control.DeepSeq.deepseq
                                        (_UfshcdCommandFtraceEvent'groupId x__)
                                        (Control.DeepSeq.deepseq
                                           (_UfshcdCommandFtraceEvent'strT x__) ()))))))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \&protos/perfetto/trace/ftrace/ufs.proto\DC2\SIperfetto.protos\"\134\STX\n\
    \\CANUfshcdCommandFtraceEvent\DC2\EM\n\
    \\bdev_name\CAN\SOH \SOH(\tR\adevName\DC2\SUB\n\
    \\bdoorbell\CAN\STX \SOH(\rR\bdoorbell\DC2\DC2\n\
    \\EOTintr\CAN\ETX \SOH(\rR\EOTintr\DC2\DLE\n\
    \\ETXlba\CAN\EOT \SOH(\EOTR\ETXlba\DC2\SYN\n\
    \\ACKopcode\CAN\ENQ \SOH(\rR\ACKopcode\DC2\DLE\n\
    \\ETXstr\CAN\ACK \SOH(\tR\ETXstr\DC2\DLE\n\
    \\ETXtag\CAN\a \SOH(\rR\ETXtag\DC2!\n\
    \\ftransfer_len\CAN\b \SOH(\ENQR\vtransferLen\DC2\EM\n\
    \\bgroup_id\CAN\t \SOH(\rR\agroupId\DC2\DC3\n\
    \\ENQstr_t\CAN\n\
    \ \SOH(\rR\EOTstrT\"M\n\
    \\SUBUfshcdClkGatingFtraceEvent\DC2\EM\n\
    \\bdev_name\CAN\SOH \SOH(\tR\adevName\DC2\DC4\n\
    \\ENQstate\CAN\STX \SOH(\ENQR\ENQstateJ\225\a\n\
    \\ACK\DC2\EOT\EOT\NUL\SYN\SOH\n\
    \a\n\
    \\SOH\f\DC2\ETX\EOT\NUL\DC22W Autogenerated by:\n\
    \ ../../src/tools/ftrace_proto_gen/ftrace_proto_gen.cc\n\
    \ Do not edit.\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\ENQ\NUL\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\a\NUL\DC2\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b \n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\b\STX\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\b\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\b\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\b\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\b\GS\RS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\t\STX\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\t\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\t\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\t\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\t\GS\RS\n\
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
    \\v\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\v\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX\v\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\v\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\v\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\v\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX\f\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\EOT\DC2\ETX\f\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX\f\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\f\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\f\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX\r\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\EOT\DC2\ETX\r\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETX\r\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX\r\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX\r\CAN\EM\n\
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
    \\v\n\
    \\EOT\EOT\NUL\STX\a\DC2\ETX\SI\STX\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\EOT\DC2\ETX\SI\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ENQ\DC2\ETX\SI\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\ETX\SI\DC1\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\ETX\SI !\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\b\DC2\ETX\DLE\STX\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\EOT\DC2\ETX\DLE\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ENQ\DC2\ETX\DLE\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\SOH\DC2\ETX\DLE\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ETX\DC2\ETX\DLE\GS\RS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\t\DC2\ETX\DC1\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\EOT\DC2\ETX\DC1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\ENQ\DC2\ETX\DC1\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\SOH\DC2\ETX\DC1\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\ETX\DC2\ETX\DC1\SUB\FS\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\DC3\NUL\SYN\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\DC3\b\"\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\DC4\STX\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\DC4\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\DC4\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\DC4\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\DC4\GS\RS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\NAK\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX\NAK\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\NAK\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\NAK\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\NAK\EM\SUB"