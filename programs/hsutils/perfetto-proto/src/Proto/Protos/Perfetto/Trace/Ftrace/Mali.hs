{- This file was auto-generated from protos/perfetto/trace/ftrace/mali.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Mali (
        MaliMaliCSFINTERRUPTENDFtraceEvent(),
        MaliMaliCSFINTERRUPTSTARTFtraceEvent(),
        MaliMaliKCPUCQSSETFtraceEvent(),
        MaliMaliKCPUCQSWAITENDFtraceEvent(),
        MaliMaliKCPUCQSWAITSTARTFtraceEvent(),
        MaliMaliKCPUFENCESIGNALFtraceEvent(),
        MaliMaliKCPUFENCEWAITENDFtraceEvent(),
        MaliMaliKCPUFENCEWAITSTARTFtraceEvent(),
        MaliTracingMarkWriteFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.kctxTgid' @:: Lens' MaliMaliCSFINTERRUPTENDFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.maybe'kctxTgid' @:: Lens' MaliMaliCSFINTERRUPTENDFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.kctxId' @:: Lens' MaliMaliCSFINTERRUPTENDFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.maybe'kctxId' @:: Lens' MaliMaliCSFINTERRUPTENDFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.infoVal' @:: Lens' MaliMaliCSFINTERRUPTENDFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.maybe'infoVal' @:: Lens' MaliMaliCSFINTERRUPTENDFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data MaliMaliCSFINTERRUPTENDFtraceEvent
  = MaliMaliCSFINTERRUPTENDFtraceEvent'_constructor {_MaliMaliCSFINTERRUPTENDFtraceEvent'kctxTgid :: !(Prelude.Maybe Data.Int.Int32),
                                                     _MaliMaliCSFINTERRUPTENDFtraceEvent'kctxId :: !(Prelude.Maybe Data.Word.Word32),
                                                     _MaliMaliCSFINTERRUPTENDFtraceEvent'infoVal :: !(Prelude.Maybe Data.Word.Word64),
                                                     _MaliMaliCSFINTERRUPTENDFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MaliMaliCSFINTERRUPTENDFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MaliMaliCSFINTERRUPTENDFtraceEvent "kctxTgid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliCSFINTERRUPTENDFtraceEvent'kctxTgid
           (\ x__ y__
              -> x__ {_MaliMaliCSFINTERRUPTENDFtraceEvent'kctxTgid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MaliMaliCSFINTERRUPTENDFtraceEvent "maybe'kctxTgid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliCSFINTERRUPTENDFtraceEvent'kctxTgid
           (\ x__ y__
              -> x__ {_MaliMaliCSFINTERRUPTENDFtraceEvent'kctxTgid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MaliMaliCSFINTERRUPTENDFtraceEvent "kctxId" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliCSFINTERRUPTENDFtraceEvent'kctxId
           (\ x__ y__
              -> x__ {_MaliMaliCSFINTERRUPTENDFtraceEvent'kctxId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MaliMaliCSFINTERRUPTENDFtraceEvent "maybe'kctxId" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliCSFINTERRUPTENDFtraceEvent'kctxId
           (\ x__ y__
              -> x__ {_MaliMaliCSFINTERRUPTENDFtraceEvent'kctxId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MaliMaliCSFINTERRUPTENDFtraceEvent "infoVal" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliCSFINTERRUPTENDFtraceEvent'infoVal
           (\ x__ y__
              -> x__ {_MaliMaliCSFINTERRUPTENDFtraceEvent'infoVal = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MaliMaliCSFINTERRUPTENDFtraceEvent "maybe'infoVal" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliCSFINTERRUPTENDFtraceEvent'infoVal
           (\ x__ y__
              -> x__ {_MaliMaliCSFINTERRUPTENDFtraceEvent'infoVal = y__}))
        Prelude.id
instance Data.ProtoLens.Message MaliMaliCSFINTERRUPTENDFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.MaliMaliCSFINTERRUPTENDFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\"MaliMaliCSFINTERRUPTENDFtraceEvent\DC2\ESC\n\
      \\tkctx_tgid\CAN\SOH \SOH(\ENQR\bkctxTgid\DC2\ETB\n\
      \\akctx_id\CAN\STX \SOH(\rR\ACKkctxId\DC2\EM\n\
      \\binfo_val\CAN\ETX \SOH(\EOTR\ainfoVal"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        kctxTgid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "kctx_tgid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'kctxTgid")) ::
              Data.ProtoLens.FieldDescriptor MaliMaliCSFINTERRUPTENDFtraceEvent
        kctxId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "kctx_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'kctxId")) ::
              Data.ProtoLens.FieldDescriptor MaliMaliCSFINTERRUPTENDFtraceEvent
        infoVal__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "info_val"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'infoVal")) ::
              Data.ProtoLens.FieldDescriptor MaliMaliCSFINTERRUPTENDFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, kctxTgid__field_descriptor),
           (Data.ProtoLens.Tag 2, kctxId__field_descriptor),
           (Data.ProtoLens.Tag 3, infoVal__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MaliMaliCSFINTERRUPTENDFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_MaliMaliCSFINTERRUPTENDFtraceEvent'_unknownFields = y__})
  defMessage
    = MaliMaliCSFINTERRUPTENDFtraceEvent'_constructor
        {_MaliMaliCSFINTERRUPTENDFtraceEvent'kctxTgid = Prelude.Nothing,
         _MaliMaliCSFINTERRUPTENDFtraceEvent'kctxId = Prelude.Nothing,
         _MaliMaliCSFINTERRUPTENDFtraceEvent'infoVal = Prelude.Nothing,
         _MaliMaliCSFINTERRUPTENDFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MaliMaliCSFINTERRUPTENDFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MaliMaliCSFINTERRUPTENDFtraceEvent
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
                                       "kctx_tgid"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"kctxTgid") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "kctx_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"kctxId") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "info_val"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"infoVal") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "MaliMaliCSFINTERRUPTENDFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'kctxTgid") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'kctxId") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'infoVal") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData MaliMaliCSFINTERRUPTENDFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MaliMaliCSFINTERRUPTENDFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MaliMaliCSFINTERRUPTENDFtraceEvent'kctxTgid x__)
                (Control.DeepSeq.deepseq
                   (_MaliMaliCSFINTERRUPTENDFtraceEvent'kctxId x__)
                   (Control.DeepSeq.deepseq
                      (_MaliMaliCSFINTERRUPTENDFtraceEvent'infoVal x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.kctxTgid' @:: Lens' MaliMaliCSFINTERRUPTSTARTFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.maybe'kctxTgid' @:: Lens' MaliMaliCSFINTERRUPTSTARTFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.kctxId' @:: Lens' MaliMaliCSFINTERRUPTSTARTFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.maybe'kctxId' @:: Lens' MaliMaliCSFINTERRUPTSTARTFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.infoVal' @:: Lens' MaliMaliCSFINTERRUPTSTARTFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.maybe'infoVal' @:: Lens' MaliMaliCSFINTERRUPTSTARTFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data MaliMaliCSFINTERRUPTSTARTFtraceEvent
  = MaliMaliCSFINTERRUPTSTARTFtraceEvent'_constructor {_MaliMaliCSFINTERRUPTSTARTFtraceEvent'kctxTgid :: !(Prelude.Maybe Data.Int.Int32),
                                                       _MaliMaliCSFINTERRUPTSTARTFtraceEvent'kctxId :: !(Prelude.Maybe Data.Word.Word32),
                                                       _MaliMaliCSFINTERRUPTSTARTFtraceEvent'infoVal :: !(Prelude.Maybe Data.Word.Word64),
                                                       _MaliMaliCSFINTERRUPTSTARTFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MaliMaliCSFINTERRUPTSTARTFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MaliMaliCSFINTERRUPTSTARTFtraceEvent "kctxTgid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliCSFINTERRUPTSTARTFtraceEvent'kctxTgid
           (\ x__ y__
              -> x__ {_MaliMaliCSFINTERRUPTSTARTFtraceEvent'kctxTgid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MaliMaliCSFINTERRUPTSTARTFtraceEvent "maybe'kctxTgid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliCSFINTERRUPTSTARTFtraceEvent'kctxTgid
           (\ x__ y__
              -> x__ {_MaliMaliCSFINTERRUPTSTARTFtraceEvent'kctxTgid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MaliMaliCSFINTERRUPTSTARTFtraceEvent "kctxId" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliCSFINTERRUPTSTARTFtraceEvent'kctxId
           (\ x__ y__
              -> x__ {_MaliMaliCSFINTERRUPTSTARTFtraceEvent'kctxId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MaliMaliCSFINTERRUPTSTARTFtraceEvent "maybe'kctxId" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliCSFINTERRUPTSTARTFtraceEvent'kctxId
           (\ x__ y__
              -> x__ {_MaliMaliCSFINTERRUPTSTARTFtraceEvent'kctxId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MaliMaliCSFINTERRUPTSTARTFtraceEvent "infoVal" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliCSFINTERRUPTSTARTFtraceEvent'infoVal
           (\ x__ y__
              -> x__ {_MaliMaliCSFINTERRUPTSTARTFtraceEvent'infoVal = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MaliMaliCSFINTERRUPTSTARTFtraceEvent "maybe'infoVal" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliCSFINTERRUPTSTARTFtraceEvent'infoVal
           (\ x__ y__
              -> x__ {_MaliMaliCSFINTERRUPTSTARTFtraceEvent'infoVal = y__}))
        Prelude.id
instance Data.ProtoLens.Message MaliMaliCSFINTERRUPTSTARTFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.MaliMaliCSFINTERRUPTSTARTFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \$MaliMaliCSFINTERRUPTSTARTFtraceEvent\DC2\ESC\n\
      \\tkctx_tgid\CAN\SOH \SOH(\ENQR\bkctxTgid\DC2\ETB\n\
      \\akctx_id\CAN\STX \SOH(\rR\ACKkctxId\DC2\EM\n\
      \\binfo_val\CAN\ETX \SOH(\EOTR\ainfoVal"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        kctxTgid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "kctx_tgid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'kctxTgid")) ::
              Data.ProtoLens.FieldDescriptor MaliMaliCSFINTERRUPTSTARTFtraceEvent
        kctxId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "kctx_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'kctxId")) ::
              Data.ProtoLens.FieldDescriptor MaliMaliCSFINTERRUPTSTARTFtraceEvent
        infoVal__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "info_val"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'infoVal")) ::
              Data.ProtoLens.FieldDescriptor MaliMaliCSFINTERRUPTSTARTFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, kctxTgid__field_descriptor),
           (Data.ProtoLens.Tag 2, kctxId__field_descriptor),
           (Data.ProtoLens.Tag 3, infoVal__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MaliMaliCSFINTERRUPTSTARTFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__
                {_MaliMaliCSFINTERRUPTSTARTFtraceEvent'_unknownFields = y__})
  defMessage
    = MaliMaliCSFINTERRUPTSTARTFtraceEvent'_constructor
        {_MaliMaliCSFINTERRUPTSTARTFtraceEvent'kctxTgid = Prelude.Nothing,
         _MaliMaliCSFINTERRUPTSTARTFtraceEvent'kctxId = Prelude.Nothing,
         _MaliMaliCSFINTERRUPTSTARTFtraceEvent'infoVal = Prelude.Nothing,
         _MaliMaliCSFINTERRUPTSTARTFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MaliMaliCSFINTERRUPTSTARTFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MaliMaliCSFINTERRUPTSTARTFtraceEvent
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
                                       "kctx_tgid"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"kctxTgid") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "kctx_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"kctxId") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "info_val"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"infoVal") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "MaliMaliCSFINTERRUPTSTARTFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'kctxTgid") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'kctxId") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'infoVal") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData MaliMaliCSFINTERRUPTSTARTFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MaliMaliCSFINTERRUPTSTARTFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MaliMaliCSFINTERRUPTSTARTFtraceEvent'kctxTgid x__)
                (Control.DeepSeq.deepseq
                   (_MaliMaliCSFINTERRUPTSTARTFtraceEvent'kctxId x__)
                   (Control.DeepSeq.deepseq
                      (_MaliMaliCSFINTERRUPTSTARTFtraceEvent'infoVal x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.id' @:: Lens' MaliMaliKCPUCQSSETFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.maybe'id' @:: Lens' MaliMaliKCPUCQSSETFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.infoVal1' @:: Lens' MaliMaliKCPUCQSSETFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.maybe'infoVal1' @:: Lens' MaliMaliKCPUCQSSETFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.infoVal2' @:: Lens' MaliMaliKCPUCQSSETFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.maybe'infoVal2' @:: Lens' MaliMaliKCPUCQSSETFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.kctxId' @:: Lens' MaliMaliKCPUCQSSETFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.maybe'kctxId' @:: Lens' MaliMaliKCPUCQSSETFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.kctxTgid' @:: Lens' MaliMaliKCPUCQSSETFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.maybe'kctxTgid' @:: Lens' MaliMaliKCPUCQSSETFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data MaliMaliKCPUCQSSETFtraceEvent
  = MaliMaliKCPUCQSSETFtraceEvent'_constructor {_MaliMaliKCPUCQSSETFtraceEvent'id :: !(Prelude.Maybe Data.Word.Word32),
                                                _MaliMaliKCPUCQSSETFtraceEvent'infoVal1 :: !(Prelude.Maybe Data.Word.Word64),
                                                _MaliMaliKCPUCQSSETFtraceEvent'infoVal2 :: !(Prelude.Maybe Data.Word.Word64),
                                                _MaliMaliKCPUCQSSETFtraceEvent'kctxId :: !(Prelude.Maybe Data.Word.Word32),
                                                _MaliMaliKCPUCQSSETFtraceEvent'kctxTgid :: !(Prelude.Maybe Data.Int.Int32),
                                                _MaliMaliKCPUCQSSETFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MaliMaliKCPUCQSSETFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MaliMaliKCPUCQSSETFtraceEvent "id" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUCQSSETFtraceEvent'id
           (\ x__ y__ -> x__ {_MaliMaliKCPUCQSSETFtraceEvent'id = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MaliMaliKCPUCQSSETFtraceEvent "maybe'id" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUCQSSETFtraceEvent'id
           (\ x__ y__ -> x__ {_MaliMaliKCPUCQSSETFtraceEvent'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MaliMaliKCPUCQSSETFtraceEvent "infoVal1" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUCQSSETFtraceEvent'infoVal1
           (\ x__ y__ -> x__ {_MaliMaliKCPUCQSSETFtraceEvent'infoVal1 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MaliMaliKCPUCQSSETFtraceEvent "maybe'infoVal1" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUCQSSETFtraceEvent'infoVal1
           (\ x__ y__ -> x__ {_MaliMaliKCPUCQSSETFtraceEvent'infoVal1 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MaliMaliKCPUCQSSETFtraceEvent "infoVal2" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUCQSSETFtraceEvent'infoVal2
           (\ x__ y__ -> x__ {_MaliMaliKCPUCQSSETFtraceEvent'infoVal2 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MaliMaliKCPUCQSSETFtraceEvent "maybe'infoVal2" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUCQSSETFtraceEvent'infoVal2
           (\ x__ y__ -> x__ {_MaliMaliKCPUCQSSETFtraceEvent'infoVal2 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MaliMaliKCPUCQSSETFtraceEvent "kctxId" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUCQSSETFtraceEvent'kctxId
           (\ x__ y__ -> x__ {_MaliMaliKCPUCQSSETFtraceEvent'kctxId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MaliMaliKCPUCQSSETFtraceEvent "maybe'kctxId" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUCQSSETFtraceEvent'kctxId
           (\ x__ y__ -> x__ {_MaliMaliKCPUCQSSETFtraceEvent'kctxId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MaliMaliKCPUCQSSETFtraceEvent "kctxTgid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUCQSSETFtraceEvent'kctxTgid
           (\ x__ y__ -> x__ {_MaliMaliKCPUCQSSETFtraceEvent'kctxTgid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MaliMaliKCPUCQSSETFtraceEvent "maybe'kctxTgid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUCQSSETFtraceEvent'kctxTgid
           (\ x__ y__ -> x__ {_MaliMaliKCPUCQSSETFtraceEvent'kctxTgid = y__}))
        Prelude.id
instance Data.ProtoLens.Message MaliMaliKCPUCQSSETFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.MaliMaliKCPUCQSSETFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\GSMaliMaliKCPUCQSSETFtraceEvent\DC2\SO\n\
      \\STXid\CAN\SOH \SOH(\rR\STXid\DC2\ESC\n\
      \\tinfo_val1\CAN\STX \SOH(\EOTR\binfoVal1\DC2\ESC\n\
      \\tinfo_val2\CAN\ETX \SOH(\EOTR\binfoVal2\DC2\ETB\n\
      \\akctx_id\CAN\EOT \SOH(\rR\ACKkctxId\DC2\ESC\n\
      \\tkctx_tgid\CAN\ENQ \SOH(\ENQR\bkctxTgid"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'id")) ::
              Data.ProtoLens.FieldDescriptor MaliMaliKCPUCQSSETFtraceEvent
        infoVal1__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "info_val1"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'infoVal1")) ::
              Data.ProtoLens.FieldDescriptor MaliMaliKCPUCQSSETFtraceEvent
        infoVal2__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "info_val2"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'infoVal2")) ::
              Data.ProtoLens.FieldDescriptor MaliMaliKCPUCQSSETFtraceEvent
        kctxId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "kctx_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'kctxId")) ::
              Data.ProtoLens.FieldDescriptor MaliMaliKCPUCQSSETFtraceEvent
        kctxTgid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "kctx_tgid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'kctxTgid")) ::
              Data.ProtoLens.FieldDescriptor MaliMaliKCPUCQSSETFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, id__field_descriptor),
           (Data.ProtoLens.Tag 2, infoVal1__field_descriptor),
           (Data.ProtoLens.Tag 3, infoVal2__field_descriptor),
           (Data.ProtoLens.Tag 4, kctxId__field_descriptor),
           (Data.ProtoLens.Tag 5, kctxTgid__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MaliMaliKCPUCQSSETFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_MaliMaliKCPUCQSSETFtraceEvent'_unknownFields = y__})
  defMessage
    = MaliMaliKCPUCQSSETFtraceEvent'_constructor
        {_MaliMaliKCPUCQSSETFtraceEvent'id = Prelude.Nothing,
         _MaliMaliKCPUCQSSETFtraceEvent'infoVal1 = Prelude.Nothing,
         _MaliMaliKCPUCQSSETFtraceEvent'infoVal2 = Prelude.Nothing,
         _MaliMaliKCPUCQSSETFtraceEvent'kctxId = Prelude.Nothing,
         _MaliMaliKCPUCQSSETFtraceEvent'kctxTgid = Prelude.Nothing,
         _MaliMaliKCPUCQSSETFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MaliMaliKCPUCQSSETFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MaliMaliKCPUCQSSETFtraceEvent
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
                                       "id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "info_val1"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"infoVal1") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "info_val2"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"infoVal2") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "kctx_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"kctxId") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "kctx_tgid"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"kctxTgid") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MaliMaliKCPUCQSSETFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'id") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'infoVal1") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'infoVal2") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'kctxId") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'kctxTgid") _x
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
instance Control.DeepSeq.NFData MaliMaliKCPUCQSSETFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MaliMaliKCPUCQSSETFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MaliMaliKCPUCQSSETFtraceEvent'id x__)
                (Control.DeepSeq.deepseq
                   (_MaliMaliKCPUCQSSETFtraceEvent'infoVal1 x__)
                   (Control.DeepSeq.deepseq
                      (_MaliMaliKCPUCQSSETFtraceEvent'infoVal2 x__)
                      (Control.DeepSeq.deepseq
                         (_MaliMaliKCPUCQSSETFtraceEvent'kctxId x__)
                         (Control.DeepSeq.deepseq
                            (_MaliMaliKCPUCQSSETFtraceEvent'kctxTgid x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.id' @:: Lens' MaliMaliKCPUCQSWAITENDFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.maybe'id' @:: Lens' MaliMaliKCPUCQSWAITENDFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.infoVal1' @:: Lens' MaliMaliKCPUCQSWAITENDFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.maybe'infoVal1' @:: Lens' MaliMaliKCPUCQSWAITENDFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.infoVal2' @:: Lens' MaliMaliKCPUCQSWAITENDFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.maybe'infoVal2' @:: Lens' MaliMaliKCPUCQSWAITENDFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.kctxId' @:: Lens' MaliMaliKCPUCQSWAITENDFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.maybe'kctxId' @:: Lens' MaliMaliKCPUCQSWAITENDFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.kctxTgid' @:: Lens' MaliMaliKCPUCQSWAITENDFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.maybe'kctxTgid' @:: Lens' MaliMaliKCPUCQSWAITENDFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data MaliMaliKCPUCQSWAITENDFtraceEvent
  = MaliMaliKCPUCQSWAITENDFtraceEvent'_constructor {_MaliMaliKCPUCQSWAITENDFtraceEvent'id :: !(Prelude.Maybe Data.Word.Word32),
                                                    _MaliMaliKCPUCQSWAITENDFtraceEvent'infoVal1 :: !(Prelude.Maybe Data.Word.Word64),
                                                    _MaliMaliKCPUCQSWAITENDFtraceEvent'infoVal2 :: !(Prelude.Maybe Data.Word.Word64),
                                                    _MaliMaliKCPUCQSWAITENDFtraceEvent'kctxId :: !(Prelude.Maybe Data.Word.Word32),
                                                    _MaliMaliKCPUCQSWAITENDFtraceEvent'kctxTgid :: !(Prelude.Maybe Data.Int.Int32),
                                                    _MaliMaliKCPUCQSWAITENDFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MaliMaliKCPUCQSWAITENDFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MaliMaliKCPUCQSWAITENDFtraceEvent "id" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUCQSWAITENDFtraceEvent'id
           (\ x__ y__ -> x__ {_MaliMaliKCPUCQSWAITENDFtraceEvent'id = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MaliMaliKCPUCQSWAITENDFtraceEvent "maybe'id" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUCQSWAITENDFtraceEvent'id
           (\ x__ y__ -> x__ {_MaliMaliKCPUCQSWAITENDFtraceEvent'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MaliMaliKCPUCQSWAITENDFtraceEvent "infoVal1" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUCQSWAITENDFtraceEvent'infoVal1
           (\ x__ y__
              -> x__ {_MaliMaliKCPUCQSWAITENDFtraceEvent'infoVal1 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MaliMaliKCPUCQSWAITENDFtraceEvent "maybe'infoVal1" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUCQSWAITENDFtraceEvent'infoVal1
           (\ x__ y__
              -> x__ {_MaliMaliKCPUCQSWAITENDFtraceEvent'infoVal1 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MaliMaliKCPUCQSWAITENDFtraceEvent "infoVal2" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUCQSWAITENDFtraceEvent'infoVal2
           (\ x__ y__
              -> x__ {_MaliMaliKCPUCQSWAITENDFtraceEvent'infoVal2 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MaliMaliKCPUCQSWAITENDFtraceEvent "maybe'infoVal2" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUCQSWAITENDFtraceEvent'infoVal2
           (\ x__ y__
              -> x__ {_MaliMaliKCPUCQSWAITENDFtraceEvent'infoVal2 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MaliMaliKCPUCQSWAITENDFtraceEvent "kctxId" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUCQSWAITENDFtraceEvent'kctxId
           (\ x__ y__
              -> x__ {_MaliMaliKCPUCQSWAITENDFtraceEvent'kctxId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MaliMaliKCPUCQSWAITENDFtraceEvent "maybe'kctxId" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUCQSWAITENDFtraceEvent'kctxId
           (\ x__ y__
              -> x__ {_MaliMaliKCPUCQSWAITENDFtraceEvent'kctxId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MaliMaliKCPUCQSWAITENDFtraceEvent "kctxTgid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUCQSWAITENDFtraceEvent'kctxTgid
           (\ x__ y__
              -> x__ {_MaliMaliKCPUCQSWAITENDFtraceEvent'kctxTgid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MaliMaliKCPUCQSWAITENDFtraceEvent "maybe'kctxTgid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUCQSWAITENDFtraceEvent'kctxTgid
           (\ x__ y__
              -> x__ {_MaliMaliKCPUCQSWAITENDFtraceEvent'kctxTgid = y__}))
        Prelude.id
instance Data.ProtoLens.Message MaliMaliKCPUCQSWAITENDFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.MaliMaliKCPUCQSWAITENDFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \!MaliMaliKCPUCQSWAITENDFtraceEvent\DC2\SO\n\
      \\STXid\CAN\SOH \SOH(\rR\STXid\DC2\ESC\n\
      \\tinfo_val1\CAN\STX \SOH(\EOTR\binfoVal1\DC2\ESC\n\
      \\tinfo_val2\CAN\ETX \SOH(\EOTR\binfoVal2\DC2\ETB\n\
      \\akctx_id\CAN\EOT \SOH(\rR\ACKkctxId\DC2\ESC\n\
      \\tkctx_tgid\CAN\ENQ \SOH(\ENQR\bkctxTgid"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'id")) ::
              Data.ProtoLens.FieldDescriptor MaliMaliKCPUCQSWAITENDFtraceEvent
        infoVal1__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "info_val1"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'infoVal1")) ::
              Data.ProtoLens.FieldDescriptor MaliMaliKCPUCQSWAITENDFtraceEvent
        infoVal2__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "info_val2"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'infoVal2")) ::
              Data.ProtoLens.FieldDescriptor MaliMaliKCPUCQSWAITENDFtraceEvent
        kctxId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "kctx_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'kctxId")) ::
              Data.ProtoLens.FieldDescriptor MaliMaliKCPUCQSWAITENDFtraceEvent
        kctxTgid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "kctx_tgid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'kctxTgid")) ::
              Data.ProtoLens.FieldDescriptor MaliMaliKCPUCQSWAITENDFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, id__field_descriptor),
           (Data.ProtoLens.Tag 2, infoVal1__field_descriptor),
           (Data.ProtoLens.Tag 3, infoVal2__field_descriptor),
           (Data.ProtoLens.Tag 4, kctxId__field_descriptor),
           (Data.ProtoLens.Tag 5, kctxTgid__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MaliMaliKCPUCQSWAITENDFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_MaliMaliKCPUCQSWAITENDFtraceEvent'_unknownFields = y__})
  defMessage
    = MaliMaliKCPUCQSWAITENDFtraceEvent'_constructor
        {_MaliMaliKCPUCQSWAITENDFtraceEvent'id = Prelude.Nothing,
         _MaliMaliKCPUCQSWAITENDFtraceEvent'infoVal1 = Prelude.Nothing,
         _MaliMaliKCPUCQSWAITENDFtraceEvent'infoVal2 = Prelude.Nothing,
         _MaliMaliKCPUCQSWAITENDFtraceEvent'kctxId = Prelude.Nothing,
         _MaliMaliKCPUCQSWAITENDFtraceEvent'kctxTgid = Prelude.Nothing,
         _MaliMaliKCPUCQSWAITENDFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MaliMaliKCPUCQSWAITENDFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MaliMaliKCPUCQSWAITENDFtraceEvent
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
                                       "id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "info_val1"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"infoVal1") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "info_val2"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"infoVal2") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "kctx_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"kctxId") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "kctx_tgid"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"kctxTgid") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "MaliMaliKCPUCQSWAITENDFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'id") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'infoVal1") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'infoVal2") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'kctxId") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'kctxTgid") _x
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
instance Control.DeepSeq.NFData MaliMaliKCPUCQSWAITENDFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MaliMaliKCPUCQSWAITENDFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MaliMaliKCPUCQSWAITENDFtraceEvent'id x__)
                (Control.DeepSeq.deepseq
                   (_MaliMaliKCPUCQSWAITENDFtraceEvent'infoVal1 x__)
                   (Control.DeepSeq.deepseq
                      (_MaliMaliKCPUCQSWAITENDFtraceEvent'infoVal2 x__)
                      (Control.DeepSeq.deepseq
                         (_MaliMaliKCPUCQSWAITENDFtraceEvent'kctxId x__)
                         (Control.DeepSeq.deepseq
                            (_MaliMaliKCPUCQSWAITENDFtraceEvent'kctxTgid x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.id' @:: Lens' MaliMaliKCPUCQSWAITSTARTFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.maybe'id' @:: Lens' MaliMaliKCPUCQSWAITSTARTFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.infoVal1' @:: Lens' MaliMaliKCPUCQSWAITSTARTFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.maybe'infoVal1' @:: Lens' MaliMaliKCPUCQSWAITSTARTFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.infoVal2' @:: Lens' MaliMaliKCPUCQSWAITSTARTFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.maybe'infoVal2' @:: Lens' MaliMaliKCPUCQSWAITSTARTFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.kctxId' @:: Lens' MaliMaliKCPUCQSWAITSTARTFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.maybe'kctxId' @:: Lens' MaliMaliKCPUCQSWAITSTARTFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.kctxTgid' @:: Lens' MaliMaliKCPUCQSWAITSTARTFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.maybe'kctxTgid' @:: Lens' MaliMaliKCPUCQSWAITSTARTFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data MaliMaliKCPUCQSWAITSTARTFtraceEvent
  = MaliMaliKCPUCQSWAITSTARTFtraceEvent'_constructor {_MaliMaliKCPUCQSWAITSTARTFtraceEvent'id :: !(Prelude.Maybe Data.Word.Word32),
                                                      _MaliMaliKCPUCQSWAITSTARTFtraceEvent'infoVal1 :: !(Prelude.Maybe Data.Word.Word64),
                                                      _MaliMaliKCPUCQSWAITSTARTFtraceEvent'infoVal2 :: !(Prelude.Maybe Data.Word.Word64),
                                                      _MaliMaliKCPUCQSWAITSTARTFtraceEvent'kctxId :: !(Prelude.Maybe Data.Word.Word32),
                                                      _MaliMaliKCPUCQSWAITSTARTFtraceEvent'kctxTgid :: !(Prelude.Maybe Data.Int.Int32),
                                                      _MaliMaliKCPUCQSWAITSTARTFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MaliMaliKCPUCQSWAITSTARTFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MaliMaliKCPUCQSWAITSTARTFtraceEvent "id" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUCQSWAITSTARTFtraceEvent'id
           (\ x__ y__ -> x__ {_MaliMaliKCPUCQSWAITSTARTFtraceEvent'id = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MaliMaliKCPUCQSWAITSTARTFtraceEvent "maybe'id" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUCQSWAITSTARTFtraceEvent'id
           (\ x__ y__ -> x__ {_MaliMaliKCPUCQSWAITSTARTFtraceEvent'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MaliMaliKCPUCQSWAITSTARTFtraceEvent "infoVal1" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUCQSWAITSTARTFtraceEvent'infoVal1
           (\ x__ y__
              -> x__ {_MaliMaliKCPUCQSWAITSTARTFtraceEvent'infoVal1 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MaliMaliKCPUCQSWAITSTARTFtraceEvent "maybe'infoVal1" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUCQSWAITSTARTFtraceEvent'infoVal1
           (\ x__ y__
              -> x__ {_MaliMaliKCPUCQSWAITSTARTFtraceEvent'infoVal1 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MaliMaliKCPUCQSWAITSTARTFtraceEvent "infoVal2" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUCQSWAITSTARTFtraceEvent'infoVal2
           (\ x__ y__
              -> x__ {_MaliMaliKCPUCQSWAITSTARTFtraceEvent'infoVal2 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MaliMaliKCPUCQSWAITSTARTFtraceEvent "maybe'infoVal2" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUCQSWAITSTARTFtraceEvent'infoVal2
           (\ x__ y__
              -> x__ {_MaliMaliKCPUCQSWAITSTARTFtraceEvent'infoVal2 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MaliMaliKCPUCQSWAITSTARTFtraceEvent "kctxId" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUCQSWAITSTARTFtraceEvent'kctxId
           (\ x__ y__
              -> x__ {_MaliMaliKCPUCQSWAITSTARTFtraceEvent'kctxId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MaliMaliKCPUCQSWAITSTARTFtraceEvent "maybe'kctxId" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUCQSWAITSTARTFtraceEvent'kctxId
           (\ x__ y__
              -> x__ {_MaliMaliKCPUCQSWAITSTARTFtraceEvent'kctxId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MaliMaliKCPUCQSWAITSTARTFtraceEvent "kctxTgid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUCQSWAITSTARTFtraceEvent'kctxTgid
           (\ x__ y__
              -> x__ {_MaliMaliKCPUCQSWAITSTARTFtraceEvent'kctxTgid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MaliMaliKCPUCQSWAITSTARTFtraceEvent "maybe'kctxTgid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUCQSWAITSTARTFtraceEvent'kctxTgid
           (\ x__ y__
              -> x__ {_MaliMaliKCPUCQSWAITSTARTFtraceEvent'kctxTgid = y__}))
        Prelude.id
instance Data.ProtoLens.Message MaliMaliKCPUCQSWAITSTARTFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.MaliMaliKCPUCQSWAITSTARTFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \#MaliMaliKCPUCQSWAITSTARTFtraceEvent\DC2\SO\n\
      \\STXid\CAN\SOH \SOH(\rR\STXid\DC2\ESC\n\
      \\tinfo_val1\CAN\STX \SOH(\EOTR\binfoVal1\DC2\ESC\n\
      \\tinfo_val2\CAN\ETX \SOH(\EOTR\binfoVal2\DC2\ETB\n\
      \\akctx_id\CAN\EOT \SOH(\rR\ACKkctxId\DC2\ESC\n\
      \\tkctx_tgid\CAN\ENQ \SOH(\ENQR\bkctxTgid"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'id")) ::
              Data.ProtoLens.FieldDescriptor MaliMaliKCPUCQSWAITSTARTFtraceEvent
        infoVal1__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "info_val1"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'infoVal1")) ::
              Data.ProtoLens.FieldDescriptor MaliMaliKCPUCQSWAITSTARTFtraceEvent
        infoVal2__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "info_val2"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'infoVal2")) ::
              Data.ProtoLens.FieldDescriptor MaliMaliKCPUCQSWAITSTARTFtraceEvent
        kctxId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "kctx_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'kctxId")) ::
              Data.ProtoLens.FieldDescriptor MaliMaliKCPUCQSWAITSTARTFtraceEvent
        kctxTgid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "kctx_tgid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'kctxTgid")) ::
              Data.ProtoLens.FieldDescriptor MaliMaliKCPUCQSWAITSTARTFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, id__field_descriptor),
           (Data.ProtoLens.Tag 2, infoVal1__field_descriptor),
           (Data.ProtoLens.Tag 3, infoVal2__field_descriptor),
           (Data.ProtoLens.Tag 4, kctxId__field_descriptor),
           (Data.ProtoLens.Tag 5, kctxTgid__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MaliMaliKCPUCQSWAITSTARTFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_MaliMaliKCPUCQSWAITSTARTFtraceEvent'_unknownFields = y__})
  defMessage
    = MaliMaliKCPUCQSWAITSTARTFtraceEvent'_constructor
        {_MaliMaliKCPUCQSWAITSTARTFtraceEvent'id = Prelude.Nothing,
         _MaliMaliKCPUCQSWAITSTARTFtraceEvent'infoVal1 = Prelude.Nothing,
         _MaliMaliKCPUCQSWAITSTARTFtraceEvent'infoVal2 = Prelude.Nothing,
         _MaliMaliKCPUCQSWAITSTARTFtraceEvent'kctxId = Prelude.Nothing,
         _MaliMaliKCPUCQSWAITSTARTFtraceEvent'kctxTgid = Prelude.Nothing,
         _MaliMaliKCPUCQSWAITSTARTFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MaliMaliKCPUCQSWAITSTARTFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MaliMaliKCPUCQSWAITSTARTFtraceEvent
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
                                       "id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "info_val1"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"infoVal1") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "info_val2"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"infoVal2") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "kctx_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"kctxId") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "kctx_tgid"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"kctxTgid") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "MaliMaliKCPUCQSWAITSTARTFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'id") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'infoVal1") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'infoVal2") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'kctxId") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'kctxTgid") _x
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
instance Control.DeepSeq.NFData MaliMaliKCPUCQSWAITSTARTFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MaliMaliKCPUCQSWAITSTARTFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MaliMaliKCPUCQSWAITSTARTFtraceEvent'id x__)
                (Control.DeepSeq.deepseq
                   (_MaliMaliKCPUCQSWAITSTARTFtraceEvent'infoVal1 x__)
                   (Control.DeepSeq.deepseq
                      (_MaliMaliKCPUCQSWAITSTARTFtraceEvent'infoVal2 x__)
                      (Control.DeepSeq.deepseq
                         (_MaliMaliKCPUCQSWAITSTARTFtraceEvent'kctxId x__)
                         (Control.DeepSeq.deepseq
                            (_MaliMaliKCPUCQSWAITSTARTFtraceEvent'kctxTgid x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.infoVal1' @:: Lens' MaliMaliKCPUFENCESIGNALFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.maybe'infoVal1' @:: Lens' MaliMaliKCPUFENCESIGNALFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.infoVal2' @:: Lens' MaliMaliKCPUFENCESIGNALFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.maybe'infoVal2' @:: Lens' MaliMaliKCPUFENCESIGNALFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.kctxTgid' @:: Lens' MaliMaliKCPUFENCESIGNALFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.maybe'kctxTgid' @:: Lens' MaliMaliKCPUFENCESIGNALFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.kctxId' @:: Lens' MaliMaliKCPUFENCESIGNALFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.maybe'kctxId' @:: Lens' MaliMaliKCPUFENCESIGNALFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.id' @:: Lens' MaliMaliKCPUFENCESIGNALFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.maybe'id' @:: Lens' MaliMaliKCPUFENCESIGNALFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data MaliMaliKCPUFENCESIGNALFtraceEvent
  = MaliMaliKCPUFENCESIGNALFtraceEvent'_constructor {_MaliMaliKCPUFENCESIGNALFtraceEvent'infoVal1 :: !(Prelude.Maybe Data.Word.Word64),
                                                     _MaliMaliKCPUFENCESIGNALFtraceEvent'infoVal2 :: !(Prelude.Maybe Data.Word.Word64),
                                                     _MaliMaliKCPUFENCESIGNALFtraceEvent'kctxTgid :: !(Prelude.Maybe Data.Int.Int32),
                                                     _MaliMaliKCPUFENCESIGNALFtraceEvent'kctxId :: !(Prelude.Maybe Data.Word.Word32),
                                                     _MaliMaliKCPUFENCESIGNALFtraceEvent'id :: !(Prelude.Maybe Data.Word.Word32),
                                                     _MaliMaliKCPUFENCESIGNALFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MaliMaliKCPUFENCESIGNALFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MaliMaliKCPUFENCESIGNALFtraceEvent "infoVal1" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUFENCESIGNALFtraceEvent'infoVal1
           (\ x__ y__
              -> x__ {_MaliMaliKCPUFENCESIGNALFtraceEvent'infoVal1 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MaliMaliKCPUFENCESIGNALFtraceEvent "maybe'infoVal1" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUFENCESIGNALFtraceEvent'infoVal1
           (\ x__ y__
              -> x__ {_MaliMaliKCPUFENCESIGNALFtraceEvent'infoVal1 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MaliMaliKCPUFENCESIGNALFtraceEvent "infoVal2" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUFENCESIGNALFtraceEvent'infoVal2
           (\ x__ y__
              -> x__ {_MaliMaliKCPUFENCESIGNALFtraceEvent'infoVal2 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MaliMaliKCPUFENCESIGNALFtraceEvent "maybe'infoVal2" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUFENCESIGNALFtraceEvent'infoVal2
           (\ x__ y__
              -> x__ {_MaliMaliKCPUFENCESIGNALFtraceEvent'infoVal2 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MaliMaliKCPUFENCESIGNALFtraceEvent "kctxTgid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUFENCESIGNALFtraceEvent'kctxTgid
           (\ x__ y__
              -> x__ {_MaliMaliKCPUFENCESIGNALFtraceEvent'kctxTgid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MaliMaliKCPUFENCESIGNALFtraceEvent "maybe'kctxTgid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUFENCESIGNALFtraceEvent'kctxTgid
           (\ x__ y__
              -> x__ {_MaliMaliKCPUFENCESIGNALFtraceEvent'kctxTgid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MaliMaliKCPUFENCESIGNALFtraceEvent "kctxId" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUFENCESIGNALFtraceEvent'kctxId
           (\ x__ y__
              -> x__ {_MaliMaliKCPUFENCESIGNALFtraceEvent'kctxId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MaliMaliKCPUFENCESIGNALFtraceEvent "maybe'kctxId" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUFENCESIGNALFtraceEvent'kctxId
           (\ x__ y__
              -> x__ {_MaliMaliKCPUFENCESIGNALFtraceEvent'kctxId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MaliMaliKCPUFENCESIGNALFtraceEvent "id" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUFENCESIGNALFtraceEvent'id
           (\ x__ y__ -> x__ {_MaliMaliKCPUFENCESIGNALFtraceEvent'id = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MaliMaliKCPUFENCESIGNALFtraceEvent "maybe'id" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUFENCESIGNALFtraceEvent'id
           (\ x__ y__ -> x__ {_MaliMaliKCPUFENCESIGNALFtraceEvent'id = y__}))
        Prelude.id
instance Data.ProtoLens.Message MaliMaliKCPUFENCESIGNALFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.MaliMaliKCPUFENCESIGNALFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\"MaliMaliKCPUFENCESIGNALFtraceEvent\DC2\ESC\n\
      \\tinfo_val1\CAN\SOH \SOH(\EOTR\binfoVal1\DC2\ESC\n\
      \\tinfo_val2\CAN\STX \SOH(\EOTR\binfoVal2\DC2\ESC\n\
      \\tkctx_tgid\CAN\ETX \SOH(\ENQR\bkctxTgid\DC2\ETB\n\
      \\akctx_id\CAN\EOT \SOH(\rR\ACKkctxId\DC2\SO\n\
      \\STXid\CAN\ENQ \SOH(\rR\STXid"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        infoVal1__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "info_val1"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'infoVal1")) ::
              Data.ProtoLens.FieldDescriptor MaliMaliKCPUFENCESIGNALFtraceEvent
        infoVal2__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "info_val2"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'infoVal2")) ::
              Data.ProtoLens.FieldDescriptor MaliMaliKCPUFENCESIGNALFtraceEvent
        kctxTgid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "kctx_tgid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'kctxTgid")) ::
              Data.ProtoLens.FieldDescriptor MaliMaliKCPUFENCESIGNALFtraceEvent
        kctxId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "kctx_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'kctxId")) ::
              Data.ProtoLens.FieldDescriptor MaliMaliKCPUFENCESIGNALFtraceEvent
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'id")) ::
              Data.ProtoLens.FieldDescriptor MaliMaliKCPUFENCESIGNALFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, infoVal1__field_descriptor),
           (Data.ProtoLens.Tag 2, infoVal2__field_descriptor),
           (Data.ProtoLens.Tag 3, kctxTgid__field_descriptor),
           (Data.ProtoLens.Tag 4, kctxId__field_descriptor),
           (Data.ProtoLens.Tag 5, id__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MaliMaliKCPUFENCESIGNALFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_MaliMaliKCPUFENCESIGNALFtraceEvent'_unknownFields = y__})
  defMessage
    = MaliMaliKCPUFENCESIGNALFtraceEvent'_constructor
        {_MaliMaliKCPUFENCESIGNALFtraceEvent'infoVal1 = Prelude.Nothing,
         _MaliMaliKCPUFENCESIGNALFtraceEvent'infoVal2 = Prelude.Nothing,
         _MaliMaliKCPUFENCESIGNALFtraceEvent'kctxTgid = Prelude.Nothing,
         _MaliMaliKCPUFENCESIGNALFtraceEvent'kctxId = Prelude.Nothing,
         _MaliMaliKCPUFENCESIGNALFtraceEvent'id = Prelude.Nothing,
         _MaliMaliKCPUFENCESIGNALFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MaliMaliKCPUFENCESIGNALFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MaliMaliKCPUFENCESIGNALFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "info_val1"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"infoVal1") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "info_val2"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"infoVal2") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "kctx_tgid"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"kctxTgid") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "kctx_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"kctxId") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "MaliMaliKCPUFENCESIGNALFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'infoVal1") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'infoVal2") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'kctxTgid") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'kctxId") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'id") _x
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
instance Control.DeepSeq.NFData MaliMaliKCPUFENCESIGNALFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MaliMaliKCPUFENCESIGNALFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MaliMaliKCPUFENCESIGNALFtraceEvent'infoVal1 x__)
                (Control.DeepSeq.deepseq
                   (_MaliMaliKCPUFENCESIGNALFtraceEvent'infoVal2 x__)
                   (Control.DeepSeq.deepseq
                      (_MaliMaliKCPUFENCESIGNALFtraceEvent'kctxTgid x__)
                      (Control.DeepSeq.deepseq
                         (_MaliMaliKCPUFENCESIGNALFtraceEvent'kctxId x__)
                         (Control.DeepSeq.deepseq
                            (_MaliMaliKCPUFENCESIGNALFtraceEvent'id x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.infoVal1' @:: Lens' MaliMaliKCPUFENCEWAITENDFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.maybe'infoVal1' @:: Lens' MaliMaliKCPUFENCEWAITENDFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.infoVal2' @:: Lens' MaliMaliKCPUFENCEWAITENDFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.maybe'infoVal2' @:: Lens' MaliMaliKCPUFENCEWAITENDFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.kctxTgid' @:: Lens' MaliMaliKCPUFENCEWAITENDFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.maybe'kctxTgid' @:: Lens' MaliMaliKCPUFENCEWAITENDFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.kctxId' @:: Lens' MaliMaliKCPUFENCEWAITENDFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.maybe'kctxId' @:: Lens' MaliMaliKCPUFENCEWAITENDFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.id' @:: Lens' MaliMaliKCPUFENCEWAITENDFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.maybe'id' @:: Lens' MaliMaliKCPUFENCEWAITENDFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data MaliMaliKCPUFENCEWAITENDFtraceEvent
  = MaliMaliKCPUFENCEWAITENDFtraceEvent'_constructor {_MaliMaliKCPUFENCEWAITENDFtraceEvent'infoVal1 :: !(Prelude.Maybe Data.Word.Word64),
                                                      _MaliMaliKCPUFENCEWAITENDFtraceEvent'infoVal2 :: !(Prelude.Maybe Data.Word.Word64),
                                                      _MaliMaliKCPUFENCEWAITENDFtraceEvent'kctxTgid :: !(Prelude.Maybe Data.Int.Int32),
                                                      _MaliMaliKCPUFENCEWAITENDFtraceEvent'kctxId :: !(Prelude.Maybe Data.Word.Word32),
                                                      _MaliMaliKCPUFENCEWAITENDFtraceEvent'id :: !(Prelude.Maybe Data.Word.Word32),
                                                      _MaliMaliKCPUFENCEWAITENDFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MaliMaliKCPUFENCEWAITENDFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MaliMaliKCPUFENCEWAITENDFtraceEvent "infoVal1" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUFENCEWAITENDFtraceEvent'infoVal1
           (\ x__ y__
              -> x__ {_MaliMaliKCPUFENCEWAITENDFtraceEvent'infoVal1 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MaliMaliKCPUFENCEWAITENDFtraceEvent "maybe'infoVal1" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUFENCEWAITENDFtraceEvent'infoVal1
           (\ x__ y__
              -> x__ {_MaliMaliKCPUFENCEWAITENDFtraceEvent'infoVal1 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MaliMaliKCPUFENCEWAITENDFtraceEvent "infoVal2" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUFENCEWAITENDFtraceEvent'infoVal2
           (\ x__ y__
              -> x__ {_MaliMaliKCPUFENCEWAITENDFtraceEvent'infoVal2 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MaliMaliKCPUFENCEWAITENDFtraceEvent "maybe'infoVal2" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUFENCEWAITENDFtraceEvent'infoVal2
           (\ x__ y__
              -> x__ {_MaliMaliKCPUFENCEWAITENDFtraceEvent'infoVal2 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MaliMaliKCPUFENCEWAITENDFtraceEvent "kctxTgid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUFENCEWAITENDFtraceEvent'kctxTgid
           (\ x__ y__
              -> x__ {_MaliMaliKCPUFENCEWAITENDFtraceEvent'kctxTgid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MaliMaliKCPUFENCEWAITENDFtraceEvent "maybe'kctxTgid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUFENCEWAITENDFtraceEvent'kctxTgid
           (\ x__ y__
              -> x__ {_MaliMaliKCPUFENCEWAITENDFtraceEvent'kctxTgid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MaliMaliKCPUFENCEWAITENDFtraceEvent "kctxId" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUFENCEWAITENDFtraceEvent'kctxId
           (\ x__ y__
              -> x__ {_MaliMaliKCPUFENCEWAITENDFtraceEvent'kctxId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MaliMaliKCPUFENCEWAITENDFtraceEvent "maybe'kctxId" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUFENCEWAITENDFtraceEvent'kctxId
           (\ x__ y__
              -> x__ {_MaliMaliKCPUFENCEWAITENDFtraceEvent'kctxId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MaliMaliKCPUFENCEWAITENDFtraceEvent "id" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUFENCEWAITENDFtraceEvent'id
           (\ x__ y__ -> x__ {_MaliMaliKCPUFENCEWAITENDFtraceEvent'id = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MaliMaliKCPUFENCEWAITENDFtraceEvent "maybe'id" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUFENCEWAITENDFtraceEvent'id
           (\ x__ y__ -> x__ {_MaliMaliKCPUFENCEWAITENDFtraceEvent'id = y__}))
        Prelude.id
instance Data.ProtoLens.Message MaliMaliKCPUFENCEWAITENDFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.MaliMaliKCPUFENCEWAITENDFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \#MaliMaliKCPUFENCEWAITENDFtraceEvent\DC2\ESC\n\
      \\tinfo_val1\CAN\SOH \SOH(\EOTR\binfoVal1\DC2\ESC\n\
      \\tinfo_val2\CAN\STX \SOH(\EOTR\binfoVal2\DC2\ESC\n\
      \\tkctx_tgid\CAN\ETX \SOH(\ENQR\bkctxTgid\DC2\ETB\n\
      \\akctx_id\CAN\EOT \SOH(\rR\ACKkctxId\DC2\SO\n\
      \\STXid\CAN\ENQ \SOH(\rR\STXid"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        infoVal1__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "info_val1"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'infoVal1")) ::
              Data.ProtoLens.FieldDescriptor MaliMaliKCPUFENCEWAITENDFtraceEvent
        infoVal2__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "info_val2"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'infoVal2")) ::
              Data.ProtoLens.FieldDescriptor MaliMaliKCPUFENCEWAITENDFtraceEvent
        kctxTgid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "kctx_tgid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'kctxTgid")) ::
              Data.ProtoLens.FieldDescriptor MaliMaliKCPUFENCEWAITENDFtraceEvent
        kctxId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "kctx_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'kctxId")) ::
              Data.ProtoLens.FieldDescriptor MaliMaliKCPUFENCEWAITENDFtraceEvent
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'id")) ::
              Data.ProtoLens.FieldDescriptor MaliMaliKCPUFENCEWAITENDFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, infoVal1__field_descriptor),
           (Data.ProtoLens.Tag 2, infoVal2__field_descriptor),
           (Data.ProtoLens.Tag 3, kctxTgid__field_descriptor),
           (Data.ProtoLens.Tag 4, kctxId__field_descriptor),
           (Data.ProtoLens.Tag 5, id__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MaliMaliKCPUFENCEWAITENDFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_MaliMaliKCPUFENCEWAITENDFtraceEvent'_unknownFields = y__})
  defMessage
    = MaliMaliKCPUFENCEWAITENDFtraceEvent'_constructor
        {_MaliMaliKCPUFENCEWAITENDFtraceEvent'infoVal1 = Prelude.Nothing,
         _MaliMaliKCPUFENCEWAITENDFtraceEvent'infoVal2 = Prelude.Nothing,
         _MaliMaliKCPUFENCEWAITENDFtraceEvent'kctxTgid = Prelude.Nothing,
         _MaliMaliKCPUFENCEWAITENDFtraceEvent'kctxId = Prelude.Nothing,
         _MaliMaliKCPUFENCEWAITENDFtraceEvent'id = Prelude.Nothing,
         _MaliMaliKCPUFENCEWAITENDFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MaliMaliKCPUFENCEWAITENDFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MaliMaliKCPUFENCEWAITENDFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "info_val1"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"infoVal1") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "info_val2"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"infoVal2") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "kctx_tgid"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"kctxTgid") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "kctx_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"kctxId") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "MaliMaliKCPUFENCEWAITENDFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'infoVal1") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'infoVal2") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'kctxTgid") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'kctxId") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'id") _x
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
instance Control.DeepSeq.NFData MaliMaliKCPUFENCEWAITENDFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MaliMaliKCPUFENCEWAITENDFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MaliMaliKCPUFENCEWAITENDFtraceEvent'infoVal1 x__)
                (Control.DeepSeq.deepseq
                   (_MaliMaliKCPUFENCEWAITENDFtraceEvent'infoVal2 x__)
                   (Control.DeepSeq.deepseq
                      (_MaliMaliKCPUFENCEWAITENDFtraceEvent'kctxTgid x__)
                      (Control.DeepSeq.deepseq
                         (_MaliMaliKCPUFENCEWAITENDFtraceEvent'kctxId x__)
                         (Control.DeepSeq.deepseq
                            (_MaliMaliKCPUFENCEWAITENDFtraceEvent'id x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.infoVal1' @:: Lens' MaliMaliKCPUFENCEWAITSTARTFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.maybe'infoVal1' @:: Lens' MaliMaliKCPUFENCEWAITSTARTFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.infoVal2' @:: Lens' MaliMaliKCPUFENCEWAITSTARTFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.maybe'infoVal2' @:: Lens' MaliMaliKCPUFENCEWAITSTARTFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.kctxTgid' @:: Lens' MaliMaliKCPUFENCEWAITSTARTFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.maybe'kctxTgid' @:: Lens' MaliMaliKCPUFENCEWAITSTARTFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.kctxId' @:: Lens' MaliMaliKCPUFENCEWAITSTARTFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.maybe'kctxId' @:: Lens' MaliMaliKCPUFENCEWAITSTARTFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.id' @:: Lens' MaliMaliKCPUFENCEWAITSTARTFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.maybe'id' @:: Lens' MaliMaliKCPUFENCEWAITSTARTFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data MaliMaliKCPUFENCEWAITSTARTFtraceEvent
  = MaliMaliKCPUFENCEWAITSTARTFtraceEvent'_constructor {_MaliMaliKCPUFENCEWAITSTARTFtraceEvent'infoVal1 :: !(Prelude.Maybe Data.Word.Word64),
                                                        _MaliMaliKCPUFENCEWAITSTARTFtraceEvent'infoVal2 :: !(Prelude.Maybe Data.Word.Word64),
                                                        _MaliMaliKCPUFENCEWAITSTARTFtraceEvent'kctxTgid :: !(Prelude.Maybe Data.Int.Int32),
                                                        _MaliMaliKCPUFENCEWAITSTARTFtraceEvent'kctxId :: !(Prelude.Maybe Data.Word.Word32),
                                                        _MaliMaliKCPUFENCEWAITSTARTFtraceEvent'id :: !(Prelude.Maybe Data.Word.Word32),
                                                        _MaliMaliKCPUFENCEWAITSTARTFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MaliMaliKCPUFENCEWAITSTARTFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MaliMaliKCPUFENCEWAITSTARTFtraceEvent "infoVal1" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUFENCEWAITSTARTFtraceEvent'infoVal1
           (\ x__ y__
              -> x__ {_MaliMaliKCPUFENCEWAITSTARTFtraceEvent'infoVal1 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MaliMaliKCPUFENCEWAITSTARTFtraceEvent "maybe'infoVal1" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUFENCEWAITSTARTFtraceEvent'infoVal1
           (\ x__ y__
              -> x__ {_MaliMaliKCPUFENCEWAITSTARTFtraceEvent'infoVal1 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MaliMaliKCPUFENCEWAITSTARTFtraceEvent "infoVal2" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUFENCEWAITSTARTFtraceEvent'infoVal2
           (\ x__ y__
              -> x__ {_MaliMaliKCPUFENCEWAITSTARTFtraceEvent'infoVal2 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MaliMaliKCPUFENCEWAITSTARTFtraceEvent "maybe'infoVal2" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUFENCEWAITSTARTFtraceEvent'infoVal2
           (\ x__ y__
              -> x__ {_MaliMaliKCPUFENCEWAITSTARTFtraceEvent'infoVal2 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MaliMaliKCPUFENCEWAITSTARTFtraceEvent "kctxTgid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUFENCEWAITSTARTFtraceEvent'kctxTgid
           (\ x__ y__
              -> x__ {_MaliMaliKCPUFENCEWAITSTARTFtraceEvent'kctxTgid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MaliMaliKCPUFENCEWAITSTARTFtraceEvent "maybe'kctxTgid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUFENCEWAITSTARTFtraceEvent'kctxTgid
           (\ x__ y__
              -> x__ {_MaliMaliKCPUFENCEWAITSTARTFtraceEvent'kctxTgid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MaliMaliKCPUFENCEWAITSTARTFtraceEvent "kctxId" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUFENCEWAITSTARTFtraceEvent'kctxId
           (\ x__ y__
              -> x__ {_MaliMaliKCPUFENCEWAITSTARTFtraceEvent'kctxId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MaliMaliKCPUFENCEWAITSTARTFtraceEvent "maybe'kctxId" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUFENCEWAITSTARTFtraceEvent'kctxId
           (\ x__ y__
              -> x__ {_MaliMaliKCPUFENCEWAITSTARTFtraceEvent'kctxId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MaliMaliKCPUFENCEWAITSTARTFtraceEvent "id" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUFENCEWAITSTARTFtraceEvent'id
           (\ x__ y__
              -> x__ {_MaliMaliKCPUFENCEWAITSTARTFtraceEvent'id = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MaliMaliKCPUFENCEWAITSTARTFtraceEvent "maybe'id" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliMaliKCPUFENCEWAITSTARTFtraceEvent'id
           (\ x__ y__
              -> x__ {_MaliMaliKCPUFENCEWAITSTARTFtraceEvent'id = y__}))
        Prelude.id
instance Data.ProtoLens.Message MaliMaliKCPUFENCEWAITSTARTFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.MaliMaliKCPUFENCEWAITSTARTFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \%MaliMaliKCPUFENCEWAITSTARTFtraceEvent\DC2\ESC\n\
      \\tinfo_val1\CAN\SOH \SOH(\EOTR\binfoVal1\DC2\ESC\n\
      \\tinfo_val2\CAN\STX \SOH(\EOTR\binfoVal2\DC2\ESC\n\
      \\tkctx_tgid\CAN\ETX \SOH(\ENQR\bkctxTgid\DC2\ETB\n\
      \\akctx_id\CAN\EOT \SOH(\rR\ACKkctxId\DC2\SO\n\
      \\STXid\CAN\ENQ \SOH(\rR\STXid"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        infoVal1__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "info_val1"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'infoVal1")) ::
              Data.ProtoLens.FieldDescriptor MaliMaliKCPUFENCEWAITSTARTFtraceEvent
        infoVal2__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "info_val2"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'infoVal2")) ::
              Data.ProtoLens.FieldDescriptor MaliMaliKCPUFENCEWAITSTARTFtraceEvent
        kctxTgid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "kctx_tgid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'kctxTgid")) ::
              Data.ProtoLens.FieldDescriptor MaliMaliKCPUFENCEWAITSTARTFtraceEvent
        kctxId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "kctx_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'kctxId")) ::
              Data.ProtoLens.FieldDescriptor MaliMaliKCPUFENCEWAITSTARTFtraceEvent
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'id")) ::
              Data.ProtoLens.FieldDescriptor MaliMaliKCPUFENCEWAITSTARTFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, infoVal1__field_descriptor),
           (Data.ProtoLens.Tag 2, infoVal2__field_descriptor),
           (Data.ProtoLens.Tag 3, kctxTgid__field_descriptor),
           (Data.ProtoLens.Tag 4, kctxId__field_descriptor),
           (Data.ProtoLens.Tag 5, id__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MaliMaliKCPUFENCEWAITSTARTFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__
                {_MaliMaliKCPUFENCEWAITSTARTFtraceEvent'_unknownFields = y__})
  defMessage
    = MaliMaliKCPUFENCEWAITSTARTFtraceEvent'_constructor
        {_MaliMaliKCPUFENCEWAITSTARTFtraceEvent'infoVal1 = Prelude.Nothing,
         _MaliMaliKCPUFENCEWAITSTARTFtraceEvent'infoVal2 = Prelude.Nothing,
         _MaliMaliKCPUFENCEWAITSTARTFtraceEvent'kctxTgid = Prelude.Nothing,
         _MaliMaliKCPUFENCEWAITSTARTFtraceEvent'kctxId = Prelude.Nothing,
         _MaliMaliKCPUFENCEWAITSTARTFtraceEvent'id = Prelude.Nothing,
         _MaliMaliKCPUFENCEWAITSTARTFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MaliMaliKCPUFENCEWAITSTARTFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MaliMaliKCPUFENCEWAITSTARTFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "info_val1"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"infoVal1") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "info_val2"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"infoVal2") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "kctx_tgid"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"kctxTgid") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "kctx_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"kctxId") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "MaliMaliKCPUFENCEWAITSTARTFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'infoVal1") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'infoVal2") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'kctxTgid") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'kctxId") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'id") _x
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
instance Control.DeepSeq.NFData MaliMaliKCPUFENCEWAITSTARTFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MaliMaliKCPUFENCEWAITSTARTFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MaliMaliKCPUFENCEWAITSTARTFtraceEvent'infoVal1 x__)
                (Control.DeepSeq.deepseq
                   (_MaliMaliKCPUFENCEWAITSTARTFtraceEvent'infoVal2 x__)
                   (Control.DeepSeq.deepseq
                      (_MaliMaliKCPUFENCEWAITSTARTFtraceEvent'kctxTgid x__)
                      (Control.DeepSeq.deepseq
                         (_MaliMaliKCPUFENCEWAITSTARTFtraceEvent'kctxId x__)
                         (Control.DeepSeq.deepseq
                            (_MaliMaliKCPUFENCEWAITSTARTFtraceEvent'id x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.name' @:: Lens' MaliTracingMarkWriteFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.maybe'name' @:: Lens' MaliTracingMarkWriteFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.pid' @:: Lens' MaliTracingMarkWriteFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.maybe'pid' @:: Lens' MaliTracingMarkWriteFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.type'' @:: Lens' MaliTracingMarkWriteFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.maybe'type'' @:: Lens' MaliTracingMarkWriteFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.value' @:: Lens' MaliTracingMarkWriteFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mali_Fields.maybe'value' @:: Lens' MaliTracingMarkWriteFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data MaliTracingMarkWriteFtraceEvent
  = MaliTracingMarkWriteFtraceEvent'_constructor {_MaliTracingMarkWriteFtraceEvent'name :: !(Prelude.Maybe Data.Text.Text),
                                                  _MaliTracingMarkWriteFtraceEvent'pid :: !(Prelude.Maybe Data.Int.Int32),
                                                  _MaliTracingMarkWriteFtraceEvent'type' :: !(Prelude.Maybe Data.Word.Word32),
                                                  _MaliTracingMarkWriteFtraceEvent'value :: !(Prelude.Maybe Data.Int.Int32),
                                                  _MaliTracingMarkWriteFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MaliTracingMarkWriteFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MaliTracingMarkWriteFtraceEvent "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliTracingMarkWriteFtraceEvent'name
           (\ x__ y__ -> x__ {_MaliTracingMarkWriteFtraceEvent'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MaliTracingMarkWriteFtraceEvent "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliTracingMarkWriteFtraceEvent'name
           (\ x__ y__ -> x__ {_MaliTracingMarkWriteFtraceEvent'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MaliTracingMarkWriteFtraceEvent "pid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliTracingMarkWriteFtraceEvent'pid
           (\ x__ y__ -> x__ {_MaliTracingMarkWriteFtraceEvent'pid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MaliTracingMarkWriteFtraceEvent "maybe'pid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliTracingMarkWriteFtraceEvent'pid
           (\ x__ y__ -> x__ {_MaliTracingMarkWriteFtraceEvent'pid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MaliTracingMarkWriteFtraceEvent "type'" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliTracingMarkWriteFtraceEvent'type'
           (\ x__ y__ -> x__ {_MaliTracingMarkWriteFtraceEvent'type' = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MaliTracingMarkWriteFtraceEvent "maybe'type'" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliTracingMarkWriteFtraceEvent'type'
           (\ x__ y__ -> x__ {_MaliTracingMarkWriteFtraceEvent'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MaliTracingMarkWriteFtraceEvent "value" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliTracingMarkWriteFtraceEvent'value
           (\ x__ y__ -> x__ {_MaliTracingMarkWriteFtraceEvent'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MaliTracingMarkWriteFtraceEvent "maybe'value" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MaliTracingMarkWriteFtraceEvent'value
           (\ x__ y__ -> x__ {_MaliTracingMarkWriteFtraceEvent'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message MaliTracingMarkWriteFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.MaliTracingMarkWriteFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\USMaliTracingMarkWriteFtraceEvent\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\DLE\n\
      \\ETXpid\CAN\STX \SOH(\ENQR\ETXpid\DC2\DC2\n\
      \\EOTtype\CAN\ETX \SOH(\rR\EOTtype\DC2\DC4\n\
      \\ENQvalue\CAN\EOT \SOH(\ENQR\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'name")) ::
              Data.ProtoLens.FieldDescriptor MaliTracingMarkWriteFtraceEvent
        pid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pid")) ::
              Data.ProtoLens.FieldDescriptor MaliTracingMarkWriteFtraceEvent
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'type'")) ::
              Data.ProtoLens.FieldDescriptor MaliTracingMarkWriteFtraceEvent
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor MaliTracingMarkWriteFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, pid__field_descriptor),
           (Data.ProtoLens.Tag 3, type'__field_descriptor),
           (Data.ProtoLens.Tag 4, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MaliTracingMarkWriteFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_MaliTracingMarkWriteFtraceEvent'_unknownFields = y__})
  defMessage
    = MaliTracingMarkWriteFtraceEvent'_constructor
        {_MaliTracingMarkWriteFtraceEvent'name = Prelude.Nothing,
         _MaliTracingMarkWriteFtraceEvent'pid = Prelude.Nothing,
         _MaliTracingMarkWriteFtraceEvent'type' = Prelude.Nothing,
         _MaliTracingMarkWriteFtraceEvent'value = Prelude.Nothing,
         _MaliTracingMarkWriteFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MaliTracingMarkWriteFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MaliTracingMarkWriteFtraceEvent
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
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "pid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pid") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "MaliTracingMarkWriteFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'name") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pid") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'type'") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData MaliTracingMarkWriteFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MaliTracingMarkWriteFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MaliTracingMarkWriteFtraceEvent'name x__)
                (Control.DeepSeq.deepseq
                   (_MaliTracingMarkWriteFtraceEvent'pid x__)
                   (Control.DeepSeq.deepseq
                      (_MaliTracingMarkWriteFtraceEvent'type' x__)
                      (Control.DeepSeq.deepseq
                         (_MaliTracingMarkWriteFtraceEvent'value x__) ()))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \'protos/perfetto/trace/ftrace/mali.proto\DC2\SIperfetto.protos\"q\n\
    \\USMaliTracingMarkWriteFtraceEvent\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\DLE\n\
    \\ETXpid\CAN\STX \SOH(\ENQR\ETXpid\DC2\DC2\n\
    \\EOTtype\CAN\ETX \SOH(\rR\EOTtype\DC2\DC4\n\
    \\ENQvalue\CAN\EOT \SOH(\ENQR\ENQvalue\"\159\SOH\n\
    \\GSMaliMaliKCPUCQSSETFtraceEvent\DC2\SO\n\
    \\STXid\CAN\SOH \SOH(\rR\STXid\DC2\ESC\n\
    \\tinfo_val1\CAN\STX \SOH(\EOTR\binfoVal1\DC2\ESC\n\
    \\tinfo_val2\CAN\ETX \SOH(\EOTR\binfoVal2\DC2\ETB\n\
    \\akctx_id\CAN\EOT \SOH(\rR\ACKkctxId\DC2\ESC\n\
    \\tkctx_tgid\CAN\ENQ \SOH(\ENQR\bkctxTgid\"\165\SOH\n\
    \#MaliMaliKCPUCQSWAITSTARTFtraceEvent\DC2\SO\n\
    \\STXid\CAN\SOH \SOH(\rR\STXid\DC2\ESC\n\
    \\tinfo_val1\CAN\STX \SOH(\EOTR\binfoVal1\DC2\ESC\n\
    \\tinfo_val2\CAN\ETX \SOH(\EOTR\binfoVal2\DC2\ETB\n\
    \\akctx_id\CAN\EOT \SOH(\rR\ACKkctxId\DC2\ESC\n\
    \\tkctx_tgid\CAN\ENQ \SOH(\ENQR\bkctxTgid\"\163\SOH\n\
    \!MaliMaliKCPUCQSWAITENDFtraceEvent\DC2\SO\n\
    \\STXid\CAN\SOH \SOH(\rR\STXid\DC2\ESC\n\
    \\tinfo_val1\CAN\STX \SOH(\EOTR\binfoVal1\DC2\ESC\n\
    \\tinfo_val2\CAN\ETX \SOH(\EOTR\binfoVal2\DC2\ETB\n\
    \\akctx_id\CAN\EOT \SOH(\rR\ACKkctxId\DC2\ESC\n\
    \\tkctx_tgid\CAN\ENQ \SOH(\ENQR\bkctxTgid\"\164\SOH\n\
    \\"MaliMaliKCPUFENCESIGNALFtraceEvent\DC2\ESC\n\
    \\tinfo_val1\CAN\SOH \SOH(\EOTR\binfoVal1\DC2\ESC\n\
    \\tinfo_val2\CAN\STX \SOH(\EOTR\binfoVal2\DC2\ESC\n\
    \\tkctx_tgid\CAN\ETX \SOH(\ENQR\bkctxTgid\DC2\ETB\n\
    \\akctx_id\CAN\EOT \SOH(\rR\ACKkctxId\DC2\SO\n\
    \\STXid\CAN\ENQ \SOH(\rR\STXid\"\167\SOH\n\
    \%MaliMaliKCPUFENCEWAITSTARTFtraceEvent\DC2\ESC\n\
    \\tinfo_val1\CAN\SOH \SOH(\EOTR\binfoVal1\DC2\ESC\n\
    \\tinfo_val2\CAN\STX \SOH(\EOTR\binfoVal2\DC2\ESC\n\
    \\tkctx_tgid\CAN\ETX \SOH(\ENQR\bkctxTgid\DC2\ETB\n\
    \\akctx_id\CAN\EOT \SOH(\rR\ACKkctxId\DC2\SO\n\
    \\STXid\CAN\ENQ \SOH(\rR\STXid\"\165\SOH\n\
    \#MaliMaliKCPUFENCEWAITENDFtraceEvent\DC2\ESC\n\
    \\tinfo_val1\CAN\SOH \SOH(\EOTR\binfoVal1\DC2\ESC\n\
    \\tinfo_val2\CAN\STX \SOH(\EOTR\binfoVal2\DC2\ESC\n\
    \\tkctx_tgid\CAN\ETX \SOH(\ENQR\bkctxTgid\DC2\ETB\n\
    \\akctx_id\CAN\EOT \SOH(\rR\ACKkctxId\DC2\SO\n\
    \\STXid\CAN\ENQ \SOH(\rR\STXid\"w\n\
    \$MaliMaliCSFINTERRUPTSTARTFtraceEvent\DC2\ESC\n\
    \\tkctx_tgid\CAN\SOH \SOH(\ENQR\bkctxTgid\DC2\ETB\n\
    \\akctx_id\CAN\STX \SOH(\rR\ACKkctxId\DC2\EM\n\
    \\binfo_val\CAN\ETX \SOH(\EOTR\ainfoVal\"u\n\
    \\"MaliMaliCSFINTERRUPTENDFtraceEvent\DC2\ESC\n\
    \\tkctx_tgid\CAN\SOH \SOH(\ENQR\bkctxTgid\DC2\ETB\n\
    \\akctx_id\CAN\STX \SOH(\rR\ACKkctxId\DC2\EM\n\
    \\binfo_val\CAN\ETX \SOH(\EOTR\ainfoValJ\149\CAN\n\
    \\ACK\DC2\EOT\EOT\NUL@\SOH\n\
    \a\n\
    \\SOH\f\DC2\ETX\EOT\NUL\DC22W Autogenerated by:\n\
    \ ../../src/tools/ftrace_proto_gen/ftrace_proto_gen.cc\n\
    \ Do not edit.\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\ENQ\NUL\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\a\NUL\f\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b'\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\b\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\b\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\b\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\b\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\b\EM\SUB\n\
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
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\v\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX\v\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\v\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\v\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\v\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\r\NUL\DC3\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\r\b%\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\SO\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\SO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\SO\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\SO\DC2\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\SO\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\SI\STX \n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX\SI\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\SI\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\SI\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\SI\RS\US\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX\DLE\STX \n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\EOT\DC2\ETX\DLE\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX\DLE\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX\DLE\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX\DLE\RS\US\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX\DC1\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\EOT\DC2\ETX\DC1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX\DC1\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX\DC1\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX\DC1\FS\GS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETX\DC2\STX\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\EOT\DC2\ETX\DC2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ENQ\DC2\ETX\DC2\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETX\DC2\DC1\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETX\DC2\GS\RS\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT\DC4\NUL\SUB\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\DC4\b+\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\NAK\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETX\NAK\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX\NAK\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\NAK\DC2\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\NAK\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX\SYN\STX \n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETX\SYN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX\SYN\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX\SYN\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX\SYN\RS\US\n\
    \\v\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX\ETB\STX \n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\EOT\DC2\ETX\ETB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETX\ETB\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX\ETB\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX\ETB\RS\US\n\
    \\v\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETX\CAN\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\EOT\DC2\ETX\CAN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ENQ\DC2\ETX\CAN\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETX\CAN\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETX\CAN\FS\GS\n\
    \\v\n\
    \\EOT\EOT\STX\STX\EOT\DC2\ETX\EM\STX\US\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\EOT\DC2\ETX\EM\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ENQ\DC2\ETX\EM\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\ETX\EM\DC1\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\ETX\EM\GS\RS\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOT\ESC\NUL!\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX\ESC\b)\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX\FS\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETX\FS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX\FS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX\FS\DC2\DC4\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX\FS\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX\GS\STX \n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\EOT\DC2\ETX\GS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETX\GS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX\GS\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX\GS\RS\US\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETX\RS\STX \n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\EOT\DC2\ETX\RS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\ETX\RS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETX\RS\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETX\RS\RS\US\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\ETX\US\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\EOT\DC2\ETX\US\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ENQ\DC2\ETX\US\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\ETX\US\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\ETX\US\FS\GS\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\EOT\DC2\ETX \STX\US\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\EOT\DC2\ETX \STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ENQ\DC2\ETX \v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\SOH\DC2\ETX \DC1\SUB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ETX\DC2\ETX \GS\RS\n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOT\"\NUL(\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX\"\b*\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX#\STX \n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\EOT\DC2\ETX#\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX#\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX#\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX#\RS\US\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETX$\STX \n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\EOT\DC2\ETX$\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETX$\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETX$\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETX$\RS\US\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETX%\STX\US\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\EOT\DC2\ETX%\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ENQ\DC2\ETX%\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETX%\DC1\SUB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETX%\GS\RS\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\ETX&\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\EOT\DC2\ETX&\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ENQ\DC2\ETX&\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\ETX&\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\ETX&\FS\GS\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\EOT\DC2\ETX'\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\EOT\DC2\ETX'\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\ENQ\DC2\ETX'\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\SOH\DC2\ETX'\DC2\DC4\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\ETX\DC2\ETX'\ETB\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\ENQ\DC2\EOT)\NUL/\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX)\b-\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETX*\STX \n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\ETX*\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETX*\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX*\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX*\RS\US\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ETX+\STX \n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\EOT\DC2\ETX+\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\ETX+\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETX+\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETX+\RS\US\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\ETX,\STX\US\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\EOT\DC2\ETX,\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ENQ\DC2\ETX,\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\ETX,\DC1\SUB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\ETX,\GS\RS\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\ETX\DC2\ETX-\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\EOT\DC2\ETX-\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\ENQ\DC2\ETX-\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\SOH\DC2\ETX-\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\ETX\DC2\ETX-\FS\GS\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\EOT\DC2\ETX.\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\EOT\DC2\ETX.\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\ENQ\DC2\ETX.\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\SOH\DC2\ETX.\DC2\DC4\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\ETX\DC2\ETX.\ETB\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\ACK\DC2\EOT0\NUL6\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETX0\b+\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETX1\STX \n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\EOT\DC2\ETX1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETX1\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETX1\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETX1\RS\US\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\ETX2\STX \n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\EOT\DC2\ETX2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\ETX2\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\ETX2\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\ETX2\RS\US\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\STX\DC2\ETX3\STX\US\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\EOT\DC2\ETX3\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ENQ\DC2\ETX3\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\SOH\DC2\ETX3\DC1\SUB\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ETX\DC2\ETX3\GS\RS\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\ETX\DC2\ETX4\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\EOT\DC2\ETX4\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\ENQ\DC2\ETX4\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\SOH\DC2\ETX4\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\ETX\DC2\ETX4\FS\GS\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\EOT\DC2\ETX5\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\EOT\EOT\DC2\ETX5\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\EOT\ENQ\DC2\ETX5\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\EOT\SOH\DC2\ETX5\DC2\DC4\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\EOT\ETX\DC2\ETX5\ETB\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\a\DC2\EOT7\NUL;\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETX7\b,\n\
    \\v\n\
    \\EOT\EOT\a\STX\NUL\DC2\ETX8\STX\US\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\EOT\DC2\ETX8\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ENQ\DC2\ETX8\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\ETX8\DC1\SUB\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\ETX8\GS\RS\n\
    \\v\n\
    \\EOT\EOT\a\STX\SOH\DC2\ETX9\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\EOT\DC2\ETX9\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ENQ\DC2\ETX9\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\ETX9\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\ETX9\FS\GS\n\
    \\v\n\
    \\EOT\EOT\a\STX\STX\DC2\ETX:\STX\US\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\EOT\DC2\ETX:\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\ENQ\DC2\ETX:\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\SOH\DC2\ETX:\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\ETX\DC2\ETX:\GS\RS\n\
    \\n\
    \\n\
    \\STX\EOT\b\DC2\EOT<\NUL@\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\b\SOH\DC2\ETX<\b*\n\
    \\v\n\
    \\EOT\EOT\b\STX\NUL\DC2\ETX=\STX\US\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\EOT\DC2\ETX=\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\ETX=\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\ETX=\DC1\SUB\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\ETX=\GS\RS\n\
    \\v\n\
    \\EOT\EOT\b\STX\SOH\DC2\ETX>\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\EOT\DC2\ETX>\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ENQ\DC2\ETX>\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\ETX>\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\ETX>\FS\GS\n\
    \\v\n\
    \\EOT\EOT\b\STX\STX\DC2\ETX?\STX\US\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\EOT\DC2\ETX?\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\ENQ\DC2\ETX?\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\SOH\DC2\ETX?\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\ETX\DC2\ETX?\GS\RS"