{- This file was auto-generated from protos/perfetto/trace/ftrace/sde.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Sde (
        SdeSdeEvtlogFtraceEvent(), SdeSdePerfCalcCrtcFtraceEvent(),
        SdeSdePerfCrtcUpdateFtraceEvent(),
        SdeSdePerfSetQosLutsFtraceEvent(),
        SdeSdePerfUpdateBusFtraceEvent(), SdeTracingMarkWriteFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.evtlogTag' @:: Lens' SdeSdeEvtlogFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.maybe'evtlogTag' @:: Lens' SdeSdeEvtlogFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.pid' @:: Lens' SdeSdeEvtlogFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.maybe'pid' @:: Lens' SdeSdeEvtlogFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.tagId' @:: Lens' SdeSdeEvtlogFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.maybe'tagId' @:: Lens' SdeSdeEvtlogFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data SdeSdeEvtlogFtraceEvent
  = SdeSdeEvtlogFtraceEvent'_constructor {_SdeSdeEvtlogFtraceEvent'evtlogTag :: !(Prelude.Maybe Data.Text.Text),
                                          _SdeSdeEvtlogFtraceEvent'pid :: !(Prelude.Maybe Data.Int.Int32),
                                          _SdeSdeEvtlogFtraceEvent'tagId :: !(Prelude.Maybe Data.Word.Word32),
                                          _SdeSdeEvtlogFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SdeSdeEvtlogFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SdeSdeEvtlogFtraceEvent "evtlogTag" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdeEvtlogFtraceEvent'evtlogTag
           (\ x__ y__ -> x__ {_SdeSdeEvtlogFtraceEvent'evtlogTag = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SdeSdeEvtlogFtraceEvent "maybe'evtlogTag" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdeEvtlogFtraceEvent'evtlogTag
           (\ x__ y__ -> x__ {_SdeSdeEvtlogFtraceEvent'evtlogTag = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SdeSdeEvtlogFtraceEvent "pid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdeEvtlogFtraceEvent'pid
           (\ x__ y__ -> x__ {_SdeSdeEvtlogFtraceEvent'pid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SdeSdeEvtlogFtraceEvent "maybe'pid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdeEvtlogFtraceEvent'pid
           (\ x__ y__ -> x__ {_SdeSdeEvtlogFtraceEvent'pid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SdeSdeEvtlogFtraceEvent "tagId" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdeEvtlogFtraceEvent'tagId
           (\ x__ y__ -> x__ {_SdeSdeEvtlogFtraceEvent'tagId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SdeSdeEvtlogFtraceEvent "maybe'tagId" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdeEvtlogFtraceEvent'tagId
           (\ x__ y__ -> x__ {_SdeSdeEvtlogFtraceEvent'tagId = y__}))
        Prelude.id
instance Data.ProtoLens.Message SdeSdeEvtlogFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.SdeSdeEvtlogFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ETBSdeSdeEvtlogFtraceEvent\DC2\GS\n\
      \\n\
      \evtlog_tag\CAN\SOH \SOH(\tR\tevtlogTag\DC2\DLE\n\
      \\ETXpid\CAN\STX \SOH(\ENQR\ETXpid\DC2\NAK\n\
      \\ACKtag_id\CAN\ETX \SOH(\rR\ENQtagId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        evtlogTag__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "evtlog_tag"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'evtlogTag")) ::
              Data.ProtoLens.FieldDescriptor SdeSdeEvtlogFtraceEvent
        pid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pid")) ::
              Data.ProtoLens.FieldDescriptor SdeSdeEvtlogFtraceEvent
        tagId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tag_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tagId")) ::
              Data.ProtoLens.FieldDescriptor SdeSdeEvtlogFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, evtlogTag__field_descriptor),
           (Data.ProtoLens.Tag 2, pid__field_descriptor),
           (Data.ProtoLens.Tag 3, tagId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SdeSdeEvtlogFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_SdeSdeEvtlogFtraceEvent'_unknownFields = y__})
  defMessage
    = SdeSdeEvtlogFtraceEvent'_constructor
        {_SdeSdeEvtlogFtraceEvent'evtlogTag = Prelude.Nothing,
         _SdeSdeEvtlogFtraceEvent'pid = Prelude.Nothing,
         _SdeSdeEvtlogFtraceEvent'tagId = Prelude.Nothing,
         _SdeSdeEvtlogFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SdeSdeEvtlogFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser SdeSdeEvtlogFtraceEvent
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
                                       "evtlog_tag"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"evtlogTag") y x)
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
                                       "tag_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"tagId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SdeSdeEvtlogFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'evtlogTag") _x
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'tagId") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData SdeSdeEvtlogFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SdeSdeEvtlogFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SdeSdeEvtlogFtraceEvent'evtlogTag x__)
                (Control.DeepSeq.deepseq
                   (_SdeSdeEvtlogFtraceEvent'pid x__)
                   (Control.DeepSeq.deepseq (_SdeSdeEvtlogFtraceEvent'tagId x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.bwCtlEbi' @:: Lens' SdeSdePerfCalcCrtcFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.maybe'bwCtlEbi' @:: Lens' SdeSdePerfCalcCrtcFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.bwCtlLlcc' @:: Lens' SdeSdePerfCalcCrtcFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.maybe'bwCtlLlcc' @:: Lens' SdeSdePerfCalcCrtcFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.bwCtlMnoc' @:: Lens' SdeSdePerfCalcCrtcFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.maybe'bwCtlMnoc' @:: Lens' SdeSdePerfCalcCrtcFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.coreClkRate' @:: Lens' SdeSdePerfCalcCrtcFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.maybe'coreClkRate' @:: Lens' SdeSdePerfCalcCrtcFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.crtc' @:: Lens' SdeSdePerfCalcCrtcFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.maybe'crtc' @:: Lens' SdeSdePerfCalcCrtcFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.ibEbi' @:: Lens' SdeSdePerfCalcCrtcFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.maybe'ibEbi' @:: Lens' SdeSdePerfCalcCrtcFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.ibLlcc' @:: Lens' SdeSdePerfCalcCrtcFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.maybe'ibLlcc' @:: Lens' SdeSdePerfCalcCrtcFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.ibMnoc' @:: Lens' SdeSdePerfCalcCrtcFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.maybe'ibMnoc' @:: Lens' SdeSdePerfCalcCrtcFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data SdeSdePerfCalcCrtcFtraceEvent
  = SdeSdePerfCalcCrtcFtraceEvent'_constructor {_SdeSdePerfCalcCrtcFtraceEvent'bwCtlEbi :: !(Prelude.Maybe Data.Word.Word64),
                                                _SdeSdePerfCalcCrtcFtraceEvent'bwCtlLlcc :: !(Prelude.Maybe Data.Word.Word64),
                                                _SdeSdePerfCalcCrtcFtraceEvent'bwCtlMnoc :: !(Prelude.Maybe Data.Word.Word64),
                                                _SdeSdePerfCalcCrtcFtraceEvent'coreClkRate :: !(Prelude.Maybe Data.Word.Word32),
                                                _SdeSdePerfCalcCrtcFtraceEvent'crtc :: !(Prelude.Maybe Data.Word.Word32),
                                                _SdeSdePerfCalcCrtcFtraceEvent'ibEbi :: !(Prelude.Maybe Data.Word.Word64),
                                                _SdeSdePerfCalcCrtcFtraceEvent'ibLlcc :: !(Prelude.Maybe Data.Word.Word64),
                                                _SdeSdePerfCalcCrtcFtraceEvent'ibMnoc :: !(Prelude.Maybe Data.Word.Word64),
                                                _SdeSdePerfCalcCrtcFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SdeSdePerfCalcCrtcFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SdeSdePerfCalcCrtcFtraceEvent "bwCtlEbi" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfCalcCrtcFtraceEvent'bwCtlEbi
           (\ x__ y__ -> x__ {_SdeSdePerfCalcCrtcFtraceEvent'bwCtlEbi = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SdeSdePerfCalcCrtcFtraceEvent "maybe'bwCtlEbi" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfCalcCrtcFtraceEvent'bwCtlEbi
           (\ x__ y__ -> x__ {_SdeSdePerfCalcCrtcFtraceEvent'bwCtlEbi = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SdeSdePerfCalcCrtcFtraceEvent "bwCtlLlcc" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfCalcCrtcFtraceEvent'bwCtlLlcc
           (\ x__ y__
              -> x__ {_SdeSdePerfCalcCrtcFtraceEvent'bwCtlLlcc = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SdeSdePerfCalcCrtcFtraceEvent "maybe'bwCtlLlcc" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfCalcCrtcFtraceEvent'bwCtlLlcc
           (\ x__ y__
              -> x__ {_SdeSdePerfCalcCrtcFtraceEvent'bwCtlLlcc = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SdeSdePerfCalcCrtcFtraceEvent "bwCtlMnoc" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfCalcCrtcFtraceEvent'bwCtlMnoc
           (\ x__ y__
              -> x__ {_SdeSdePerfCalcCrtcFtraceEvent'bwCtlMnoc = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SdeSdePerfCalcCrtcFtraceEvent "maybe'bwCtlMnoc" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfCalcCrtcFtraceEvent'bwCtlMnoc
           (\ x__ y__
              -> x__ {_SdeSdePerfCalcCrtcFtraceEvent'bwCtlMnoc = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SdeSdePerfCalcCrtcFtraceEvent "coreClkRate" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfCalcCrtcFtraceEvent'coreClkRate
           (\ x__ y__
              -> x__ {_SdeSdePerfCalcCrtcFtraceEvent'coreClkRate = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SdeSdePerfCalcCrtcFtraceEvent "maybe'coreClkRate" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfCalcCrtcFtraceEvent'coreClkRate
           (\ x__ y__
              -> x__ {_SdeSdePerfCalcCrtcFtraceEvent'coreClkRate = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SdeSdePerfCalcCrtcFtraceEvent "crtc" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfCalcCrtcFtraceEvent'crtc
           (\ x__ y__ -> x__ {_SdeSdePerfCalcCrtcFtraceEvent'crtc = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SdeSdePerfCalcCrtcFtraceEvent "maybe'crtc" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfCalcCrtcFtraceEvent'crtc
           (\ x__ y__ -> x__ {_SdeSdePerfCalcCrtcFtraceEvent'crtc = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SdeSdePerfCalcCrtcFtraceEvent "ibEbi" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfCalcCrtcFtraceEvent'ibEbi
           (\ x__ y__ -> x__ {_SdeSdePerfCalcCrtcFtraceEvent'ibEbi = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SdeSdePerfCalcCrtcFtraceEvent "maybe'ibEbi" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfCalcCrtcFtraceEvent'ibEbi
           (\ x__ y__ -> x__ {_SdeSdePerfCalcCrtcFtraceEvent'ibEbi = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SdeSdePerfCalcCrtcFtraceEvent "ibLlcc" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfCalcCrtcFtraceEvent'ibLlcc
           (\ x__ y__ -> x__ {_SdeSdePerfCalcCrtcFtraceEvent'ibLlcc = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SdeSdePerfCalcCrtcFtraceEvent "maybe'ibLlcc" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfCalcCrtcFtraceEvent'ibLlcc
           (\ x__ y__ -> x__ {_SdeSdePerfCalcCrtcFtraceEvent'ibLlcc = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SdeSdePerfCalcCrtcFtraceEvent "ibMnoc" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfCalcCrtcFtraceEvent'ibMnoc
           (\ x__ y__ -> x__ {_SdeSdePerfCalcCrtcFtraceEvent'ibMnoc = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SdeSdePerfCalcCrtcFtraceEvent "maybe'ibMnoc" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfCalcCrtcFtraceEvent'ibMnoc
           (\ x__ y__ -> x__ {_SdeSdePerfCalcCrtcFtraceEvent'ibMnoc = y__}))
        Prelude.id
instance Data.ProtoLens.Message SdeSdePerfCalcCrtcFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.SdeSdePerfCalcCrtcFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\GSSdeSdePerfCalcCrtcFtraceEvent\DC2\FS\n\
      \\n\
      \bw_ctl_ebi\CAN\SOH \SOH(\EOTR\bbwCtlEbi\DC2\RS\n\
      \\vbw_ctl_llcc\CAN\STX \SOH(\EOTR\tbwCtlLlcc\DC2\RS\n\
      \\vbw_ctl_mnoc\CAN\ETX \SOH(\EOTR\tbwCtlMnoc\DC2\"\n\
      \\rcore_clk_rate\CAN\EOT \SOH(\rR\vcoreClkRate\DC2\DC2\n\
      \\EOTcrtc\CAN\ENQ \SOH(\rR\EOTcrtc\DC2\NAK\n\
      \\ACKib_ebi\CAN\ACK \SOH(\EOTR\ENQibEbi\DC2\ETB\n\
      \\aib_llcc\CAN\a \SOH(\EOTR\ACKibLlcc\DC2\ETB\n\
      \\aib_mnoc\CAN\b \SOH(\EOTR\ACKibMnoc"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        bwCtlEbi__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bw_ctl_ebi"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bwCtlEbi")) ::
              Data.ProtoLens.FieldDescriptor SdeSdePerfCalcCrtcFtraceEvent
        bwCtlLlcc__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bw_ctl_llcc"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bwCtlLlcc")) ::
              Data.ProtoLens.FieldDescriptor SdeSdePerfCalcCrtcFtraceEvent
        bwCtlMnoc__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bw_ctl_mnoc"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bwCtlMnoc")) ::
              Data.ProtoLens.FieldDescriptor SdeSdePerfCalcCrtcFtraceEvent
        coreClkRate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "core_clk_rate"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'coreClkRate")) ::
              Data.ProtoLens.FieldDescriptor SdeSdePerfCalcCrtcFtraceEvent
        crtc__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "crtc"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'crtc")) ::
              Data.ProtoLens.FieldDescriptor SdeSdePerfCalcCrtcFtraceEvent
        ibEbi__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ib_ebi"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ibEbi")) ::
              Data.ProtoLens.FieldDescriptor SdeSdePerfCalcCrtcFtraceEvent
        ibLlcc__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ib_llcc"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ibLlcc")) ::
              Data.ProtoLens.FieldDescriptor SdeSdePerfCalcCrtcFtraceEvent
        ibMnoc__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ib_mnoc"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ibMnoc")) ::
              Data.ProtoLens.FieldDescriptor SdeSdePerfCalcCrtcFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, bwCtlEbi__field_descriptor),
           (Data.ProtoLens.Tag 2, bwCtlLlcc__field_descriptor),
           (Data.ProtoLens.Tag 3, bwCtlMnoc__field_descriptor),
           (Data.ProtoLens.Tag 4, coreClkRate__field_descriptor),
           (Data.ProtoLens.Tag 5, crtc__field_descriptor),
           (Data.ProtoLens.Tag 6, ibEbi__field_descriptor),
           (Data.ProtoLens.Tag 7, ibLlcc__field_descriptor),
           (Data.ProtoLens.Tag 8, ibMnoc__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SdeSdePerfCalcCrtcFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_SdeSdePerfCalcCrtcFtraceEvent'_unknownFields = y__})
  defMessage
    = SdeSdePerfCalcCrtcFtraceEvent'_constructor
        {_SdeSdePerfCalcCrtcFtraceEvent'bwCtlEbi = Prelude.Nothing,
         _SdeSdePerfCalcCrtcFtraceEvent'bwCtlLlcc = Prelude.Nothing,
         _SdeSdePerfCalcCrtcFtraceEvent'bwCtlMnoc = Prelude.Nothing,
         _SdeSdePerfCalcCrtcFtraceEvent'coreClkRate = Prelude.Nothing,
         _SdeSdePerfCalcCrtcFtraceEvent'crtc = Prelude.Nothing,
         _SdeSdePerfCalcCrtcFtraceEvent'ibEbi = Prelude.Nothing,
         _SdeSdePerfCalcCrtcFtraceEvent'ibLlcc = Prelude.Nothing,
         _SdeSdePerfCalcCrtcFtraceEvent'ibMnoc = Prelude.Nothing,
         _SdeSdePerfCalcCrtcFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SdeSdePerfCalcCrtcFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser SdeSdePerfCalcCrtcFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "bw_ctl_ebi"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bwCtlEbi") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "bw_ctl_llcc"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bwCtlLlcc") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "bw_ctl_mnoc"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bwCtlMnoc") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "core_clk_rate"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"coreClkRate") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "crtc"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"crtc") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ib_ebi"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ibEbi") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ib_llcc"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ibLlcc") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ib_mnoc"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ibMnoc") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SdeSdePerfCalcCrtcFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'bwCtlEbi") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'bwCtlLlcc") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'bwCtlMnoc") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'coreClkRate") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'crtc") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ibEbi") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'ibLlcc") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'ibMnoc") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData SdeSdePerfCalcCrtcFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SdeSdePerfCalcCrtcFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SdeSdePerfCalcCrtcFtraceEvent'bwCtlEbi x__)
                (Control.DeepSeq.deepseq
                   (_SdeSdePerfCalcCrtcFtraceEvent'bwCtlLlcc x__)
                   (Control.DeepSeq.deepseq
                      (_SdeSdePerfCalcCrtcFtraceEvent'bwCtlMnoc x__)
                      (Control.DeepSeq.deepseq
                         (_SdeSdePerfCalcCrtcFtraceEvent'coreClkRate x__)
                         (Control.DeepSeq.deepseq
                            (_SdeSdePerfCalcCrtcFtraceEvent'crtc x__)
                            (Control.DeepSeq.deepseq
                               (_SdeSdePerfCalcCrtcFtraceEvent'ibEbi x__)
                               (Control.DeepSeq.deepseq
                                  (_SdeSdePerfCalcCrtcFtraceEvent'ibLlcc x__)
                                  (Control.DeepSeq.deepseq
                                     (_SdeSdePerfCalcCrtcFtraceEvent'ibMnoc x__) ()))))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.bwCtlEbi' @:: Lens' SdeSdePerfCrtcUpdateFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.maybe'bwCtlEbi' @:: Lens' SdeSdePerfCrtcUpdateFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.bwCtlLlcc' @:: Lens' SdeSdePerfCrtcUpdateFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.maybe'bwCtlLlcc' @:: Lens' SdeSdePerfCrtcUpdateFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.bwCtlMnoc' @:: Lens' SdeSdePerfCrtcUpdateFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.maybe'bwCtlMnoc' @:: Lens' SdeSdePerfCrtcUpdateFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.coreClkRate' @:: Lens' SdeSdePerfCrtcUpdateFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.maybe'coreClkRate' @:: Lens' SdeSdePerfCrtcUpdateFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.crtc' @:: Lens' SdeSdePerfCrtcUpdateFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.maybe'crtc' @:: Lens' SdeSdePerfCrtcUpdateFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.params' @:: Lens' SdeSdePerfCrtcUpdateFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.maybe'params' @:: Lens' SdeSdePerfCrtcUpdateFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.perPipeIbEbi' @:: Lens' SdeSdePerfCrtcUpdateFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.maybe'perPipeIbEbi' @:: Lens' SdeSdePerfCrtcUpdateFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.perPipeIbLlcc' @:: Lens' SdeSdePerfCrtcUpdateFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.maybe'perPipeIbLlcc' @:: Lens' SdeSdePerfCrtcUpdateFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.perPipeIbMnoc' @:: Lens' SdeSdePerfCrtcUpdateFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.maybe'perPipeIbMnoc' @:: Lens' SdeSdePerfCrtcUpdateFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.stopReq' @:: Lens' SdeSdePerfCrtcUpdateFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.maybe'stopReq' @:: Lens' SdeSdePerfCrtcUpdateFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.updateBus' @:: Lens' SdeSdePerfCrtcUpdateFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.maybe'updateBus' @:: Lens' SdeSdePerfCrtcUpdateFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.updateClk' @:: Lens' SdeSdePerfCrtcUpdateFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.maybe'updateClk' @:: Lens' SdeSdePerfCrtcUpdateFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data SdeSdePerfCrtcUpdateFtraceEvent
  = SdeSdePerfCrtcUpdateFtraceEvent'_constructor {_SdeSdePerfCrtcUpdateFtraceEvent'bwCtlEbi :: !(Prelude.Maybe Data.Word.Word64),
                                                  _SdeSdePerfCrtcUpdateFtraceEvent'bwCtlLlcc :: !(Prelude.Maybe Data.Word.Word64),
                                                  _SdeSdePerfCrtcUpdateFtraceEvent'bwCtlMnoc :: !(Prelude.Maybe Data.Word.Word64),
                                                  _SdeSdePerfCrtcUpdateFtraceEvent'coreClkRate :: !(Prelude.Maybe Data.Word.Word32),
                                                  _SdeSdePerfCrtcUpdateFtraceEvent'crtc :: !(Prelude.Maybe Data.Word.Word32),
                                                  _SdeSdePerfCrtcUpdateFtraceEvent'params :: !(Prelude.Maybe Data.Int.Int32),
                                                  _SdeSdePerfCrtcUpdateFtraceEvent'perPipeIbEbi :: !(Prelude.Maybe Data.Word.Word64),
                                                  _SdeSdePerfCrtcUpdateFtraceEvent'perPipeIbLlcc :: !(Prelude.Maybe Data.Word.Word64),
                                                  _SdeSdePerfCrtcUpdateFtraceEvent'perPipeIbMnoc :: !(Prelude.Maybe Data.Word.Word64),
                                                  _SdeSdePerfCrtcUpdateFtraceEvent'stopReq :: !(Prelude.Maybe Data.Word.Word32),
                                                  _SdeSdePerfCrtcUpdateFtraceEvent'updateBus :: !(Prelude.Maybe Data.Word.Word32),
                                                  _SdeSdePerfCrtcUpdateFtraceEvent'updateClk :: !(Prelude.Maybe Data.Word.Word32),
                                                  _SdeSdePerfCrtcUpdateFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SdeSdePerfCrtcUpdateFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SdeSdePerfCrtcUpdateFtraceEvent "bwCtlEbi" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfCrtcUpdateFtraceEvent'bwCtlEbi
           (\ x__ y__
              -> x__ {_SdeSdePerfCrtcUpdateFtraceEvent'bwCtlEbi = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SdeSdePerfCrtcUpdateFtraceEvent "maybe'bwCtlEbi" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfCrtcUpdateFtraceEvent'bwCtlEbi
           (\ x__ y__
              -> x__ {_SdeSdePerfCrtcUpdateFtraceEvent'bwCtlEbi = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SdeSdePerfCrtcUpdateFtraceEvent "bwCtlLlcc" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfCrtcUpdateFtraceEvent'bwCtlLlcc
           (\ x__ y__
              -> x__ {_SdeSdePerfCrtcUpdateFtraceEvent'bwCtlLlcc = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SdeSdePerfCrtcUpdateFtraceEvent "maybe'bwCtlLlcc" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfCrtcUpdateFtraceEvent'bwCtlLlcc
           (\ x__ y__
              -> x__ {_SdeSdePerfCrtcUpdateFtraceEvent'bwCtlLlcc = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SdeSdePerfCrtcUpdateFtraceEvent "bwCtlMnoc" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfCrtcUpdateFtraceEvent'bwCtlMnoc
           (\ x__ y__
              -> x__ {_SdeSdePerfCrtcUpdateFtraceEvent'bwCtlMnoc = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SdeSdePerfCrtcUpdateFtraceEvent "maybe'bwCtlMnoc" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfCrtcUpdateFtraceEvent'bwCtlMnoc
           (\ x__ y__
              -> x__ {_SdeSdePerfCrtcUpdateFtraceEvent'bwCtlMnoc = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SdeSdePerfCrtcUpdateFtraceEvent "coreClkRate" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfCrtcUpdateFtraceEvent'coreClkRate
           (\ x__ y__
              -> x__ {_SdeSdePerfCrtcUpdateFtraceEvent'coreClkRate = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SdeSdePerfCrtcUpdateFtraceEvent "maybe'coreClkRate" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfCrtcUpdateFtraceEvent'coreClkRate
           (\ x__ y__
              -> x__ {_SdeSdePerfCrtcUpdateFtraceEvent'coreClkRate = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SdeSdePerfCrtcUpdateFtraceEvent "crtc" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfCrtcUpdateFtraceEvent'crtc
           (\ x__ y__ -> x__ {_SdeSdePerfCrtcUpdateFtraceEvent'crtc = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SdeSdePerfCrtcUpdateFtraceEvent "maybe'crtc" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfCrtcUpdateFtraceEvent'crtc
           (\ x__ y__ -> x__ {_SdeSdePerfCrtcUpdateFtraceEvent'crtc = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SdeSdePerfCrtcUpdateFtraceEvent "params" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfCrtcUpdateFtraceEvent'params
           (\ x__ y__ -> x__ {_SdeSdePerfCrtcUpdateFtraceEvent'params = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SdeSdePerfCrtcUpdateFtraceEvent "maybe'params" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfCrtcUpdateFtraceEvent'params
           (\ x__ y__ -> x__ {_SdeSdePerfCrtcUpdateFtraceEvent'params = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SdeSdePerfCrtcUpdateFtraceEvent "perPipeIbEbi" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfCrtcUpdateFtraceEvent'perPipeIbEbi
           (\ x__ y__
              -> x__ {_SdeSdePerfCrtcUpdateFtraceEvent'perPipeIbEbi = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SdeSdePerfCrtcUpdateFtraceEvent "maybe'perPipeIbEbi" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfCrtcUpdateFtraceEvent'perPipeIbEbi
           (\ x__ y__
              -> x__ {_SdeSdePerfCrtcUpdateFtraceEvent'perPipeIbEbi = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SdeSdePerfCrtcUpdateFtraceEvent "perPipeIbLlcc" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfCrtcUpdateFtraceEvent'perPipeIbLlcc
           (\ x__ y__
              -> x__ {_SdeSdePerfCrtcUpdateFtraceEvent'perPipeIbLlcc = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SdeSdePerfCrtcUpdateFtraceEvent "maybe'perPipeIbLlcc" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfCrtcUpdateFtraceEvent'perPipeIbLlcc
           (\ x__ y__
              -> x__ {_SdeSdePerfCrtcUpdateFtraceEvent'perPipeIbLlcc = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SdeSdePerfCrtcUpdateFtraceEvent "perPipeIbMnoc" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfCrtcUpdateFtraceEvent'perPipeIbMnoc
           (\ x__ y__
              -> x__ {_SdeSdePerfCrtcUpdateFtraceEvent'perPipeIbMnoc = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SdeSdePerfCrtcUpdateFtraceEvent "maybe'perPipeIbMnoc" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfCrtcUpdateFtraceEvent'perPipeIbMnoc
           (\ x__ y__
              -> x__ {_SdeSdePerfCrtcUpdateFtraceEvent'perPipeIbMnoc = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SdeSdePerfCrtcUpdateFtraceEvent "stopReq" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfCrtcUpdateFtraceEvent'stopReq
           (\ x__ y__
              -> x__ {_SdeSdePerfCrtcUpdateFtraceEvent'stopReq = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SdeSdePerfCrtcUpdateFtraceEvent "maybe'stopReq" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfCrtcUpdateFtraceEvent'stopReq
           (\ x__ y__
              -> x__ {_SdeSdePerfCrtcUpdateFtraceEvent'stopReq = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SdeSdePerfCrtcUpdateFtraceEvent "updateBus" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfCrtcUpdateFtraceEvent'updateBus
           (\ x__ y__
              -> x__ {_SdeSdePerfCrtcUpdateFtraceEvent'updateBus = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SdeSdePerfCrtcUpdateFtraceEvent "maybe'updateBus" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfCrtcUpdateFtraceEvent'updateBus
           (\ x__ y__
              -> x__ {_SdeSdePerfCrtcUpdateFtraceEvent'updateBus = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SdeSdePerfCrtcUpdateFtraceEvent "updateClk" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfCrtcUpdateFtraceEvent'updateClk
           (\ x__ y__
              -> x__ {_SdeSdePerfCrtcUpdateFtraceEvent'updateClk = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SdeSdePerfCrtcUpdateFtraceEvent "maybe'updateClk" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfCrtcUpdateFtraceEvent'updateClk
           (\ x__ y__
              -> x__ {_SdeSdePerfCrtcUpdateFtraceEvent'updateClk = y__}))
        Prelude.id
instance Data.ProtoLens.Message SdeSdePerfCrtcUpdateFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.SdeSdePerfCrtcUpdateFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\USSdeSdePerfCrtcUpdateFtraceEvent\DC2\FS\n\
      \\n\
      \bw_ctl_ebi\CAN\SOH \SOH(\EOTR\bbwCtlEbi\DC2\RS\n\
      \\vbw_ctl_llcc\CAN\STX \SOH(\EOTR\tbwCtlLlcc\DC2\RS\n\
      \\vbw_ctl_mnoc\CAN\ETX \SOH(\EOTR\tbwCtlMnoc\DC2\"\n\
      \\rcore_clk_rate\CAN\EOT \SOH(\rR\vcoreClkRate\DC2\DC2\n\
      \\EOTcrtc\CAN\ENQ \SOH(\rR\EOTcrtc\DC2\SYN\n\
      \\ACKparams\CAN\ACK \SOH(\ENQR\ACKparams\DC2%\n\
      \\SIper_pipe_ib_ebi\CAN\a \SOH(\EOTR\fperPipeIbEbi\DC2'\n\
      \\DLEper_pipe_ib_llcc\CAN\b \SOH(\EOTR\rperPipeIbLlcc\DC2'\n\
      \\DLEper_pipe_ib_mnoc\CAN\t \SOH(\EOTR\rperPipeIbMnoc\DC2\EM\n\
      \\bstop_req\CAN\n\
      \ \SOH(\rR\astopReq\DC2\GS\n\
      \\n\
      \update_bus\CAN\v \SOH(\rR\tupdateBus\DC2\GS\n\
      \\n\
      \update_clk\CAN\f \SOH(\rR\tupdateClk"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        bwCtlEbi__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bw_ctl_ebi"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bwCtlEbi")) ::
              Data.ProtoLens.FieldDescriptor SdeSdePerfCrtcUpdateFtraceEvent
        bwCtlLlcc__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bw_ctl_llcc"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bwCtlLlcc")) ::
              Data.ProtoLens.FieldDescriptor SdeSdePerfCrtcUpdateFtraceEvent
        bwCtlMnoc__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bw_ctl_mnoc"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bwCtlMnoc")) ::
              Data.ProtoLens.FieldDescriptor SdeSdePerfCrtcUpdateFtraceEvent
        coreClkRate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "core_clk_rate"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'coreClkRate")) ::
              Data.ProtoLens.FieldDescriptor SdeSdePerfCrtcUpdateFtraceEvent
        crtc__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "crtc"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'crtc")) ::
              Data.ProtoLens.FieldDescriptor SdeSdePerfCrtcUpdateFtraceEvent
        params__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "params"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'params")) ::
              Data.ProtoLens.FieldDescriptor SdeSdePerfCrtcUpdateFtraceEvent
        perPipeIbEbi__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "per_pipe_ib_ebi"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'perPipeIbEbi")) ::
              Data.ProtoLens.FieldDescriptor SdeSdePerfCrtcUpdateFtraceEvent
        perPipeIbLlcc__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "per_pipe_ib_llcc"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'perPipeIbLlcc")) ::
              Data.ProtoLens.FieldDescriptor SdeSdePerfCrtcUpdateFtraceEvent
        perPipeIbMnoc__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "per_pipe_ib_mnoc"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'perPipeIbMnoc")) ::
              Data.ProtoLens.FieldDescriptor SdeSdePerfCrtcUpdateFtraceEvent
        stopReq__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stop_req"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'stopReq")) ::
              Data.ProtoLens.FieldDescriptor SdeSdePerfCrtcUpdateFtraceEvent
        updateBus__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "update_bus"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'updateBus")) ::
              Data.ProtoLens.FieldDescriptor SdeSdePerfCrtcUpdateFtraceEvent
        updateClk__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "update_clk"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'updateClk")) ::
              Data.ProtoLens.FieldDescriptor SdeSdePerfCrtcUpdateFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, bwCtlEbi__field_descriptor),
           (Data.ProtoLens.Tag 2, bwCtlLlcc__field_descriptor),
           (Data.ProtoLens.Tag 3, bwCtlMnoc__field_descriptor),
           (Data.ProtoLens.Tag 4, coreClkRate__field_descriptor),
           (Data.ProtoLens.Tag 5, crtc__field_descriptor),
           (Data.ProtoLens.Tag 6, params__field_descriptor),
           (Data.ProtoLens.Tag 7, perPipeIbEbi__field_descriptor),
           (Data.ProtoLens.Tag 8, perPipeIbLlcc__field_descriptor),
           (Data.ProtoLens.Tag 9, perPipeIbMnoc__field_descriptor),
           (Data.ProtoLens.Tag 10, stopReq__field_descriptor),
           (Data.ProtoLens.Tag 11, updateBus__field_descriptor),
           (Data.ProtoLens.Tag 12, updateClk__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SdeSdePerfCrtcUpdateFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_SdeSdePerfCrtcUpdateFtraceEvent'_unknownFields = y__})
  defMessage
    = SdeSdePerfCrtcUpdateFtraceEvent'_constructor
        {_SdeSdePerfCrtcUpdateFtraceEvent'bwCtlEbi = Prelude.Nothing,
         _SdeSdePerfCrtcUpdateFtraceEvent'bwCtlLlcc = Prelude.Nothing,
         _SdeSdePerfCrtcUpdateFtraceEvent'bwCtlMnoc = Prelude.Nothing,
         _SdeSdePerfCrtcUpdateFtraceEvent'coreClkRate = Prelude.Nothing,
         _SdeSdePerfCrtcUpdateFtraceEvent'crtc = Prelude.Nothing,
         _SdeSdePerfCrtcUpdateFtraceEvent'params = Prelude.Nothing,
         _SdeSdePerfCrtcUpdateFtraceEvent'perPipeIbEbi = Prelude.Nothing,
         _SdeSdePerfCrtcUpdateFtraceEvent'perPipeIbLlcc = Prelude.Nothing,
         _SdeSdePerfCrtcUpdateFtraceEvent'perPipeIbMnoc = Prelude.Nothing,
         _SdeSdePerfCrtcUpdateFtraceEvent'stopReq = Prelude.Nothing,
         _SdeSdePerfCrtcUpdateFtraceEvent'updateBus = Prelude.Nothing,
         _SdeSdePerfCrtcUpdateFtraceEvent'updateClk = Prelude.Nothing,
         _SdeSdePerfCrtcUpdateFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SdeSdePerfCrtcUpdateFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser SdeSdePerfCrtcUpdateFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "bw_ctl_ebi"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bwCtlEbi") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "bw_ctl_llcc"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bwCtlLlcc") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "bw_ctl_mnoc"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bwCtlMnoc") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "core_clk_rate"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"coreClkRate") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "crtc"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"crtc") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "params"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"params") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "per_pipe_ib_ebi"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"perPipeIbEbi") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "per_pipe_ib_llcc"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"perPipeIbLlcc") y x)
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "per_pipe_ib_mnoc"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"perPipeIbMnoc") y x)
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "stop_req"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"stopReq") y x)
                        88
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "update_bus"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"updateBus") y x)
                        96
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "update_clk"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"updateClk") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "SdeSdePerfCrtcUpdateFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'bwCtlEbi") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'bwCtlLlcc") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'bwCtlMnoc") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'coreClkRate") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'crtc") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'params") _x
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
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'perPipeIbEbi") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'perPipeIbLlcc") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"maybe'perPipeIbMnoc") _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field @"maybe'stopReq") _x
                                         of
                                           Prelude.Nothing -> Data.Monoid.mempty
                                           (Prelude.Just _v)
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 80)
                                                  ((Prelude..)
                                                     Data.ProtoLens.Encoding.Bytes.putVarInt
                                                     Prelude.fromIntegral _v))
                                        ((Data.Monoid.<>)
                                           (case
                                                Lens.Family2.view
                                                  (Data.ProtoLens.Field.field @"maybe'updateBus") _x
                                            of
                                              Prelude.Nothing -> Data.Monoid.mempty
                                              (Prelude.Just _v)
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 88)
                                                     ((Prelude..)
                                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                                        Prelude.fromIntegral _v))
                                           ((Data.Monoid.<>)
                                              (case
                                                   Lens.Family2.view
                                                     (Data.ProtoLens.Field.field @"maybe'updateClk")
                                                     _x
                                               of
                                                 Prelude.Nothing -> Data.Monoid.mempty
                                                 (Prelude.Just _v)
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 96)
                                                        ((Prelude..)
                                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           Prelude.fromIntegral _v))
                                              (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                 (Lens.Family2.view
                                                    Data.ProtoLens.unknownFields _x)))))))))))))
instance Control.DeepSeq.NFData SdeSdePerfCrtcUpdateFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SdeSdePerfCrtcUpdateFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SdeSdePerfCrtcUpdateFtraceEvent'bwCtlEbi x__)
                (Control.DeepSeq.deepseq
                   (_SdeSdePerfCrtcUpdateFtraceEvent'bwCtlLlcc x__)
                   (Control.DeepSeq.deepseq
                      (_SdeSdePerfCrtcUpdateFtraceEvent'bwCtlMnoc x__)
                      (Control.DeepSeq.deepseq
                         (_SdeSdePerfCrtcUpdateFtraceEvent'coreClkRate x__)
                         (Control.DeepSeq.deepseq
                            (_SdeSdePerfCrtcUpdateFtraceEvent'crtc x__)
                            (Control.DeepSeq.deepseq
                               (_SdeSdePerfCrtcUpdateFtraceEvent'params x__)
                               (Control.DeepSeq.deepseq
                                  (_SdeSdePerfCrtcUpdateFtraceEvent'perPipeIbEbi x__)
                                  (Control.DeepSeq.deepseq
                                     (_SdeSdePerfCrtcUpdateFtraceEvent'perPipeIbLlcc x__)
                                     (Control.DeepSeq.deepseq
                                        (_SdeSdePerfCrtcUpdateFtraceEvent'perPipeIbMnoc x__)
                                        (Control.DeepSeq.deepseq
                                           (_SdeSdePerfCrtcUpdateFtraceEvent'stopReq x__)
                                           (Control.DeepSeq.deepseq
                                              (_SdeSdePerfCrtcUpdateFtraceEvent'updateBus x__)
                                              (Control.DeepSeq.deepseq
                                                 (_SdeSdePerfCrtcUpdateFtraceEvent'updateClk x__)
                                                 ()))))))))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.fl' @:: Lens' SdeSdePerfSetQosLutsFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.maybe'fl' @:: Lens' SdeSdePerfSetQosLutsFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.fmt' @:: Lens' SdeSdePerfSetQosLutsFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.maybe'fmt' @:: Lens' SdeSdePerfSetQosLutsFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.lut' @:: Lens' SdeSdePerfSetQosLutsFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.maybe'lut' @:: Lens' SdeSdePerfSetQosLutsFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.lutUsage' @:: Lens' SdeSdePerfSetQosLutsFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.maybe'lutUsage' @:: Lens' SdeSdePerfSetQosLutsFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.pnum' @:: Lens' SdeSdePerfSetQosLutsFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.maybe'pnum' @:: Lens' SdeSdePerfSetQosLutsFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.rt' @:: Lens' SdeSdePerfSetQosLutsFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.maybe'rt' @:: Lens' SdeSdePerfSetQosLutsFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data SdeSdePerfSetQosLutsFtraceEvent
  = SdeSdePerfSetQosLutsFtraceEvent'_constructor {_SdeSdePerfSetQosLutsFtraceEvent'fl :: !(Prelude.Maybe Data.Word.Word32),
                                                  _SdeSdePerfSetQosLutsFtraceEvent'fmt :: !(Prelude.Maybe Data.Word.Word32),
                                                  _SdeSdePerfSetQosLutsFtraceEvent'lut :: !(Prelude.Maybe Data.Word.Word64),
                                                  _SdeSdePerfSetQosLutsFtraceEvent'lutUsage :: !(Prelude.Maybe Data.Word.Word32),
                                                  _SdeSdePerfSetQosLutsFtraceEvent'pnum :: !(Prelude.Maybe Data.Word.Word32),
                                                  _SdeSdePerfSetQosLutsFtraceEvent'rt :: !(Prelude.Maybe Data.Word.Word32),
                                                  _SdeSdePerfSetQosLutsFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SdeSdePerfSetQosLutsFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SdeSdePerfSetQosLutsFtraceEvent "fl" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfSetQosLutsFtraceEvent'fl
           (\ x__ y__ -> x__ {_SdeSdePerfSetQosLutsFtraceEvent'fl = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SdeSdePerfSetQosLutsFtraceEvent "maybe'fl" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfSetQosLutsFtraceEvent'fl
           (\ x__ y__ -> x__ {_SdeSdePerfSetQosLutsFtraceEvent'fl = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SdeSdePerfSetQosLutsFtraceEvent "fmt" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfSetQosLutsFtraceEvent'fmt
           (\ x__ y__ -> x__ {_SdeSdePerfSetQosLutsFtraceEvent'fmt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SdeSdePerfSetQosLutsFtraceEvent "maybe'fmt" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfSetQosLutsFtraceEvent'fmt
           (\ x__ y__ -> x__ {_SdeSdePerfSetQosLutsFtraceEvent'fmt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SdeSdePerfSetQosLutsFtraceEvent "lut" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfSetQosLutsFtraceEvent'lut
           (\ x__ y__ -> x__ {_SdeSdePerfSetQosLutsFtraceEvent'lut = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SdeSdePerfSetQosLutsFtraceEvent "maybe'lut" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfSetQosLutsFtraceEvent'lut
           (\ x__ y__ -> x__ {_SdeSdePerfSetQosLutsFtraceEvent'lut = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SdeSdePerfSetQosLutsFtraceEvent "lutUsage" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfSetQosLutsFtraceEvent'lutUsage
           (\ x__ y__
              -> x__ {_SdeSdePerfSetQosLutsFtraceEvent'lutUsage = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SdeSdePerfSetQosLutsFtraceEvent "maybe'lutUsage" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfSetQosLutsFtraceEvent'lutUsage
           (\ x__ y__
              -> x__ {_SdeSdePerfSetQosLutsFtraceEvent'lutUsage = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SdeSdePerfSetQosLutsFtraceEvent "pnum" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfSetQosLutsFtraceEvent'pnum
           (\ x__ y__ -> x__ {_SdeSdePerfSetQosLutsFtraceEvent'pnum = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SdeSdePerfSetQosLutsFtraceEvent "maybe'pnum" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfSetQosLutsFtraceEvent'pnum
           (\ x__ y__ -> x__ {_SdeSdePerfSetQosLutsFtraceEvent'pnum = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SdeSdePerfSetQosLutsFtraceEvent "rt" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfSetQosLutsFtraceEvent'rt
           (\ x__ y__ -> x__ {_SdeSdePerfSetQosLutsFtraceEvent'rt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SdeSdePerfSetQosLutsFtraceEvent "maybe'rt" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfSetQosLutsFtraceEvent'rt
           (\ x__ y__ -> x__ {_SdeSdePerfSetQosLutsFtraceEvent'rt = y__}))
        Prelude.id
instance Data.ProtoLens.Message SdeSdePerfSetQosLutsFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.SdeSdePerfSetQosLutsFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\USSdeSdePerfSetQosLutsFtraceEvent\DC2\SO\n\
      \\STXfl\CAN\SOH \SOH(\rR\STXfl\DC2\DLE\n\
      \\ETXfmt\CAN\STX \SOH(\rR\ETXfmt\DC2\DLE\n\
      \\ETXlut\CAN\ETX \SOH(\EOTR\ETXlut\DC2\ESC\n\
      \\tlut_usage\CAN\EOT \SOH(\rR\blutUsage\DC2\DC2\n\
      \\EOTpnum\CAN\ENQ \SOH(\rR\EOTpnum\DC2\SO\n\
      \\STXrt\CAN\ACK \SOH(\rR\STXrt"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        fl__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fl"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fl")) ::
              Data.ProtoLens.FieldDescriptor SdeSdePerfSetQosLutsFtraceEvent
        fmt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fmt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fmt")) ::
              Data.ProtoLens.FieldDescriptor SdeSdePerfSetQosLutsFtraceEvent
        lut__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lut"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lut")) ::
              Data.ProtoLens.FieldDescriptor SdeSdePerfSetQosLutsFtraceEvent
        lutUsage__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lut_usage"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lutUsage")) ::
              Data.ProtoLens.FieldDescriptor SdeSdePerfSetQosLutsFtraceEvent
        pnum__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pnum"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pnum")) ::
              Data.ProtoLens.FieldDescriptor SdeSdePerfSetQosLutsFtraceEvent
        rt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rt")) ::
              Data.ProtoLens.FieldDescriptor SdeSdePerfSetQosLutsFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, fl__field_descriptor),
           (Data.ProtoLens.Tag 2, fmt__field_descriptor),
           (Data.ProtoLens.Tag 3, lut__field_descriptor),
           (Data.ProtoLens.Tag 4, lutUsage__field_descriptor),
           (Data.ProtoLens.Tag 5, pnum__field_descriptor),
           (Data.ProtoLens.Tag 6, rt__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SdeSdePerfSetQosLutsFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_SdeSdePerfSetQosLutsFtraceEvent'_unknownFields = y__})
  defMessage
    = SdeSdePerfSetQosLutsFtraceEvent'_constructor
        {_SdeSdePerfSetQosLutsFtraceEvent'fl = Prelude.Nothing,
         _SdeSdePerfSetQosLutsFtraceEvent'fmt = Prelude.Nothing,
         _SdeSdePerfSetQosLutsFtraceEvent'lut = Prelude.Nothing,
         _SdeSdePerfSetQosLutsFtraceEvent'lutUsage = Prelude.Nothing,
         _SdeSdePerfSetQosLutsFtraceEvent'pnum = Prelude.Nothing,
         _SdeSdePerfSetQosLutsFtraceEvent'rt = Prelude.Nothing,
         _SdeSdePerfSetQosLutsFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SdeSdePerfSetQosLutsFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser SdeSdePerfSetQosLutsFtraceEvent
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
                                       "fl"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"fl") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "fmt"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"fmt") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "lut"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"lut") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "lut_usage"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lutUsage") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "pnum"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pnum") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "rt"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"rt") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "SdeSdePerfSetQosLutsFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'fl") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'fmt") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'lut") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'lutUsage") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pnum") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'rt") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                      ((Prelude..)
                                         Data.ProtoLens.Encoding.Bytes.putVarInt
                                         Prelude.fromIntegral _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData SdeSdePerfSetQosLutsFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SdeSdePerfSetQosLutsFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SdeSdePerfSetQosLutsFtraceEvent'fl x__)
                (Control.DeepSeq.deepseq
                   (_SdeSdePerfSetQosLutsFtraceEvent'fmt x__)
                   (Control.DeepSeq.deepseq
                      (_SdeSdePerfSetQosLutsFtraceEvent'lut x__)
                      (Control.DeepSeq.deepseq
                         (_SdeSdePerfSetQosLutsFtraceEvent'lutUsage x__)
                         (Control.DeepSeq.deepseq
                            (_SdeSdePerfSetQosLutsFtraceEvent'pnum x__)
                            (Control.DeepSeq.deepseq
                               (_SdeSdePerfSetQosLutsFtraceEvent'rt x__) ()))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.abQuota' @:: Lens' SdeSdePerfUpdateBusFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.maybe'abQuota' @:: Lens' SdeSdePerfUpdateBusFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.busId' @:: Lens' SdeSdePerfUpdateBusFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.maybe'busId' @:: Lens' SdeSdePerfUpdateBusFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.client' @:: Lens' SdeSdePerfUpdateBusFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.maybe'client' @:: Lens' SdeSdePerfUpdateBusFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.ibQuota' @:: Lens' SdeSdePerfUpdateBusFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.maybe'ibQuota' @:: Lens' SdeSdePerfUpdateBusFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data SdeSdePerfUpdateBusFtraceEvent
  = SdeSdePerfUpdateBusFtraceEvent'_constructor {_SdeSdePerfUpdateBusFtraceEvent'abQuota :: !(Prelude.Maybe Data.Word.Word64),
                                                 _SdeSdePerfUpdateBusFtraceEvent'busId :: !(Prelude.Maybe Data.Word.Word32),
                                                 _SdeSdePerfUpdateBusFtraceEvent'client :: !(Prelude.Maybe Data.Int.Int32),
                                                 _SdeSdePerfUpdateBusFtraceEvent'ibQuota :: !(Prelude.Maybe Data.Word.Word64),
                                                 _SdeSdePerfUpdateBusFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SdeSdePerfUpdateBusFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SdeSdePerfUpdateBusFtraceEvent "abQuota" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfUpdateBusFtraceEvent'abQuota
           (\ x__ y__ -> x__ {_SdeSdePerfUpdateBusFtraceEvent'abQuota = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SdeSdePerfUpdateBusFtraceEvent "maybe'abQuota" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfUpdateBusFtraceEvent'abQuota
           (\ x__ y__ -> x__ {_SdeSdePerfUpdateBusFtraceEvent'abQuota = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SdeSdePerfUpdateBusFtraceEvent "busId" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfUpdateBusFtraceEvent'busId
           (\ x__ y__ -> x__ {_SdeSdePerfUpdateBusFtraceEvent'busId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SdeSdePerfUpdateBusFtraceEvent "maybe'busId" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfUpdateBusFtraceEvent'busId
           (\ x__ y__ -> x__ {_SdeSdePerfUpdateBusFtraceEvent'busId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SdeSdePerfUpdateBusFtraceEvent "client" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfUpdateBusFtraceEvent'client
           (\ x__ y__ -> x__ {_SdeSdePerfUpdateBusFtraceEvent'client = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SdeSdePerfUpdateBusFtraceEvent "maybe'client" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfUpdateBusFtraceEvent'client
           (\ x__ y__ -> x__ {_SdeSdePerfUpdateBusFtraceEvent'client = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SdeSdePerfUpdateBusFtraceEvent "ibQuota" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfUpdateBusFtraceEvent'ibQuota
           (\ x__ y__ -> x__ {_SdeSdePerfUpdateBusFtraceEvent'ibQuota = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SdeSdePerfUpdateBusFtraceEvent "maybe'ibQuota" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeSdePerfUpdateBusFtraceEvent'ibQuota
           (\ x__ y__ -> x__ {_SdeSdePerfUpdateBusFtraceEvent'ibQuota = y__}))
        Prelude.id
instance Data.ProtoLens.Message SdeSdePerfUpdateBusFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.SdeSdePerfUpdateBusFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\RSSdeSdePerfUpdateBusFtraceEvent\DC2\EM\n\
      \\bab_quota\CAN\SOH \SOH(\EOTR\aabQuota\DC2\NAK\n\
      \\ACKbus_id\CAN\STX \SOH(\rR\ENQbusId\DC2\SYN\n\
      \\ACKclient\CAN\ETX \SOH(\ENQR\ACKclient\DC2\EM\n\
      \\bib_quota\CAN\EOT \SOH(\EOTR\aibQuota"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        abQuota__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ab_quota"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'abQuota")) ::
              Data.ProtoLens.FieldDescriptor SdeSdePerfUpdateBusFtraceEvent
        busId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bus_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'busId")) ::
              Data.ProtoLens.FieldDescriptor SdeSdePerfUpdateBusFtraceEvent
        client__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "client"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'client")) ::
              Data.ProtoLens.FieldDescriptor SdeSdePerfUpdateBusFtraceEvent
        ibQuota__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ib_quota"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ibQuota")) ::
              Data.ProtoLens.FieldDescriptor SdeSdePerfUpdateBusFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, abQuota__field_descriptor),
           (Data.ProtoLens.Tag 2, busId__field_descriptor),
           (Data.ProtoLens.Tag 3, client__field_descriptor),
           (Data.ProtoLens.Tag 4, ibQuota__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SdeSdePerfUpdateBusFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_SdeSdePerfUpdateBusFtraceEvent'_unknownFields = y__})
  defMessage
    = SdeSdePerfUpdateBusFtraceEvent'_constructor
        {_SdeSdePerfUpdateBusFtraceEvent'abQuota = Prelude.Nothing,
         _SdeSdePerfUpdateBusFtraceEvent'busId = Prelude.Nothing,
         _SdeSdePerfUpdateBusFtraceEvent'client = Prelude.Nothing,
         _SdeSdePerfUpdateBusFtraceEvent'ibQuota = Prelude.Nothing,
         _SdeSdePerfUpdateBusFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SdeSdePerfUpdateBusFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser SdeSdePerfUpdateBusFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ab_quota"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"abQuota") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "bus_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"busId") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "client"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"client") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ib_quota"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ibQuota") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "SdeSdePerfUpdateBusFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'abQuota") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'busId") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'client") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ibQuota") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData SdeSdePerfUpdateBusFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SdeSdePerfUpdateBusFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SdeSdePerfUpdateBusFtraceEvent'abQuota x__)
                (Control.DeepSeq.deepseq
                   (_SdeSdePerfUpdateBusFtraceEvent'busId x__)
                   (Control.DeepSeq.deepseq
                      (_SdeSdePerfUpdateBusFtraceEvent'client x__)
                      (Control.DeepSeq.deepseq
                         (_SdeSdePerfUpdateBusFtraceEvent'ibQuota x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.pid' @:: Lens' SdeTracingMarkWriteFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.maybe'pid' @:: Lens' SdeTracingMarkWriteFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.traceName' @:: Lens' SdeTracingMarkWriteFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.maybe'traceName' @:: Lens' SdeTracingMarkWriteFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.traceType' @:: Lens' SdeTracingMarkWriteFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.maybe'traceType' @:: Lens' SdeTracingMarkWriteFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.value' @:: Lens' SdeTracingMarkWriteFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.maybe'value' @:: Lens' SdeTracingMarkWriteFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.traceBegin' @:: Lens' SdeTracingMarkWriteFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields.maybe'traceBegin' @:: Lens' SdeTracingMarkWriteFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data SdeTracingMarkWriteFtraceEvent
  = SdeTracingMarkWriteFtraceEvent'_constructor {_SdeTracingMarkWriteFtraceEvent'pid :: !(Prelude.Maybe Data.Int.Int32),
                                                 _SdeTracingMarkWriteFtraceEvent'traceName :: !(Prelude.Maybe Data.Text.Text),
                                                 _SdeTracingMarkWriteFtraceEvent'traceType :: !(Prelude.Maybe Data.Word.Word32),
                                                 _SdeTracingMarkWriteFtraceEvent'value :: !(Prelude.Maybe Data.Int.Int32),
                                                 _SdeTracingMarkWriteFtraceEvent'traceBegin :: !(Prelude.Maybe Data.Word.Word32),
                                                 _SdeTracingMarkWriteFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SdeTracingMarkWriteFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SdeTracingMarkWriteFtraceEvent "pid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeTracingMarkWriteFtraceEvent'pid
           (\ x__ y__ -> x__ {_SdeTracingMarkWriteFtraceEvent'pid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SdeTracingMarkWriteFtraceEvent "maybe'pid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeTracingMarkWriteFtraceEvent'pid
           (\ x__ y__ -> x__ {_SdeTracingMarkWriteFtraceEvent'pid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SdeTracingMarkWriteFtraceEvent "traceName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeTracingMarkWriteFtraceEvent'traceName
           (\ x__ y__
              -> x__ {_SdeTracingMarkWriteFtraceEvent'traceName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SdeTracingMarkWriteFtraceEvent "maybe'traceName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeTracingMarkWriteFtraceEvent'traceName
           (\ x__ y__
              -> x__ {_SdeTracingMarkWriteFtraceEvent'traceName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SdeTracingMarkWriteFtraceEvent "traceType" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeTracingMarkWriteFtraceEvent'traceType
           (\ x__ y__
              -> x__ {_SdeTracingMarkWriteFtraceEvent'traceType = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SdeTracingMarkWriteFtraceEvent "maybe'traceType" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeTracingMarkWriteFtraceEvent'traceType
           (\ x__ y__
              -> x__ {_SdeTracingMarkWriteFtraceEvent'traceType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SdeTracingMarkWriteFtraceEvent "value" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeTracingMarkWriteFtraceEvent'value
           (\ x__ y__ -> x__ {_SdeTracingMarkWriteFtraceEvent'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SdeTracingMarkWriteFtraceEvent "maybe'value" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeTracingMarkWriteFtraceEvent'value
           (\ x__ y__ -> x__ {_SdeTracingMarkWriteFtraceEvent'value = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SdeTracingMarkWriteFtraceEvent "traceBegin" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeTracingMarkWriteFtraceEvent'traceBegin
           (\ x__ y__
              -> x__ {_SdeTracingMarkWriteFtraceEvent'traceBegin = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SdeTracingMarkWriteFtraceEvent "maybe'traceBegin" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SdeTracingMarkWriteFtraceEvent'traceBegin
           (\ x__ y__
              -> x__ {_SdeTracingMarkWriteFtraceEvent'traceBegin = y__}))
        Prelude.id
instance Data.ProtoLens.Message SdeTracingMarkWriteFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.SdeTracingMarkWriteFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\RSSdeTracingMarkWriteFtraceEvent\DC2\DLE\n\
      \\ETXpid\CAN\SOH \SOH(\ENQR\ETXpid\DC2\GS\n\
      \\n\
      \trace_name\CAN\STX \SOH(\tR\ttraceName\DC2\GS\n\
      \\n\
      \trace_type\CAN\ETX \SOH(\rR\ttraceType\DC2\DC4\n\
      \\ENQvalue\CAN\EOT \SOH(\ENQR\ENQvalue\DC2\US\n\
      \\vtrace_begin\CAN\ENQ \SOH(\rR\n\
      \traceBegin"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        pid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pid")) ::
              Data.ProtoLens.FieldDescriptor SdeTracingMarkWriteFtraceEvent
        traceName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "trace_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'traceName")) ::
              Data.ProtoLens.FieldDescriptor SdeTracingMarkWriteFtraceEvent
        traceType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "trace_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'traceType")) ::
              Data.ProtoLens.FieldDescriptor SdeTracingMarkWriteFtraceEvent
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor SdeTracingMarkWriteFtraceEvent
        traceBegin__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "trace_begin"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'traceBegin")) ::
              Data.ProtoLens.FieldDescriptor SdeTracingMarkWriteFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, pid__field_descriptor),
           (Data.ProtoLens.Tag 2, traceName__field_descriptor),
           (Data.ProtoLens.Tag 3, traceType__field_descriptor),
           (Data.ProtoLens.Tag 4, value__field_descriptor),
           (Data.ProtoLens.Tag 5, traceBegin__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SdeTracingMarkWriteFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_SdeTracingMarkWriteFtraceEvent'_unknownFields = y__})
  defMessage
    = SdeTracingMarkWriteFtraceEvent'_constructor
        {_SdeTracingMarkWriteFtraceEvent'pid = Prelude.Nothing,
         _SdeTracingMarkWriteFtraceEvent'traceName = Prelude.Nothing,
         _SdeTracingMarkWriteFtraceEvent'traceType = Prelude.Nothing,
         _SdeTracingMarkWriteFtraceEvent'value = Prelude.Nothing,
         _SdeTracingMarkWriteFtraceEvent'traceBegin = Prelude.Nothing,
         _SdeTracingMarkWriteFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SdeTracingMarkWriteFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser SdeTracingMarkWriteFtraceEvent
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
                                       "pid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pid") y x)
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
                                       "trace_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"traceName") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "trace_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"traceType") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "trace_begin"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"traceBegin") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "SdeTracingMarkWriteFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pid") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'traceName") _x
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
                          (Data.ProtoLens.Field.field @"maybe'traceType") _x
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
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'traceBegin") _x
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
instance Control.DeepSeq.NFData SdeTracingMarkWriteFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SdeTracingMarkWriteFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SdeTracingMarkWriteFtraceEvent'pid x__)
                (Control.DeepSeq.deepseq
                   (_SdeTracingMarkWriteFtraceEvent'traceName x__)
                   (Control.DeepSeq.deepseq
                      (_SdeTracingMarkWriteFtraceEvent'traceType x__)
                      (Control.DeepSeq.deepseq
                         (_SdeTracingMarkWriteFtraceEvent'value x__)
                         (Control.DeepSeq.deepseq
                            (_SdeTracingMarkWriteFtraceEvent'traceBegin x__) ())))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \&protos/perfetto/trace/ftrace/sde.proto\DC2\SIperfetto.protos\"\167\SOH\n\
    \\RSSdeTracingMarkWriteFtraceEvent\DC2\DLE\n\
    \\ETXpid\CAN\SOH \SOH(\ENQR\ETXpid\DC2\GS\n\
    \\n\
    \trace_name\CAN\STX \SOH(\tR\ttraceName\DC2\GS\n\
    \\n\
    \trace_type\CAN\ETX \SOH(\rR\ttraceType\DC2\DC4\n\
    \\ENQvalue\CAN\EOT \SOH(\ENQR\ENQvalue\DC2\US\n\
    \\vtrace_begin\CAN\ENQ \SOH(\rR\n\
    \traceBegin\"a\n\
    \\ETBSdeSdeEvtlogFtraceEvent\DC2\GS\n\
    \\n\
    \evtlog_tag\CAN\SOH \SOH(\tR\tevtlogTag\DC2\DLE\n\
    \\ETXpid\CAN\STX \SOH(\ENQR\ETXpid\DC2\NAK\n\
    \\ACKtag_id\CAN\ETX \SOH(\rR\ENQtagId\"\254\SOH\n\
    \\GSSdeSdePerfCalcCrtcFtraceEvent\DC2\FS\n\
    \\n\
    \bw_ctl_ebi\CAN\SOH \SOH(\EOTR\bbwCtlEbi\DC2\RS\n\
    \\vbw_ctl_llcc\CAN\STX \SOH(\EOTR\tbwCtlLlcc\DC2\RS\n\
    \\vbw_ctl_mnoc\CAN\ETX \SOH(\EOTR\tbwCtlMnoc\DC2\"\n\
    \\rcore_clk_rate\CAN\EOT \SOH(\rR\vcoreClkRate\DC2\DC2\n\
    \\EOTcrtc\CAN\ENQ \SOH(\rR\EOTcrtc\DC2\NAK\n\
    \\ACKib_ebi\CAN\ACK \SOH(\EOTR\ENQibEbi\DC2\ETB\n\
    \\aib_llcc\CAN\a \SOH(\EOTR\ACKibLlcc\DC2\ETB\n\
    \\aib_mnoc\CAN\b \SOH(\EOTR\ACKibMnoc\"\161\ETX\n\
    \\USSdeSdePerfCrtcUpdateFtraceEvent\DC2\FS\n\
    \\n\
    \bw_ctl_ebi\CAN\SOH \SOH(\EOTR\bbwCtlEbi\DC2\RS\n\
    \\vbw_ctl_llcc\CAN\STX \SOH(\EOTR\tbwCtlLlcc\DC2\RS\n\
    \\vbw_ctl_mnoc\CAN\ETX \SOH(\EOTR\tbwCtlMnoc\DC2\"\n\
    \\rcore_clk_rate\CAN\EOT \SOH(\rR\vcoreClkRate\DC2\DC2\n\
    \\EOTcrtc\CAN\ENQ \SOH(\rR\EOTcrtc\DC2\SYN\n\
    \\ACKparams\CAN\ACK \SOH(\ENQR\ACKparams\DC2%\n\
    \\SIper_pipe_ib_ebi\CAN\a \SOH(\EOTR\fperPipeIbEbi\DC2'\n\
    \\DLEper_pipe_ib_llcc\CAN\b \SOH(\EOTR\rperPipeIbLlcc\DC2'\n\
    \\DLEper_pipe_ib_mnoc\CAN\t \SOH(\EOTR\rperPipeIbMnoc\DC2\EM\n\
    \\bstop_req\CAN\n\
    \ \SOH(\rR\astopReq\DC2\GS\n\
    \\n\
    \update_bus\CAN\v \SOH(\rR\tupdateBus\DC2\GS\n\
    \\n\
    \update_clk\CAN\f \SOH(\rR\tupdateClk\"\150\SOH\n\
    \\USSdeSdePerfSetQosLutsFtraceEvent\DC2\SO\n\
    \\STXfl\CAN\SOH \SOH(\rR\STXfl\DC2\DLE\n\
    \\ETXfmt\CAN\STX \SOH(\rR\ETXfmt\DC2\DLE\n\
    \\ETXlut\CAN\ETX \SOH(\EOTR\ETXlut\DC2\ESC\n\
    \\tlut_usage\CAN\EOT \SOH(\rR\blutUsage\DC2\DC2\n\
    \\EOTpnum\CAN\ENQ \SOH(\rR\EOTpnum\DC2\SO\n\
    \\STXrt\CAN\ACK \SOH(\rR\STXrt\"\133\SOH\n\
    \\RSSdeSdePerfUpdateBusFtraceEvent\DC2\EM\n\
    \\bab_quota\CAN\SOH \SOH(\EOTR\aabQuota\DC2\NAK\n\
    \\ACKbus_id\CAN\STX \SOH(\rR\ENQbusId\DC2\SYN\n\
    \\ACKclient\CAN\ETX \SOH(\ENQR\ACKclient\DC2\EM\n\
    \\bib_quota\CAN\EOT \SOH(\EOTR\aibQuotaJ\195\SYN\n\
    \\ACK\DC2\EOT\EOT\NUL8\SOH\n\
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
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b&\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\b\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\b\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\b\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\b\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\b\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\t\STX!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\t\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\t\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\t\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\t\US \n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\n\
    \\STX!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\n\
    \\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\n\
    \\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\n\
    \\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\n\
    \\US \n\
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
    \\v\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX\f\STX\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\EOT\DC2\ETX\f\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX\f\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\f\DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\f !\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\SO\NUL\DC2\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\SO\b\US\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\SI\STX!\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\SI\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\SI\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\SI\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\SI\US \n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\DLE\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX\DLE\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\DLE\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\DLE\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\DLE\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX\DC1\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\EOT\DC2\ETX\DC1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX\DC1\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX\DC1\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX\DC1\ESC\FS\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT\DC3\NUL\FS\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\DC3\b%\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\DC4\STX!\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETX\DC4\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX\DC4\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\DC4\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\DC4\US \n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX\NAK\STX\"\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETX\NAK\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX\NAK\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX\NAK\DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX\NAK !\n\
    \\v\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX\SYN\STX\"\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\EOT\DC2\ETX\SYN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETX\SYN\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX\SYN\DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX\SYN !\n\
    \\v\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETX\ETB\STX$\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\EOT\DC2\ETX\ETB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ENQ\DC2\ETX\ETB\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETX\ETB\DC2\US\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETX\ETB\"#\n\
    \\v\n\
    \\EOT\EOT\STX\STX\EOT\DC2\ETX\CAN\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\EOT\DC2\ETX\CAN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ENQ\DC2\ETX\CAN\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\ETX\CAN\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\ETX\CAN\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\STX\STX\ENQ\DC2\ETX\EM\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\EOT\DC2\ETX\EM\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ENQ\DC2\ETX\EM\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\SOH\DC2\ETX\EM\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ETX\DC2\ETX\EM\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\STX\STX\ACK\DC2\ETX\SUB\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\EOT\DC2\ETX\SUB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\ENQ\DC2\ETX\SUB\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\SOH\DC2\ETX\SUB\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\ETX\DC2\ETX\SUB\FS\GS\n\
    \\v\n\
    \\EOT\EOT\STX\STX\a\DC2\ETX\ESC\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\EOT\DC2\ETX\ESC\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\ENQ\DC2\ETX\ESC\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\SOH\DC2\ETX\ESC\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\ETX\DC2\ETX\ESC\FS\GS\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOT\GS\NUL*\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX\GS\b'\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX\RS\STX!\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETX\RS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX\RS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX\RS\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX\RS\US \n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX\US\STX\"\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\EOT\DC2\ETX\US\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETX\US\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX\US\DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX\US !\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETX \STX\"\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\EOT\DC2\ETX \STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\ETX \v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETX \DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETX  !\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\ETX!\STX$\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\EOT\DC2\ETX!\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ENQ\DC2\ETX!\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\ETX!\DC2\US\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\ETX!\"#\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\EOT\DC2\ETX\"\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\EOT\DC2\ETX\"\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ENQ\DC2\ETX\"\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\SOH\DC2\ETX\"\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ETX\DC2\ETX\"\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ENQ\DC2\ETX#\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\EOT\DC2\ETX#\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\ENQ\DC2\ETX#\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\SOH\DC2\ETX#\DC1\ETB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\ETX\DC2\ETX#\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ACK\DC2\ETX$\STX&\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\EOT\DC2\ETX$\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\ENQ\DC2\ETX$\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\SOH\DC2\ETX$\DC2!\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\ETX\DC2\ETX$$%\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\a\DC2\ETX%\STX'\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\a\EOT\DC2\ETX%\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\a\ENQ\DC2\ETX%\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\a\SOH\DC2\ETX%\DC2\"\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\a\ETX\DC2\ETX%%&\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\b\DC2\ETX&\STX'\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\b\EOT\DC2\ETX&\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\b\ENQ\DC2\ETX&\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\b\SOH\DC2\ETX&\DC2\"\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\b\ETX\DC2\ETX&%&\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\t\DC2\ETX'\STX \n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\t\EOT\DC2\ETX'\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\t\ENQ\DC2\ETX'\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\t\SOH\DC2\ETX'\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\t\ETX\DC2\ETX'\GS\US\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\n\
    \\DC2\ETX(\STX\"\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\n\
    \\EOT\DC2\ETX(\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\n\
    \\ENQ\DC2\ETX(\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\n\
    \\SOH\DC2\ETX(\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\n\
    \\ETX\DC2\ETX(\US!\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\v\DC2\ETX)\STX\"\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\v\EOT\DC2\ETX)\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\v\ENQ\DC2\ETX)\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\v\SOH\DC2\ETX)\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\v\ETX\DC2\ETX)\US!\n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOT+\NUL2\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX+\b'\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX,\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\EOT\DC2\ETX,\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX,\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX,\DC2\DC4\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX,\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETX-\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\EOT\DC2\ETX-\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETX-\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETX-\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETX-\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETX.\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\EOT\DC2\ETX.\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ENQ\DC2\ETX.\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETX.\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETX.\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\ETX/\STX \n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\EOT\DC2\ETX/\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ENQ\DC2\ETX/\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\ETX/\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\ETX/\RS\US\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\EOT\DC2\ETX0\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\EOT\DC2\ETX0\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\ENQ\DC2\ETX0\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\SOH\DC2\ETX0\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\ETX\DC2\ETX0\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\ENQ\DC2\ETX1\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\EOT\DC2\ETX1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\ENQ\DC2\ETX1\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\SOH\DC2\ETX1\DC2\DC4\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\ETX\DC2\ETX1\ETB\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\ENQ\DC2\EOT3\NUL8\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX3\b&\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETX4\STX\US\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\ETX4\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETX4\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX4\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX4\GS\RS\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ETX5\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\EOT\DC2\ETX5\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\ETX5\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETX5\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETX5\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\ETX6\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\EOT\DC2\ETX6\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ENQ\DC2\ETX6\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\ETX6\DC1\ETB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\ETX6\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\ETX\DC2\ETX7\STX\US\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\EOT\DC2\ETX7\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\ENQ\DC2\ETX7\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\SOH\DC2\ETX7\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\ETX\DC2\ETX7\GS\RS"